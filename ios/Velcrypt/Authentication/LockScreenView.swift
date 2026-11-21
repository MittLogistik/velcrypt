import LocalAuthentication
import SwiftUI

/// Draw a pattern to open its vault. Any valid pattern opens a vault, so there is no "wrong pattern" state.
struct LockScreenView: View {
    @Environment(VaultSession.self) private var session

    @State private var message: LocalizedStringKey?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isOpening = false
    @State private var biometricChoices: [BiometricVault] = []
    @State private var showBiometricPicker = false
    @State private var showGuide = false

    var body: some View {
        VStack(spacing: 0) {
            Spacer(minLength: 24)
            VelcryptMark(size: 60)
            Text("Draw your pattern")
                .font(VCFont.title)
                .foregroundStyle(VCColor.textPrimary)
                .padding(.top, 22)
            statusLine
                .frame(minHeight: 44)
                .padding(.horizontal, VCMetric.screenPadding)
            Spacer(minLength: 12)
            PatternGrid(feedback: feedback, isDisabled: isOpening, shakeTrigger: shake, onComplete: submit)
                .frame(maxWidth: 340)
                .padding(.horizontal, VCMetric.screenPadding)
            Spacer(minLength: 20)
            bottomActions
                .padding(.bottom, 16)
        }
        .frame(maxWidth: .infinity)
        .background(VCBackground())
        .sheet(isPresented: $showBiometricPicker) {
            BiometricVaultPicker(vaults: biometricChoices) { vault in
                showBiometricPicker = false
                open(vault)
            }
            .presentationDetents([.medium, .large])
        }
        .sheet(isPresented: $showGuide) { HowItWorksView() }
    }

    @ViewBuilder
    private var bottomActions: some View {
        VStack(spacing: 14) {
            // Only shown once the user has turned Face ID on for at least one vault. Off by default.
            if session.hasBiometricVaults && BiometricAuth.availableKind != nil {
                Button(action: unlockWithBiometrics) {
                    Label("Unlock with \(BiometricAuth.displayName)", systemImage: BiometricAuth.symbolName)
                        .font(VCFont.headline)
                }
                .buttonStyle(.vcSecondary)
                .disabled(isOpening)
                .padding(.horizontal, VCMetric.screenPadding)
            }
            Button("How Velcrypt Works") { showGuide = true }
                .font(VCFont.callout)
                .foregroundStyle(VCColor.accentCyan)
        }
    }

    private func unlockWithBiometrics() {
        message = nil
        Task {
            let context: LAContext
            do {
                context = try await BiometricAuth.authenticate(reason: String(localized: "Open a vault you turned Face ID on for"))
            } catch {
                if !BiometricAuth.isCancellation(error) {
                    reject("\(BiometricAuth.displayName) didn’t work. Draw your pattern instead.")
                }
                return
            }
            let vaults = session.biometricVaults(authenticatedWith: context)
            switch vaults.count {
            case 0:
                reject("\(BiometricAuth.displayName) was reset on this iPhone. Open your vault with its pattern and turn it on again in Settings.")
            case 1:
                open(vaults[0])
            default:
                biometricChoices = vaults
                showBiometricPicker = true
            }
        }
    }

    private func open(_ vault: BiometricVault) {
        Haptics.success()
        session.unlock(biometricVault: vault)
    }

    @ViewBuilder
    private var statusLine: some View {
        if isOpening {
            ProgressView().tint(VCColor.accentCyan)
        } else if let message {
            Text(message)
                .font(VCFont.callout)
                .foregroundStyle(VCColor.danger)
                .multilineTextAlignment(.center)
        } else {
            Text("Each pattern opens its own vault")
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
        }
    }

    private func submit(_ dots: [Int]) {
        let pattern: UnlockPattern
        do {
            pattern = try UnlockPattern(dots: dots)
        } catch let error as UnlockPattern.ValidationError {
            reject(error.message)
            return
        } catch {
            return
        }
        message = nil
        feedback = .success
        isOpening = true
        Task {
            do {
                try await session.unlock(pattern: pattern)
                Haptics.success()
            } catch {
                isOpening = false
                reject("This vault couldn't be opened. Its data may be damaged.")
            }
            feedback = .neutral
        }
    }

    private func reject(_ text: LocalizedStringKey) {
        Haptics.error()
        feedback = .error
        message = text
        shake += 1
        Task {
            try? await Task.sleep(for: .milliseconds(500))
            feedback = .neutral
        }
    }
}

extension UnlockPattern.ValidationError {
    var message: LocalizedStringKey {
        switch self {
        case .tooShort: "Connect at least \(UnlockPattern.minimumDots) dots"
        case .noTurn: "Change direction at least once"
        }
    }
}

/// After Face ID: the vaults the user turned Face ID on for. Vaults without Face ID are never listed.
struct BiometricVaultPicker: View {
    let vaults: [BiometricVault]
    let onPick: (BiometricVault) -> Void

    var body: some View {
        NavigationStack {
            List(vaults) { vault in
                Button {
                    onPick(vault)
                } label: {
                    Label {
                        Text(vault.name)
                            .font(VCFont.headline)
                            .foregroundStyle(VCColor.textPrimary)
                    } icon: {
                        Image(systemName: "lock.shield.fill")
                            .foregroundStyle(VCColor.accentCyan)
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(VCBackground())
            .navigationTitle("Choose a Vault")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
