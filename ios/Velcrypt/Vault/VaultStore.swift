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
        self.index = try Self.loadIndex(directory: directory, vaultID: vaultID, key: metadataKey)
        try Self.createSubdirectories(in: directory)
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

    // MARK: Private

    private func saveIndex() throws {
        let raw = try JSONEncoder().encode(index)
        let sealed = try VaultCrypto.seal(raw, using: metadataKey, authenticating: Self.indexAAD(vaultID))
        try sealed.write(to: directory.appending(path: Self.indexFileName), options: [.atomic, .completeFileProtection])
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

    private static func indexAAD(_ vaultID: String) -> Data {
        Data("velcrypt.index.v1".utf8) + Data(vaultID.utf8)
    }

    private static func loadIndex(directory: URL, vaultID: String, key: SymmetricKey) throws -> VaultIndex {
        let url = directory.appending(path: indexFileName)
        guard FileManager.default.fileExists(atPath: url.path(percentEncoded: false)) else { return VaultIndex() }
        do {
            let raw = try VaultCrypto.open(Data(contentsOf: url), using: key, authenticating: indexAAD(vaultID))
            return try JSONDecoder().decode(VaultIndex.self, from: raw)
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
