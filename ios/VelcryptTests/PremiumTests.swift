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

    /// Must match the entitlement identifier in the RevenueCat dashboard.
    func testEntitlementIdentifier() {
        XCTAssertEqual(RevenueCatSetup.entitlementID, "velcrypt_private_photo_vault_pro")
    }

    func testRevenueCatKeyPlaceholderIsIgnored() {
        XCTAssertFalse(RevenueCatSetup.isValid("appl_REPLACE_ME"))
        XCTAssertFalse(RevenueCatSetup.isValid(""))
        XCTAssertFalse(RevenueCatSetup.isValid("sk_secretKey"))
        XCTAssertTrue(RevenueCatSetup.isValid("appl_abcDEF123"))
        // Unit tests never configure the SDK, so they make no network requests.
        XCTAssertNil(RevenueCatSetup.apiKey)
    }

    @MainActor
    func testStoreWithoutKeyRunsOnStoreKitAlone() throws {
        let defaults = try XCTUnwrap(UserDefaults(suiteName: "PremiumTests.\(UUID().uuidString)"))
        XCTAssertFalse(PremiumStore(defaults: defaults, revenueCatAPIKey: nil).usesRevenueCat)
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

    /// The vault created in onboarding stays empty if the user never adds anything. It must not use up the
    /// free vault, or a user who drew a different pattern by mistake could never start a vault for free.
    @MainActor
    func testOnlyVaultsWithItemsUseUpTheFreeVault() async throws {
        let files = makeTemporaryFileStore()
        defer { try? files.deleteAll() }
        let store = InMemorySecretStore()
        let defaults = try XCTUnwrap(UserDefaults(suiteName: "PremiumTests.\(UUID().uuidString)"))
        let session = VaultSession(store: store, files: files, defaults: defaults,
                                   keyring: VaultKeyring(store: store, roundsProvider: { TestConstants.fastRounds }),
                                   biometrics: InMemoryBiometricKeyStore())
        let premium = PremiumStore(defaults: defaults)

        // Onboarding vault, left empty.
        try await session.createFirstVault(pattern: .sample)
        session.finishOnboarding()
        session.lock()

        // A different pattern may still be used for free.
        try await session.unlock(pattern: .other)
        var library = try XCTUnwrap(session.library)
        await library.load()
        XCTAssertEqual(session.otherVaultsWithItemsCount, 0)
        XCTAssertNil(premium.blockReason(adding: library, session: session))
        _ = await library.createNote(in: nil)
        session.lock()

        // Now one vault holds files, so the empty onboarding vault can't become a second one.
        try await session.unlock(pattern: .sample)
        library = try XCTUnwrap(session.library)
        await library.load()
        XCTAssertEqual(session.otherVaultsWithItemsCount, 1)
        if !premium.isPremium {
            XCTAssertEqual(premium.blockReason(adding: library, session: session), .vaultLimit)
        }
    }
}
