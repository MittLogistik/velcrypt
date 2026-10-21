import CryptoKit
import Foundation
import Observation
import PhotosUI
import SwiftUI
import UIKit
import UniformTypeIdentifiers

/// UI-facing model of the open vault: items, albums, import progress and cached thumbnails.
///
/// A vault that has never been written to has no `VaultStore` yet. The first import asks the session
/// to persist the vault (`keyProvider`) and only then creates the store.
@MainActor
@Observable
final class VaultLibrary {
    enum ImportRequest {
        case picker(PhotosPickerItem)
        case file(URL)
        case camera(VaultCamera.Capture)
    }

    struct ImportProgress: Equatable {
        var total: Int
        var completed = 0
        var fraction: Double { total == 0 ? 0 : Double(completed) / Double(total) }
    }

    enum AlbumSort: String, CaseIterable, Identifiable {
        case name, newest
        var id: String { rawValue }
    }

    private(set) var items: [VaultItem] = []
    private(set) var albums: [Album] = []
    private(set) var importProgress: ImportProgress?
    private(set) var isLoaded = false
    /// One-shot user-facing error, cleared by the view that shows it.
    var errorMessage: String?
    /// Set after an import finishes, so the UI can remind the user that originals still exist.
    var lastImportCount = 0
    /// Photos library identifiers of items imported successfully in the last import, offered for deletion.
    var importedOriginals: [String] = []
    /// The user re-drew the pattern for this never-saved vault.
    var creationConfirmed = false

    /// A vault that has never been saved must have its pattern confirmed before the first write.
    var needsCreationConfirmation: Bool {
        store == nil && initialMasterKey == nil && !creationConfirmed
    }

    @ObservationIgnored private var store: VaultStore?
    @ObservationIgnored private var importTask: Task<Void, Never>?
    @ObservationIgnored private let files: VaultFileStore
    @ObservationIgnored private let vaultID: String
    @ObservationIgnored private let initialMasterKey: SymmetricKey?
    @ObservationIgnored private let keyProvider: @MainActor () async throws -> SymmetricKey
    @ObservationIgnored private let thumbnails = NSCache<NSUUID, UIImage>()

    init(
        files: VaultFileStore,
        vaultID: String,
        masterKey: SymmetricKey?,
        keyProvider: @escaping @MainActor () async throws -> SymmetricKey
    ) {
        self.files = files
        self.vaultID = vaultID
        self.initialMasterKey = masterKey
        self.keyProvider = keyProvider
        thumbnails.countLimit = 400
    }

    // MARK: Loading

    func load() async {
        guard !isLoaded else { return }
        defer { isLoaded = true }
        guard let key = initialMasterKey else { return }
        do {
            let store = try await Self.openStore(files: files, vaultID: vaultID, key: key)
            self.store = store
            await refresh(from: store)
        } catch {
            errorMessage = String(localized: "This vault's index couldn't be read. Its data may be damaged.")
        }
    }

    /// Stops background work and drops cached plaintext. Called when the vault locks.
    func close() {
        importTask?.cancel()
        importTask = nil
        thumbnails.removeAllObjects()
    }

    // MARK: Queries

    func items(matching filter: ItemFilter, search: String = "", newestFirst: Bool = true) -> [VaultItem] {
        var result: [VaultItem]
        switch filter {
        case .all: result = items
        case .kind(let kind): result = items.filter { $0.kind == kind }
        case .album(let id): result = items.filter { $0.albumID == id }
        }
        let query = search.trimmingCharacters(in: .whitespaces)
        if !query.isEmpty {
            let albumNames = Dictionary(uniqueKeysWithValues: albums.map { ($0.id, $0.name) })
            result = result.filter { item in
                item.filename.localizedCaseInsensitiveContains(query)
                    || (item.albumID.flatMap { albumNames[$0] }?.localizedCaseInsensitiveContains(query) ?? false)
            }
        }
        return result.sorted { newestFirst ? $0.sortDate > $1.sortDate : $0.sortDate < $1.sortDate }
    }

    func count(of kind: ItemKind) -> Int { items.lazy.filter { $0.kind == kind }.count }
    func count(inAlbum id: UUID) -> Int { items.lazy.filter { $0.albumID == id }.count }
    var totalBytes: Int64 { items.reduce(0) { $0 + $1.byteCount } }

    var recentItems: [VaultItem] {
        Array(items.sorted { $0.importedAt > $1.importedAt }.prefix(12))
    }

    func album(_ id: UUID) -> Album? { albums.first { $0.id == id } }

    func sortedAlbums(_ sort: AlbumSort) -> [Album] {
        switch sort {
        case .name: albums.sorted { $0.name.localizedCaseInsensitiveCompare($1.name) == .orderedAscending }
        case .newest: albums.sorted { $0.createdAt > $1.createdAt }
        }
    }

    /// Explicit cover, else the newest item in the album.
    func coverItem(for album: Album) -> VaultItem? {
        if let id = album.coverItemID, let item = items.first(where: { $0.id == id }) { return item }
        return items(matching: .album(album.id)).first
    }

    // MARK: Content

    func thumbnail(for item: VaultItem) async -> UIImage? {
        guard item.hasThumbnail, let store else { return nil }
        if let cached = thumbnails.object(forKey: item.id as NSUUID) { return cached }
        guard let data = try? await store.thumbnailData(for: item.id), let image = UIImage(data: data) else { return nil }
        thumbnails.setObject(image, forKey: item.id as NSUUID)
        return image
    }

    func imageData(for item: VaultItem) async throws -> Data {
        guard let store else { throw VaultError.locked }
        return try await store.contentData(for: item.id)
    }

    /// Plaintext copy in protected temp storage. The caller must `TemporaryFiles.remove` it when done.
    func temporaryFile(for item: VaultItem) async throws -> URL {
        guard let store else { throw VaultError.locked }
        return try await store.decryptToTemporaryFile(item.id)
    }

    // MARK: Import

    var isImporting: Bool { importTask != nil }

    func startImport(_ requests: [ImportRequest], into albumID: UUID?) {
        guard !requests.isEmpty, importTask == nil else { return }
        importProgress = ImportProgress(total: requests.count)
        importTask = Task { [weak self] in
            await self?.runImport(requests, albumID: albumID)
        }
    }

    func cancelImport() {
        importTask?.cancel()
    }

    private func runImport(_ requests: [ImportRequest], albumID: UUID?) async {
        var failures = 0
        var imported = 0
        var originals: [String] = []
        do {
            let store = try await ensureStore()
            for request in requests {
                try Task.checkCancellation()
                do {
                    try await importOne(request, into: store, albumID: albumID)
                    imported += 1
                    if case .picker(let pickerItem) = request, let identifier = pickerItem.itemIdentifier {
                        originals.append(identifier)
                    }
                } catch is CancellationError {
                    throw CancellationError()
                } catch {
                    failures += 1
                }
                importProgress?.completed += 1
                await refresh(from: store)
            }
        } catch is CancellationError {
            // Items finished before cancelling are kept; the one in progress was rolled back.
        } catch {
            errorMessage = String(localized: "The import couldn't start. Please try again.")
        }
        if let store { await refresh(from: store) }
        if failures > 0 {
            errorMessage = failures == 1
                ? String(localized: "1 item couldn't be imported.")
                : String(localized: "\(failures) items couldn't be imported.")
        }
        lastImportCount = imported
        importedOriginals = originals
        importProgress = nil
        importTask = nil
    }

    private func importOne(_ request: ImportRequest, into store: VaultStore, albumID: UUID?) async throws {
        let id = UUID()
        switch request {
        case .picker(let pickerItem):
            let types = pickerItem.supportedContentTypes
            if let movieType = types.first(where: { $0.conforms(to: .movie) }) {
                guard let movie = try await pickerItem.loadTransferable(type: PickedMovie.self) else { throw VaultStore.StoreError.itemNotFound }
                defer { TemporaryFiles.remove(movie.url) }
                let info = await MediaInspector.inspectVideo(at: movie.url)
                let item = makeItem(id: id, kind: .video, type: movieType, filename: Self.filename(prefix: "Video", type: movieType, date: info.capturedAt),
                                    bytes: Self.fileSize(movie.url), info: info, albumID: albumID)
                try await store.add(.file(movie.url), item: item, thumbnail: info.thumbnail)
            } else {
                guard let data = try await pickerItem.loadTransferable(type: Data.self) else { throw VaultStore.StoreError.itemNotFound }
                let type = types.first(where: { $0.conforms(to: .image) }) ?? .jpeg
                let info = MediaInspector.inspectImage(data)
                let item = makeItem(id: id, kind: .photo, type: type, filename: Self.filename(prefix: "Photo", type: type, date: info.capturedAt),
                                    bytes: Int64(data.count), info: info, albumID: albumID)
                try await store.add(.data(data), item: item, thumbnail: info.thumbnail)
            }

        case .camera(.photo(let data, let type)):
            var info = MediaInspector.inspectImage(data)
            info.capturedAt = info.capturedAt ?? .now
            let item = makeItem(id: id, kind: .photo, type: type, filename: Self.filename(prefix: "Photo", type: type, date: info.capturedAt),
                                bytes: Int64(data.count), info: info, albumID: albumID)
            try await store.add(.data(data), item: item, thumbnail: info.thumbnail)

        case .camera(.video(let url)):
            defer { TemporaryFiles.remove(url) }
            var info = await MediaInspector.inspectVideo(at: url)
            info.capturedAt = info.capturedAt ?? .now
            let item = makeItem(id: id, kind: .video, type: .quickTimeMovie, filename: Self.filename(prefix: "Video", type: .quickTimeMovie, date: info.capturedAt),
                                bytes: Self.fileSize(url), info: info, albumID: albumID)
            try await store.add(.file(url), item: item, thumbnail: info.thumbnail)

        case .file(let url):
            let scoped = url.startAccessingSecurityScopedResource()
            defer { if scoped { url.stopAccessingSecurityScopedResource() } }
            let type = (try? url.resourceValues(forKeys: [.contentTypeKey]).contentType) ?? UTType(filenameExtension: url.pathExtension) ?? .data
            let kind = ItemKind(contentType: type)
            let info: MediaInspector.Info
            switch kind {
            case .photo: info = MediaInspector.inspectImage((try? Data(contentsOf: url, options: .mappedIfSafe)) ?? Data())
            case .video: info = await MediaInspector.inspectVideo(at: url)
            case .document: info = MediaInspector.Info(thumbnail: await MediaInspector.documentThumbnail(at: url))
            }
            let item = makeItem(id: id, kind: kind, type: type, filename: url.lastPathComponent,
                                bytes: Self.fileSize(url), info: info, albumID: albumID)
            try await store.add(.file(url), item: item, thumbnail: info.thumbnail)
        }
    }

    private func makeItem(id: UUID, kind: ItemKind, type: UTType, filename: String, bytes: Int64, info: MediaInspector.Info, albumID: UUID?) -> VaultItem {
        VaultItem(
            id: id, kind: kind, filename: filename, contentType: type.identifier, byteCount: bytes,
            importedAt: .now, capturedAt: info.capturedAt, pixelWidth: info.pixelWidth, pixelHeight: info.pixelHeight,
            duration: info.duration, albumID: albumID, hasThumbnail: info.thumbnail != nil
        )
    }

    // MARK: Notes

    /// Creates an empty note and returns it for editing. Empty notes are removed when the editor closes.
    func createNote(in albumID: UUID?) async -> VaultItem? {
        do {
            let store = try await ensureStore()
            let item = VaultItem(
                id: UUID(), kind: .document, filename: NoteText.filename(for: ""), contentType: UTType.plainText.identifier,
                byteCount: 0, importedAt: .now, capturedAt: nil, pixelWidth: nil, pixelHeight: nil, duration: nil,
                albumID: albumID, hasThumbnail: false, modifiedAt: .now, preview: ""
            )
            try await store.add(.data(Data()), item: item, thumbnail: nil)
            await refresh(from: store)
            return item
        } catch {
            errorMessage = String(localized: "The note couldn't be created.")
            return nil
        }
    }

    func noteText(for item: VaultItem) async throws -> String {
        let data = try await imageData(for: item)
        // Imported text files may use another encoding; fall back rather than refuse to open.
        return String(data: data, encoding: .utf8) ?? String(decoding: data, as: UTF8.self)
    }

    func saveNote(_ id: UUID, text: String) async {
        guard let store else { return }
        do {
            try await store.updateContent(id, data: Data(text.utf8), filename: NoteText.filename(for: text), preview: NoteText.preview(of: text))
        } catch {
            errorMessage = String(localized: "The note couldn't be saved.")
        }
        await refresh(from: store)
    }

    // MARK: Editing

    func delete(_ ids: Set<UUID>) async {
        await perform { try await $0.deleteItems(ids) }
        ids.forEach { thumbnails.removeObject(forKey: $0 as NSUUID) }
    }

    func move(_ ids: Set<UUID>, to albumID: UUID?) async {
        await perform { try await $0.moveItems(ids, to: albumID) }
    }

    @discardableResult
    func createAlbum(named name: String) async -> Album? {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return nil }
        do {
            let store = try await ensureStore()
            let album = try await store.createAlbum(named: trimmed)
            await refresh(from: store)
            return album
        } catch {
            errorMessage = String(localized: "The album couldn't be created.")
            return nil
        }
    }

    func renameAlbum(_ id: UUID, to name: String) async {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        await perform { try await $0.renameAlbum(id, to: trimmed) }
    }

    func setCover(_ itemID: UUID, for albumID: UUID) async {
        await perform { try await $0.setAlbumCover(albumID, itemID: itemID) }
    }

    func deleteAlbum(_ id: UUID, deletingItems: Bool) async {
        await perform { try await $0.deleteAlbum(id, deletingItems: deletingItems) }
    }

    /// Decrypts items to temporary files for the share sheet. The caller removes them afterwards.
    func exportFiles(_ ids: [UUID]) async -> [URL] {
        guard let store else { return [] }
        var urls: [URL] = []
        for id in ids {
            do {
                urls.append(try await store.decryptToTemporaryFile(id))
            } catch {
                errorMessage = String(localized: "Some items couldn't be prepared for export.")
            }
        }
        return urls
    }

    // MARK: Private

    private func perform(_ operation: (VaultStore) async throws -> Void) async {
        guard let store else { return }
        do {
            try await operation(store)
        } catch {
            errorMessage = String(localized: "The change couldn't be saved. Please try again.")
        }
        await refresh(from: store)
    }

    private func ensureStore() async throws -> VaultStore {
        if let store { return store }
        let key = try await keyProvider()
        let store = try await Self.openStore(files: files, vaultID: vaultID, key: key)
        self.store = store
        return store
    }

    private func refresh(from store: VaultStore) async {
        let snapshot = await store.snapshot
        items = snapshot.items
        albums = snapshot.albums
    }

    nonisolated private static func openStore(files: VaultFileStore, vaultID: String, key: SymmetricKey) async throws -> VaultStore {
        try await Task.detached(priority: .userInitiated) {
            try VaultStore(directory: files.directory(for: vaultID), vaultID: vaultID, masterKey: key)
        }.value
    }

    private static func fileSize(_ url: URL) -> Int64 {
        Int64((try? url.resourceValues(forKeys: [.fileSizeKey]).fileSize) ?? 0)
    }

    private static func filename(prefix: String, type: UTType, date: Date?) -> String {
        let ext = type.preferredFilenameExtension ?? "bin"
        return "\(prefix) \(filenameDateFormatter.string(from: date ?? .now)).\(ext)"
    }

    private static let filenameDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd 'at' HH.mm.ss"
        return formatter
    }()
}
