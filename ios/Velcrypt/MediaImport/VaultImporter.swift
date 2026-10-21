import PhotosUI
import SwiftUI
import UniformTypeIdentifiers

/// "Add to Vault" flow:
/// 1. A never-saved vault first asks the user to re-draw its pattern (`ConfirmNewVaultView`).
/// 2. Choice between the Photos picker and Files, feeding `VaultLibrary.startImport`.
/// 3. After a Photos import, an offer to delete the originals (iOS confirms again; they go to Recently Deleted).
/// The Photos picker runs out of process and needs no photo library permission; deleting originals asks for it.
private struct VaultImporterModifier: ViewModifier {
    @Binding var isPresented: Bool
    let albumID: UUID?

    @Environment(VaultLibrary.self) private var library
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
                if library.needsCreationConfirmation {
                    showConfirmVault = true
                } else {
                    showChoice = true
                }
            }
            .sheet(isPresented: $showConfirmVault, onDismiss: {
                if library.creationConfirmed { showChoice = true }
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
            } message: {
                Text("Velcrypt imports encrypted copies. Your originals stay where they are until you delete them.")
            }
            .photosPicker(
                isPresented: $showPhotos,
                selection: $selection,
                maxSelectionCount: nil,
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
                    library.startImport([.camera(capture)], into: albumID)
                }
                .ignoresSafeArea()
            }
            .fileImporter(isPresented: $showFiles, allowedContentTypes: [.item], allowsMultipleSelection: true) { result in
                if case .success(let urls) = result {
                    library.startImport(urls.map { .file($0) }, into: albumID)
                }
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
    func vaultImporter(isPresented: Binding<Bool>, albumID: UUID? = nil) -> some View {
        modifier(VaultImporterModifier(isPresented: isPresented, albumID: albumID))
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
