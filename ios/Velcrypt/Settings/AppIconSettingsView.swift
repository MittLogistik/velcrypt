import SwiftUI
import UIKit

/// Alternate Home Screen icons. iOS always confirms an icon change with its own alert.
/// The name under the icon is fixed at build time; `HideAppGuideView` explains the Shortcuts workaround.
enum AppIconOption: String, CaseIterable, Identifiable {
    case standard, light, calc, units, timer, ruler, memo, tools

    var id: String { rawValue }

    /// Asset catalog name passed to `setAlternateIconName`; nil restores the primary icon.
    var iconName: String? {
        switch self {
        case .standard: nil
        case .light: "AppIcon-Light"
        case .calc: "AppIcon-Calc"
        case .units: "AppIcon-Units"
        case .timer: "AppIcon-Timer"
        case .ruler: "AppIcon-Ruler"
        case .memo: "AppIcon-Memo"
        case .tools: "AppIcon-Tools"
        }
    }

    var previewName: String {
        self == .standard ? "IconPreview-Default" : "IconPreview-\(iconName!.replacingOccurrences(of: "AppIcon-", with: ""))"
    }

    var title: LocalizedStringKey {
        switch self {
        case .standard: "Velcrypt"
        case .light: "Light"
        case .calc: "Calc"
        case .units: "Units"
        case .timer: "Timer"
        case .ruler: "Ruler"
        case .memo: "Memo"
        case .tools: "Tools"
        }
    }

    @MainActor static var current: AppIconOption {
        let name = UIApplication.shared.alternateIconName
        return allCases.first { $0.iconName == name } ?? .standard
    }
}

struct AppIconSettingsView: View {
    @Environment(PremiumStore.self) private var premium
    @State private var selected = AppIconOption.current
    @State private var failed = false
    @State private var paywall: PaywallView.Reason?

    private let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 4)

    var body: some View {
        Form {
            Section {
                LazyVGrid(columns: columns, spacing: 18) {
                    ForEach(AppIconOption.allCases) { option in
                        Button { choose(option) } label: { tile(option) }
                            .buttonStyle(.vcPressable)
                    }
                }
                .padding(.vertical, 8)
            } footer: {
                Text("The name under the icon stays “Velcrypt”.")
            }

            Section {
                NavigationLink {
                    HideAppGuideView()
                } label: {
                    Label("Hide Velcrypt on Your Home Screen", systemImage: "eye.slash")
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(VCBackground())
        .navigationTitle("App Icon")
        .navigationBarTitleDisplayMode(.inline)
        .alert("The icon couldn't be changed.", isPresented: $failed) {
            Button("OK", role: .cancel) {}
        }
        .sheet(item: $paywall) { reason in
            PaywallView(reason: reason)
        }
    }

    private func tile(_ option: AppIconOption) -> some View {
        let isSelected = option == selected
        return VStack(spacing: 6) {
            Image(option.previewName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .strokeBorder(isSelected ? VCColor.accent : VCColor.stroke, lineWidth: isSelected ? 3 : 1)
                )
                .overlay(alignment: .topTrailing) {
                    if !premium.isPremium && option != .standard {
                        Image(systemName: "lock.fill")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundStyle(.white)
                            .padding(5)
                            .background(Circle().fill(.black.opacity(0.6)))
                            .padding(4)
                            .accessibilityLabel("Premium")
                    }
                }
            Text(option.title)
                .font(VCFont.caption)
                .foregroundStyle(isSelected ? VCColor.textPrimary : VCColor.textSecondary)
        }
        .accessibilityElement(children: .combine)
        .accessibilityAddTraits(isSelected ? [.isButton, .isSelected] : .isButton)
    }

    private func choose(_ option: AppIconOption) {
        guard option != selected, UIApplication.shared.supportsAlternateIcons else { return }
        // Going back to the standard icon is always allowed, so a lapsed subscription never strands an icon.
        guard premium.isPremium || option == .standard else {
            paywall = .appIcons
            return
        }
        UIApplication.shared.setAlternateIconName(option.iconName) { error in
            Task { @MainActor in
                if error == nil {
                    selected = option
                    Haptics.success()
                } else {
                    failed = true
                }
            }
        }
    }
}

/// Step-by-step help for giving Velcrypt a different name and icon on the Home Screen.
struct HideAppGuideView: View {
    var body: some View {
        Form {
            Section {
                step(1, "Open Shortcuts and tap +.")
                step(2, "Add the action “Open App” and choose Velcrypt.")
                step(3, "Tap the share button, then “Add to Home Screen”. Choose any name and icon.")
                step(4, "Long-press the original Velcrypt icon, tap “Remove App”, then “Remove from Home Screen”.")
            } header: {
                Text("Use Any Name")
            } footer: {
                Text("Velcrypt stays installed and can still be found in the App Library.")
            }

            Section {
                step(1, "Long-press the Velcrypt icon.")
                step(2, "Tap “Require Face ID”, then “Hide and Require Face ID”.")
            } header: {
                Text("Hide the App (iOS 18)")
            } footer: {
                Text("Hidden apps move to the Hidden folder at the bottom of the App Library.")
            }
        }
        .scrollContentBackground(.hidden)
        .background(VCBackground())
        .navigationTitle("Hide Velcrypt")
        .navigationBarTitleDisplayMode(.inline)
    }

    private func step(_ number: Int, _ text: LocalizedStringKey) -> some View {
        HStack(alignment: .firstTextBaseline, spacing: 12) {
            Text("\(number)")
                .font(VCFont.callout.weight(.bold).monospacedDigit())
                .foregroundStyle(VCColor.accentCyan)
                .frame(width: 22)
            Text(text)
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textPrimary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .accessibilityElement(children: .combine)
    }
}
