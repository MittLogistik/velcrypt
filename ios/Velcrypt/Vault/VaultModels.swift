import Foundation
import UniformTypeIdentifiers

enum ItemKind: String, Codable, CaseIterable, Sendable {
    case photo, video, document

    /// Images are photos and movies are videos, whether they come from Photos or Files.
    init(contentType: UTType) {
        if contentType.conforms(to: .image) {
            self = .photo
        } else if contentType.conforms(to: .movie) || contentType.conforms(to: .video) {
            self = .video
        } else {
            self = .document
        }
    }
}

/// Metadata for one stored item. Lives only inside the encrypted vault index.
struct VaultItem: Codable, Identifiable, Hashable, Sendable {
    let id: UUID
    var kind: ItemKind
    var filename: String
    /// Uniform Type Identifier, e.g. "public.heic".
    var contentType: String
    var byteCount: Int64
    var importedAt: Date
    var capturedAt: Date?
    var pixelWidth: Int?
    var pixelHeight: Int?
    var duration: Double?
    var albumID: UUID?
    var hasThumbnail: Bool
    /// Set when the content is edited in Velcrypt (notes).
    var modifiedAt: Date? = nil
    /// First characters of a note, shown in grids without decrypting the file.
    var preview: String? = nil

    var sortDate: Date { modifiedAt ?? capturedAt ?? importedAt }
    var utType: UTType { UTType(contentType) ?? .data }

    /// Plain-text items open in the note editor instead of Quick Look.
    var isNote: Bool { kind == .document && utType.conforms(to: .plainText) }
}

enum NoteText {
    /// First non-empty line, used as the note's title and filename.
    static func title(of text: String) -> String {
        let line = text.split(whereSeparator: \.isNewline).first.map(String.init)?.trimmingCharacters(in: .whitespaces) ?? ""
        return line.isEmpty ? String(localized: "New Note") : String(line.prefix(80))
    }

    /// Text after the title, collapsed to one line.
    static func preview(of text: String) -> String {
        let lines = text.split(whereSeparator: \.isNewline).map { $0.trimmingCharacters(in: .whitespaces) }.filter { !$0.isEmpty }
        return String(lines.dropFirst().joined(separator: " ").prefix(160))
    }

    static func filename(for text: String) -> String {
        TemporaryFiles.sanitized(title(of: text)) + ".txt"
    }
}

struct Album: Codable, Identifiable, Hashable, Sendable {
    let id: UUID
    var name: String
    var createdAt: Date
    var coverItemID: UUID?
}

/// The whole vault catalogue, stored as one AES-GCM blob (`index.vcm`).
struct VaultIndex: Codable, Sendable {
    var version = 1
    var items: [VaultItem] = []
    var albums: [Album] = []
}

/// What a grid shows.
enum ItemFilter: Hashable {
    case all
    case kind(ItemKind)
    case album(UUID)
}
