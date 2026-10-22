import CryptoKit
import Foundation
import UniformTypeIdentifiers

/// Password-protected backup of one vault, readable on any iPhone.
///
///     header (41 B)   "VCB1" | version u8 | rounds u32 LE | salt (32)
///     entries         per item: ChunkedCipher stream, key = HKDF(backupKey, item salt = uuid),
///                     then its thumbnail if any: AES-GCM(HKDF(backupKey, thumbnail salt = uuid))
///     manifest        AES-GCM(HKDF(backupKey, manifest), JSON Manifest), AAD = header
///     trailer (8 B)   manifest length u64 LE
///
/// backupKey = PBKDF2-SHA512(password, salt, rounds). The unlock pattern is not used: the device salt
/// never leaves this iPhone, and a pattern is too short to protect a file that can be attacked offline.
/// A backup covers only the open vault, so it never reveals that other vaults exist.
enum VaultBackup {
    enum BackupError: Error, Equatable {
        case notABackup
        case unsupportedVersion
        case wrongPassword
        case damaged
    }

    struct Manifest: Codable, Sendable {
        var version = 1
        var createdAt: Date
        var albums: [Album]
        var entries: [Entry]
    }

    struct Entry: Codable, Sendable {
        var item: VaultItem
        var offset: UInt64
        var length: UInt64
        var thumbnailOffset: UInt64?
        var thumbnailLength: UInt64?
    }

    /// A backup whose password has been checked.
    struct Opened: Sendable {
        let url: URL
        let key: SymmetricKey
        let manifest: Manifest
    }

    struct RestoreResult: Equatable, Sendable {
        var restored = 0
        /// Already in this vault, e.g. when the same backup is restored twice.
        var skipped = 0
        var failed = 0
    }

    static let fileExtension = "velcrypt"
    static let contentType = UTType(exportedAs: "com.velcrypt.backup", conformingTo: .data)
    static let minimumPasswordLength = 8
    static let headerLength = 41
    private static let magic = Data("VCB1".utf8)
    private static let formatVersion: UInt8 = 1
    private static let trailerLength: UInt64 = 8
    /// Upper bound on rounds accepted from a file, so a crafted header can't hang the app.
    private static let maximumRounds: UInt32 = 50_000_000

    // MARK: Temporary files

    /// Finished backups wait here until the user has saved them. They are encrypted, so they survive
    /// backgrounding (unlike `TemporaryFiles`), and are deleted after saving and at launch.
    static var temporaryDirectory: URL {
        URL.temporaryDirectory.appending(path: "Backups", directoryHint: .isDirectory)
    }

    static func makeTemporaryURL(date: Date = .now) throws -> URL {
        let folder = temporaryDirectory.appending(path: UUID().uuidString, directoryHint: .isDirectory)
        try FileManager.default.createDirectory(
            at: folder,
            withIntermediateDirectories: true,
            attributes: [.protectionKey: FileProtectionType.complete]
        )
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd HH.mm"
        return folder.appending(path: "Velcrypt Backup \(formatter.string(from: date)).\(fileExtension)")
    }

    static func removeTemporary(_ url: URL) {
        try? FileManager.default.removeItem(at: url.deletingLastPathComponent())
    }

    static func purgeTemporaryFiles() {
        try? FileManager.default.removeItem(at: temporaryDirectory)
    }

    // MARK: Write

    /// Writes a backup of everything in `store` to a new file at `url`. On failure or cancellation the file is removed.
    /// Runs off the main actor; key derivation alone takes about a second.
    static func write(
        store: VaultStore,
        password: String,
        to url: URL,
        rounds: UInt32? = nil,
        progress: @escaping @Sendable (_ completed: Int, _ total: Int) async -> Void = { _, _ in }
    ) async throws {
        let rounds = rounds ?? KeyDerivation.calibratedRounds(milliseconds: 1000)
        let salt = VaultCrypto.randomBytes(32)
        let header = makeHeader(rounds: rounds, salt: salt)
        let key = try KeyDerivation.pbkdf2(password: normalized(password), salt: salt, rounds: rounds, prf: .sha512)
        let snapshot = await store.snapshot

        guard FileManager.default.createFile(
            atPath: url.path(percentEncoded: false),
            contents: header,
            attributes: [.protectionKey: FileProtectionType.complete]
        ) else {
            throw CocoaError(.fileWriteUnknown)
        }
        do {
            var offset = UInt64(header.count)
            var entries: [Entry] = []
            for (i, item) in snapshot.items.enumerated() {
                try Task.checkCancellation()
                let length = try await store.exportContent(item.id, appendingTo: url, backupKey: itemKey(key, item.id))
                var entry = Entry(item: item, offset: offset, length: length)
                offset += length
                if item.hasThumbnail, let thumbnail = try await store.thumbnailData(for: item.id) {
                    let sealed = try VaultCrypto.seal(thumbnail, using: thumbnailKey(key, item.id), authenticating: item.id.rawBytes)
                    try append(sealed, to: url)
                    entry.thumbnailOffset = offset
                    entry.thumbnailLength = UInt64(sealed.count)
                    offset += UInt64(sealed.count)
                }
                entries.append(entry)
                await progress(i + 1, snapshot.items.count)
            }
            let manifest = Manifest(createdAt: .now, albums: snapshot.albums, entries: entries)
            let sealed = try VaultCrypto.seal(JSONEncoder().encode(manifest), using: manifestKey(key), authenticating: header)
            var trailer = Data()
            withUnsafeBytes(of: UInt64(sealed.count).littleEndian) { trailer.append(contentsOf: $0) }
            try append(sealed + trailer, to: url)
        } catch {
            try? FileManager.default.removeItem(at: url)
            throw error
        }
    }

    // MARK: Read

    /// Checks the file and password and reads the manifest. Nothing is written.
    static func open(_ url: URL, password: String) async throws -> Opened {
        let handle = try FileHandle(forReadingFrom: url)
        defer { try? handle.close() }
        let fileLength = try handle.seekToEnd()
        guard fileLength >= UInt64(headerLength) + trailerLength else { throw BackupError.notABackup }

        try handle.seek(toOffset: 0)
        guard let header = try handle.read(upToCount: headerLength), header.count == headerLength,
              header.prefix(4) == magic else {
            throw BackupError.notABackup
        }
        guard header[header.startIndex + 4] == formatVersion else { throw BackupError.unsupportedVersion }
        let rounds = readUInt32(header, at: 5)
        let salt = header.subdata(in: (header.startIndex + 9)..<(header.startIndex + headerLength))
        guard rounds > 0, rounds <= maximumRounds else { throw BackupError.damaged }

        try handle.seek(toOffset: fileLength - trailerLength)
        guard let trailer = try handle.read(upToCount: Int(trailerLength)), trailer.count == Int(trailerLength) else {
            throw BackupError.damaged
        }
        let manifestLength = readUInt64(trailer, at: 0)
        guard manifestLength >= 28, manifestLength <= fileLength - UInt64(headerLength) - trailerLength else {
            throw BackupError.damaged
        }
        try handle.seek(toOffset: fileLength - trailerLength - manifestLength)
        guard let sealed = try handle.read(upToCount: Int(manifestLength)), sealed.count == Int(manifestLength) else {
            throw BackupError.damaged
        }

        let key = try KeyDerivation.pbkdf2(password: normalized(password), salt: salt, rounds: rounds, prf: .sha512)
        let raw: Data
        do {
            raw = try VaultCrypto.open(sealed, using: manifestKey(key), authenticating: header)
        } catch {
            throw BackupError.wrongPassword
        }
        guard let manifest = try? JSONDecoder().decode(Manifest.self, from: raw) else { throw BackupError.damaged }
        guard manifest.version == 1 else { throw BackupError.unsupportedVersion }
        return Opened(url: url, key: key, manifest: manifest)
    }

    /// Adds the backup's albums and items to `store`. Items the vault already has are skipped,
    /// and an item that can't be read is counted as failed without stopping the rest.
    static func restore(
        _ backup: Opened,
        into store: VaultStore,
        progress: @escaping @Sendable (_ completed: Int, _ total: Int) async -> Void = { _, _ in }
    ) async throws -> RestoreResult {
        try await store.mergeAlbums(backup.manifest.albums)
        var result = RestoreResult()
        let entries = backup.manifest.entries
        for (i, entry) in entries.enumerated() {
            try Task.checkCancellation()
            let id = entry.item.id
            do {
                var thumbnail: Data?
                if let offset = entry.thumbnailOffset, let length = entry.thumbnailLength {
                    // A damaged thumbnail is dropped rather than failing the item; the grid shows a placeholder.
                    if let sealed = try? read(backup.url, offset: offset, length: length) {
                        thumbnail = try? VaultCrypto.open(sealed, using: thumbnailKey(backup.key, id), authenticating: id.rawBytes)
                    }
                }
                let added = try await store.restoreItem(
                    entry.item, from: backup.url, offset: entry.offset, length: entry.length,
                    backupKey: itemKey(backup.key, id), thumbnail: thumbnail
                )
                if added { result.restored += 1 } else { result.skipped += 1 }
            } catch is CancellationError {
                throw CancellationError()
            } catch {
                result.failed += 1
            }
            await progress(i + 1, entries.count)
        }
        return result
    }

    // MARK: Helpers

    /// Passwords are compared as Unicode NFC, so "é" typed two different ways opens the same backup.
    private static func normalized(_ password: String) -> Data {
        Data(password.precomposedStringWithCanonicalMapping.utf8)
    }

    private static func manifestKey(_ key: SymmetricKey) -> SymmetricKey {
        VaultCrypto.deriveKey(from: key, purpose: .backupManifest)
    }

    private static func itemKey(_ key: SymmetricKey, _ id: UUID) -> SymmetricKey {
        VaultCrypto.deriveKey(from: key, purpose: .backupItem, salt: id.rawBytes)
    }

    private static func thumbnailKey(_ key: SymmetricKey, _ id: UUID) -> SymmetricKey {
        VaultCrypto.deriveKey(from: key, purpose: .backupThumbnail, salt: id.rawBytes)
    }

    private static func makeHeader(rounds: UInt32, salt: Data) -> Data {
        var header = magic
        header.append(formatVersion)
        withUnsafeBytes(of: rounds.littleEndian) { header.append(contentsOf: $0) }
        header.append(salt)
        return header
    }

    private static func append(_ data: Data, to url: URL) throws {
        let output = try FileHandle(forWritingTo: url)
        defer { try? output.close() }
        try output.seekToEnd()
        try output.write(contentsOf: data)
    }

    private static func read(_ url: URL, offset: UInt64, length: UInt64) throws -> Data {
        let input = try FileHandle(forReadingFrom: url)
        defer { try? input.close() }
        try input.seek(toOffset: offset)
        guard let data = try input.read(upToCount: Int(length)), data.count == Int(length) else { throw BackupError.damaged }
        return data
    }

    private static func readUInt32(_ data: Data, at offset: Int) -> UInt32 {
        let start = data.startIndex + offset
        return UInt32(littleEndian: data.subdata(in: start..<(start + 4)).withUnsafeBytes { $0.loadUnaligned(as: UInt32.self) })
    }

    private static func readUInt64(_ data: Data, at offset: Int) -> UInt64 {
        let start = data.startIndex + offset
        return UInt64(littleEndian: data.subdata(in: start..<(start + 8)).withUnsafeBytes { $0.loadUnaligned(as: UInt64.self) })
    }
}
