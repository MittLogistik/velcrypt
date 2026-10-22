import PhotosUI
import SwiftUI
import UniformTypeIdentifiers

/// "Add to Vault" flow:
/// 1. A never-saved vault first asks the user to re-draw its pattern (`ConfirmNewVaultView`).
/// 2. Choice between Camera, the Photos picker, Files and a new note, feeding `VaultLibrary`.
/// 3. After a Photos import, an offer to delete the originals (iOS confirms again; they go to Recently Deleted).
/// The Photos picker runs out of process and needs no photo library permission; deleting originals asks for it.
private struct VaultImporterModifier: ViewModifier {
    @Binding var isPresented: Bool
    let albumID: UUID?
    /// Set to true to create a note directly (e.g. the compose button in Documents).
    @Binding var noteRequest: Bool

    @Environment(VaultLibrary.self) private var library
    @Environment(VaultSession.self) private var session
    @Environment(PremiumStore.self) private var premium
    @State private var paywall: PaywallView.Reason?
    @AppStorage("offerDeleteOriginals") private var offerDeleteOriginals = true
    @State private var showChoice = false
    @State private var showConfirmVault = false
    @State private var showPhotos = false
    @State private var showFiles = false
    @State private var showCamera = false
    @State private var selection: [PhotosPickerItem] = []
    /// Only the screen that started an import offers to delete its originals.
    @State private var startedImport = false
    @State private var cleanupOutcome: OriginalsCleaner.Outcome?
    @State private var pendingNote = false
    @State private var editingNote: VaultItem?

    private var offerOriginals: Binding<Bool> {
        Binding(
            get: { startedImport && offerDeleteOriginals && !library.isImporting && !library.importedOriginals.isEmpty },
            set: { if !$0 { finishOriginalsOffer() } }
        )
    }

    func body(content: Content) -> some View {
        content
            .onChange(of: isPresented) { _, requested in
                guard requested else { return }
                isPresented = false
                if let reason = premium.blockReason(adding: library, session: session) {
                    paywall = reason
                } else if library.needsCreationConfirmation {
                    showConfirmVault = true
                } else {
                    showChoice = true
                }
            }
            .onChange(of: noteRequest) { _, requested in
                guard requested else { return }
                noteRequest = false
                if let reason = premium.blockReason(adding: library, session: session) {
                    paywall = reason
                } else if library.needsCreationConfirmation {
                    pendingNote = true
                    showConfirmVault = true
                } else {
                    createNote()
                }
            }
            .sheet(isPresented: $showConfirmVault, onDismiss: {
                defer { pendingNote = false }
                guard library.creationConfirmed else { return }
                if pendingNote { createNote() } else { showChoice = true }
            }) {
                ConfirmNewVaultView()
            }
            .confirmationDialog("Remove the originals from Photos?", isPresented: offerOriginals, titleVisibility: .visible) {
                Button("Delete Originals", role: .destructive) {
                    let identifiers = library.importedOriginals
                    finishOriginalsOffer()
                    Task { cleanupOutcome = await OriginalsCleaner.deleteOriginals(withIdentifiers: identifiers) }
                }
                Button("Keep Originals", role: .cancel) { finishOriginalsOffer() }
            } message: {
                Text("\(library.importedOriginals.count) items are now encrypted in your vault.")
            }
            .alert(cleanupTitle, isPresented: Binding(get: { cleanupOutcome.map { $0 != .cancelled } ?? false }, set: { if !$0 { cleanupOutcome = nil } })) {
                Button("OK", role: .cancel) {}
            } message: {
                Text(cleanupMessage)
            }
            .confirmationDialog("Add to Vault", isPresented: $showChoice, titleVisibility: .visible) {
                if VaultCamera.isAvailable {
                    Button("Camera") { showCamera = true }
                }
                Button("Photos & Videos") { showPhotos = true }
                Button("Files") { showFiles = true }
                Button("New Note") { createNote() }
            } message: {
                Text("Velcrypt imports encrypted copies. Your originals stay where they are until you delete them.")
            }
            .photosPicker(
                isPresented: $showPhotos,
                selection: $selection,
                maxSelectionCount: premium.remainingItems(in: library),
                selectionBehavior: .ordered,
                matching: .any(of: [.images, .videos]),
                preferredItemEncoding: .current,
                // .shared() gives each item its library identifier (no permission needed), so the
                // originals can be offered for deletion afterwards.
                photoLibrary: .shared()
            )
            .onChange(of: selection) { _, picked in
                guard !picked.isEmpty else { return }
                startedImport = true
                library.startImport(picked.map { .picker($0) }, into: albumID)
                selection = []
            }
            .fullScreenCover(isPresented: $showCamera) {
                VaultCamera { capture in
                    guard premium.remainingItems(in: library) != 0 else { return }
                    library.startImport([.camera(capture)], into: albumID)
                }
                .ignoresSafeArea()
            }
            .fullScreenCover(item: $editingNote) { note in
                NoteEditorView(item: note, startsEditing: true)
            }
            .fileImporter(isPresented: $showFiles, allowedContentTypes: [.item], allowsMultipleSelection: true) { result in
                if case .success(let urls) = result {
                    let allowed = premium.remainingItems(in: library).map { Array(urls.prefix($0)) } ?? urls
                    library.startImport(allowed.map { .file($0) }, into: albumID)
                    if allowed.count < urls.count { showPaywallAfterDismissal(.itemLimit) }
                }
            }
            .sheet(item: $paywall) { reason in
                PaywallView(reason: reason)
            }
    }

    private func createNote() {
        Task {
            if let note = await library.createNote(in: albumID) { editingNote = note }
        }
    }

    /// The Files picker is still animating away when its completion runs; a sheet presented then is dropped.
    private func showPaywallAfterDismissal(_ reason: PaywallView.Reason) {
        Task {
            try? await Task.sleep(for: .milliseconds(600))
            paywall = reason
        }
    }

    private func finishOriginalsOffer() {
        library.importedOriginals = []
        startedImport = false
    }

    private var cleanupTitle: LocalizedStringKey {
        if case .deleted = cleanupOutcome { return "Moved to Recently Deleted" }
        return "Originals Not Deleted"
    }

    private var cleanupMessage: LocalizedStringKey {
        switch cleanupOutcome {
        case .deleted: "Empty Recently Deleted in Photos to remove them completely."
        case .notPermitted: "Allow Velcrypt to access Photos in Settings, or delete the originals in Photos."
        default: "Velcrypt couldn't reach these items. You can delete them in Photos."
        }
    }
}

extension View {
    func vaultImporter(isPresented: Binding<Bool>, albumID: UUID? = nil, noteRequest: Binding<Bool> = .constant(false)) -> some View {
        modifier(VaultImporterModifier(isPresented: isPresented, albumID: albumID, noteRequest: noteRequest))
    }
}

/// Floating progress card shown while an import runs.
struct ImportProgressCard: View {
    @Environment(VaultLibrary.self) private var library

    var body: some View {
        if let progress = library.importProgress {
            HStack(spacing: 14) {
                ProgressView(value: progress.fraction)
                    .progressViewStyle(.circular)
                    .tint(VCColor.accentCyan)
                VStack(alignment: .leading, spacing: 2) {
                    Text("Encrypting \(min(progress.completed + 1, progress.total)) of \(progress.total)")
                        .font(VCFont.headline)
                        .foregroundStyle(VCColor.textPrimary)
                    ProgressView(value: progress.fraction)
                        .tint(VCColor.accent)
                }
                Button("Cancel") { library.cancelImport() }
                    .font(VCFont.callout.weight(.semibold))
                    .foregroundStyle(VCColor.accentCyan)
            }
            .padding(16)
            .background(
                RoundedRectangle(cornerRadius: VCMetric.cornerRadius, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .overlay(RoundedRectangle(cornerRadius: VCMetric.cornerRadius, style: .continuous).strokeBorder(VCColor.stroke))
            )
            .padding(.horizontal, VCMetric.screenPadding)
            .transition(.move(edge: .bottom).combined(with: .opacity))
            .accessibilityElement(children: .combine)
        }
    }
}
