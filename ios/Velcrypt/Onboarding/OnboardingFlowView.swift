import SwiftUI

/// First-launch flow: a three-step introduction (`GuidePage`), then create the pattern, then ready.
struct OnboardingFlowView: View {
    enum Step: Hashable {
        case guide(GuidePage)
        case pattern
        case ready
    }

    @Environment(VaultSession.self) private var session
    @State private var step: Step = .guide(.pattern)
    @State private var understood = false

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
        case .guide(let page):
            OnboardingScaffold(progress: page) {
                GuidePageContent(page: page, understood: page == .key ? $understood : nil)
            } actions: {
                Button(page == .pattern ? LocalizedStringKey("Get Started") : "Continue") {
                    if let next = page.next {
                        step = .guide(next)
                    } else {
                        step = .pattern
                    }
                }
                .buttonStyle(.vcPrimary)
                .disabled(page == .key && !understood)
            }
        case .pattern:
            CreatePatternStepView { step = .ready }
        case .ready:
            ReadyStepView { session.finishOnboarding() }
        }
    }
}

/// The three pages that explain Velcrypt: in onboarding, and again from "How Velcrypt Works".
enum GuidePage: Int, CaseIterable, Hashable {
    case pattern, vaults, key

    var next: GuidePage? { GuidePage(rawValue: rawValue + 1) }
}

/// Shared scaffold: optional progress indicator, scrollable content, pinned bottom actions.
struct OnboardingScaffold<Content: View, Actions: View>: View {
    var progress: GuidePage?
    var scrolls = true
    @ViewBuilder var content: Content
    @ViewBuilder var actions: Actions

    var body: some View {
        VStack(spacing: 0) {
            if let progress {
                GuideProgress(page: progress)
                    .padding(.top, 12)
            }
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
}

/// "Step 1 of 3" with a capsule per page.
struct GuideProgress: View {
    let page: GuidePage

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 6) {
                ForEach(GuidePage.allCases, id: \.self) { item in
                    Capsule()
                        .fill(item.rawValue <= page.rawValue ? AnyShapeStyle(VCColor.accentGradient) : AnyShapeStyle(VCColor.surfaceRaised))
                        .frame(width: item == page ? 26 : 8, height: 6)
                }
            }
            Text("Step \(page.rawValue + 1) of \(GuidePage.allCases.count)")
                .font(VCFont.caption)
                .foregroundStyle(VCColor.textSecondary)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Step \(page.rawValue + 1) of \(GuidePage.allCases.count)"))
    }
}

// MARK: - Guide pages

struct GuidePageContent: View {
    let page: GuidePage
    /// Shown on the last page during onboarding only.
    var understood: Binding<Bool>?

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            switch page {
            case .pattern: patternPage
            case .vaults: vaultsPage
            case .key: keyPage
            }
        }
    }

    private func header(_ symbol: String, title: LocalizedStringKey, message: LocalizedStringKey) -> some View {
        VStack(alignment: .leading, spacing: 24) {
            VCIconBadge(systemName: symbol, size: 64, tint: VCColor.accentCyan)
            VStack(alignment: .leading, spacing: 12) {
                Text(title)
                    .font(VCFont.display)
                    .foregroundStyle(VCColor.textPrimary)
                    .fixedSize(horizontal: false, vertical: true)
                Text(message)
                    .font(VCFont.body)
                    .foregroundStyle(VCColor.textSecondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }

    @ViewBuilder
    private var patternPage: some View {
        header(
            "circle.grid.3x3.fill",
            title: "Your pattern opens your vault",
            message: "Velcrypt has no password and no account. You draw a pattern by connecting dots on a grid, and that pattern opens your vault."
        )
        VStack(alignment: .leading, spacing: 20) {
            VCFeatureRow(systemName: "hand.draw.fill", title: "Draw it the same way every time", message: "Same dots, same order. That is how Velcrypt finds your vault again.")
            VCFeatureRow(systemName: "lock.shield.fill", title: "Encrypted on your iPhone", message: "Everything you import is encrypted with AES-256 before it is stored.")
            VCFeatureRow(systemName: "faceid", title: "Face ID if you want it", message: "Off by default. You can turn it on for a vault later in Settings.")
        }
    }

    @ViewBuilder
    private var vaultsPage: some View {
        header(
            "square.stack.3d.up.fill",
            title: "Each pattern opens its own vault",
            message: "A different pattern never shows an error. It opens a different vault, new and empty. That is how your vaults stay hidden."
        )
        VStack(alignment: .leading, spacing: 20) {
            VCFeatureRow(systemName: "questionmark.folder.fill", title: "Seeing an empty vault?", message: "You probably drew a different pattern. Lock Velcrypt and draw your usual one. Your files are still there.")
            VCFeatureRow(systemName: "gift.fill", title: "Free: one vault with up to \(PremiumLimits.freeItems) items", message: "A vault only counts once you add something to it, so trying another pattern never uses it up.")
            VCFeatureRow(systemName: "theatermasks.fill", title: "Keep a decoy", message: "Fill a second vault with harmless photos. If you're ever pressured to open the app, show that one.")
        }
    }

    @ViewBuilder
    private var keyPage: some View {
        header(
            "key.horizontal.fill",
            title: "Only you hold the key",
            message: "Your pattern is turned into an encryption key on this iPhone. Nobody else has a copy — not even us."
        )
        VStack(alignment: .leading, spacing: 20) {
            VCFeatureRow(systemName: "iphone", title: "Stays on this iPhone", message: "Vaults are not included in iCloud or computer backups. If you lose or reset this device, the vaults are lost too.")
            VCFeatureRow(systemName: "clock.arrow.circlepath", title: "Make your own backup", message: "Settings › Backup saves a vault to an encrypted file that you can restore on a new iPhone.")
            VCFeatureRow(systemName: "photo.on.rectangle", title: "Originals stay where they are", message: "Importing copies a photo into the vault. The original stays in your Photos library and its backups until you delete it there.")
        }
        VCNotice(kind: .warning, message: "A forgotten pattern cannot be recovered. Without it, that vault can never be opened again.")
        if let understood {
            Toggle(isOn: understood) {
                Text("I understand that a forgotten pattern cannot be recovered")
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textPrimary)
            }
            .tint(VCColor.accent)
        }
    }
}

/// The three guide pages on their own, opened from the vault, the lock screen or Settings.
struct HowItWorksView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var page: GuidePage = .pattern

    var body: some View {
        NavigationStack {
            ZStack {
                VCBackground()
                OnboardingScaffold(progress: page) {
                    GuidePageContent(page: page)
                        .id(page)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing).combined(with: .opacity),
                            removal: .move(edge: .leading).combined(with: .opacity)
                        ))
                } actions: {
                    HStack(spacing: 12) {
                        if page != .pattern {
                            Button("Back") {
                                if let previous = GuidePage(rawValue: page.rawValue - 1) { page = previous }
                            }
                            .buttonStyle(.vcSecondary)
                        }
                        Button(page.next == nil ? LocalizedStringKey("Done") : "Next") {
                            if let next = page.next { page = next } else { dismiss() }
                        }
                        .buttonStyle(.vcPrimary)
                    }
                }
            }
            .animation(.spring(response: 0.45, dampingFraction: 0.88), value: page)
            .navigationTitle("How Velcrypt Works")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(VCColor.textSecondary)
                    }
                    .accessibilityLabel("Close")
                }
            }
        }
    }
}

// MARK: - Pattern and ready

struct CreatePatternStepView: View {
    let onCreated: () -> Void

    @Environment(VaultSession.self) private var session
    @State private var first: [Int]?
    @State private var feedback: PatternGrid.Feedback = .neutral
    @State private var shake = 0
    @State private var isCreating = false
    @State private var message: LocalizedStringKey?

    var body: some View {
        OnboardingScaffold(scrolls: false) {
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
        OnboardingScaffold {
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
                VCNotice(kind: .info, message: "Next time, draw this same pattern to open this vault. A different pattern opens a different, empty vault.")
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
