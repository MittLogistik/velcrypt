import SwiftUI

/// Routes between onboarding, lock screen and the vault, and handles app lifecycle locking.
struct RootView: View {
    @Environment(VaultSession.self) private var session
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        ZStack {
            switch session.phase {
            case .onboarding:
                OnboardingFlowView()
                    .transition(.opacity)
            case .locked:
                LockScreenView()
                    .transition(.opacity)
            case .unlocked:
                if let library = session.library {
                    VaultHomeView()
                        .environment(library)
                        // A new library (e.g. after a pattern change) gets a fresh view hierarchy.
                        .id(ObjectIdentifier(library))
                        .transition(.opacity.combined(with: .scale(scale: 1.02)))
                }
            }

            // Hides content from the app switcher snapshot and while system sheets cover the app.
            if scenePhase != .active && session.phase == .unlocked {
                PrivacyShieldView()
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
        .animation(.easeInOut(duration: 0.25), value: session.phase)
        .animation(.easeInOut(duration: 0.15), value: scenePhase)
        .onChange(of: scenePhase) { _, newPhase in
            switch newPhase {
            case .background: session.appDidEnterBackground()
            case .active: session.appDidBecomeActive()
            default: break
            }
        }
    }
}

struct PrivacyShieldView: View {
    var body: some View {
        ZStack {
            VCBackground()
            VelcryptMark(size: 88)
        }
        .accessibilityHidden(true)
    }
}
