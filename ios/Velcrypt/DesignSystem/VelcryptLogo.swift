import SwiftUI

/// Shield outline used by the Velcrypt mark. Drawn in a unit square and scaled to fit.
struct ShieldShape: Shape {
    func path(in rect: CGRect) -> Path {
        let w = rect.width, h = rect.height
        func p(_ x: CGFloat, _ y: CGFloat) -> CGPoint { CGPoint(x: rect.minX + x * w, y: rect.minY + y * h) }

        var path = Path()
        path.move(to: p(0.5, 0.0))
        path.addLine(to: p(0.97, 0.16))
        path.addCurve(to: p(0.5, 1.0), control1: p(0.99, 0.58), control2: p(0.82, 0.84))
        path.addCurve(to: p(0.03, 0.16), control1: p(0.18, 0.84), control2: p(0.01, 0.58))
        path.closeSubpath()
        return path
    }
}

/// The "V" stroke inside the shield.
struct VMarkShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX + rect.width * 0.21, y: rect.minY + rect.height * 0.28))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY + rect.height * 0.76))
        path.addLine(to: CGPoint(x: rect.minX + rect.width * 0.79, y: rect.minY + rect.height * 0.28))
        return path
    }
}

/// Velcrypt brand mark: a shield with a stylised V.
struct VelcryptMark: View {
    var size: CGFloat = 72
    var glows = true

    var body: some View {
        ZStack {
            ShieldShape()
                .fill(
                    LinearGradient(colors: [Color(hex: 0x1B2A44), Color(hex: 0x0E1729)], startPoint: .top, endPoint: .bottom)
                )
            ShieldShape()
                .stroke(VCColor.accentGradient, style: StrokeStyle(lineWidth: size * 0.045, lineJoin: .round))
            VMarkShape()
                .stroke(
                    LinearGradient(colors: [.white, VCColor.accentCyan], startPoint: .topLeading, endPoint: .bottomTrailing),
                    style: StrokeStyle(lineWidth: size * 0.1, lineCap: .round, lineJoin: .round)
                )
                .padding(size * 0.08)
        }
        .frame(width: size * 0.84, height: size)
        .shadow(color: glows ? VCColor.accent.opacity(0.45) : .clear, radius: size * 0.25)
        .accessibilityLabel("Velcrypt")
    }
}

/// Mark + wordmark lockup.
struct VelcryptWordmark: View {
    var markSize: CGFloat = 28

    var body: some View {
        HStack(spacing: 10) {
            VelcryptMark(size: markSize, glows: false)
            Text("Velcrypt")
                .font(.system(size: markSize * 0.8, weight: .bold, design: .rounded))
                .foregroundStyle(VCColor.textPrimary)
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
