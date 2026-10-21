import SwiftUI

/// Shown before the first write to a vault that has never been saved: the user re-draws the pattern,
/// so a mis-drawn pattern can't quietly create a vault they will never find again.
/// On success it sets `library.creationConfirmed`; the presenter continues in the sheet's `onDismiss`.
struct ConfirmNewVaultView: View {

    @Environment(VaultSession.self) private var session
    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isChecking = false
    @State private var mismatch = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Spacer(minLength: 16)
                Text("New Vault")
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                Group {
                    if isChecking {
                        ProgressView().tint(VCColor.accentCyan)
                    } else {
                        Text(mismatch ? LocalizedStringKey("Patterns didn't match. Start again.") : "Draw the pattern again to create this vault.")
                            .foregroundStyle(mismatch ? VCColor.danger : VCColor.textSecondary)
                    }
                }
                .font(VCFont.callout)
                .multilineTextAlignment(.center)
                .frame(minHeight: 44)
                .padding(.horizontal, VCMetric.screenPadding)
                Spacer(minLength: 12)
                PatternGrid(feedback: feedback, isDisabled: isChecking, shakeTrigger: shake, onComplete: check)
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

    private func check(_ dots: [Int]) {
        guard let pattern = try? UnlockPattern(dots: dots) else {
            reject()
            return
        }
        isChecking = true
        Task {
            let matches = await session.patternOpensCurrentVault(pattern)
            isChecking = false
            if matches {
                feedback = .success
                Haptics.success()
                library.creationConfirmed = true
                dismiss()
            } else {
                reject()
            }
        }
    }

    private func reject() {
        Haptics.error()
        mismatch = true
        feedback = .error
        shake += 1
        Task {
            try? await Task.sleep(for: .milliseconds(500))
            feedback = .neutral
        }
    }
}
