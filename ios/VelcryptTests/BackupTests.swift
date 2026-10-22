import CryptoKit
import XCTest
@testable import Velcrypt

final class ChunkedCipherReencryptTests: XCTestCase {
    func testReencryptChangesKeyAndKeepsContent() throws {
        let dir = FileManager.default.temporaryDirectory.appending(path: "Reencrypt-\(UUID().uuidString)")
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: dir) }
        let id = UUID(), oldKey = SymmetricKey(size: .bits256), newKey = SymmetricKey(size: .bits256)
        let plaintext = VaultCrypto.randomBytes(100)
        let source = dir.appending(path: "source.vcf")
        try ChunkedCipher.encrypt(data: plaintext, to: source, key: oldKey, itemID: id, chunkSize: 16)

        let input = try FileHandle(forReadingFrom: source)
        defer { try? input.close() }
        let destination = dir.appending(path: "dest.vcf")
        let written = try ChunkedCipher.reencrypt(from: input, key: oldKey, toFileAt: destination, newKey: newKey, itemID: id)

        let sourceSize = try FileManager.default.attributesOfItem(atPath: source.path)[.size] as? Int
        XCTAssertEqual(Int(written), sourceSize)
        XCTAssertEqual(try ChunkedCipher.decrypt(fileAt: destination, key: newKey, itemID: id), plaintext)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: destination, key: oldKey, itemID: id))
    }
}

final class VaultBackupTests: XCTestCase {
    private var dir: URL!
    private let password = "correct horse battery"

    override func setUpWithError() throws {
        dir = FileManager.default.temporaryDirectory.appending(path: "BackupTests-\(UUID().uuidString)")
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
    }

    override func tearDown() {
        try? FileManager.default.removeItem(at: dir)
    }

    private func makeStore(_ name: String) throws -> VaultStore {
        try VaultStore(directory: dir.appending(path: name), vaultID: name, masterKey: SymmetricKey(size: .bits256))
    }

    private func item(_ filename: String, kind: ItemKind = .photo, album: UUID? = nil) -> VaultItem {
        VaultItem(id: UUID(), kind: kind, filename: filename, contentType: kind == .document ? "public.plain-text" : "public.jpeg",
                  byteCount: 0, importedAt: .now, capturedAt: nil, pixelWidth: nil, pixelHeight: nil, duration: nil,
                  albumID: album, hasThumbnail: false)
    }

    private func writeBackup(of store: VaultStore, password: String? = nil) async throws -> URL {
        let url = dir.appending(path: "backup-\(UUID().uuidString).velcrypt")
        try await VaultBackup.write(store: store, password: password ?? self.password, to: url, rounds: TestConstants.fastRounds)
        return url
    }

    func testRoundTripToAnotherVault() async throws {
        let source = try makeStore("source")
        let album = try await source.createAlbum(named: "Trip")
        // Larger than one 1 MiB chunk, so the multi-chunk path is covered.
        let big = VaultCrypto.randomBytes((1 << 20) + 12_345)
        let photo = item("IMG_0001.jpg", album: album.id)
        let note = item("Secret.txt", kind: .document)
        try await source.add(.data(big), item: photo, thumbnail: Data([7, 7, 7]))
        try await source.add(.data(Data("hello".utf8)), item: note, thumbnail: nil)

        let url = try await writeBackup(of: source)
        let opened = try await VaultBackup.open(url, password: password)
        XCTAssertEqual(opened.manifest.entries.count, 2)

        let target = try makeStore("target")
        let result = try await VaultBackup.restore(opened, into: target)
        XCTAssertEqual(result, VaultBackup.RestoreResult(restored: 2, skipped: 0, failed: 0))

        let snapshot = await target.snapshot
        XCTAssertEqual(snapshot.albums.map(\.name), ["Trip"])
        XCTAssertEqual(Set(snapshot.items.map(\.id)), [photo.id, note.id])
        XCTAssertEqual(snapshot.items.first { $0.id == photo.id }?.albumID, album.id)
        let restoredPhoto = try await target.contentData(for: photo.id)
        XCTAssertEqual(restoredPhoto, big)
        let restoredNote = try await target.contentData(for: note.id)
        XCTAssertEqual(restoredNote, Data("hello".utf8))
        let thumbnail = try await target.thumbnailData(for: photo.id)
        XCTAssertEqual(thumbnail, Data([7, 7, 7]))
        let noteThumbnail = try await target.thumbnailData(for: note.id)
        XCTAssertNil(noteThumbnail)
    }

    func testRestoringTwiceAddsNothing() async throws {
        let source = try makeStore("source")
        try await source.add(.data(Data([1, 2, 3])), item: item("a.jpg"), thumbnail: nil)
        let url = try await writeBackup(of: source)
        let target = try makeStore("target")

        let opened = try await VaultBackup.open(url, password: password)
        _ = try await VaultBackup.restore(opened, into: target)
        let second = try await VaultBackup.restore(opened, into: target)
        XCTAssertEqual(second, VaultBackup.RestoreResult(restored: 0, skipped: 1, failed: 0))
        let count = await target.snapshot.items.count
        XCTAssertEqual(count, 1)
    }

    func testWrongPasswordIsRejected() async throws {
        let source = try makeStore("source")
        try await source.add(.data(Data([1])), item: item("a.jpg"), thumbnail: nil)
        let url = try await writeBackup(of: source)
        do {
            _ = try await VaultBackup.open(url, password: "wrong password")
            XCTFail("Expected wrongPassword")
        } catch {
            XCTAssertEqual(error as? VaultBackup.BackupError, .wrongPassword)
        }
    }

    func testOtherFilesAreNotBackups() async throws {
        let url = dir.appending(path: "photo.jpg")
        try VaultCrypto.randomBytes(500).write(to: url)
        do {
            _ = try await VaultBackup.open(url, password: password)
            XCTFail("Expected notABackup")
        } catch {
            XCTAssertEqual(error as? VaultBackup.BackupError, .notABackup)
        }
    }

    func testBackupContainsNoPlaintext() async throws {
        let source = try makeStore("source")
        let marker = Data("PLAINTEXT-MARKER-1234567890".utf8)
        try await source.add(.data(marker), item: item("VeryPrivateFilename.jpg"), thumbnail: marker)
        _ = try await source.createAlbum(named: "PrivateAlbumName")
        let url = try await writeBackup(of: source)
        let raw = try Data(contentsOf: url)
        XCTAssertNil(raw.range(of: marker))
        XCTAssertNil(raw.range(of: Data("VeryPrivateFilename".utf8)))
        XCTAssertNil(raw.range(of: Data("PrivateAlbumName".utf8)))
    }

    func testDamagedItemIsSkippedAndOthersRestore() async throws {
        let source = try makeStore("source")
        let first = item("first.jpg"), second = item("second.jpg")
        try await source.add(.data(Data(repeating: 1, count: 64)), item: first, thumbnail: nil)
        try await source.add(.data(Data(repeating: 2, count: 64)), item: second, thumbnail: nil)
        let url = try await writeBackup(of: source)

        let opened = try await VaultBackup.open(url, password: password)
        let entry = try XCTUnwrap(opened.manifest.entries.first { $0.item.id == first.id })
        var raw = try Data(contentsOf: url)
        let target = Int(entry.offset) + ChunkedCipher.headerLength + 20
        raw[target] ^= 0xFF
        try raw.write(to: url)

        let store = try makeStore("target")
        let result = try await VaultBackup.restore(opened, into: store)
        XCTAssertEqual(result, VaultBackup.RestoreResult(restored: 1, skipped: 0, failed: 1))
        let ids = await store.snapshot.items.map(\.id)
        XCTAssertEqual(ids, [second.id])
        XCTAssertFalse(FileManager.default.fileExists(atPath: dir.appending(path: "target/items/\(first.id.uuidString).vcf").path))
    }

    func testPasswordIsUnicodeNormalized() async throws {
        let source = try makeStore("source")
        try await source.add(.data(Data([1])), item: item("a.jpg"), thumbnail: nil)
        let url = try await writeBackup(of: source, password: "caf\u{E9} password")
        let opened = try await VaultBackup.open(url, password: "cafe\u{301} password")
        XCTAssertEqual(opened.manifest.entries.count, 1)
    }

    func testEmptyVaultBackupRestores() async throws {
        let source = try makeStore("source")
        let url = try await writeBackup(of: source)
        let opened = try await VaultBackup.open(url, password: password)
        let target = try makeStore("target")
        let result = try await VaultBackup.restore(opened, into: target)
        XCTAssertEqual(result, VaultBackup.RestoreResult())
    }
}
