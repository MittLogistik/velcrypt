import SwiftUI

@main
struct VelcryptApp: App {
    @State private var session = VaultSession()
    @State private var premium = PremiumStore()
    @AppStorage("appearance") private var appearance: AppearancePreference = .dark

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(session)
                .environment(premium)
                .preferredColorScheme(appearance.colorScheme)
                .tint(VCColor.accent)
        }
    }
}
