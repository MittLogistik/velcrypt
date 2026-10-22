import XCTest
@testable import Velcrypt

/// The duress pattern deletes data on purpose, so every path that must or must not delete is tested.
@MainActor
final class DuressTests: XCTestCase {
    private var store: InMemorySecretStore!
    private var files: VaultFileStore!
    private var defaults: UserDefaults!
    private var suiteName: String!

    /// Real vault: .sample. Decoy vault: .other. Duress pattern: .duress.
    private static let duress = try! UnlockPattern(dots: [24, 23, 22, 21, 20, 15, 10, 5])

    override func setUp() async throws {
        store = InMemorySecretStore()
        files = makeTemporaryFileStore()
        suiteName = "DuressTests.\(UUID().uuidString)"
        defaults = UserDefaults(suiteName: suiteName)
    }

    override func tearDown() async throws {
        try? files.deleteAll()
        defaults.removePersistentDomain(forName: suiteName)
    }

    private func makeSession() -> VaultSession {
        VaultSession(store: store, files: files, defaults: defaults,
                     keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }))
    }

    /// Creates the real vault (.sample, album "Real") and the decoy (.other, album "Decoy"), and leaves the decoy open.
    private func makeRealAndDecoy(_ session: VaultSession) async throws {
        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        await session.library?.load()
        await session.library?.createAlbum(named: "Real")
        session.lock()

        try await session.unlock(pattern: .other)
        await session.library?.load()
        await session.library?.createAlbum(named: "Decoy")
    }

    private func albumNames(_ session: VaultSession) async -> [String] {
        await session.library?.load()
        return session.library?.albums.map(\.name) ?? []
    }

    func testDuressRecordAlwaysExistsWithFixedLength() async throws {
        let session = makeSession()
        try await session.createFirstVault(pattern: .sample)
        let placeholder = try XCTUnwrap(store.data(for: DuressRecord.account))
        XCTAssertEqual(placeholder.count, DuressRecord.length)

        session.finishOnboarding()
        await session.library?.load()
        await session.library?.createAlbum(named: "Decoy")
        try await session.setDuressPattern(Self.duress)
        let armed = try XCTUnwrap(store.data(for: DuressRecord.account))
        XCTAssertEqual(armed.count, DuressRecord.length)
        XCTAssertNotEqual(armed, placeholder)
    }

    func testDuressOpensDecoyAndDeletesOtherVaults() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        session.lock()
        XCTAssertEqual(files.vaultIDs().count, 2)

        try await session.unlock(pattern: Self.duress)
        let names = await albumNames(session)
        XCTAssertEqual(names, ["Decoy"])
        XCTAssertEqual(files.vaultIDs().count, 1)

        // The real pattern now opens an empty, unsaved vault.
        session.lock()
        try await session.unlock(pattern: .sample)
        let realNames = await albumNames(session)
        XCTAssertEqual(realNames, [])
        XCTAssertEqual(session.library?.isNewVault, true)
    }

    func testNormalPatternsAreUnaffected() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        session.lock()

        try await session.unlock(pattern: .sample)
        let real = await albumNames(session)
        XCTAssertEqual(real, ["Real"])
        session.lock()
        try await session.unlock(pattern: .other)
        let decoy = await albumNames(session)
        XCTAssertEqual(decoy, ["Decoy"])
        XCTAssertEqual(files.vaultIDs().count, 2)
    }

    func testDuressPatternMustNotOpenAVault() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        for pattern in [UnlockPattern.sample, .other] {
            do {
                try await session.setDuressPattern(pattern)
                XCTFail("A vault pattern must not become the duress pattern")
            } catch {
                XCTAssertEqual(error as? VaultError, .patternInUse)
            }
        }
    }

    func testCannotChangeAVaultToTheDuressPattern() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        do {
            try await session.changePattern(to: Self.duress)
            XCTFail("Changing to the duress pattern must fail")
        } catch {
            XCTAssertEqual(error as? VaultError, .patternInUse)
        }
        XCTAssertEqual(files.vaultIDs().count, 2)
    }

    func testDecoyIsFoundAfterItsPatternChanges() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        try await session.changePattern(to: .third)
        session.lock()

        try await session.unlock(pattern: Self.duress)
        let names = await albumNames(session)
        XCTAssertEqual(names, ["Decoy"])
        XCTAssertEqual(files.vaultIDs().count, 1)
    }

    func testTurningOffNeedsTheDuressPattern() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)

        let wrong = try await session.removeDuressPattern(.sample)
        XCTAssertFalse(wrong)
        let right = try await session.removeDuressPattern(Self.duress)
        XCTAssertTrue(right)
        XCTAssertEqual(try store.data(for: DuressRecord.account)?.count, DuressRecord.length)

        // Off: the former duress pattern is an ordinary new pattern and deletes nothing.
        session.lock()
        try await session.unlock(pattern: Self.duress)
        XCTAssertEqual(session.library?.isNewVault, true)
        XCTAssertEqual(files.vaultIDs().count, 2)
    }

    func testDuressWithDeletedDecoyDeletesEverything() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        try session.deleteCurrentVault()

        try await session.unlock(pattern: Self.duress)
        XCTAssertEqual(session.library?.isNewVault, true)
        XCTAssertEqual(files.vaultIDs().count, 0)
    }

    func testEraseEverythingResetsDuress() async throws {
        let session = makeSession()
        try await makeRealAndDecoy(session)
        try await session.setDuressPattern(Self.duress)
        try session.eraseEverything()

        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        await session.library?.load()
        await session.library?.createAlbum(named: "Fresh")
        session.lock()
        try await session.unlock(pattern: Self.duress)
        XCTAssertEqual(session.library?.isNewVault, true)
        XCTAssertEqual(files.vaultIDs().count, 1)
    }
}
