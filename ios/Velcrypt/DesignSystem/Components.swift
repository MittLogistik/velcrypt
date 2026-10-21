import SwiftUI

// MARK: - Backgrounds

/// Screen background: brand navy with a faint accent glow at the top.
struct VCBackground: View {
    var body: some View {
        ZStack {
            VCColor.background
            RadialGradient(
                colors: [VCColor.accent.opacity(0.18), .clear],
                center: .top,
                startRadius: 10,
                endRadius: 480
            )
        }
        .ignoresSafeArea()
    }
}

// MARK: - Buttons

struct VCPrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(VCFont.headline)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, minHeight: 54)
            .background(
                RoundedRectangle(cornerRadius: VCMetric.smallCornerRadius, style: .continuous)
                    .fill(VCColor.accentGradient)
                    .opacity(isEnabled ? 1 : 0.4)
            )
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
            .animation(.spring(response: 0.25, dampingFraction: 0.7), value: configuration.isPressed)
    }
}

struct VCSecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(VCFont.headline)
            .foregroundStyle(VCColor.textPrimary)
            .frame(maxWidth: .infinity, minHeight: 54)
            .background(
                RoundedRectangle(cornerRadius: VCMetric.smallCornerRadius, style: .continuous)
                    .fill(VCColor.surface)
                    .overlay(
                        RoundedRectangle(cornerRadius: VCMetric.smallCornerRadius, style: .continuous)
                            .strokeBorder(VCColor.stroke)
                    )
            )
            .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

extension ButtonStyle where Self == VCPrimaryButtonStyle {
    static var vcPrimary: VCPrimaryButtonStyle { VCPrimaryButtonStyle() }
}

extension ButtonStyle where Self == VCSecondaryButtonStyle {
    static var vcSecondary: VCSecondaryButtonStyle { VCSecondaryButtonStyle() }
}

// MARK: - Card

struct VCCard<Content: View>: View {
    var padding: CGFloat = VCMetric.spacing
    @ViewBuilder var content: Content

    var body: some View {
        content
            .padding(padding)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: VCMetric.cornerRadius, style: .continuous)
                    .fill(VCColor.surface)
                    .overlay(
                        RoundedRectangle(cornerRadius: VCMetric.cornerRadius, style: .continuous)
                            .strokeBorder(
                                LinearGradient(
                                    colors: [VCColor.stroke, VCColor.stroke.opacity(0.3)],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                    )
            )
    }
}

// MARK: - Icon badge

/// Rounded square holding an SF Symbol, used for feature rows and collections.
struct VCIconBadge: View {
    let systemName: String
    var size: CGFloat = 44
    var tint: Color = VCColor.accent

    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: size * 0.42, weight: .semibold))
            .foregroundStyle(tint)
            .frame(width: size, height: size)
            .background(
                RoundedRectangle(cornerRadius: size * 0.3, style: .continuous)
                    .fill(tint.opacity(0.14))
            )
            .accessibilityHidden(true)
    }
}

// MARK: - Feature row

struct VCFeatureRow: View {
    let systemName: String
    let title: LocalizedStringKey
    let message: LocalizedStringKey

    var body: some View {
        HStack(alignment: .top, spacing: 14) {
            VCIconBadge(systemName: systemName)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(VCFont.headline)
                    .foregroundStyle(VCColor.textPrimary)
                Text(message)
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .accessibilityElement(children: .combine)
    }
}

// MARK: - Notice

/// Inline callout for important information, e.g. "originals are not deleted".
struct VCNotice: View {
    enum Kind { case info, warning }

    let kind: Kind
    let message: LocalizedStringKey

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: kind == .warning ? "exclamationmark.triangle.fill" : "info.circle.fill")
                .foregroundStyle(kind == .warning ? VCColor.warning : VCColor.accentCyan)
                .accessibilityHidden(true)
            Text(message)
                .font(VCFont.caption)
                .foregroundStyle(VCColor.textSecondary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill((kind == .warning ? VCColor.warning : VCColor.accentCyan).opacity(0.08))
        )
        .accessibilityElement(children: .combine)
    }
}
