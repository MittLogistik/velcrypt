import SwiftUI
import UIKit
import UniformTypeIdentifiers

/// System camera that hands captures straight to the vault. Nothing is saved to the Photos library.
struct VaultCamera: UIViewControllerRepresentable {
    enum Capture {
        case photo(Data, UTType)
        /// A protected temporary file the importer deletes after encrypting.
        case video(URL)
    }

    static var isAvailable: Bool { UIImagePickerController.isSourceTypeAvailable(.camera) }

    let onCapture: (Capture) -> Void
    @Environment(\.dismiss) private var dismiss

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.mediaTypes = [UTType.image.identifier, UTType.movie.identifier]
        picker.videoQuality = .typeHigh
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ picker: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator { Coordinator(parent: self) }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: VaultCamera

        init(parent: VaultCamera) { self.parent = parent }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let url = info[.mediaURL] as? URL, let moved = Self.protectedCopy(of: url) {
                parent.onCapture(.video(moved))
            } else if let image = info[.originalImage] as? UIImage {
                if let heic = image.heicData() {
                    parent.onCapture(.photo(heic, .heic))
                } else if let jpeg = image.jpegData(compressionQuality: 0.92) {
                    parent.onCapture(.photo(jpeg, .jpeg))
                }
            }
            parent.dismiss()
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.dismiss()
        }

        /// Moves the camera's temporary video into Velcrypt's protected temp folder.
        private static func protectedCopy(of url: URL) -> URL? {
            guard let destination = try? TemporaryFiles.makeURL(filename: url.lastPathComponent) else { return nil }
            do {
                try FileManager.default.moveItem(at: url, to: destination)
                try FileManager.default.setAttributes([.protectionKey: FileProtectionType.complete], ofItemAtPath: destination.path(percentEncoded: false))
                return destination
            } catch {
                try? FileManager.default.removeItem(at: url)
                return nil
            }
        }
    }
}
