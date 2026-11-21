import LocalAuthentication
import XCTest
@testable import Velcrypt

/// Face ID is opt-in per vault, and the list after Face ID must only ever hold vaults that opted in and still exist.
@MainActor
final class BiometricTests: XCTestCase {
    private var store: InMemorySecretStore!
    private var biometrics: InMemoryBiometricKeyStore!
    private var files: VaultFileStore!
    private var defaults: UserDefaults!
    private var suiteName: String!

    override func setUp() async throws {
        store = InMemorySecretStore()
        biometrics = InMemoryBiometricKeyStore()
        files = makeTemporaryFileStore()
        suiteName = "BiometricTests.\(UUID().uuidString)"
        defaults = UserDefaults(suiteName: suiteName)
    }

    override func tearDown() async throws {
        try? files.deleteAll()
        defaults.removePersistentDomain(forName: suiteName)
    }

    private func makeSession() -> VaultSession {
        VaultSession(store: store, files: files, defaults: defaults,
                     keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }),
                     biometrics: biometrics)
    }

    /// Opens `pattern` and stores one note in it, so the vault is saved and holds an item.
    private func openVaultWithItem(_ session: VaultSession, _ pattern: UnlockPattern, first: Bool = false) async throws {
        if first {
            try await session.createFirstVault(pattern: pattern)
            session.finishOnboarding()
        } else {
            try await session.unlock(pattern: pattern)
        }
        await session.library?.load()
        _ = await session.library?.createNote(in: nil)
    }

    private func enable(_ session: VaultSession, name: String) async throws {
        try await session.library?.setName(name)
        try session.enableBiometricUnlock(name: name)
    }

    func testFaceIDIsOffByDefault() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        XCTAssertFalse(session.hasBiometricVaults)
        XCTAssertFalse(session.currentVaultUsesBiometrics)
        XCTAssertTrue(biometrics.enabledVaultIDs().isEmpty)
    }

    func testListOnlyHoldsOptedInVaults() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        XCTAssertTrue(session.currentVaultUsesBiometrics)
        session.lock()

        // A second vault without Face ID never appears in the list.
        try await openVaultWithItem(session, .other)
        XCTAssertFalse(session.currentVaultUsesBiometrics)
        session.lock()

        XCTAssertTrue(session.hasBiometricVaults)
        let vaults = session.biometricVaults(authenticatedWith: LAContext())
        XCTAssertEqual(vaults.map(\.name), ["Holiday"])

        session.unlock(biometricVault: vaults[0])
        XCTAssertTrue(session.isUnlocked)
        XCTAssertTrue(session.currentVaultUsesBiometrics)
        await session.library?.load()
        XCTAssertEqual(session.library?.items.count, 1)
        XCTAssertEqual(session.library?.name, "Holiday")
    }

    func testTurningOffRemovesVaultFromList() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        try session.disableBiometricUnlock()
        XCTAssertFalse(session.currentVaultUsesBiometrics)
        XCTAssertFalse(session.hasBiometricVaults)
    }

    func testVaultOpenedWithFaceIDCanBeWrittenTo() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        session.lock()

        let vault = try XCTUnwrap(session.biometricVaults(authenticatedWith: LAContext()).first)
        session.unlock(biometricVault: vault)
        await session.library?.load()
        _ = await session.library?.createNote(in: nil)
        session.lock()

        // The same vault opens with its pattern and holds both notes.
        try await session.unlock(pattern: .sample)
        await session.library?.load()
        XCTAssertEqual(session.library?.items.count, 2)
    }

    func testFaceIDFollowsPatternChange() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        try await session.changePattern(to: .third)
        XCTAssertTrue(session.currentVaultUsesBiometrics)
        session.lock()

        let vaults = session.biometricVaults(authenticatedWith: LAContext())
        XCTAssertEqual(vaults.map(\.name), ["Holiday"])
        session.unlock(biometricVault: vaults[0])
        await session.library?.load()
        XCTAssertEqual(session.library?.items.count, 1)
    }

    func testDeletingVaultRemovesItFromList() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        try session.deleteCurrentVault()
        XCTAssertFalse(session.hasBiometricVaults)
    }

    func testEraseEverythingClearsFaceID() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        try session.eraseEverything()
        XCTAssertTrue(biometrics.enabledVaultIDs().isEmpty)
        XCTAssertFalse(session.hasBiometricVaults)
    }

    func testDuressRemovesDeletedVaultsFromList() async throws {
        let duress = try UnlockPattern(dots: [24, 23, 22, 21, 20, 15, 10, 5])
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Real")
        session.lock()

        try await openVaultWithItem(session, .other)
        try await enable(session, name: "Decoy")
        try await session.setDuressPattern(duress)
        session.lock()

        try await session.unlock(pattern: duress)
        session.lock()
        let vaults = session.biometricVaults(authenticatedWith: LAContext())
        XCTAssertEqual(vaults.map(\.name), ["Decoy"])
    }

    func testEntriesForMissingVaultsAreDropped() async throws {
        let session = makeSession()
        try await openVaultWithItem(session, .sample, first: true)
        try await enable(session, name: "Holiday")
        try biometrics.save(vaultID: "0000", name: "Gone", masterKey: .init(size: .bits256))
        session.lock()
        let vaults = session.biometricVaults(authenticatedWith: LAContext())
        XCTAssertEqual(vaults.map(\.name), ["Holiday"])
        XCTAssertFalse(biometrics.enabledVaultIDs().contains("0000"))
    }
}
