import AVFoundation
import CoreTransferable
import Foundation
import ImageIO
import QuickLookThumbnailing
import UIKit
import UniformTypeIdentifiers

/// Extracts thumbnails and basic metadata from plaintext media before it is encrypted.
enum MediaInspector {
    struct Info: Sendable {
        var thumbnail: Data?
        var capturedAt: Date?
        var pixelWidth: Int?
        var pixelHeight: Int?
        var duration: Double?
    }

    static let thumbnailPixelSize = 480

    static func inspectImage(_ data: Data) -> Info {
        guard let source = CGImageSourceCreateWithData(data as CFData, nil) else { return Info() }
        var info = Info()
        if let properties = CGImageSourceCopyPropertiesAtIndex(source, 0, nil) as? [CFString: Any] {
            info.pixelWidth = properties[kCGImagePropertyPixelWidth] as? Int
            info.pixelHeight = properties[kCGImagePropertyPixelHeight] as? Int
            if let exif = properties[kCGImagePropertyExifDictionary] as? [CFString: Any],
               let original = exif[kCGImagePropertyExifDateTimeOriginal] as? String {
                info.capturedAt = exifDateFormatter.date(from: original)
            }
        }
        let options: [CFString: Any] = [
            kCGImageSourceCreateThumbnailFromImageAlways: true,
            kCGImageSourceCreateThumbnailWithTransform: true,
            kCGImageSourceThumbnailMaxPixelSize: thumbnailPixelSize,
        ]
        if let cgImage = CGImageSourceCreateThumbnailAtIndex(source, 0, options as CFDictionary) {
            info.thumbnail = UIImage(cgImage: cgImage).jpegData(compressionQuality: 0.8)
        }
        return info
    }

    static func inspectVideo(at url: URL) async -> Info {
        let asset = AVURLAsset(url: url)
        var info = Info()
        if let duration = try? await asset.load(.duration), duration.isNumeric {
            info.duration = duration.seconds
        }
        if let track = try? await asset.loadTracks(withMediaType: .video).first,
           let geometry = try? await track.load(.naturalSize, .preferredTransform) {
            let rect = CGRect(origin: .zero, size: geometry.0).applying(geometry.1)
            info.pixelWidth = Int(abs(rect.width))
            info.pixelHeight = Int(abs(rect.height))
        }
        if let creation = try? await asset.load(.creationDate) {
            info.capturedAt = try? await creation.load(.dateValue)
        }
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        generator.maximumSize = CGSize(width: thumbnailPixelSize, height: thumbnailPixelSize)
        let time = CMTime(seconds: min(1, (info.duration ?? 0) / 2), preferredTimescale: 600)
        if let frame = try? await generator.image(at: time) {
            info.thumbnail = UIImage(cgImage: frame.image).jpegData(compressionQuality: 0.8)
        }
        return info
    }

    static func documentThumbnail(at url: URL) async -> Data? {
        let request = QLThumbnailGenerator.Request(
            fileAt: url,
            size: CGSize(width: 240, height: 240),
            scale: 2,
            representationTypes: .thumbnail
        )
        let representation = try? await QLThumbnailGenerator.shared.generateBestRepresentation(for: request)
        return representation?.uiImage.jpegData(compressionQuality: 0.8)
    }

    private static let exifDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy:MM:dd HH:mm:ss"
        return formatter
    }()
}

/// Receives a video from the Photos picker as a file. The system hands over a temporary copy that is
/// only valid inside the closure, so it is moved into Velcrypt's protected temp folder and deleted
/// right after encryption.
struct PickedMovie: Transferable {
    let url: URL

    static var transferRepresentation: some TransferRepresentation {
        FileRepresentation(importedContentType: .movie) { received in
            let destination = try TemporaryFiles.makeURL(filename: received.file.lastPathComponent)
            try FileManager.default.copyItem(at: received.file, to: destination)
            try FileManager.default.setAttributes([.protectionKey: FileProtectionType.complete], ofItemAtPath: destination.path(percentEncoded: false))
            return PickedMovie(url: destination)
        }
    }
}
