import Foundation
import Observation
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

/// Velcrypt Premium via StoreKit 2: a weekly and a yearly subscription in one group, and a lifetime purchase.
/// Any of them unlocks Premium. Entitlements are read from StoreKit, which works offline.
@MainActor
@Observable
final class PremiumStore {
    enum ProductID {
        static let weekly = "com.velcrypt.app.premium.weekly"
        static let yearly = "com.velcrypt.app.premium.yearly"
        static let lifetime = "com.velcrypt.app.premium.lifetime"
        /// Display order on the paywall.
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

    private static let cacheKey = "premiumActive"
    @ObservationIgnored private let defaults: UserDefaults
    @ObservationIgnored private var updatesTask: Task<Void, Never>?

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
        // The cached value avoids a flash of the free UI at launch; StoreKit corrects it moments later.
        isPremium = defaults.bool(forKey: Self.cacheKey)
        updatesTask = Task { [weak self] in
            for await result in Transaction.updates {
                await self?.handle(result)
            }
        }
        Task { [weak self] in
            await self?.refreshEntitlements()
            await self?.loadProducts()
        }
    }

    /// Why adding to `library` needs Premium, or nil if it's allowed.
    func blockReason(adding library: VaultLibrary, session: VaultSession) -> PaywallView.Reason? {
        if library.isNewVault, !PremiumLimits.canCreateVault(savedVaults: session.savedVaultCount, isPremium: isPremium) {
            return .vaultLimit
        }
        if PremiumLimits.remainingItems(current: library.items.count, isPremium: isPremium) == 0 {
            return .itemLimit
        }
        return nil
    }

    /// Why creating something in a new vault (e.g. an album or a restore) needs Premium, or nil.
    func blockReason(creatingIn library: VaultLibrary, session: VaultSession) -> PaywallView.Reason? {
        guard library.isNewVault else { return nil }
        return PremiumLimits.canCreateVault(savedVaults: session.savedVaultCount, isPremium: isPremium) ? nil : .vaultLimit
    }

    func remainingItems(in library: VaultLibrary) -> Int? {
        PremiumLimits.remainingItems(current: library.items.count, isPremium: isPremium)
    }

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

    /// Asks the App Store for this Apple Account's purchases. May show a sign-in prompt.
    func restore() async throws {
        try await AppStore.sync()
        await refreshEntitlements()
    }

    func refreshEntitlements() async {
        var active = false
        for await result in Transaction.currentEntitlements {
            if case .verified(let transaction) = result,
               ProductID.all.contains(transaction.productID),
               transaction.revocationDate == nil {
                active = true
            }
        }
        isPremium = active
        defaults.set(active, forKey: Self.cacheKey)
    }

    private func handle(_ result: VerificationResult<Transaction>) async {
        if case .verified(let transaction) = result {
            await transaction.finish()
        }
        await refreshEntitlements()
    }
}
