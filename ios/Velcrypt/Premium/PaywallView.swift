import StoreKit
import SwiftUI

/// Velcrypt Premium paywall: yearly (with free trial), weekly and lifetime.
struct PaywallView: View {
    /// Why the paywall is shown; it changes only the subtitle.
    enum Reason: String, Identifiable {
        case welcome, upgrade, itemLimit, vaultLimit, appIcons
        var id: String { rawValue }
    }

    let reason: Reason

    @Environment(PremiumStore.self) private var store
    @Environment(\.dismiss) private var dismiss

    @State private var selectedID = PremiumStore.ProductID.yearly
    @State private var isPurchasing = false
    @State private var isRestoring = false
    @State private var message: LocalizedStringKey?

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    header
                    features
                    plans
                    purchaseButton
                    footer
                }
                .padding(.horizontal, VCMetric.screenPadding)
                .padding(.vertical, 12)
            }
            .scrollIndicators(.hidden)
            .background(VCBackground())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(VCColor.textSecondary)
                    }
                    .accessibilityLabel("Close")
                }
            }
            .alert(
                "Velcrypt Premium",
                isPresented: Binding(get: { message != nil }, set: { if !$0 { message = nil } })
            ) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(message ?? "")
            }
            .task { await store.loadProducts() }
            .onChange(of: store.isPremium) { _, premium in
                if premium { dismiss() }
            }
        }
    }

    // MARK: Sections

    private var header: some View {
        VStack(spacing: 12) {
            VelcryptMark(size: 72)
            Text("Velcrypt Premium")
                .font(VCFont.display)
                .foregroundStyle(VCColor.textPrimary)
            Text(subtitle)
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.top, 8)
    }

    private var subtitle: LocalizedStringKey {
        switch reason {
        case .itemLimit: "The free version holds \(PremiumLimits.freeItems) items. Go Premium to store as much as you like."
        case .vaultLimit: "The free version has one vault. Go Premium to give other patterns their own vaults."
        case .appIcons: "Alternate app icons are part of Premium."
        case .welcome, .upgrade: "Everything in Velcrypt, without limits."
        }
    }

    private var features: some View {
        VStack(alignment: .leading, spacing: 18) {
            VCFeatureRow(
                systemName: "infinity",
                title: "Unlimited Items",
                message: "Store as many photos, videos, documents and notes as you like."
            )
            VCFeatureRow(
                systemName: "square.stack.3d.up.fill",
                title: "More Vaults",
                message: "Give other patterns their own separate vaults."
            )
            VCFeatureRow(
                systemName: "app.badge.fill",
                title: "Disguise the App",
                message: "Choose an alternate icon, such as a calculator or a timer."
            )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    @ViewBuilder
    private var plans: some View {
        if !store.products.isEmpty {
            VStack(spacing: 10) {
                ForEach(store.products, id: \.id) { product in
                    PlanRow(
                        product: product,
                        isSelected: product.id == selectedID,
                        showsTrial: product.id == PremiumStore.ProductID.yearly && store.isEligibleForTrial
                    ) {
                        selectedID = product.id
                        Haptics.tap()
                    }
                }
            }
        } else if store.productsFailed {
            VStack(spacing: 10) {
                Text("Prices couldn't be loaded. Check your connection and try again.")
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textSecondary)
                    .multilineTextAlignment(.center)
                Button("Try Again") {
                    Task { await store.retryLoadingProducts() }
                }
            }
            .padding(.vertical, 12)
        } else {
            ProgressView()
                .tint(VCColor.accentCyan)
                .padding(.vertical, 24)
        }
    }

    private var purchaseButton: some View {
        Button(action: purchase) {
            if isPurchasing {
                ProgressView().tint(.white)
            } else if selectedID == PremiumStore.ProductID.yearly && store.isEligibleForTrial {
                Text("Start Free Trial")
            } else {
                Text("Continue")
            }
        }
        .buttonStyle(.vcPrimary)
        .disabled(store.product(selectedID) == nil || isPurchasing || isRestoring)
    }

    private var footer: some View {
        VStack(spacing: 14) {
            Text("Subscriptions renew automatically unless cancelled at least 24 hours before the end of the current period. Payment is charged to your Apple Account. Manage or cancel subscriptions in your Apple Account settings. Lifetime is a one-time purchase.")
                .font(.caption2)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
            HStack(spacing: 16) {
                Button {
                    restore()
                } label: {
                    if isRestoring { ProgressView() } else { Text("Restore Purchases") }
                }
                .disabled(isPurchasing || isRestoring)
                Link("Terms", destination: URL(string: "https://velcrypt.app/terms/")!)
                Link("Privacy", destination: URL(string: "https://velcrypt.app/privacy/")!)
            }
            .font(VCFont.caption)
            .foregroundStyle(VCColor.accentCyan)
        }
        .padding(.bottom, 8)
    }

    // MARK: Actions

    private func purchase() {
        guard let product = store.product(selectedID) else { return }
        isPurchasing = true
        Task {
            do {
                switch try await store.purchase(product) {
                case .purchased:
                    Haptics.success()
                    dismiss()
                case .pending:
                    message = "Your purchase is waiting for approval. Premium unlocks as soon as it's approved."
                case .cancelled:
                    break
                }
            } catch {
                Haptics.error()
                message = "The purchase couldn't be completed. Please try again."
            }
            isPurchasing = false
        }
    }

    private func restore() {
        isRestoring = true
        Task {
            do {
                try await store.restore()
                if store.isPremium {
                    Haptics.success()
                } else {
                    message = "No previous Premium purchase was found for this Apple Account."
                }
            } catch {
                message = "Purchases couldn't be restored. Please try again."
            }
            isRestoring = false
        }
    }
}

// MARK: - Plan row

private struct PlanRow: View {
    let product: Product
    let isSelected: Bool
    let showsTrial: Bool
    let onSelect: () -> Void

    var body: some View {
        Button(action: onSelect) {
            HStack(spacing: 14) {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                    .font(.system(size: 22))
                    .foregroundStyle(isSelected ? VCColor.accent : VCColor.textSecondary)
                VStack(alignment: .leading, spacing: 3) {
                    HStack(spacing: 8) {
                        Text(title)
                            .font(VCFont.headline)
                            .foregroundStyle(VCColor.textPrimary)
                        if let badge {
                            Text(badge)
                                .font(.caption2.weight(.bold))
                                .foregroundStyle(.white)
                                .padding(.horizontal, 7)
                                .padding(.vertical, 3)
                                .background(Capsule().fill(VCColor.accentGradient))
                        }
                    }
                    Text(detail)
                        .font(VCFont.caption)
                        .foregroundStyle(VCColor.textSecondary)
                }
                Spacer(minLength: 0)
            }
            .padding(16)
            .background(
                RoundedRectangle(cornerRadius: VCMetric.smallCornerRadius, style: .continuous)
                    .fill(VCColor.surface)
                    .overlay(
                        RoundedRectangle(cornerRadius: VCMetric.smallCornerRadius, style: .continuous)
                            .strokeBorder(isSelected ? VCColor.accent : VCColor.stroke, lineWidth: isSelected ? 2 : 1)
                    )
            )
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(isSelected ? [.isButton, .isSelected] : .isButton)
    }

    private var title: LocalizedStringKey {
        switch product.id {
        case PremiumStore.ProductID.yearly: "Yearly"
        case PremiumStore.ProductID.weekly: "Weekly"
        default: "Lifetime"
        }
    }

    private var badge: LocalizedStringKey? {
        switch product.id {
        case PremiumStore.ProductID.yearly: "Best Value"
        case PremiumStore.ProductID.lifetime: "Pay Once"
        default: nil
        }
    }

    private var detail: LocalizedStringKey {
        let price = product.displayPrice
        switch product.id {
        case PremiumStore.ProductID.yearly:
            if showsTrial, let days = trialDays {
                return "\(days) days free, then \(price) per year"
            }
            return "\(price) per year"
        case PremiumStore.ProductID.weekly:
            return "\(price) per week"
        default:
            return "One payment of \(price)"
        }
    }

    /// Length of the free trial in days, if the yearly plan has one.
    private var trialDays: Int? {
        guard let period = product.subscription?.introductoryOffer?.period else { return nil }
        switch period.unit {
        case .day: return period.value
        case .week: return period.value * 7
        default: return nil
        }
    }
}
