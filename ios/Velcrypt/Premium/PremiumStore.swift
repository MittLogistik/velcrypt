import Foundation
import Observation
import RevenueCat
import StoreKit

/// What the free version allows. Kept separate from StoreKit so the rules can be unit tested.
enum PremiumLimits {
    static let freeItems = 50
    static let freeVaults = 1

    /// How many more items the open vault may take, or nil for no limit.
    static func remainingItems(current: Int, isPremium: Bool) -> Int? {
        isPremium ? nil : max(0, freeItems - current)
    }

    /// Whether a never-saved vault may be created, given how many vaults are already saved on this iPhone.
    static func canCreateVault(savedVaults: Int, isPremium: Bool) -> Bool {
        isPremium || savedVaults < freeVaults
    }
}

/// How Velcrypt talks to RevenueCat.
enum RevenueCatSetup {
    /// The entitlement every Premium product grants in the RevenueCat dashboard.
    static let entitlementID = "velcrypt_private_photo_vault_pro"

    /// The public SDK key from Info.plist (`REVENUECAT_API_KEY` in project.yml), or nil while it is still the
    /// placeholder, and in unit tests, which must not make network requests.
    static var apiKey: String? {
        guard ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] == nil,
              let key = Bundle.main.object(forInfoDictionaryKey: "RevenueCatAPIKey") as? String,
              isValid(key)
        else { return nil }
        return key
    }

    static func isValid(_ key: String) -> Bool {
        key.hasPrefix("appl_") && key != "appl_REPLACE_ME"
    }

    /// Configures the SDK once. RevenueCat gets an anonymous app user ID and the App Store purchase history,
    /// nothing else: no account, no device identifiers and never anything from a vault.
    static func configureIfNeeded(apiKey: String) {
        guard !Purchases.isConfigured else { return }
        Purchases.logLevel = .warn
        Purchases.configure(
            with: Configuration.builder(withAPIKey: apiKey)
                .with(storeKitVersion: .storeKit2)
                .with(automaticDeviceIdentifierCollectionEnabled: false)
                .build()
        )
    }
}

/// Velcrypt Premium: a weekly and a yearly subscription in one group, and a lifetime purchase. Any of them
/// unlocks Premium.
///
/// Purchases go through RevenueCat, which powers the remotely designed paywalls, A/B tests and sales charts.
/// Premium counts as active when either RevenueCat's Premium entitlement or StoreKit's own verified
/// entitlements say so. StoreKit works offline, keeps Premium on if RevenueCat can't be reached, and covers
/// purchases made before RevenueCat was added (1.0 and 1.1). Without a RevenueCat key, everything runs on
/// StoreKit alone, as before.
@MainActor
@Observable
final class PremiumStore {
    enum ProductID {
        static let weekly = "com.velcrypt.app.premium.weekly"
        static let yearly = "com.velcrypt.app.premium.yearly"
        static let lifetime = "com.velcrypt.app.premium.lifetime"
        /// Display order on the built-in paywall.
        static let all = [yearly, weekly, lifetime]
    }

    enum PurchaseOutcome {
        case purchased
        /// Waiting for approval, e.g. Ask to Buy.
        case pending
        case cancelled
    }

    enum StoreError: Error {
        case unverified
    }

    private(set) var products: [Product] = []
    private(set) var isPremium: Bool
    private(set) var productsFailed = false
    /// Whether the yearly plan's free trial is still available to this Apple Account.
    private(set) var isEligibleForTrial = false

    /// Whether purchases go through RevenueCat.
    let usesRevenueCat: Bool

    private static let cacheKey = "premiumActive"
    /// Set once purchases from before RevenueCat have been sent to it.
    private static let syncedKey = "revenueCatSyncedPurchases"
    @ObservationIgnored private let defaults: UserDefaults
    @ObservationIgnored private var storeKitActive = false
    @ObservationIgnored private var revenueCatActive = false
    @ObservationIgnored private var updatesTask: Task<Void, Never>?
    @ObservationIgnored private var customerInfoTask: Task<Void, Never>?

    init(defaults: UserDefaults = .standard, revenueCatAPIKey: String? = RevenueCatSetup.apiKey) {
        self.defaults = defaults
        // The cached value avoids a flash of the free UI at launch; the stores correct it moments later.
        isPremium = defaults.bool(forKey: Self.cacheKey)

        if let revenueCatAPIKey {
            RevenueCatSetup.configureIfNeeded(apiKey: revenueCatAPIKey)
        }
        usesRevenueCat = Purchases.isConfigured

        let finishesTransactions = !usesRevenueCat
        updatesTask = Task { [weak self] in
            for await result in Transaction.updates {
                // With RevenueCat, the SDK reports and finishes transactions itself.
                if finishesTransactions, case .verified(let transaction) = result {
                    await transaction.finish()
                }
                await self?.refreshEntitlements()
            }
        }
        if usesRevenueCat {
            customerInfoTask = Task { [weak self] in
                for await info in Purchases.shared.customerInfoStream {
                    self?.apply(info)
                }
            }
        }
        Task { [weak self] in
            await self?.refreshEntitlements()
            await self?.syncEarlierPurchasesIfNeeded()
            await self?.loadProducts()
        }
    }

    /// Why adding to `library` needs Premium, or nil if it's allowed.
    func blockReason(adding library: VaultLibrary, session: VaultSession) -> PaywallView.Reason? {
        if let reason = blockReason(creatingIn: library, session: session) { return reason }
        if PremiumLimits.remainingItems(current: library.items.count, isPremium: isPremium) == 0 {
            return .itemLimit
        }
        return nil
    }

    /// Why starting to use an empty vault (its first file or album) needs Premium, or nil.
    ///
    /// Only vaults that hold files count towards the free vault. An empty vault, for example one opened by
    /// drawing a different pattern by mistake, never uses it up.
    func blockReason(creatingIn library: VaultLibrary, session: VaultSession) -> PaywallView.Reason? {
        guard library.items.isEmpty else { return nil }
        return PremiumLimits.canCreateVault(savedVaults: session.otherVaultsWithItemsCount, isPremium: isPremium) ? nil : .vaultLimit
    }

    func remainingItems(in library: VaultLibrary) -> Int? {
        PremiumLimits.remainingItems(current: library.items.count, isPremium: isPremium)
    }

    // MARK: Paywall

    /// Whether RevenueCat's current offering has a paywall designed in the dashboard.
    ///
    /// The current offering (`Offerings.current`) is the one an active experiment assigns to this user, so
    /// A/B tests work. Returns false, and the built-in paywall is shown, without RevenueCat, when the current
    /// offering has no paywall, or when offerings don't arrive within a few seconds (offline, for example).
    func currentOfferingHasPaywall() async -> Bool {
        guard usesRevenueCat else { return false }
        let offerings = await withTaskGroup(of: Offerings?.self) { group in
            group.addTask { try? await Purchases.shared.offerings() }
            group.addTask {
                try? await Task.sleep(for: .seconds(4))
                return nil
            }
            let first = await group.next() ?? nil
            group.cancelAll()
            return first
        }
        return offerings?.current?.hasPaywall == true
    }

    // MARK: Built-in paywall

    func product(_ id: String) -> Product? {
        products.first { $0.id == id }
    }

    func loadProducts() async {
        guard products.isEmpty else { return }
        do {
            let loaded = try await Product.products(for: ProductID.all)
            products = ProductID.all.compactMap { id in loaded.first { $0.id == id } }
            productsFailed = products.isEmpty
            if let yearly = product(ProductID.yearly), let subscription = yearly.subscription {
                isEligibleForTrial = await subscription.isEligibleForIntroOffer
                    && subscription.introductoryOffer?.paymentMode == .freeTrial
            }
        } catch {
            productsFailed = true
        }
    }

    func retryLoadingProducts() async {
        productsFailed = false
        await loadProducts()
    }

    func purchase(_ product: Product) async throws -> PurchaseOutcome {
        if usesRevenueCat {
            return try await purchaseThroughRevenueCat(product)
        }
        switch try await product.purchase() {
        case .success(let verification):
            guard case .verified(let transaction) = verification else { throw StoreError.unverified }
            await transaction.finish()
            await refreshEntitlements()
            return .purchased
        case .pending:
            return .pending
        case .userCancelled:
            return .cancelled
        @unknown default:
            return .cancelled
        }
    }

    private func purchaseThroughRevenueCat(_ product: Product) async throws -> PurchaseOutcome {
        do {
            let result = try await Purchases.shared.purchase(product: StoreProduct(sk2Product: product))
            if result.userCancelled { return .cancelled }
            apply(result.customerInfo)
            await refreshEntitlements()
            return .purchased
        } catch {
            switch (error as NSError).code {
            case ErrorCode.paymentPendingError.rawValue: return .pending
            case ErrorCode.purchaseCancelledError.rawValue: return .cancelled
            default: throw error
            }
        }
    }

    /// Asks the App Store for this Apple Account's purchases. May show a sign-in prompt.
    func restore() async throws {
        if usesRevenueCat {
            let info = try await Purchases.shared.restorePurchases()
            apply(info)
        } else {
            try await AppStore.sync()
        }
        await refreshEntitlements()
    }

    // MARK: Entitlements

    func refreshEntitlements() async {
        var active = false
        for await result in Transaction.currentEntitlements {
            if case .verified(let transaction) = result,
               ProductID.all.contains(transaction.productID),
               transaction.revocationDate == nil {
                active = true
            }
        }
        storeKitActive = active
        if usesRevenueCat, let info = try? await Purchases.shared.customerInfo() {
            revenueCatActive = Self.hasPremium(info)
        }
        updatePremium()
    }

    private func apply(_ info: CustomerInfo) {
        revenueCatActive = Self.hasPremium(info)
        updatePremium()
    }

    private func updatePremium() {
        isPremium = storeKitActive || revenueCatActive
        defaults.set(isPremium, forKey: Self.cacheKey)
    }

    private static func hasPremium(_ info: CustomerInfo) -> Bool {
        info.entitlements[RevenueCatSetup.entitlementID]?.isActive == true
    }

    /// Sends purchases made before RevenueCat was added to it, once, so they show up in its charts and
    /// entitlements. Needs no sign-in.
    private func syncEarlierPurchasesIfNeeded() async {
        guard usesRevenueCat, storeKitActive, !revenueCatActive, !defaults.bool(forKey: Self.syncedKey) else { return }
        guard let info = try? await Purchases.shared.syncPurchases() else { return }
        defaults.set(true, forKey: Self.syncedKey)
        apply(info)
    }
}
