import SwiftUI

@main
struct VelcryptApp: App {
    @State private var session = VaultSession()
    @AppStorage("appearance") private var appearance: AppearancePreference = .dark

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(session)
                .preferredColorScheme(appearance.colorScheme)
                .tint(VCColor.accent)
        }
    }
}
