import SwiftUI

struct SettingsView: View {
    @Environment(VaultSession.self) private var session
    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss
    @AppStorage("appearance") private var appearance: AppearancePreference = .dark
    @AppStorage("offerDeleteOriginals") private var offerDeleteOriginals = true

    @State private var showChangePattern = false
    @State private var showDeleteVaultConfirm = false
    @State private var showEraseConfirm = false
    @State private var errorMessage: String?

    var body: some View {
        @Bindable var session = session

        NavigationStack {
            Form {
                Section {
                    Picker(selection: $session.autoLockDelay) {
                        ForEach(AutoLockDelay.allCases) { delay in
                            Text(delay.title).tag(delay)
                        }
                    } label: {
                        Label("Auto-Lock", systemImage: "timer")
                    }
                    Button {
                        showChangePattern = true
                    } label: {
                        Label("Change This Vault's Pattern", systemImage: "circle.grid.3x3.fill")
                    }
                    Button {
                        dismiss()
                        session.lock()
                    } label: {
                        Label("Lock Now", systemImage: "lock.fill")
                    }
                } header: {
                    Text("Security")
                } footer: {
                    Text("Each pattern opens its own vault. Changing the pattern only affects the vault that is open now.")
                }

                Section {
                    LabeledContent("Photos", value: "\(library.count(of: .photo))")
                    LabeledContent("Videos", value: "\(library.count(of: .video))")
                    LabeledContent("Documents", value: "\(library.count(of: .document))")
                    LabeledContent("Albums", value: "\(library.albums.count)")
                    LabeledContent("Storage Used", value: ByteCountFormatter.string(fromByteCount: library.totalBytes, countStyle: .file))
                } header: {
                    Text("This Vault")
                } footer: {
                    Text("Vault data stays on this iPhone and is not included in iCloud or computer backups.")
                }

                Section {
                    Toggle(isOn: $offerDeleteOriginals) {
                        Label("Offer to Delete Originals", systemImage: "trash.slash")
                    }
                    .tint(VCColor.accent)
                } header: {
                    Text("Import")
                } footer: {
                    Text("After importing from Photos, Velcrypt asks whether to move the originals to Recently Deleted.")
                }

                Section("Appearance") {
                    Picker("Theme", selection: $appearance) {
                        ForEach(AppearancePreference.allCases) { option in
                            Text(option.title).tag(option)
                        }
                    }
                    .pickerStyle(.segmented)
                    NavigationLink {
                        AppIconSettingsView()
                    } label: {
                        Label("App Icon", systemImage: "app.badge")
                    }
                }

                Section("About") {
                    LabeledContent("Version", value: Self.versionString)
                    Link(destination: URL(string: "https://velcrypt.app/privacy/")!) {
                        Label("Privacy Policy", systemImage: "hand.raised.fill")
                    }
                    Link(destination: URL(string: "https://velcrypt.app/terms/")!) {
                        Label("Terms of Service", systemImage: "doc.plaintext")
                    }
                    Link(destination: URL(string: "mailto:support@velcrypt.app")!) {
                        Label("Contact Support", systemImage: "envelope.fill")
                    }
                }

                Section {
                    Button(role: .destructive) {
                        showDeleteVaultConfirm = true
                    } label: {
                        Label("Delete This Vault", systemImage: "trash")
                    }
                    Button(role: .destructive) {
                        showEraseConfirm = true
                    } label: {
                        Label("Erase All Vaults", systemImage: "trash.fill")
                    }
                } footer: {
                    Text("Deleting is permanent and cannot be undone. Originals in your Photos library are not affected.")
                }
            }
            .scrollContentBackground(.hidden)
            .background(VCBackground())
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
            .sheet(isPresented: $showChangePattern) {
                ChangePatternView()
            }
            .confirmationDialog("Delete this vault?", isPresented: $showDeleteVaultConfirm, titleVisibility: .visible) {
                Button("Delete Vault", role: .destructive, action: deleteVault)
            } message: {
                Text("Everything in the vault you have open now will be permanently deleted. Other vaults are not affected.")
            }
            .confirmationDialog("Erase every vault on this iPhone?", isPresented: $showEraseConfirm, titleVisibility: .visible) {
                Button("Erase All Vaults", role: .destructive, action: eraseAll)
            } message: {
                Text("All vaults, for every pattern, will be permanently deleted and Velcrypt will start over.")
            }
            .alert("Something went wrong", isPresented: Binding(get: { errorMessage != nil }, set: { if !$0 { errorMessage = nil } })) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(errorMessage ?? "")
            }
        }
    }

    private func deleteVault() {
        do {
            try session.deleteCurrentVault()
            dismiss()
        } catch {
            errorMessage = String(localized: "The vault could not be deleted.")
        }
    }

    private func eraseAll() {
        do {
            try session.eraseEverything()
            dismiss()
        } catch {
            errorMessage = String(localized: "The vaults could not be erased.")
        }
    }

    static var versionString: String {
        let info = Bundle.main.infoDictionary
        let version = info?["CFBundleShortVersionString"] as? String ?? "–"
        let build = info?["CFBundleVersion"] as? String ?? "–"
        return "\(version) (\(build))"
    }
}

/// New pattern → confirm. The open vault keeps its contents; only its key wrapping and location change.
struct ChangePatternView: View {
    @Environment(VaultSession.self) private var session
    @Environment(\.dismiss) private var dismiss

    @State private var first: [Int]?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isWorking = false
    @State private var message: LocalizedStringKey?

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer(minLength: 24)
                Text(first == nil ? LocalizedStringKey("Draw a new pattern") : "Draw it again to confirm")
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                Group {
                    if isWorking {
                        ProgressView().tint(VCColor.accentCyan)
                    } else if let message {
                        Text(message).foregroundStyle(VCColor.danger)
                    } else {
                        Text("8 or more dots is recommended.").foregroundStyle(VCColor.textSecondary)
                    }
                }
                .font(VCFont.callout)
                .multilineTextAlignment(.center)
                .frame(minHeight: 44)
                .padding(.horizontal, VCMetric.screenPadding)
                Spacer(minLength: 12)
                PatternGrid(feedback: feedback, isDisabled: isWorking, shakeTrigger: shake, onComplete: handle)
                    .frame(maxWidth: 340)
                    .padding(.horizontal, VCMetric.screenPadding)
                Spacer(minLength: 32)
            }
            .frame(maxWidth: .infinity)
            .background(VCBackground())
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
            }
        }
    }

    private func handle(_ dots: [Int]) {
        guard let firstEntry = first else {
            do {
                _ = try UnlockPattern(dots: dots)
                first = dots
                message = nil
                Haptics.tap()
            } catch let error as UnlockPattern.ValidationError {
                reject(error.message)
            } catch {}
            return
        }
        guard dots == firstEntry, let pattern = try? UnlockPattern(dots: dots) else {
            first = nil
            reject("Patterns didn't match. Start again.")
            return
        }
        isWorking = true
        feedback = .success
        Task {
            do {
                try await session.changePattern(to: pattern)
                Haptics.success()
                dismiss()
            } catch VaultError.patternInUse {
                isWorking = false
                first = nil
                reject("That pattern already opens another vault. Choose a different one.")
            } catch {
                isWorking = false
                first = nil
                reject("The pattern couldn't be changed. Please try again.")
            }
        }
    }

    private func reject(_ text: LocalizedStringKey) {
        Haptics.error()
        message = text
        feedback = .error
        shake += 1
        Task {
            try? await Task.sleep(for: .milliseconds(500))
            feedback = .neutral
        }
    }
}
