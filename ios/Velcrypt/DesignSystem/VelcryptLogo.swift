import SwiftUI

/// Velcrypt brand mark: the glossy blue shield with a V (asset "BrandMark", 446×490).
struct VelcryptMark: View {
    var size: CGFloat = 72
    var glows = true

    var body: some View {
        Image("BrandMark")
            .resizable()
            .interpolation(.high)
            .aspectRatio(contentMode: .fit)
            .frame(height: size)
            .shadow(color: glows ? VCColor.accent.opacity(0.45) : .clear, radius: size * 0.22)
            .accessibilityLabel("Velcrypt")
    }
}

/// Mark + "Velcrypt" wordmark: "Vel" in the primary text colour, "crypt" in the brand gradient.
struct VelcryptWordmark: View {
    var markSize: CGFloat = 28

    private static let cryptGradient = LinearGradient(
        colors: [Color(hex: 0x12D9FB), Color(hex: 0x1C8CFF), Color(hex: 0x0A3BE0)],
        startPoint: .leading,
        endPoint: .trailing
    )

    var body: some View {
        HStack(spacing: 8) {
            VelcryptMark(size: markSize, glows: false)
            (Text("Vel").foregroundStyle(VCColor.textPrimary) + Text("crypt").foregroundStyle(Self.cryptGradient))
                .font(.system(size: markSize * 0.78, weight: .heavy, design: .rounded))
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Velcrypt")
    }
}

#Preview {
    VStack(spacing: 40) {
        VelcryptMark(size: 120)
        VelcryptWordmark()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(VCBackground())
}
