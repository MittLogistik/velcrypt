import SwiftUI

/// Album overview: create, rename, sort and delete albums. Tapping an album opens its items.
struct AlbumsView: View {
    @Environment(VaultLibrary.self) private var library
    @Environment(VaultSession.self) private var session
    @Environment(PremiumStore.self) private var premium
    @AppStorage("albumSort") private var sort: VaultLibrary.AlbumSort = .newest

    @State private var showCreate = false
    @State private var newName = ""
    @State private var renaming: Album?
    @State private var renameText = ""
    @State private var deleting: Album?
    @State private var showConfirmVault = false
    @State private var paywall: PaywallView.Reason?

    private let columns = [GridItem(.flexible(), spacing: 14), GridItem(.flexible(), spacing: 14)]

    var body: some View {
        Group {
            if library.albums.isEmpty {
                emptyState
            } else {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(library.sortedAlbums(sort)) { album in
                            NavigationLink(value: VaultRoute.items(.album(album.id))) {
                                AlbumCard(album: album)
                            }
                            .buttonStyle(.vcPressable)
                            .contextMenu {
                                Button {
                                    renameText = album.name
                                    renaming = album
                                } label: { Label("Rename", systemImage: "pencil") }
                                Button(role: .destructive) { deleting = album } label: { Label("Delete Album", systemImage: "trash") }
                            }
                        }
                    }
                    .padding(VCMetric.screenPadding)
                }
            }
        }
        .background(VCBackground())
        .navigationTitle("Albums")
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                Menu {
                    Picker("Sort", selection: $sort) {
                        Text("Newest First").tag(VaultLibrary.AlbumSort.newest)
                        Text("Name").tag(VaultLibrary.AlbumSort.name)
                    }
                } label: {
                    Image(systemName: "arrow.up.arrow.down")
                }
                .accessibilityLabel("Sort albums")
                Button {
                    startCreate()
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New album")
            }
        }
        .sheet(isPresented: $showConfirmVault, onDismiss: {
            if library.creationConfirmed { newName = ""; showCreate = true }
        }) {
            ConfirmNewVaultView()
        }
        .sheet(item: $paywall) { reason in
            PaywallView(reason: reason)
        }
        .alert("New Album", isPresented: $showCreate) {
            TextField("Album name", text: $newName)
            Button("Create") { Task { await library.createAlbum(named: newName) } }
            Button("Cancel", role: .cancel) {}
        }
        .alert("Rename Album", isPresented: Binding(get: { renaming != nil }, set: { if !$0 { renaming = nil } })) {
            TextField("Album name", text: $renameText)
            Button("Save") {
                if let album = renaming { Task { await library.renameAlbum(album.id, to: renameText) } }
            }
            Button("Cancel", role: .cancel) {}
        }
        .confirmationDialog(
            Text("Delete “\(deleting?.name ?? "")”?"),
            isPresented: Binding(get: { deleting != nil }, set: { if !$0 { deleting = nil } }),
            titleVisibility: .visible
        ) {
            if let album = deleting {
                Button("Delete Album Only") { Task { await library.deleteAlbum(album.id, deletingItems: false) } }
                Button("Delete Album and Its Items", role: .destructive) {
                    Task { await library.deleteAlbum(album.id, deletingItems: true) }
                }
            }
        } message: {
            Text("“Delete Album Only” keeps the items in your vault.")
        }
    }

    /// Creating an album is the first write in a new vault, so a never-saved vault confirms its pattern first.
    private func startCreate() {
        if let reason = premium.blockReason(creatingIn: library, session: session) {
            paywall = reason
        } else if library.needsCreationConfirmation {
            showConfirmVault = true
        } else {
            newName = ""
            showCreate = true
        }
    }

    private var emptyState: some View {
        VStack(spacing: 14) {
            Image(systemName: "rectangle.stack.badge.plus")
                .font(.system(size: 44, weight: .light))
                .foregroundStyle(VCColor.accentGradient)
            Text("No albums yet")
                .font(VCFont.title)
                .foregroundStyle(VCColor.textPrimary)
            Text("Group photos, videos and documents into albums. Albums exist only inside this vault.")
                .font(VCFont.callout)
                .foregroundStyle(VCColor.textSecondary)
                .multilineTextAlignment(.center)
            Button("Create Album") {
                startCreate()
            }
            .buttonStyle(.vcPrimary)
            .frame(maxWidth: 220)
            .padding(.top, 6)
        }
        .padding(VCMetric.screenPadding)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

private struct AlbumCard: View {
    let album: Album
    @Environment(VaultLibrary.self) private var library

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Group {
                if let cover = library.coverItem(for: album) {
                    ItemThumbnail(item: cover, cornerRadius: 16)
                } else {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(VCColor.surface)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay {
                            Image(systemName: "rectangle.stack")
                                .font(.system(size: 30, weight: .light))
                                .foregroundStyle(VCColor.textSecondary)
                        }
                }
            }
            .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).strokeBorder(VCColor.stroke))
            VStack(alignment: .leading, spacing: 2) {
                Text(album.name)
                    .font(VCFont.headline)
                    .foregroundStyle(VCColor.textPrimary)
                    .lineLimit(1)
                Text("\(library.count(inAlbum: album.id)) items")
                    .font(VCFont.caption)
                    .foregroundStyle(VCColor.textSecondary)
            }
        }
        .accessibilityElement(children: .combine)
    }
}

/// Picks a destination album (or none) for the given items.
struct MoveToAlbumSheet: View {
    let itemIDs: Set<UUID>
    let onDone: () -> Void

    @Environment(VaultLibrary.self) private var library
    @Environment(\.dismiss) private var dismiss
    @State private var showCreate = false
    @State private var newName = ""

    var body: some View {
        NavigationStack {
            List {
                Section {
                    Button { move(to: nil) } label: {
                        Label("No Album", systemImage: "tray")
                    }
                    Button {
                        newName = ""
                        showCreate = true
                    } label: {
                        Label("New Album…", systemImage: "plus.rectangle.on.rectangle")
                    }
                }
                if !library.albums.isEmpty {
                    Section("Albums") {
                        ForEach(library.sortedAlbums(.name)) { album in
                            Button { move(to: album.id) } label: {
                                HStack {
                                    Label(album.name, systemImage: "rectangle.stack")
                                    Spacer()
                                    Text("\(library.count(inAlbum: album.id))")
                                        .foregroundStyle(VCColor.textSecondary)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle(itemIDs.count == 1 ? String(localized: "Move Item") : String(localized: "Move \(itemIDs.count) Items"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
            }
            .alert("New Album", isPresented: $showCreate) {
                TextField("Album name", text: $newName)
                Button("Create and Move") {
                    Task {
                        if let album = await library.createAlbum(named: newName) { move(to: album.id) }
                    }
                }
                Button("Cancel", role: .cancel) {}
            }
        }
        .presentationDetents([.medium, .large])
    }

    private func move(to albumID: UUID?) {
        Task {
            await library.move(itemIDs, to: albumID)
            Haptics.success()
            onDone()
            dismiss()
        }
    }
}
