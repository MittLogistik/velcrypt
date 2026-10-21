import CryptoKit
import XCTest
@testable import Velcrypt

final class ChunkedCipherTests: XCTestCase {
    private var dir: URL!
    private let key = SymmetricKey(size: .bits256)
    private let id = UUID()

    override func setUpWithError() throws {
        dir = FileManager.default.temporaryDirectory.appending(path: "ChunkedCipherTests-\(UUID().uuidString)")
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
    }

    override func tearDown() {
        try? FileManager.default.removeItem(at: dir)
    }

    private func roundTrip(_ plaintext: Data, chunkSize: Int) throws -> Data {
        let url = dir.appending(path: "item.vcf")
        try ChunkedCipher.encrypt(data: plaintext, to: url, key: key, itemID: id, chunkSize: chunkSize)
        return try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id)
    }

    func testRoundTripAcrossChunkBoundaries() throws {
        for size in [0, 1, 15, 16, 17, 64, 100] {
            let plaintext = VaultCrypto.randomBytes(size)
            XCTAssertEqual(try roundTrip(plaintext, chunkSize: 16), plaintext, "size \(size)")
        }
    }

    func testFileLayoutSize() throws {
        let url = dir.appending(path: "layout.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 40), to: url, key: key, itemID: id, chunkSize: 16)
        let size = try FileManager.default.attributesOfItem(atPath: url.path)[.size] as? Int
        // header + 3 chunks (16, 16, 8) each with 28 bytes of nonce+tag
        XCTAssertEqual(size, ChunkedCipher.headerLength + 40 + 3 * 28)
    }

    func testFileSourceMatchesDataSource() throws {
        let plaintext = VaultCrypto.randomBytes(1000)
        let source = dir.appending(path: "plain.bin")
        try plaintext.write(to: source)
        let url = dir.appending(path: "from-file.vcf")
        try ChunkedCipher.encrypt(fileAt: source, to: url, key: key, itemID: id, chunkSize: 128)
        XCTAssertEqual(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id), plaintext)

        let out = dir.appending(path: "decrypted.bin")
        try ChunkedCipher.decrypt(fileAt: url, to: out, key: key, itemID: id)
        XCTAssertEqual(try Data(contentsOf: out), plaintext)
    }

    func testNoPartialFileLeftAfterSuccess() throws {
        let url = dir.appending(path: "clean.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 10), to: url, key: key, itemID: id)
        XCTAssertFalse(FileManager.default.fileExists(atPath: url.appendingPathExtension("partial").path))
    }

    func testTamperingIsDetected() throws {
        let url = dir.appending(path: "tamper.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 50), to: url, key: key, itemID: id, chunkSize: 16)
        var bytes = try Data(contentsOf: url)
        bytes[ChunkedCipher.headerLength + 20] ^= 0xFF
        try bytes.write(to: url)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id)) {
            XCTAssertEqual($0 as? ChunkedCipher.CipherError, .authenticationFailed)
        }
    }

    func testTruncationIsDetected() throws {
        let url = dir.appending(path: "truncate.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 50), to: url, key: key, itemID: id, chunkSize: 16)
        let bytes = try Data(contentsOf: url)
        // Drop the final chunk entirely: chunk boundaries still line up, but the count no longer matches.
        try bytes.prefix(bytes.count - (2 + 28)).write(to: url)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id))
    }

    func testTrailingDataIsDetected() throws {
        let url = dir.appending(path: "extend.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 20), to: url, key: key, itemID: id, chunkSize: 16)
        var bytes = try Data(contentsOf: url)
        bytes.append(0)
        try bytes.write(to: url)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id)) {
            XCTAssertEqual($0 as? ChunkedCipher.CipherError, .malformed)
        }
    }

    func testChunkReorderingIsDetected() throws {
        let url = dir.appending(path: "reorder.vcf")
        try ChunkedCipher.encrypt(data: VaultCrypto.randomBytes(32), to: url, key: key, itemID: id, chunkSize: 16)
        let bytes = try Data(contentsOf: url)
        let h = ChunkedCipher.headerLength, c = 16 + 28
        let swapped = bytes.prefix(h) + bytes.subdata(in: (h + c)..<(h + 2 * c)) + bytes.subdata(in: h..<(h + c))
        try swapped.write(to: url)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: id))
    }

    func testFileBoundToItemID() throws {
        let url = dir.appending(path: "bound.vcf")
        try ChunkedCipher.encrypt(data: Data(count: 10), to: url, key: key, itemID: id)
        XCTAssertThrowsError(try ChunkedCipher.decrypt(fileAt: url, key: key, itemID: UUID()))
    }

    func testChunkCount() {
        XCTAssertEqual(ChunkedCipher.chunkCount(length: 0, chunkSize: 16), 1)
        XCTAssertEqual(ChunkedCipher.chunkCount(length: 16, chunkSize: 16), 1)
        XCTAssertEqual(ChunkedCipher.chunkCount(length: 17, chunkSize: 16), 2)
    }
}

final class VaultStoreTests: XCTestCase {
    private var dir: URL!
    private let key = SymmetricKey(size: .bits256)

    override func setUpWithError() throws {
        dir = FileManager.default.temporaryDirectory.appending(path: "VaultStoreTests-\(UUID().uuidString)")
        try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
    }

    override func tearDown() {
        try? FileManager.default.removeItem(at: dir)
        TemporaryFiles.purgeAll()
    }

    private func makeStore(key: SymmetricKey? = nil) throws -> VaultStore {
        try VaultStore(directory: dir, vaultID: "test-vault", masterKey: key ?? self.key)
    }

    private func item(_ kind: ItemKind = .photo, album: UUID? = nil, bytes: Int64 = 3) -> VaultItem {
        VaultItem(id: UUID(), kind: kind, filename: "IMG_0001.jpg", contentType: "public.jpeg", byteCount: bytes,
                  importedAt: .now, capturedAt: nil, pixelWidth: nil, pixelHeight: nil, duration: nil,
                  albumID: album, hasThumbnail: false)
    }

    func testAddPersistsAcrossReopen() async throws {
        let store = try makeStore()
        let photo = item()
        try await store.add(.data(Data([1, 2, 3])), item: photo, thumbnail: Data([9, 9]))

        let reopened = try makeStore()
        let snapshot = await reopened.snapshot
        XCTAssertEqual(snapshot.items.map(\.id), [photo.id])
        XCTAssertTrue(snapshot.items[0].hasThumbnail)
        let content = try await reopened.contentData(for: photo.id)
        let thumbnail = try await reopened.thumbnailData(for: photo.id)
        XCTAssertEqual(content, Data([1, 2, 3]))
        XCTAssertEqual(thumbnail, Data([9, 9]))
    }

    func testIndexAndContentAreEncryptedOnDisk() async throws {
        let store = try makeStore()
        let photo = item()
        try await store.add(.data(Data("SECRET-PIXELS".utf8)), item: photo, thumbnail: nil)
        let index = try Data(contentsOf: dir.appending(path: VaultStore.indexFileName))
        XCTAssertNil(index.range(of: Data("IMG_0001".utf8)), "Filenames must not appear in plaintext")
        let content = try Data(contentsOf: dir.appending(path: "items/\(photo.id.uuidString).vcf"))
        XCTAssertNil(content.range(of: Data("SECRET-PIXELS".utf8)))
    }

    func testWrongKeyCannotOpenIndex() async throws {
        let store = try makeStore()
        try await store.add(.data(Data([1])), item: item(), thumbnail: nil)
        XCTAssertThrowsError(try makeStore(key: SymmetricKey(size: .bits256))) {
            XCTAssertEqual($0 as? VaultStore.StoreError, .corruptedIndex)
        }
    }

    func testDeleteRemovesFiles() async throws {
        let store = try makeStore()
        let photo = item()
        try await store.add(.data(Data([1])), item: photo, thumbnail: Data([2]))
        try await store.deleteItems([photo.id])
        let snapshot = await store.snapshot
        XCTAssertTrue(snapshot.items.isEmpty)
        XCTAssertFalse(FileManager.default.fileExists(atPath: dir.appending(path: "items/\(photo.id.uuidString).vcf").path))
        XCTAssertFalse(FileManager.default.fileExists(atPath: dir.appending(path: "thumbs/\(photo.id.uuidString).vct").path))
    }

    func testAlbumsLifecycle() async throws {
        let store = try makeStore()
        let album = try await store.createAlbum(named: "Travel")
        let a = item(), b = item()
        try await store.add(.data(Data([1])), item: a, thumbnail: nil)
        try await store.add(.data(Data([2])), item: b, thumbnail: nil)
        try await store.moveItems([a.id, b.id], to: album.id)
        try await store.renameAlbum(album.id, to: "Trips")
        try await store.setAlbumCover(album.id, itemID: a.id)

        var snapshot = try await makeStore().snapshot
        XCTAssertEqual(snapshot.albums.first?.name, "Trips")
        XCTAssertEqual(snapshot.albums.first?.coverItemID, a.id)
        XCTAssertEqual(snapshot.items.filter { $0.albumID == album.id }.count, 2)

        try await store.deleteAlbum(album.id, deletingItems: false)
        snapshot = await store.snapshot
        XCTAssertTrue(snapshot.albums.isEmpty)
        XCTAssertEqual(snapshot.items.count, 2)
        XCTAssertTrue(snapshot.items.allSatisfy { $0.albumID == nil })
    }

    func testDeleteAlbumWithItems() async throws {
        let store = try makeStore()
        let album = try await store.createAlbum(named: "Private")
        let inside = item(album: album.id), outside = item()
        try await store.add(.data(Data([1])), item: inside, thumbnail: nil)
        try await store.add(.data(Data([2])), item: outside, thumbnail: nil)
        try await store.deleteAlbum(album.id, deletingItems: true)
        let snapshot = await store.snapshot
        XCTAssertEqual(snapshot.items.map(\.id), [outside.id])
    }

    func testDecryptToTemporaryFileKeepsName() async throws {
        let store = try makeStore()
        let photo = item()
        try await store.add(.data(Data([7, 7, 7])), item: photo, thumbnail: nil)
        let url = try await store.decryptToTemporaryFile(photo.id)
        XCTAssertEqual(url.lastPathComponent, "IMG_0001.jpg")
        XCTAssertEqual(try Data(contentsOf: url), Data([7, 7, 7]))
        TemporaryFiles.remove(url)
        XCTAssertFalse(FileManager.default.fileExists(atPath: url.path))
    }

    func testTemporaryFilenameSanitising() {
        XCTAssertEqual(TemporaryFiles.sanitized("../../etc/passwd"), "..-..-etc-passwd")
        XCTAssertEqual(TemporaryFiles.sanitized("  "), "file")
        XCTAssertEqual(TemporaryFiles.sanitized(".."), "file")
    }
}

@MainActor
final class VaultLibraryTests: XCTestCase {
    func testEmptyVaultIsPersistedOnlyOnFirstWrite() async throws {
        let store = InMemorySecretStore()
        let files = makeTemporaryFileStore()
        defer { try? files.deleteAll() }
        let defaults = UserDefaults(suiteName: "VaultLibraryTests.\(UUID().uuidString)")!
        let session = VaultSession(store: store, files: files, defaults: defaults,
                                   keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }))
        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        session.lock()

        try await session.unlock(pattern: .other)
        let library = try XCTUnwrap(session.library)
        await library.load()
        XCTAssertTrue(library.items.isEmpty)
        XCTAssertEqual(files.vaultIDs().count, 1)

        let album = await library.createAlbum(named: "Decoy")
        XCTAssertNotNil(album)
        XCTAssertEqual(files.vaultIDs().count, 2, "Creating an album is the first write and persists the vault")

        session.lock()
        XCTAssertNil(session.library)
        try await session.unlock(pattern: .other)
        let reopened = try XCTUnwrap(session.library)
        await reopened.load()
        XCTAssertEqual(reopened.albums.map(\.name), ["Decoy"])
    }
}

@MainActor
final class NewVaultConfirmationTests: XCTestCase {
    func testOnlyNeverSavedVaultsNeedConfirmationAndOnlyTheSamePatternConfirms() async throws {
        let store = InMemorySecretStore()
        let files = makeTemporaryFileStore()
        defer { try? files.deleteAll() }
        let defaults = UserDefaults(suiteName: "NewVaultConfirmationTests.\(UUID().uuidString)")!
        let session = VaultSession(store: store, files: files, defaults: defaults,
                                   keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }))
        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        XCTAssertEqual(session.library?.needsCreationConfirmation, false, "The onboarding vault is already saved")
        session.lock()

        try await session.unlock(pattern: .other)
        let library = try XCTUnwrap(session.library)
        XCTAssertTrue(library.needsCreationConfirmation)
        let mismatch = await session.patternOpensCurrentVault(.third)
        let match = await session.patternOpensCurrentVault(.other)
        XCTAssertFalse(mismatch)
        XCTAssertTrue(match)
        library.creationConfirmed = true
        XCTAssertFalse(library.needsCreationConfirmation)
    }
}
