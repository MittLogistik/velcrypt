import SwiftUI

/// Draw a pattern to open its vault. Any valid pattern opens a vault, so there is no "wrong pattern" state.
struct LockScreenView: View {
    @Environment(VaultSession.self) private var session

    @State private var message: LocalizedStringKey?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isOpening = false

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
            Spacer(minLength: 32)
        }
        .frame(maxWidth: .infinity)
        .background(VCBackground())
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
