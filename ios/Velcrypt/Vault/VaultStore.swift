import CryptoKit
import Foundation

/// Encrypted storage for one open vault. All file I/O and crypto runs on this actor, off the main thread.
///
///     Vaults/<vaultID>/key.vck        wrapped master key (VaultSession)
///                      index.vcm      AES-GCM(metadataKey, JSON VaultIndex)
///                      items/<uuid>.vcf    ChunkedCipher, key = HKDF(master, item salt = uuid)
///                      thumbs/<uuid>.vct   AES-GCM(HKDF(master, thumbnail salt = uuid))
actor VaultStore {
    enum StoreError: Error, Equatable {
        case corruptedIndex
        case itemNotFound
    }

    /// Plaintext input for an import.
    enum Source: Sendable {
        case data(Data)
        case file(URL)
    }

    static let indexFileName = "index.vcm"

    nonisolated let vaultID: String
    private let directory: URL
    private let masterKey: SymmetricKey
    private let metadataKey: SymmetricKey
    private var index: VaultIndex

    /// Opens (or initialises) the vault at `directory`. Blocking; call off the main actor.
    init(directory: URL, vaultID: String, masterKey: SymmetricKey) throws {
        let metadataKey = VaultCrypto.deriveKey(from: masterKey, purpose: .metadata)
        self.directory = directory
        self.vaultID = vaultID
        self.masterKey = masterKey
        self.metadataKey = metadataKey
        let (index, isLegacy) = try Self.loadIndex(directory: directory, vaultID: vaultID, key: metadataKey)
        self.index = index
        try Self.createSubdirectories(in: directory)
        // Rewrite a v1 index straight away, so a later pattern change (which renames the directory) can't strand it.
        if isLegacy { try? Self.writeIndex(index, to: directory, key: metadataKey) }
    }

    // MARK: Reading

    var snapshot: VaultIndex { index }

    func thumbnailData(for id: UUID) throws -> Data? {
        let url = thumbnailURL(id)
        guard FileManager.default.fileExists(atPath: url.path(percentEncoded: false)) else { return nil }
        return try VaultCrypto.open(Data(contentsOf: url), using: thumbnailKey(id), authenticating: id.rawBytes)
    }

    func contentData(for id: UUID) throws -> Data {
        guard index.items.contains(where: { $0.id == id }) else { throw StoreError.itemNotFound }
        return try ChunkedCipher.decrypt(fileAt: itemURL(id), key: itemKey(id), itemID: id)
    }

    /// Decrypts an item to a protected temporary file named after the original. Caller removes it.
    func decryptToTemporaryFile(_ id: UUID) throws -> URL {
        guard let item = index.items.first(where: { $0.id == id }) else { throw StoreError.itemNotFound }
        let url = try TemporaryFiles.makeURL(filename: item.filename)
        try ChunkedCipher.decrypt(fileAt: itemURL(id), to: url, key: itemKey(id), itemID: id)
        return url
    }

    // MARK: Writing

    /// Encrypts `source` and records `item`. On failure or cancellation nothing is left behind.
    func add(_ source: Source, item: VaultItem, thumbnail: Data?) throws {
        let id = item.id
        var stored = item
        do {
            switch source {
            case .data(let data):
                try ChunkedCipher.encrypt(data: data, to: itemURL(id), key: itemKey(id), itemID: id)
            case .file(let url):
                try ChunkedCipher.encrypt(fileAt: url, to: itemURL(id), key: itemKey(id), itemID: id)
            }
            if let thumbnail {
                let sealed = try VaultCrypto.seal(thumbnail, using: thumbnailKey(id), authenticating: id.rawBytes)
                try sealed.write(to: thumbnailURL(id), options: [.atomic, .completeFileProtection])
            }
            stored.hasThumbnail = thumbnail != nil
            index.items.append(stored)
            try saveIndex()
        } catch {
            index.items.removeAll { $0.id == id }
            removeFiles(for: id)
            throw error
        }
    }

    /// Replaces an item's content (note editing). The old ciphertext is swapped atomically.
    func updateContent(_ id: UUID, data: Data, filename: String, preview: String?) throws {
        guard let i = index.items.firstIndex(where: { $0.id == id }) else { throw StoreError.itemNotFound }
        try ChunkedCipher.encrypt(data: data, to: itemURL(id), key: itemKey(id), itemID: id)
        index.items[i].filename = filename
        index.items[i].byteCount = Int64(data.count)
        index.items[i].preview = preview
        index.items[i].modifiedAt = .now
        try saveIndex()
    }

    func deleteItems(_ ids: Set<UUID>) throws {
        index.items.removeAll { ids.contains($0.id) }
        for i in index.albums.indices where index.albums[i].coverItemID.map(ids.contains) == true {
            index.albums[i].coverItemID = nil
        }
        try saveIndex()
        ids.forEach(removeFiles)
    }

    func moveItems(_ ids: Set<UUID>, to albumID: UUID?) throws {
        for i in index.items.indices where ids.contains(index.items[i].id) {
            index.items[i].albumID = albumID
        }
        try saveIndex()
    }

    func createAlbum(named name: String) throws -> Album {
        let album = Album(id: UUID(), name: name, createdAt: .now, coverItemID: nil)
        index.albums.append(album)
        try saveIndex()
        return album
    }

    func renameAlbum(_ id: UUID, to name: String) throws {
        guard let i = index.albums.firstIndex(where: { $0.id == id }) else { return }
        index.albums[i].name = name
        try saveIndex()
    }

    func setAlbumCover(_ albumID: UUID, itemID: UUID?) throws {
        guard let i = index.albums.firstIndex(where: { $0.id == albumID }) else { return }
        index.albums[i].coverItemID = itemID
        try saveIndex()
    }

    /// Deletes the album. Its items are either deleted too or kept without an album.
    func deleteAlbum(_ id: UUID, deletingItems: Bool) throws {
        let members = Set(index.items.filter { $0.albumID == id }.map(\.id))
        index.albums.removeAll { $0.id == id }
        if deletingItems {
            index.items.removeAll { members.contains($0.id) }
        } else {
            for i in index.items.indices where index.items[i].albumID == id {
                index.items[i].albumID = nil
            }
        }
        try saveIndex()
        if deletingItems { members.forEach(removeFiles) }
    }

    // MARK: Backup

    /// Appends the item's content to the file at `url`, re-encrypted under `backupKey`. Returns the bytes written.
    func exportContent(_ id: UUID, appendingTo url: URL, backupKey: SymmetricKey) throws -> UInt64 {
        guard index.items.contains(where: { $0.id == id }) else { throw StoreError.itemNotFound }
        let input = try FileHandle(forReadingFrom: itemURL(id))
        defer { try? input.close() }
        let output = try FileHandle(forWritingTo: url)
        defer { try? output.close() }
        try output.seekToEnd()
        return try ChunkedCipher.reencrypt(from: input, key: itemKey(id), to: output, newKey: backupKey, itemID: id)
    }

    /// Adds an item whose content is the `length` bytes at `offset` in a backup file, encrypted under `backupKey`.
    /// Returns false if the vault already has the item, so restoring the same backup twice adds nothing.
    func restoreItem(_ item: VaultItem, from url: URL, offset: UInt64, length: UInt64, backupKey: SymmetricKey, thumbnail: Data?) throws -> Bool {
        let id = item.id
        guard !index.items.contains(where: { $0.id == id }) else { return false }
        do {
            let input = try FileHandle(forReadingFrom: url)
            defer { try? input.close() }
            try input.seek(toOffset: offset)
            let read = try ChunkedCipher.reencrypt(from: input, key: backupKey, toFileAt: itemURL(id), newKey: itemKey(id), itemID: id)
            guard read == length else { throw ChunkedCipher.CipherError.malformed }
            if let thumbnail {
                let sealed = try VaultCrypto.seal(thumbnail, using: thumbnailKey(id), authenticating: id.rawBytes)
                try sealed.write(to: thumbnailURL(id), options: [.atomic, .completeFileProtection])
            }
            var stored = item
            stored.hasThumbnail = thumbnail != nil
            index.items.append(stored)
            try saveIndex()
        } catch {
            index.items.removeAll { $0.id == id }
            removeFiles(for: id)
            throw error
        }
        return true
    }

    /// Adds albums from a backup that this vault doesn't have yet.
    func mergeAlbums(_ albums: [Album]) throws {
        let existing = Set(index.albums.map(\.id))
        let added = albums.filter { !existing.contains($0.id) }
        guard !added.isEmpty else { return }
        index.albums.append(contentsOf: added)
        try saveIndex()
    }

    // MARK: Duress

    /// Writes the index even if nothing changed, so the vault can be recognised by `indexOpens`.
    func ensureIndexSaved() throws {
        try saveIndex()
    }

    /// True if the index in `directory` decrypts with `masterKey`. Used to find the decoy vault, whose
    /// directory name changes when its pattern changes but whose master key does not.
    nonisolated static func indexOpens(directory: URL, vaultID: String, masterKey: SymmetricKey) -> Bool {
        let key = VaultCrypto.deriveKey(from: masterKey, purpose: .metadata)
        return (try? loadIndex(directory: directory, vaultID: vaultID, key: key, requireFile: true)) != nil
    }

    // MARK: Private

    private func saveIndex() throws {
        try Self.writeIndex(index, to: directory, key: metadataKey)
    }

    private static func writeIndex(_ index: VaultIndex, to directory: URL, key: SymmetricKey) throws {
        let raw = try JSONEncoder().encode(index)
        let sealed = try VaultCrypto.seal(raw, using: key, authenticating: indexAAD)
        try sealed.write(to: directory.appending(path: indexFileName), options: [.atomic, .completeFileProtection])
    }

    private func itemKey(_ id: UUID) -> SymmetricKey {
        VaultCrypto.deriveKey(from: masterKey, purpose: .item, salt: id.rawBytes)
    }

    private func thumbnailKey(_ id: UUID) -> SymmetricKey {
        VaultCrypto.deriveKey(from: masterKey, purpose: .thumbnail, salt: id.rawBytes)
    }

    private func itemURL(_ id: UUID) -> URL {
        directory.appending(path: "items/\(id.uuidString).vcf")
    }

    private func thumbnailURL(_ id: UUID) -> URL {
        directory.appending(path: "thumbs/\(id.uuidString).vct")
    }

    private func removeFiles(for id: UUID) {
        try? FileManager.default.removeItem(at: itemURL(id))
        try? FileManager.default.removeItem(at: itemURL(id).appendingPathExtension("partial"))
        try? FileManager.default.removeItem(at: thumbnailURL(id))
    }

    /// v2 is not bound to the vault ID, because the ID (the directory name) changes with the pattern. The metadata
    /// key comes from the vault's own random master key, so an index still can't be moved to another vault.
    private static let indexAAD = Data("velcrypt.index.v2".utf8)

    /// v1 bound the index to the vault ID. Still read, and rewritten as v2 when the vault opens.
    private static func legacyIndexAAD(_ vaultID: String) -> Data {
        Data("velcrypt.index.v1".utf8) + Data(vaultID.utf8)
    }

    /// Returns the index and whether it was in the v1 format. A missing file is an empty index, unless `requireFile`.
    private static func loadIndex(
        directory: URL,
        vaultID: String,
        key: SymmetricKey,
        requireFile: Bool = false
    ) throws -> (index: VaultIndex, isLegacy: Bool) {
        let url = directory.appending(path: indexFileName)
        guard FileManager.default.fileExists(atPath: url.path(percentEncoded: false)) else {
            if requireFile { throw StoreError.corruptedIndex }
            return (VaultIndex(), false)
        }
        do {
            let sealed = try Data(contentsOf: url)
            if let raw = try? VaultCrypto.open(sealed, using: key, authenticating: indexAAD) {
                return (try JSONDecoder().decode(VaultIndex.self, from: raw), false)
            }
            let raw = try VaultCrypto.open(sealed, using: key, authenticating: legacyIndexAAD(vaultID))
            return (try JSONDecoder().decode(VaultIndex.self, from: raw), true)
        } catch {
            throw StoreError.corruptedIndex
        }
    }

    private static func createSubdirectories(in directory: URL) throws {
        for name in ["items", "thumbs"] {
            try FileManager.default.createDirectory(
                at: directory.appending(path: name, directoryHint: .isDirectory),
                withIntermediateDirectories: true,
                attributes: [.protectionKey: FileProtectionType.complete]
            )
        }
    }
}
