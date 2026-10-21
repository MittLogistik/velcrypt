import Photos

/// Deletes imported originals from the Photos library, only when the user explicitly asks.
///
/// iOS always shows its own confirmation, and deleted assets go to Recently Deleted for 30 days.
/// Library access is requested here, at the moment of use, never at launch.
enum OriginalsCleaner {
    enum Outcome: Equatable {
        case deleted(Int)
        case cancelled
        case notPermitted
        /// Access was granted, but not to these assets (e.g. limited access).
        case notAccessible
    }

    static func deleteOriginals(withIdentifiers identifiers: [String]) async -> Outcome {
        guard !identifiers.isEmpty else { return .deleted(0) }
        let status = await PHPhotoLibrary.requestAuthorization(for: .readWrite)
        guard status == .authorized || status == .limited else { return .notPermitted }

        let assets = PHAsset.fetchAssets(withLocalIdentifiers: identifiers, options: nil)
        guard assets.count > 0 else { return .notAccessible }
        let count = assets.count
        do {
            try await PHPhotoLibrary.shared().performChanges {
                PHAssetChangeRequest.deleteAssets(assets)
            }
            return .deleted(count)
        } catch {
            // Declining the system confirmation lands here too.
            return .cancelled
        }
    }
}
