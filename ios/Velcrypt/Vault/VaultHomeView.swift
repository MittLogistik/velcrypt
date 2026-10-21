import SwiftUI

/// Main dashboard. Collections and import are wired to real storage in Milestone 3.
struct VaultHomeView: View {
    @Environment(VaultSession.self) private var session
    @State private var showSettings = false
    @State private var showImportOptions = false

    private let collections: [VaultCollection] = [
        VaultCollection(title: "Photos", systemImage: "photo.fill", tint: VCColor.accent),
        VaultCollection(title: "Videos", systemImage: "play.rectangle.fill", tint: Color(hex: 0xA78BFA)),
        VaultCollection(title: "Documents", systemImage: "doc.text.fill", tint: VCColor.accentCyan),
        VaultCollection(title: "Albums", systemImage: "rectangle.stack.fill", tint: Color(hex: 0xF59E0B)),
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    SecurityStatusCard(itemCount: 0, storageBytes: 0)
                    collectionsGrid
                    recentSection
                }
                .padding(.horizontal, VCMetric.screenPadding)
                .padding(.bottom, 120)
            }
            .background(VCBackground())
            .toolbar { toolbarContent }
            .toolbarBackground(.hidden, for: .navigationBar)
            .overlay(alignment: .bottom) { addButton }
            .sheet(isPresented: $showSettings) { SettingsView() }
            .confirmationDialog("Add to Vault", isPresented: $showImportOptions) {
                Button("Photos & Videos") {}
                Button("Files") {}
            } message: {
                Text("Import is enabled in the next build.")
            }
        }
    }

    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            VelcryptWordmark(markSize: 26)
        }
        ToolbarItemGroup(placement: .topBarTrailing) {
            Button {
                Haptics.tap()
                session.lock()
            } label: {
                Image(systemName: "lock.fill")
            }
            .accessibilityLabel("Lock vault")
            Button {
                showSettings = true
            } label: {
                Image(systemName: "gearshape.fill")
            }
            .accessibilityLabel("Settings")
        }
    }

    private var collectionsGrid: some View {
        LazyVGrid(columns: [GridItem(.flexible(), spacing: 14), GridItem(.flexible(), spacing: 14)], spacing: 14) {
            ForEach(collections) { collection in
                CollectionTile(collection: collection, count: 0)
            }
        }
    }

    private var recentSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Recently Added")
                .font(VCFont.headline)
                .foregroundStyle(VCColor.textPrimary)
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
    }

    private var addButton: some View {
        Button {
            Haptics.tap()
            showImportOptions = true
        } label: {
            Image(systemName: "plus")
                .font(.system(size: 24, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 64, height: 64)
                .background(Circle().fill(VCColor.accentGradient))
                .shadow(color: VCColor.accent.opacity(0.5), radius: 16, y: 6)
        }
        .padding(.bottom, 24)
        .accessibilityLabel("Add to vault")
    }
}

struct VaultCollection: Identifiable {
    let title: LocalizedStringKey
    let systemImage: String
    let tint: Color
    var id: String { systemImage }
}

struct CollectionTile: View {
    let collection: VaultCollection
    let count: Int

    var body: some View {
        VCCard {
            VStack(alignment: .leading, spacing: 14) {
                VCIconBadge(systemName: collection.systemImage, size: 40, tint: collection.tint)
                VStack(alignment: .leading, spacing: 2) {
                    Text(collection.title)
                        .font(VCFont.headline)
                        .foregroundStyle(VCColor.textPrimary)
                    Text("\(count) items")
                        .font(VCFont.caption)
                        .foregroundStyle(VCColor.textSecondary)
                }
            }
        }
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
                }
                Spacer(minLength: 0)
            }
        }
        .accessibilityElement(children: .combine)
    }
}
