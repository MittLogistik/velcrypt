import QuickLook
import SwiftUI

/// Navigation destinations inside the vault.
enum VaultRoute: Hashable {
    case items(ItemFilter)
    case albums
}

/// Context for the full-screen viewer: the items it can page through and where to start.
struct ViewerContext: Identifiable {
    let id = UUID()
    let items: [VaultItem]
    let startID: UUID
}

/// Grid or list of vault items with sorting, search, multi-select, move, export and delete.
struct ItemGridView: View {
    let filter: ItemFilter

    @Environment(VaultLibrary.self) private var library
    @AppStorage("itemsUseList") private var useList = false
    @AppStorage("itemsNewestFirst") private var newestFirst = true

    @State private var search = ""
    @State private var isSelecting = false
    @State private var selection: Set<UUID> = []
    @State private var viewer: ViewerContext?
    @State private var previewURL: URL?
    @State private var showImporter = false
    @State private var showMove = false
    @State private var confirmDelete = false
    @State private var exportURLs: [URL] = []
    @State private var isPreparingExport = false
    @State private var newNoteRequested = false
    @State private var editingNote: VaultItem?

    private var items: [VaultItem] {
        library.items(matching: filter, search: search, newestFirst: newestFirst)
    }

    private var albumID: UUID? {
        if case .album(let id) = filter { return id }
        return nil
    }

    var body: some View {
        content
            .background(VCBackground())
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $search, prompt: Text("Search names and albums"))
            .toolbar { toolbarContent }
            .safeAreaInset(edge: .bottom) {
                if isSelecting { selectionBar } else { ImportProgressCard().padding(.bottom, 8) }
            }
            .animation(.snappy, value: isSelecting)
            .fullScreenCover(item: $viewer) { context in
                MediaViewerView(items: context.items, startID: context.startID)
            }
            .quickLookPreview($previewURL)
            .onChange(of: previewURL) { old, new in
                if new == nil, let old { TemporaryFiles.remove(old) }
            }
            .sheet(isPresented: $showMove) {
                MoveToAlbumSheet(itemIDs: selection) { endSelection() }
            }
            .sheet(isPresented: Binding(get: { !exportURLs.isEmpty }, set: { if !$0 { finishExport() } }), onDismiss: finishExport) {
                ActivityView(items: exportURLs, onComplete: finishExport)
            }
            .confirmationDialog(deleteTitle, isPresented: $confirmDelete, titleVisibility: .visible) {
                Button("Delete", role: .destructive) {
                    let ids = selection
                    Task {
                        await library.delete(ids)
                        Haptics.success()
                        endSelection()
                    }
                }
            } message: {
                Text("Deleted items are removed from the vault permanently.")
            }
            .fullScreenCover(item: $editingNote) { note in
                NoteEditorView(item: note)
            }
            .vaultImporter(isPresented: $showImporter, albumID: albumID, noteRequest: $newNoteRequested)
    }

    // MARK: Content

    @ViewBuilder
    private var content: some View {
        if items.isEmpty {
            emptyState
        } else if useList {
            List(items) { item in
                Button { tap(item) } label: { row(item) }
                    .listRowBackground(Color.clear)
                    .contextMenu { contextMenu(for: item) }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
        } else {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 104), spacing: 3)], spacing: 3) {
                    ForEach(items) { item in
                        Button { tap(item) } label: {
                            ItemThumbnail(item: item)
                                .overlay(alignment: .topTrailing) { selectionMark(item) }
                        }
                        .buttonStyle(.vcPressable(scale: 0.95))
                        .contextMenu { contextMenu(for: item) }
                    }
                }
                .padding(.horizontal, 3)
            }
        }
    }

    private func row(_ item: VaultItem) -> some View {
        HStack(spacing: 14) {
            ItemThumbnail(item: item, cornerRadius: 8)
                .frame(width: 54, height: 54)
            VStack(alignment: .leading, spacing: 3) {
                Text(item.isNote ? (item.filename as NSString).deletingPathExtension : item.filename)
                    .font(VCFont.callout.weight(.medium))
                    .foregroundStyle(VCColor.textPrimary)
                    .lineLimit(1)
                Text("\(item.sortDate.formatted(date: .abbreviated, time: .shortened)) · \(ByteCountFormatter.string(fromByteCount: item.byteCount, countStyle: .file))")
                    .font(VCFont.caption)
                    .foregroundStyle(VCColor.textSecondary)
            }
            Spacer(minLength: 0)
            selectionMark(item)
        }
        .contentShape(Rectangle())
    }

    @ViewBuilder
    private func selectionMark(_ item: VaultItem) -> some View {
        if isSelecting {
            let selected = selection.contains(item.id)
            Image(systemName: selected ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 22))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, selected ? VCColor.accent : Color.black.opacity(0.3))
                .padding(6)
                .accessibilityHidden(true)
        }
    }

    private var emptyState: some View {
        VStack(spacing: 14) {
            Image(systemName: emptySymbol)
                .font(.system(size: 44, weight: .light))
                .foregroundStyle(VCColor.accentGradient)
            Text(search.isEmpty ? LocalizedStringKey("Nothing here yet") : "No results")
                .font(VCFont.title)
                .foregroundStyle(VCColor.textPrimary)
            if search.isEmpty {
                Text("Tap + to import. Everything is encrypted before it's stored.")
                    .font(VCFont.callout)
                    .foregroundStyle(VCColor.textSecondary)
                    .multilineTextAlignment(.center)
                Button("Add Items") { showImporter = true }
                    .buttonStyle(.vcPrimary)
                    .frame(maxWidth: 220)
                    .padding(.top, 6)
            }
        }
        .padding(VCMetric.screenPadding)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    // MARK: Toolbar

    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItemGroup(placement: .topBarTrailing) {
            if !items.isEmpty {
                Button(isSelecting ? LocalizedStringKey("Done") : "Select") {
                    if isSelecting { endSelection() } else { isSelecting = true }
                }
            }
            if !isSelecting {
                Menu {
                    Picker("Layout", selection: $useList) {
                        Label("Grid", systemImage: "square.grid.3x3").tag(false)
                        Label("List", systemImage: "list.bullet").tag(true)
                    }
                    Picker("Sort", selection: $newestFirst) {
                        Label("Newest First", systemImage: "arrow.down").tag(true)
                        Label("Oldest First", systemImage: "arrow.up").tag(false)
                    }
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                }
                .accessibilityLabel("View options")
                if canCompose {
                    Button {
                        newNoteRequested = true
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                    .accessibilityLabel("New Note")
                }
                Button {
                    showImporter = true
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Add to vault")
                .disabled(library.isImporting)
            }
        }
    }

    private var selectionBar: some View {
        HStack {
            Button { showMove = true } label: { Label("Move", systemImage: "folder") }
            Spacer()
            Button {
                startExport(Array(selection))
            } label: {
                if isPreparingExport { ProgressView() } else { Label("Export", systemImage: "square.and.arrow.up") }
            }
            Spacer()
            Button(role: .destructive) { confirmDelete = true } label: { Label("Delete", systemImage: "trash") }
        }
        .labelStyle(.titleAndIcon)
        .font(VCFont.callout.weight(.semibold))
        .disabled(selection.isEmpty || isPreparingExport)
        .padding(.horizontal, VCMetric.screenPadding)
        .padding(.vertical, 14)
        .background(.ultraThinMaterial)
        .overlay(alignment: .top) { Divider() }
    }

    @ViewBuilder
    private func contextMenu(for item: VaultItem) -> some View {
        Button { startExport([item.id]) } label: { Label("Export", systemImage: "square.and.arrow.up") }
        Button {
            selection = [item.id]
            showMove = true
        } label: { Label("Move to Album", systemImage: "folder") }
        if let albumID, item.kind != .document {
            Button {
                Task { await library.setCover(item.id, for: albumID) }
            } label: { Label("Make Album Cover", systemImage: "photo.on.rectangle") }
        }
        Button(role: .destructive) {
            selection = [item.id]
            confirmDelete = true
        } label: { Label("Delete", systemImage: "trash") }
    }

    // MARK: Actions

    private func tap(_ item: VaultItem) {
        if isSelecting {
            Haptics.select()
            if selection.contains(item.id) { selection.remove(item.id) } else { selection.insert(item.id) }
            return
        }
        if item.isNote {
            editingNote = item
        } else if item.kind == .document {
            Task {
                do {
                    previewURL = try await library.temporaryFile(for: item)
                } catch {
                    library.errorMessage = String(localized: "This document couldn't be opened.")
                }
            }
        } else {
            viewer = ViewerContext(items: items.filter { $0.kind != .document }, startID: item.id)
        }
    }

    private func startExport(_ ids: [UUID]) {
        isPreparingExport = true
        Task {
            exportURLs = await library.exportFiles(ids)
            isPreparingExport = false
        }
    }

    private func finishExport() {
        exportURLs.forEach(TemporaryFiles.remove)
        exportURLs = []
        if isSelecting { endSelection() }
    }

    private func endSelection() {
        isSelecting = false
        selection = []
    }

    // MARK: Text

    private var title: String {
        switch filter {
        case .all: String(localized: "All Items")
        case .kind(.photo): String(localized: "Photos")
        case .kind(.video): String(localized: "Videos")
        case .kind(.document): String(localized: "Documents")
        case .album(let id): library.album(id)?.name ?? String(localized: "Album")
        }
    }

    /// The compose button appears where notes belong: Documents and albums.
    private var canCompose: Bool {
        switch filter {
        case .kind(.document), .album: true
        default: false
        }
    }

    private var emptySymbol: String {
        switch filter {
        case .kind(.video): "play.rectangle"
        case .kind(.document): "doc.text"
        case .album: "rectangle.stack"
        default: "photo.on.rectangle.angled"
        }
    }

    private var deleteTitle: String {
        selection.count == 1
            ? String(localized: "Delete this item?")
            : String(localized: "Delete \(selection.count) items?")
    }
}
