import SwiftUI

/// First-launch flow: welcome → hidden vaults → privacy → create pattern → ready.
struct OnboardingFlowView: View {
    enum Step: Int, CaseIterable {
        case welcome, vaults, privacy, pattern, ready
    }

    @Environment(VaultSession.self) private var session
    @State private var step: Step = .welcome

    var body: some View {
        ZStack {
            VCBackground()
            content
                .id(step)
                .transition(.asymmetric(
                    insertion: .move(edge: .trailing).combined(with: .opacity),
                    removal: .move(edge: .leading).combined(with: .opacity)
                ))
        }
        .animation(.spring(response: 0.45, dampingFraction: 0.88), value: step)
    }

    @ViewBuilder
    private var content: some View {
        switch step {
        case .welcome:
            WelcomeStepView { step = .vaults }
        case .vaults:
            VaultsStepView { step = .privacy }
        case .privacy:
            PrivacyStepView { step = .pattern }
        case .pattern:
            CreatePatternStepView { step = .ready }
        case .ready:
            ReadyStepView { session.finishOnboarding() }
        }
    }
}

/// Shared scaffold: progress indicator, scrollable content, pinned bottom actions.
struct OnboardingScaffold<Content: View, Actions: View>: View {
    let step: OnboardingFlowView.Step
    var scrolls = true
    @ViewBuilder var content: Content
    @ViewBuilder var actions: Actions

    var body: some View {
        VStack(spacing: 0) {
            progress
                .padding(.top, 12)
            if scrolls {
                ScrollView {
                    padded
                }
                .scrollBounceBehavior(.basedOnSize)
            } else {
                padded
                Spacer(minLength: 0)
            }
            VStack(spacing: 12) { actions }
                .padding(.horizontal, VCMetric.screenPadding)
                .padding(.bottom, 16)
        }
    }

    private var padded: some View {
        content
            .padding(.horizontal, VCMetric.screenPadding)
            .padding(.vertical, 28)
    }

    private var progress: some View {
        HStack(spacing: 6) {
            ForEach(OnboardingFlowView.Step.allCases, id: \.self) { item in
                Capsule()
                    .fill(item.rawValue <= step.rawValue ? AnyShapeStyle(VCColor.accentGradient) : AnyShapeStyle(VCColor.surfaceRaised))
                    .frame(width: item == step ? 26 : 8, height: 6)
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Step \(step.rawValue + 1) of \(OnboardingFlowView.Step.allCases.count)"))
    }
}

// MARK: - Steps

struct WelcomeStepView: View {
    let onContinue: () -> Void
    @State private var appeared = false

    var body: some View {
        OnboardingScaffold(step: .welcome) {
            VStack(alignment: .leading, spacing: 28) {
                VelcryptMark(size: 96)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 24)
                    .scaleEffect(appeared ? 1 : 0.8)
                    .opacity(appeared ? 1 : 0)
                VStack(alignment: .leading, spacing: 12) {
                    Text("Your private world. Protected.")
                        .font(VCFont.display)
                        .foregroundStyle(VCColor.textPrimary)
                    Text("Velcrypt keeps your most personal photos, videos and documents in encrypted vaults that only you can open.")
                        .font(VCFont.body)
                        .foregroundStyle(VCColor.textSecondary)
                }
                VStack(alignment: .leading, spacing: 20) {
                    VCFeatureRow(systemName: "lock.shield.fill", title: "Encrypted on your iPhone", message: "Everything you import is encrypted with AES-256 before it is stored.")
                    VCFeatureRow(systemName: "circle.grid.3x3.fill", title: "Opened by a pattern", message: "Your pattern is the key. It lives in your head, not in your face or fingerprint.")
                    VCFeatureRow(systemName: "icloud.slash", title: "No account. No cloud.", message: "Your private files never leave this device.")
                }
            }
        } actions: {
            Button("Get Started", action: onContinue)
                .buttonStyle(.vcPrimary)
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.7).delay(0.1)) { appeared = true }
        }
    }
}

struct VaultsStepView: View {
    let onContinue: () -> Void

    var body: some View {
        OnboardingScaffold(step: .vaults) {
            VStack(alignment: .leading, spacing: 24) {
                VCIconBadge(systemName: "square.stack.3d.up.fill", size: 64, tint: VCColor.accentCyan)
                VStack(alignment: .leading, spacing: 12) {
                    Text("One pattern, one vault")
                        .font(VCFont.display)
                        .foregroundStyle(VCColor.textPrimary)
                    Text("Every pattern you draw opens its own separate vault. Velcrypt never shows a list of vaults.")
                        .font(VCFont.body)
                        .foregroundStyle(VCColor.textSecondary)
                }
                VStack(alignment: .leading, spacing: 20) {
                    VCFeatureRow(systemName: "eye.slash.fill", title: "Nothing to give away", message: "A pattern Velcrypt hasn't seen before simply opens an empty vault. There's no error and no hint that other vaults exist.")
                    VCFeatureRow(systemName: "theatermasks.fill", title: "Keep a decoy", message: "Fill a second vault with harmless photos. If you're ever pressured to open the app, show that one.")
                    VCFeatureRow(systemName: "plus.square.on.square", title: "Create vaults on the fly", message: "Draw a new pattern and add something to it. The vault is saved the moment it holds a file.")
                }
            }
        } actions: {
            Button("Continue", action: onContinue)
                .buttonStyle(.vcPrimary)
        }
    }
}

struct PrivacyStepView: View {
    let onContinue: () -> Void
    @State private var understood = false

    var body: some View {
        OnboardingScaffold(step: .privacy) {
            VStack(alignment: .leading, spacing: 24) {
                VCIconBadge(systemName: "key.horizontal.fill", size: 64, tint: VCColor.accentCyan)
                VStack(alignment: .leading, spacing: 12) {
                    Text("Only you hold the key")
                        .font(VCFont.display)
                        .foregroundStyle(VCColor.textPrimary)
                    Text("Your pattern is turned into an encryption key on this iPhone. Nobody else has a copy — not even us.")
                        .font(VCFont.body)
                        .foregroundStyle(VCColor.textSecondary)
                }
                VStack(alignment: .leading, spacing: 20) {
                    VCFeatureRow(systemName: "iphone", title: "Stays on this iPhone", message: "Vaults are not included in iCloud or computer backups. If you lose or reset this device, the vaults are lost too.")
                    VCFeatureRow(systemName: "photo.on.rectangle", title: "Originals stay where they are", message: "Importing copies a photo into the vault. The original stays in your Photos library and its backups until you delete it there.")
                }
                VCNotice(kind: .warning, message: "A forgotten pattern cannot be recovered. Without it, that vault can never be opened again.")
                Toggle(isOn: $understood) {
                    Text("I understand that a forgotten pattern cannot be recovered")
                        .font(VCFont.callout)
                        .foregroundStyle(VCColor.textPrimary)
                }
                .tint(VCColor.accent)
            }
        } actions: {
            Button("Continue", action: onContinue)
                .buttonStyle(.vcPrimary)
                .disabled(!understood)
        }
    }
}

struct CreatePatternStepView: View {
    let onCreated: () -> Void

    @Environment(VaultSession.self) private var session
    @State private var first: [Int]?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isCreating = false
    @State private var message: LocalizedStringKey?

    var body: some View {
        OnboardingScaffold(step: .pattern, scrolls: false) {
            VStack(spacing: 10) {
                Text(first == nil ? LocalizedStringKey("Draw your first pattern") : "Draw it again to confirm")
                    .font(VCFont.title)
                    .foregroundStyle(VCColor.textPrimary)
                    .multilineTextAlignment(.center)
                Group {
                    if isCreating {
                        HStack(spacing: 8) {
                            ProgressView().tint(VCColor.accentCyan)
                            Text("Securing your vault…")
                        }
                    } else if let message {
                        Text(message).foregroundStyle(VCColor.danger)
                    } else {
                        Text("Connect at least 6 dots and change direction at least once. 8 or more dots is much stronger.")
                    }
                }
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
                .frame(minHeight: 48)
                PatternGrid(feedback: feedback, isDisabled: isCreating, shakeTrigger: shake, onComplete: handle)
                    .frame(maxWidth: 320)
                    .padding(.top, 8)
            }
            .frame(maxWidth: .infinity)
        } actions: {
            if first != nil && !isCreating {
                Button("Start over") {
                    first = nil
                    message = nil
                }
                .font(VCFont.callout)
                .foregroundStyle(VCColor.accentCyan)
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
        feedback = .success
        isCreating = true
        Task {
            do {
                try await session.createFirstVault(pattern: pattern)
                Haptics.success()
                onCreated()
            } catch {
                isCreating = false
                first = nil
                reject("Couldn't create the vault. Please try again.")
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

struct ReadyStepView: View {
    let onFinish: () -> Void
    @State private var appeared = false

    var body: some View {
        OnboardingScaffold(step: .ready) {
            VStack(spacing: 24) {
                ZStack {
                    Circle()
                        .fill(VCColor.success.opacity(0.12))
                        .frame(width: 150, height: 150)
                        .scaleEffect(appeared ? 1 : 0.4)
                    Image(systemName: "checkmark.shield.fill")
                        .font(.system(size: 64))
                        .foregroundStyle(VCColor.success)
                        .symbolEffect(.bounce, value: appeared)
                }
                .padding(.top, 48)
                .accessibilityHidden(true)
                Text("Your vault is ready")
                    .font(VCFont.display)
                    .foregroundStyle(VCColor.textPrimary)
                    .multilineTextAlignment(.center)
                Text("Add photos, videos and documents. They're encrypted the moment they arrive.")
                    .font(VCFont.body)
                    .foregroundStyle(VCColor.textSecondary)
                    .multilineTextAlignment(.center)
                VCNotice(kind: .info, message: "Want a decoy? Lock Velcrypt, draw a different pattern and add a few harmless photos.")
            }
            .frame(maxWidth: .infinity)
        } actions: {
            Button("Open Vault", action: onFinish)
                .buttonStyle(.vcPrimary)
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.6)) { appeared = true }
            Haptics.success()
        }
    }
}
