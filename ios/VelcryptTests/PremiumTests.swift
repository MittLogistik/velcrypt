import XCTest
@testable import Velcrypt

final class PremiumLimitsTests: XCTestCase {
    func testFreeVersionAllowsFiftyItems() {
        XCTAssertEqual(PremiumLimits.remainingItems(current: 0, isPremium: false), 50)
        XCTAssertEqual(PremiumLimits.remainingItems(current: 49, isPremium: false), 1)
        XCTAssertEqual(PremiumLimits.remainingItems(current: 50, isPremium: false), 0)
        // A vault restored or kept from a lapsed subscription can be over the limit; nothing more can be added.
        XCTAssertEqual(PremiumLimits.remainingItems(current: 300, isPremium: false), 0)
    }

    func testPremiumHasNoItemLimit() {
        XCTAssertNil(PremiumLimits.remainingItems(current: 10_000, isPremium: true))
    }

    func testFreeVersionAllowsOneVault() {
        XCTAssertTrue(PremiumLimits.canCreateVault(savedVaults: 0, isPremium: false))
        XCTAssertFalse(PremiumLimits.canCreateVault(savedVaults: 1, isPremium: false))
        XCTAssertTrue(PremiumLimits.canCreateVault(savedVaults: 5, isPremium: true))
    }

    @MainActor
    func testSavedVaultCountIgnoresUnsavedVaults() async throws {
        let files = makeTemporaryFileStore()
        defer { try? files.deleteAll() }
        let store = InMemorySecretStore()
        let defaults = try XCTUnwrap(UserDefaults(suiteName: "PremiumTests.\(UUID().uuidString)"))
        let session = VaultSession(store: store, files: files, defaults: defaults,
                                   keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }))

        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        XCTAssertEqual(session.savedVaultCount, 1)

        // Opening another pattern doesn't create a vault until something is written.
        try await session.unlock(pattern: .other)
        XCTAssertEqual(session.savedVaultCount, 1)
        _ = try await session.masterKeyForWriting()
        XCTAssertEqual(session.savedVaultCount, 2)
    }
}
