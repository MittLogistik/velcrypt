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

    var sortDate: Date { capturedAt ?? importedAt }
    var utType: UTType { UTType(contentType) ?? .data }
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
