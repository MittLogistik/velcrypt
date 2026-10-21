import Foundation

/// Short-lived plaintext files needed by system components (AVPlayer, Quick Look, the share sheet).
///
/// Files live in `tmp/Decrypted/<uuid>/<filename>` with complete data protection, and the whole folder
/// is deleted on lock, when the app goes to the background and at launch. iOS does not guarantee that
/// deleted bytes are physically erased from flash storage.
enum TemporaryFiles {
    static var directory: URL {
        URL.temporaryDirectory.appending(path: "Decrypted", directoryHint: .isDirectory)
    }

    /// A fresh URL that keeps `filename` (share sheets and Quick Look show it), in its own folder.
    static func makeURL(filename: String) throws -> URL {
        let folder = directory.appending(path: UUID().uuidString, directoryHint: .isDirectory)
        try FileManager.default.createDirectory(
            at: folder,
            withIntermediateDirectories: true,
            attributes: [.protectionKey: FileProtectionType.complete]
        )
        return folder.appending(path: sanitized(filename))
    }

    /// Deletes one file and its folder.
    static func remove(_ url: URL) {
        try? FileManager.default.removeItem(at: url.deletingLastPathComponent())
    }

    static func purgeAll() {
        try? FileManager.default.removeItem(at: directory)
    }

    static func sanitized(_ filename: String) -> String {
        let cleaned = filename
            .replacingOccurrences(of: "/", with: "-")
            .replacingOccurrences(of: ":", with: "-")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        guard !cleaned.isEmpty, cleaned != ".", cleaned != ".." else { return "file" }
        return String(cleaned.prefix(120))
    }
}
