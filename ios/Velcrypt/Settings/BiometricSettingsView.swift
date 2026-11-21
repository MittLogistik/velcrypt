import SwiftUI

/// Face ID for the open vault. Off by default. Turning it on adds this vault, under a name the user picks,
/// to the list shown after "Unlock with Face ID" on the lock screen. The pattern keeps working either way.
struct BiometricSettingsView: View {
    @Environment(VaultSession.self) private var session
    @Environment(VaultLibrary.self) private var library

    @State private var showNamePrompt = false
    @State private var isEnabling = false
    @State private var nameDraft = ""
    @State private var isWorking = false
    @State private var showNeedsItem = false
    @State private var errorMessage: String?

    private var biometry: String { BiometricAuth.displayName }
    private var isAvailable: Bool { BiometricAuth.availableKind != nil }

    var body: some View {
        Form {
            Section {
                Toggle(isOn: Binding(
                    get: { session.currentVaultUsesBiometrics },
                    set: { $0 ? startEnabling() : disable() }
                )) {
                    Label("Unlock with \(biometry)", systemImage: BiometricAuth.symbolName)
                }
                .tint(VCColor.accent)
                .disabled(isWorking || (!isAvailable && !session.currentVaultUsesBiometrics))

                if session.currentVaultUsesBiometrics {
                    Button {
                        isEnabling = false
                        nameDraft = library.name ?? ""
                        showNamePrompt = true
                    } label: {
                        LabeledContent("Name in List", value: library.name ?? "")
                    }
                }
            } footer: {
                if isAvailable {
                    Text("Off by default. When it's on, tap “Unlock with \(biometry)” on the lock screen and choose this vault from the list. Its pattern keeps working too.")
                } else {
                    Text("Set up \(biometry) in the iOS Settings app first.")
                }
            }

            Section {
                VCNotice(kind: .warning, message: "Anyone who gets past \(biometry) on this iPhone, including someone who forces you, can see and open every vault in the \(biometry) list. Vaults without \(biometry) are never listed. Keep your most private vault on its pattern only.")
            }
            .listRowBackground(Color.clear)
            .listRowInsets(EdgeInsets())
        }
        .scrollContentBackground(.hidden)
        .background(VCBackground())
        .navigationTitle(biometry)
        .navigationBarTitleDisplayMode(.inline)
        .alert("Name This Vault", isPresented: $showNamePrompt) {
            TextField("Name", text: $nameDraft)
            Button("Cancel", role: .cancel) {}
            Button("Save", action: saveName)
        } message: {
            Text("The name is shown in the \(biometry) list so you can tell your vaults apart. Only you see it, after \(biometry).")
        }
        .alert("Add Something First", isPresented: $showNeedsItem) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("\(biometry) can be turned on once this vault holds at least one item.")
        }
        .alert("Something went wrong", isPresented: Binding(get: { errorMessage != nil }, set: { if !$0 { errorMessage = nil } })) {
            Button("OK", role: .cancel) {}
        } message: {
            Text(errorMessage ?? "")
        }
    }

    private func startEnabling() {
        guard !library.isNewVault else {
            showNeedsItem = true
            return
        }
        isEnabling = true
        nameDraft = library.name ?? String(localized: "My Vault")
        showNamePrompt = true
    }

    private func saveName() {
        let trimmed = nameDraft.trimmingCharacters(in: .whitespacesAndNewlines)
        let name = trimmed.isEmpty ? String(localized: "My Vault") : String(trimmed.prefix(40))
        let enabling = isEnabling
        isWorking = true
        Task {
            defer { isWorking = false }
            do {
                if enabling {
                    // Confirms that Face ID works on this iPhone before relying on it.
                    _ = try await BiometricAuth.authenticate(reason: String(localized: "Turn on Face ID for this vault"))
                }
                try await library.setName(name)
                try session.enableBiometricUnlock(name: name)
                Haptics.success()
            } catch {
                if !BiometricAuth.isCancellation(error) {
                    errorMessage = String(localized: "Face ID couldn't be turned on. Please try again.")
                }
            }
        }
    }

    private func disable() {
        do {
            try session.disableBiometricUnlock()
            Haptics.tap()
        } catch {
            errorMessage = String(localized: "Face ID couldn't be turned off. Please try again.")
        }
    }
}
