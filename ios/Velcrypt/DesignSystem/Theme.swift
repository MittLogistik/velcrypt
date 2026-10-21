import SwiftUI
import UIKit

// MARK: - Palette

/// Velcrypt brand palette. Every color adapts to light/dark, but the product is dark-first.
enum VCColor {
    static let background = Color.adaptive(light: 0xF3F6FB, dark: 0x0B1220)
    static let surface = Color.adaptive(light: 0xFFFFFF, dark: 0x151F30)
    static let surfaceRaised = Color.adaptive(light: 0xE8EEF7, dark: 0x1C2940)
    static let stroke = Color.adaptive(light: 0xD5DEEA, dark: 0x24324A)
    static let accent = Color(hex: 0x4F8CFF)
    static let accentCyan = Color(hex: 0x75D8FF)
    static let textPrimary = Color.adaptive(light: 0x0B1220, dark: 0xFFFFFF)
    static let textSecondary = Color.adaptive(light: 0x51627A, dark: 0x94A3B8)
    static let success = Color(hex: 0x34D399)
    static let warning = Color(hex: 0xFBBF24)
    static let danger = Color(hex: 0xF87171)

    static let accentGradient = LinearGradient(
        colors: [accent, accentCyan],
        startPoint: .bottomLeading,
        endPoint: .topTrailing
    )
}

extension Color {
    init(hex: UInt32, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: opacity
        )
    }

    static func adaptive(light: UInt32, dark: UInt32) -> Color {
        Color(UIColor { traits in
            UIColor(Color(hex: traits.userInterfaceStyle == .dark ? dark : light))
        })
    }
}

// MARK: - Typography

enum VCFont {
    static let display = Font.system(.largeTitle, design: .rounded).weight(.bold)
    static let title = Font.system(.title2, design: .rounded).weight(.semibold)
    static let headline = Font.system(.headline, design: .rounded)
    static let body = Font.system(.body)
    static let callout = Font.system(.callout)
    static let caption = Font.system(.footnote)
    static let digits = Font.system(.title, design: .rounded).weight(.medium).monospacedDigit()
}

// MARK: - Metrics

enum VCMetric {
    static let cornerRadius: CGFloat = 20
    static let smallCornerRadius: CGFloat = 14
    static let screenPadding: CGFloat = 24
    static let spacing: CGFloat = 16
}

// MARK: - Appearance preference

enum AppearancePreference: String, CaseIterable, Identifiable {
    case dark, light, system

    var id: String { rawValue }

    var colorScheme: ColorScheme? {
        switch self {
        case .dark: .dark
        case .light: .light
        case .system: nil
        }
    }

    var title: LocalizedStringKey {
        switch self {
        case .dark: "Dark"
        case .light: "Light"
        case .system: "System"
        }
    }
}
