import SwiftUI

/// Main dashboard of the open vault.
///
/// The brand header is part of the scroll content (it scrolls away) and the status bar area gets a
/// solid backdrop, so content never slides underneath a transparent navigation bar.
struct VaultHomeView: View {
    @Environment(VaultSession.self) private var session
    @Environment(VaultLibrary.self) private var library
    @Environment(PremiumStore.self) private var premium
    @AppStorage("hasSeenWelcomePaywall") private var hasSeenWelcomePaywall = false

    @State private var showSettings = false
    @State private var showImporter = false
    @State private var showWelcomePaywall = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    header
                    SecurityStatusCard(itemCount: library.items.count, storageBytes: library.totalBytes)
                    collectionsGrid
                    recentSection
                }
                .padding(.horizontal, VCMetric.screenPadding)
                .padding(.top, 8)
                .padding(.bottom, 140)
            }
            .scrollIndicators(.hidden)
            .background(VCBackground())
            .safeAreaInset(edge: .top, spacing: 0) {
                // Opaque strip behind the status bar.
                Color.clear
                    .frame(height: 0)
                    .background(VCColor.background.ignoresSafeArea(edges: .top))
            }
            .toolbar(.hidden, for: .navigationBar)
            .overlay(alignment: .bottom) {
                VStack(spacing: 12) {
                    ImportProgressCard()
                    if !library.isImporting { addButton }
                }
                .padding(.bottom, 20)
                .animation(.snappy, value: library.isImporting)
            }
            .navigationDestination(for: VaultRoute.self) { route in
                switch route {
                case .items(let filter): ItemGridView(filter: filter)
                case .albums: AlbumsView()
                }
            }
            .sheet(isPresented: $showSettings) { SettingsView() }
            .sheet(isPresented: $showWelcomePaywall) { PaywallView(reason: .welcome) }
            .vaultImporter(isPresented: $showImporter)
        }
        .alert(
            "Something went wrong",
            isPresented: Binding(get: { library.errorMessage != nil }, set: { if !$0 { library.errorMessage = nil } })
        ) {
            Button("OK", role: .cancel) {}
        } message: {
            Text(library.errorMessage ?? "")
        }
        .task {
            await library.load()
            ReviewPrompt.shared.recordVaultOpened()
            // Shown once, the first time a vault opens (right after onboarding): most purchases happen on day one.
            if !hasSeenWelcomePaywall && !premium.isPremium {
                hasSeenWelcomePaywall = true
                try? await Task.sleep(for: .milliseconds(500))
                showWelcomePaywall = true
            }
        }
    }

    // MARK: Sections

    private var header: some View {
        HStack(spacing: 4) {
            VelcryptWordmark(markSize: 30)
            Spacer()
            headerButton("lock.fill", label: "Lock vault") {
                Haptics.tap()
                session.lock()
            }
            headerButton("gearshape.fill", label: "Settings") { showSettings = true }
        }
        .padding(.top, 4)
    }

    private func headerButton(_ symbol: String, label: LocalizedStringKey, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: symbol)
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(VCColor.textPrimary)
                .frame(width: 42, height: 42)
                .background(Circle().fill(VCColor.surface))
                .overlay(Circle().strokeBorder(VCColor.stroke))
        }
        .buttonStyle(.vcPressable(scale: 0.9))
        .accessibilityLabel(Text(label))
    }

    private var collectionsGrid: some View {
        LazyVGrid(columns: [GridItem(.flexible(), spacing: 14), GridItem(.flexible(), spacing: 14)], spacing: 14) {
            NavigationLink(value: VaultRoute.items(.kind(.photo))) {
                CollectionTile(title: "Photos", systemImage: "photo.fill", tint: VCColor.accent, subtitle: itemsLabel(library.count(of: .photo)))
            }
            NavigationLink(value: VaultRoute.items(.kind(.video))) {
                CollectionTile(title: "Videos", systemImage: "play.rectangle.fill", tint: Color(hex: 0xA78BFA), subtitle: itemsLabel(library.count(of: .video)))
            }
            NavigationLink(value: VaultRoute.items(.kind(.document))) {
                CollectionTile(title: "Documents", systemImage: "doc.text.fill", tint: VCColor.accentCyan, subtitle: itemsLabel(library.count(of: .document)))
            }
            NavigationLink(value: VaultRoute.albums) {
                CollectionTile(
                    title: "Albums", systemImage: "rectangle.stack.fill", tint: Color(hex: 0xF59E0B),
                    subtitle: library.albums.count == 1 ? String(localized: "1 album") : String(localized: "\(library.albums.count) albums")
                )
            }
        }
        .buttonStyle(.vcPressable)
    }

    @ViewBuilder
    private var recentSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Recently Added")
                    .font(VCFont.headline)
                    .foregroundStyle(VCColor.textPrimary)
                Spacer()
                if !library.items.isEmpty {
                    NavigationLink("See All", value: VaultRoute.items(.all))
                        .font(VCFont.callout.weight(.semibold))
                        .foregroundStyle(VCColor.accentCyan)
                }
            }
            if library.items.isEmpty {
                emptyCard
            } else {
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 10) {
                        ForEach(library.recentItems) { item in
                            NavigationLink(value: VaultRoute.items(.all)) {
                                ItemThumbnail(item: item, cornerRadius: 14)
                                    .frame(width: 96, height: 96)
                            }
                            .buttonStyle(.vcPressable)
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
    }

    private var emptyCard: some View {
        VCCard(padding: 28) {
            VStack(spacing: 14) {
                Image(systemName: "sparkles.rectangle.stack")
                    .font(.system(size: 40, weight: .light))
                    .foregroundStyle(VCColor.accentGradient)
                    .accessibilityHidden(true)
                Text("Your vault is empty")
                    .font(VCFont.headline)
                    .foregroundStyle(VCColor.textPrimary)
                Text("Tap + to add photos, videos or documents. They're encrypted as they're imported.")
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textSecondary)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
        }
    }

    private var addButton: some View {
        Button {
            Haptics.tap()
            showImporter = true
        } label: {
            Image(systemName: "plus")
                .font(.system(size: 24, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 64, height: 64)
                .background(Circle().fill(VCColor.accentGradient))
                .shadow(color: VCColor.accent.opacity(0.5), radius: 16, y: 6)
        }
        .buttonStyle(.vcPressable(scale: 0.9))
        .accessibilityLabel("Add to vault")
    }

    private func itemsLabel(_ count: Int) -> String {
        count == 1 ? String(localized: "1 item") : String(localized: "\(count) items")
    }
}

struct CollectionTile: View {
    let title: LocalizedStringKey
    let systemImage: String
    let tint: Color
    let subtitle: String

    var body: some View {
        VCCard {
            VStack(alignment: .leading, spacing: 14) {
                VCIconBadge(systemName: systemImage, size: 40, tint: tint)
                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(VCFont.headline)
                        .foregroundStyle(VCColor.textPrimary)
                    Text(subtitle)
                        .font(VCFont.caption)
                        .foregroundStyle(VCColor.textSecondary)
                        .contentTransition(.numericText())
                        .animation(.snappy, value: subtitle)
                }
            }
        }
        .contentShape(Rectangle())
        .accessibilityElement(children: .combine)
    }
}

struct SecurityStatusCard: View {
    let itemCount: Int
    let storageBytes: Int64

    var body: some View {
        VCCard(padding: 20) {
            HStack(spacing: 16) {
                ZStack {
                    Circle().fill(VCColor.success.opacity(0.14))
                    Image(systemName: "checkmark.shield.fill")
                        .font(.system(size: 26))
                        .foregroundStyle(VCColor.success)
                        // A small bounce each time something new is encrypted into the vault.
                        .symbolEffect(.bounce, value: itemCount)
                }
                .frame(width: 56, height: 56)
                .accessibilityHidden(true)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Vault protected")
                        .font(VCFont.headline)
                        .foregroundStyle(VCColor.textPrimary)
                    Text("AES-256 encrypted · \(itemCount) items · \(ByteCountFormatter.string(fromByteCount: storageBytes, countStyle: .file))")
                        .font(VCFont.caption)
                        .foregroundStyle(VCColor.textSecondary)
                        .contentTransition(.numericText(value: Double(itemCount)))
                        .animation(.snappy, value: itemCount)
                }
                Spacer(minLength: 0)
            }
        }
        .accessibilityElement(children: .combine)
    }
}
