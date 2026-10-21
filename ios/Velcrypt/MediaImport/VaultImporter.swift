import PhotosUI
import SwiftUI
import UniformTypeIdentifiers

/// "Add to Vault" flow: a choice between the Photos picker and Files, feeding `VaultLibrary.startImport`.
/// The Photos picker runs out of process and needs no photo library permission.
private struct VaultImporterModifier: ViewModifier {
    @Binding var isPresented: Bool
    let albumID: UUID?

    @Environment(VaultLibrary.self) private var library
    @State private var showPhotos = false
    @State private var showFiles = false
    @State private var selection: [PhotosPickerItem] = []

    func body(content: Content) -> some View {
        content
            .confirmationDialog("Add to Vault", isPresented: $isPresented, titleVisibility: .visible) {
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
                preferredItemEncoding: .current
            )
            .onChange(of: selection) { _, picked in
                guard !picked.isEmpty else { return }
                library.startImport(picked.map { .picker($0) }, into: albumID)
                selection = []
            }
            .fileImporter(isPresented: $showFiles, allowedContentTypes: [.item], allowsMultipleSelection: true) { result in
                if case .success(let urls) = result {
                    library.startImport(urls.map { .file($0) }, into: albumID)
                }
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
