import CryptoKit
import XCTest
@testable import Velcrypt

final class UnlockPatternTests: XCTestCase {
    func testRequiresSixDots() {
        XCTAssertThrowsError(try UnlockPattern(dots: [0, 1, 6, 7, 12])) {
            XCTAssertEqual($0 as? UnlockPattern.ValidationError, .tooShort)
        }
    }

    func testDirectionChanges() {
        // Six distinct dots on one straight line don't fit on a 5×5 grid, so test the counter directly.
        XCTAssertEqual(UnlockPattern.directionChanges(in: [0, 1, 2, 3, 4]), 0)
        XCTAssertEqual(UnlockPattern.directionChanges(in: [0, 2, 4]), 0, "Jumps are normalised to unit direction")
        XCTAssertEqual(UnlockPattern.directionChanges(in: [0, 1, 2, 7]), 1)
        XCTAssertEqual(UnlockPattern.directionChanges(in: [0, 1, 6, 7, 12]), 3)
    }

    func testRejectsDuplicatesAndOutOfRange() {
        XCTAssertThrowsError(try UnlockPattern(dots: [0, 1, 2, 7, 12, 12]))
        XCTAssertThrowsError(try UnlockPattern(dots: [0, 1, 2, 7, 12, 25]))
    }

    func testAcceptsValidPattern() throws {
        XCTAssertEqual(try UnlockPattern(dots: [0, 1, 2, 7, 12, 17]).dots, [0, 1, 2, 7, 12, 17])
    }

    func testDotsBetween() {
        XCTAssertEqual(UnlockPattern.dotsBetween(0, 4), [1, 2, 3])
        XCTAssertEqual(UnlockPattern.dotsBetween(0, 24), [6, 12, 18])
        XCTAssertEqual(UnlockPattern.dotsBetween(0, 12), [6])
        XCTAssertEqual(UnlockPattern.dotsBetween(0, 7), [], "Knight-like moves pass no dot centres")
        XCTAssertEqual(UnlockPattern.dotsBetween(20, 0), [15, 10, 5])
    }

    func testExtendSkipsAlreadyVisitedDots() {
        XCTAssertEqual(UnlockPattern.extend([0], with: 4), [0, 1, 2, 3, 4])
        XCTAssertEqual(UnlockPattern.extend([2, 7], with: 0).last, 0)
        XCTAssertEqual(UnlockPattern.extend([2, 0], with: 4), [2, 0, 1, 3, 4], "Already-used dot 2 is skipped; 1 and 3 are picked up")
        XCTAssertEqual(UnlockPattern.extend([0, 1], with: 1), [0, 1])
    }

    func testKeyMaterialIsOrderSensitive() throws {
        let a = try UnlockPattern(dots: [0, 1, 2, 7, 12, 17])
        let b = try UnlockPattern(dots: [17, 12, 7, 2, 1, 0])
        XCTAssertEqual(a.keyMaterial, Data("pattern5:0,1,2,7,12,17".utf8))
        XCTAssertNotEqual(a.keyMaterial, b.keyMaterial)
    }
}

final class VaultKeyringTests: XCTestCase {
    private func makeKeyring(_ store: SecretStore = InMemorySecretStore()) -> VaultKeyring {
        VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds })
    }

    func testRequiresSetup() {
        XCTAssertThrowsError(try makeKeyring().credentials(for: .sample)) {
            XCTAssertEqual($0 as? VaultError, .notSetUp)
        }
    }

    func testCredentialsAreDeterministicPerPattern() throws {
        let keyring = makeKeyring()
        try keyring.setUpIfNeeded()
        let a = try keyring.credentials(for: .sample)
        let b = try keyring.credentials(for: .sample)
        let c = try keyring.credentials(for: .other)
        XCTAssertEqual(a.vaultID, b.vaultID)
        XCTAssertEqual(a.wrappingKey, b.wrappingKey)
        XCTAssertNotEqual(a.vaultID, c.vaultID)
        XCTAssertNotEqual(a.wrappingKey, c.wrappingKey)
        XCTAssertEqual(a.vaultID.count, 32)
    }

    func testDifferentDevicesProduceDifferentVaults() throws {
        let one = makeKeyring(), two = makeKeyring()
        try one.setUpIfNeeded()
        try two.setUpIfNeeded()
        XCTAssertNotEqual(try one.credentials(for: .sample).vaultID, try two.credentials(for: .sample).vaultID)
    }

    func testSetupIsIdempotent() throws {
        let keyring = makeKeyring()
        try keyring.setUpIfNeeded()
        let before = try keyring.credentials(for: .sample).vaultID
        try keyring.setUpIfNeeded()
        XCTAssertEqual(try keyring.credentials(for: .sample).vaultID, before)
    }
}

@MainActor
final class VaultSessionTests: XCTestCase {
    private var store: InMemorySecretStore!
    private var files: VaultFileStore!
    private var defaults: UserDefaults!
    private var suiteName: String!

    override func setUp() async throws {
        store = InMemorySecretStore()
        files = makeTemporaryFileStore()
        suiteName = "VaultSessionTests.\(UUID().uuidString)"
        defaults = UserDefaults(suiteName: suiteName)
    }

    override func tearDown() async throws {
        try? files.deleteAll()
        defaults.removePersistentDomain(forName: suiteName)
    }

    private func makeSession() -> VaultSession {
        VaultSession(
            store: store,
            files: files,
            defaults: defaults,
            keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds })
        )
    }

    private func onboard(_ session: VaultSession, pattern: UnlockPattern = .sample) async throws {
        try await session.createFirstVault(pattern: pattern)
        session.finishOnboarding()
    }

    func testFreshInstallStartsInOnboarding() {
        XCTAssertEqual(makeSession().phase, .onboarding)
    }

    func testFreshInstallWipesStaleKeychainItems() throws {
        try store.set(Data("stale".utf8), for: VaultKeyring.account)
        XCTAssertEqual(makeSession().phase, .onboarding)
        XCTAssertNil(try store.data(for: VaultKeyring.account))
    }

    func testOnboardingCreatesPersistedVault() async throws {
        let session = makeSession()
        try await onboard(session)
        XCTAssertEqual(session.phase, .unlocked)
        XCTAssertNotNil(session.currentMasterKey)
        XCTAssertEqual(files.vaultIDs().count, 1)
    }

    func testRelaunchStartsLocked() async throws {
        try await onboard(makeSession())
        XCTAssertEqual(makeSession().phase, .locked)
    }

    func testSamePatternReopensSameVault() async throws {
        let session = makeSession()
        try await onboard(session)
        let key = try XCTUnwrap(session.currentMasterKey)
        session.lock()
        XCTAssertNil(session.currentMasterKey)
        try await session.unlock(pattern: .sample)
        XCTAssertEqual(session.phase, .unlocked)
        XCTAssertEqual(session.currentMasterKey, key)
    }

    func testUnknownPatternOpensEmptyUnsavedVault() async throws {
        let session = makeSession()
        try await onboard(session)
        session.lock()
        try await session.unlock(pattern: .other)
        XCTAssertEqual(session.phase, .unlocked, "Unknown patterns must look exactly like a successful unlock")
        XCTAssertNil(session.currentMasterKey)
        XCTAssertEqual(files.vaultIDs().count, 1, "Nothing is written until the vault holds something")
    }

    func testFirstWritePersistsNewVault() async throws {
        let session = makeSession()
        try await onboard(session)
        session.lock()
        try await session.unlock(pattern: .other)
        let key = try await session.masterKeyForWriting()
        XCTAssertEqual(files.vaultIDs().count, 2)
        session.lock()
        try await session.unlock(pattern: .other)
        XCTAssertEqual(session.currentMasterKey, key)
    }

    func testVaultsAreIsolated() async throws {
        let session = makeSession()
        try await onboard(session)
        let first = try XCTUnwrap(session.currentMasterKey)
        session.lock()
        try await session.unlock(pattern: .other)
        let second = try await session.masterKeyForWriting()
        XCTAssertNotEqual(first, second)
    }

    func testChangePatternMovesVault() async throws {
        let session = makeSession()
        try await onboard(session)
        let key = try XCTUnwrap(session.currentMasterKey)
        try await session.changePattern(to: .third)
        session.lock()

        try await session.unlock(pattern: .third)
        XCTAssertEqual(session.currentMasterKey, key)
        session.lock()
        try await session.unlock(pattern: .sample)
        XCTAssertNil(session.currentMasterKey, "Old pattern now opens an empty vault")
        XCTAssertEqual(files.vaultIDs().count, 1)
    }

    func testChangePatternRefusesPatternOfAnotherVault() async throws {
        let session = makeSession()
        try await onboard(session)
        session.lock()
        try await session.unlock(pattern: .other)
        _ = try await session.masterKeyForWriting()
        do {
            try await session.changePattern(to: .sample)
            XCTFail("Expected patternInUse")
        } catch {
            XCTAssertEqual(error as? VaultError, .patternInUse)
        }
    }

    func testInterruptedRekeyStillOpens() async throws {
        // Simulate a crash after the directory moved but before the pending record replaced the primary.
        let session = makeSession()
        try await onboard(session)
        let key = try XCTUnwrap(session.currentMasterKey)
        session.lock()

        let keyring = VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds })
        let old = try keyring.credentials(for: .sample)
        let new = try keyring.credentials(for: .third)
        let raw = key.withUnsafeBytes { Data($0) }
        let pending = try VaultCrypto.seal(raw, using: new.wrappingKey, authenticating: Data("velcrypt.vault.key.v1".utf8) + Data(new.vaultID.utf8))
        try pending.write(to: files.directory(for: old.vaultID).appending(path: VaultFileStore.pendingKeyFileName))
        try FileManager.default.moveItem(at: files.directory(for: old.vaultID), to: files.directory(for: new.vaultID))

        try await session.unlock(pattern: .third)
        XCTAssertEqual(session.currentMasterKey, key)
    }

    func testCorruptedKeyRecordIsReported() async throws {
        let session = makeSession()
        try await onboard(session)
        session.lock()
        let id = try VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }).credentials(for: .sample).vaultID
        try files.writeKeyRecord(Data(repeating: 0, count: 60), vaultID: id)
        do {
            try await session.unlock(pattern: .sample)
            XCTFail("Expected corruptedVault")
        } catch {
            XCTAssertEqual(error as? VaultError, .corruptedVault)
        }
    }

    func testDeleteCurrentVault() async throws {
        let session = makeSession()
        try await onboard(session)
        try session.deleteCurrentVault()
        XCTAssertEqual(session.phase, .locked)
        XCTAssertTrue(files.vaultIDs().isEmpty)
    }

    func testEraseEverythingReturnsToOnboarding() async throws {
        let session = makeSession()
        try await onboard(session)
        try session.eraseEverything()
        XCTAssertEqual(session.phase, .onboarding)
        XCTAssertNil(session.currentMasterKey)
        XCTAssertTrue(files.vaultIDs().isEmpty)
    }

    func testBackgroundLocksImmediatelyByDefault() async throws {
        let session = makeSession()
        try await onboard(session)
        session.appDidEnterBackground()
        XCTAssertEqual(session.phase, .locked)
        XCTAssertNil(session.currentMasterKey)
    }

    func testDelayedAutoLockKeepsVaultOpenBriefly() async throws {
        let session = makeSession()
        try await onboard(session)
        session.autoLockDelay = .fiveMinutes
        session.appDidEnterBackground()
        session.appDidBecomeActive()
        XCTAssertEqual(session.phase, .unlocked)
    }
}
