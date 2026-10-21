import SwiftUI
import UniformTypeIdentifiers

/// Square, lazily decrypted thumbnail with a type badge for videos and documents.
struct ItemThumbnail: View {
    let item: VaultItem
    var cornerRadius: CGFloat = 4

    @Environment(VaultLibrary.self) private var library
    @State private var image: UIImage?

    var body: some View {
        Color.clear
            .aspectRatio(1, contentMode: .fit)
            .overlay {
                ZStack {
                    VCColor.surfaceRaised
                    if item.isNote {
                        noteTile
                    } else if let image {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .transition(.opacity)
                    } else {
                        Image(systemName: Self.placeholderSymbol(for: item))
                            .font(.system(size: 26, weight: .light))
                            .foregroundStyle(VCColor.textSecondary)
                    }
                }
            }
            .overlay(alignment: .bottomLeading) { badge }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .contentShape(Rectangle())
            .task(id: item.id) {
                let loaded = await library.thumbnail(for: item)
                withAnimation(.easeOut(duration: 0.2)) { image = loaded }
            }
            .accessibilityElement()
            .accessibilityLabel(Text(Self.accessibilityLabel(for: item)))
    }

    @ViewBuilder
    private var badge: some View {
        switch item.kind {
        case .video:
            HStack(spacing: 3) {
                Image(systemName: "play.fill").font(.system(size: 9))
                if let duration = item.duration { Text(Self.format(duration)) }
            }
            .font(.caption2.weight(.semibold).monospacedDigit())
            .foregroundStyle(.white)
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .background(Capsule().fill(.black.opacity(0.55)))
            .padding(5)
        case .document where item.isNote:
            EmptyView()
        case .document:
            Text(item.utType.preferredFilenameExtension?.uppercased() ?? "FILE")
                .font(.caption2.weight(.bold))
                .foregroundStyle(.white)
                .padding(.horizontal, 6)
                .padding(.vertical, 3)
                .background(Capsule().fill(VCColor.accent.opacity(0.85)))
                .padding(5)
        case .photo:
            EmptyView()
        }
    }

    /// A small "page" with the note's title and first words, like the Notes gallery.
    private var noteTile: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text((item.filename as NSString).deletingPathExtension)
                .font(.caption.weight(.bold))
                .foregroundStyle(Color(uiColor: .label))
                .lineLimit(2)
            Text(item.preview ?? "")
                .font(.system(size: 10))
                .foregroundStyle(Color(uiColor: .secondaryLabel))
                .lineLimit(5)
            Spacer(minLength: 0)
        }
        .padding(8)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(uiColor: .tertiarySystemBackground))
        .overlay(alignment: .top) { NoteEditorView.tint.frame(height: 3) }
    }

    static func placeholderSymbol(for item: VaultItem) -> String {
        switch item.kind {
        case .photo: "photo"
        case .video: "video"
        case .document: item.utType.conforms(to: .pdf) ? "doc.richtext" : "doc"
        }
    }

    static func format(_ seconds: Double) -> String {
        let total = Int(seconds.rounded())
        return total >= 3600
            ? String(format: "%d:%02d:%02d", total / 3600, total % 3600 / 60, total % 60)
            : String(format: "%d:%02d", total / 60, total % 60)
    }

    static func accessibilityLabel(for item: VaultItem) -> String {
        let date = item.sortDate.formatted(date: .abbreviated, time: .shortened)
        switch item.kind {
        case .photo: return String(localized: "Photo, \(date)")
        case .video: return String(localized: "Video, \(format(item.duration ?? 0)), \(date)")
        case .document: return String(localized: "Document, \(item.filename)")
        }
    }
}
