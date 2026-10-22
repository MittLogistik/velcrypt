import SwiftUI

/// Settings → Duress Pattern. Never shows whether a duress pattern is set: someone forced to open the
/// decoy vault could be made to show this screen, and a status here would give the duress pattern away.
struct DuressSettingsView: View {
    @Environment(VaultLibrary.self) private var library
    @Environment(PremiumStore.self) private var premium
    @Environment(VaultSession.self) private var session

    @State private var mode: DuressPatternEntryView.Mode?
    @State private var paywall: PaywallView.Reason?
    @State private var needsContent = false
    @State private var onlyOneVault = false

    var body: some View {
        Form {
            Section {
                VCFeatureRow(
                    systemName: "hand.raised.fill",
                    title: "For When You're Forced",
                    message: "If someone makes you open Velcrypt, draw your duress pattern instead of your real one."
                )
                VCFeatureRow(
                    systemName: "theatermasks.fill",
                    title: "Set It Up in Your Decoy",
                    message: "Set it up in a decoy vault, not your real one. The duress pattern opens the vault you're in now, so fill it with harmless photos."
                )
                VCFeatureRow(
                    systemName: "trash.fill",
                    title: "Deletes Every Other Vault",
                    message: "At the same moment, every other vault on this iPhone is permanently deleted. Nothing on screen shows it happened."
                )
            }

            Section {
                Button {
                    if !premium.isPremium {
                        paywall = .duress
                    } else if library.isNewVault {
                        needsContent = true
                    } else {
                        // This vault is the only one, so the duress pattern would delete nothing: almost
                        // certainly set up in the real vault by mistake.
                        if session.savedVaultCount <= 1 { onlyOneVault = true } else { mode = .set }
                    }
                } label: {
                    Label("Set Up Duress Pattern", systemImage: "exclamationmark.shield.fill")
                }
                Button(role: .destructive) {
                    mode = .remove
                } label: {
                    Label("Turn Off Duress Pattern", systemImage: "xmark.shield")
                }
            } footer: {
                Text("For your safety, Velcrypt never shows whether a duress pattern is set. Setting up a new one replaces the old one. Deleted vaults can't be recovered, except from an encrypted backup.")
            }
        }
        .scrollContentBackground(.hidden)
        .background(VCBackground())
        .navigationTitle("Duress Pattern")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $mode) { mode in
            DuressPatternEntryView(mode: mode)
        }
        .sheet(item: $paywall) { reason in
            PaywallView(reason: reason)
        }
        .alert("Only One Vault", isPresented: $onlyOneVault) {
            Button("Set Up Anyway") { mode = .set }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("This is the only vault on this iPhone, so the duress pattern would just open it and delete nothing. Create a decoy vault with a different pattern first, and set up the duress pattern there.")
        }
        .alert("Add Something First", isPresented: $needsContent) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("The duress pattern opens this vault, so it needs to be saved first. Add a few harmless photos, then try again.")
        }
    }
}

/// Draw → confirm → turn on; or draw once → turn off.
struct DuressPatternEntryView: View {
    enum Mode: String, Identifiable {
        case set, remove
        var id: String { rawValue }
    }

    let mode: Mode

    @Environment(VaultSession.self) private var session
    @Environment(\.dismiss) private var dismiss

    @State private var first: [Int]?
    @State private var pending: UnlockPattern?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isWorking = false
    @State private var message: LocalizedStringKey?
    @State private var done = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer(minLength: 24)
                Text(title)
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                    .multilineTextAlignment(.center)
                Group {
                    if isWorking {
                        ProgressView().tint(VCColor.accentCyan)
                    } else if let message {
                        Text(message).foregroundStyle(VCColor.danger)
                    } else {
                        Text(hint).foregroundStyle(VCColor.textSecondary)
                    }
                }
                .font(VCFont.callout)
                .multilineTextAlignment(.center)
                .frame(minHeight: 44)
                .padding(.horizontal, VCMetric.screenPadding)
                Spacer(minLength: 12)
                PatternGrid(feedback: feedback, isDisabled: isWorking || done, shakeTrigger: shake, onComplete: handle)
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
            .confirmationDialog(
                "Turn on the duress pattern?",
                isPresented: Binding(get: { pending != nil }, set: { if !$0 { cancelPending() } }),
                titleVisibility: .visible
            ) {
                Button("Turn On", role: .destructive) {
                    if let pattern = pending { turnOn(pattern) }
                }
                Button("Cancel", role: .cancel) { cancelPending() }
            } message: {
                Text("Drawing it on the lock screen opens this vault and permanently deletes every other vault on this iPhone.")
            }
            .alert(mode == .set ? LocalizedStringKey("Duress Pattern On") : "Duress Pattern Off", isPresented: $done) {
                Button("OK") { dismiss() }
            } message: {
                Text(mode == .set
                     ? LocalizedStringKey("Practise it in your head, not on the lock screen: drawing it deletes your other vaults.")
                     : "The duress pattern no longer does anything.")
            }
        }
    }

    private var title: LocalizedStringKey {
        switch mode {
        case .set: first == nil ? LocalizedStringKey("Draw a duress pattern") : "Draw it again to confirm"
        case .remove: "Draw your duress pattern"
        }
    }

    private var hint: LocalizedStringKey {
        switch mode {
        case .set: "Use a pattern that's different from all your vault patterns."
        case .remove: "Drawing it here only turns it off. Nothing is deleted."
        }
    }

    private func handle(_ dots: [Int]) {
        guard let pattern = validated(dots) else { return }
        switch mode {
        case .remove:
            turnOff(pattern)
        case .set:
            guard let firstEntry = first else {
                first = dots
                message = nil
                Haptics.tap()
                return
            }
            guard dots == firstEntry else {
                first = nil
                reject("Patterns didn't match. Start again.")
                return
            }
            feedback = .success
            pending = pattern
        }
    }

    private func validated(_ dots: [Int]) -> UnlockPattern? {
        do {
            return try UnlockPattern(dots: dots)
        } catch let error as UnlockPattern.ValidationError {
            reject(error.message)
        } catch {}
        return nil
    }

    private func turnOn(_ pattern: UnlockPattern) {
        pending = nil
        isWorking = true
        Task {
            do {
                try await session.setDuressPattern(pattern)
                Haptics.success()
                done = true
            } catch VaultError.patternInUse {
                first = nil
                reject("That pattern opens a vault. Choose a pattern you don't use for any vault.")
            } catch {
                first = nil
                reject("The duress pattern couldn't be set. Please try again.")
            }
            isWorking = false
        }
    }

    private func turnOff(_ pattern: UnlockPattern) {
        isWorking = true
        Task {
            do {
                if try await session.removeDuressPattern(pattern) {
                    Haptics.success()
                    done = true
                } else {
                    reject("That isn't the duress pattern.")
                }
            } catch {
                reject("The duress pattern couldn't be turned off. Please try again.")
            }
            isWorking = false
        }
    }

    private func cancelPending() {
        pending = nil
        first = nil
        feedback = .neutral
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
