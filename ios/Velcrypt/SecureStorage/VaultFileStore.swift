import Foundation

/// On-disk layout of all vaults:
///
///     Application Support/Vaults/            (excluded from backup, complete file protection)
///         <vaultID>/key.vck                  AES-GCM(wrappingKey, master key)
///         <vaultID>/key.vck.pending          new wrap written during a pattern change
///
/// Blocking file I/O: call off the main actor.
final class VaultFileStore: @unchecked Sendable {
    static let keyFileName = "key.vck"
    static let pendingKeyFileName = "key.vck.pending"

    let root: URL
    private let fileManager = FileManager.default

    init(root: URL = VaultFileStore.defaultRoot) {
        self.root = root
    }

    static var defaultRoot: URL {
        URL.applicationSupportDirectory.appending(path: "Vaults", directoryHint: .isDirectory)
    }

    /// Creates the root directory with complete data protection and excludes it from backups.
    func prepare() throws {
        if !fileManager.fileExists(atPath: root.path(percentEncoded: false)) {
            try fileManager.createDirectory(
                at: root,
                withIntermediateDirectories: true,
                attributes: [.protectionKey: FileProtectionType.complete]
            )
        }
        var values = URLResourceValues()
        values.isExcludedFromBackup = true
        var url = root
        try url.setResourceValues(values)
    }

    func directory(for vaultID: String) -> URL {
        root.appending(path: vaultID, directoryHint: .isDirectory)
    }

    func vaultExists(_ vaultID: String) -> Bool {
        fileManager.fileExists(atPath: keyURL(vaultID).path(percentEncoded: false))
    }

    /// Primary key record plus any pending record left by an interrupted pattern change.
    func keyRecords(_ vaultID: String) -> [Data] {
        [keyURL(vaultID), directory(for: vaultID).appending(path: Self.pendingKeyFileName)]
            .compactMap { try? Data(contentsOf: $0) }
    }

    func writeKeyRecord(_ data: Data, vaultID: String) throws {
        try prepare()
        let dir = directory(for: vaultID)
        try fileManager.createDirectory(at: dir, withIntermediateDirectories: true, attributes: [.protectionKey: FileProtectionType.complete])
        try data.write(to: keyURL(vaultID), options: [.atomic, .completeFileProtection])
    }

    /// Moves a vault to a new identifier with a new key record, surviving interruption at any step:
    /// the pending record travels with the directory and is tried on unlock if the primary fails.
    func rekey(from oldID: String, to newID: String, newRecord: Data) throws {
        let pending = directory(for: oldID).appending(path: Self.pendingKeyFileName)
        try newRecord.write(to: pending, options: [.atomic, .completeFileProtection])
        try fileManager.moveItem(at: directory(for: oldID), to: directory(for: newID))
        let movedPending = directory(for: newID).appending(path: Self.pendingKeyFileName)
        _ = try fileManager.replaceItemAt(keyURL(newID), withItemAt: movedPending)
    }

    func deleteVault(_ vaultID: String) throws {
        let dir = directory(for: vaultID)
        guard fileManager.fileExists(atPath: dir.path(percentEncoded: false)) else { return }
        try fileManager.removeItem(at: dir)
    }

    /// Deletes every vault except `keep` (all of them if nil). Used by the duress pattern.
    func deleteVaults(except keep: String?) throws {
        for id in vaultIDs() where id != keep {
            try fileManager.removeItem(at: directory(for: id))
        }
    }

    func deleteAll() throws {
        guard fileManager.fileExists(atPath: root.path(percentEncoded: false)) else { return }
        try fileManager.removeItem(at: root)
    }

    func vaultIDs() -> [String] {
        (try? fileManager.contentsOfDirectory(atPath: root.path(percentEncoded: false))) ?? []
    }

    private func keyURL(_ vaultID: String) -> URL {
        directory(for: vaultID).appending(path: Self.keyFileName)
    }
}
