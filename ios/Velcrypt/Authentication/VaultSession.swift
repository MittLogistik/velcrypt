import CryptoKit
import Foundation
import Observation

/// Auto-lock delay after the app leaves the foreground.
enum AutoLockDelay: Int, CaseIterable, Identifiable {
    case immediately = 0
    case thirtySeconds = 30
    case oneMinute = 60
    case fiveMinutes = 300

    var id: Int { rawValue }

    var title: String {
        switch self {
        case .immediately: String(localized: "Immediately")
        case .thirtySeconds: String(localized: "After 30 seconds")
        case .oneMinute: String(localized: "After 1 minute")
        case .fiveMinutes: String(localized: "After 5 minutes")
        }
    }
}

/// Owns the currently open vault and the lock state. The only place a master key lives in memory.
///
/// Every pattern opens a vault. A pattern that has never been used opens an empty vault that exists
/// only in memory until something is stored in it, so the UI never reveals whether a pattern was "right".
@MainActor
@Observable
final class VaultSession {
    enum Phase: Equatable {
        case onboarding
        case locked
        case unlocked
    }

    private struct OpenVault {
        var credentials: VaultCredentials
        /// Nil until the vault is first written to.
        var masterKey: SymmetricKey?
    }

    private enum DefaultsKey {
        static let hasLaunched = "hasLaunchedBefore"
        static let autoLock = "autoLockDelay"
    }

    nonisolated private static let keyRecordAAD = Data("velcrypt.vault.key.v1".utf8)

    private(set) var phase: Phase
    var autoLockDelay: AutoLockDelay {
        didSet { defaults.set(autoLockDelay.rawValue, forKey: DefaultsKey.autoLock) }
    }

    /// Content of the open vault. Nil whenever the session is locked.
    private(set) var library: VaultLibrary?

    @ObservationIgnored private var openVault: OpenVault?
    @ObservationIgnored private var backgroundedAt: Date?
    @ObservationIgnored private let keyring: VaultKeyring
    @ObservationIgnored private let files: VaultFileStore
    @ObservationIgnored private let defaults: UserDefaults

    init(
        store: SecretStore = KeychainSecretStore(),
        files: VaultFileStore = VaultFileStore(),
        defaults: UserDefaults = .standard,
        keyring: VaultKeyring? = nil
    ) {
        let keyring = keyring ?? VaultKeyring(store: store)
        self.keyring = keyring
        self.files = files
        self.defaults = defaults

        // Keychain items outlive app deletion. A fresh install must never inherit an old device salt.
        if !defaults.bool(forKey: DefaultsKey.hasLaunched) {
            try? store.deleteAll()
            try? files.deleteAll()
            defaults.set(true, forKey: DefaultsKey.hasLaunched)
        }
        // Plaintext temp files from a previous run (e.g. after a crash) must not survive a relaunch.
        TemporaryFiles.purgeAll()

        self.phase = keyring.isSetUp ? .locked : .onboarding
        self.autoLockDelay = AutoLockDelay(rawValue: defaults.integer(forKey: DefaultsKey.autoLock)) ?? .immediately
    }

    var isUnlocked: Bool { phase == .unlocked }

    /// The open vault's master key, or nil if locked or the vault has never been written to.
    var currentMasterKey: SymmetricKey? { openVault?.masterKey }

    // MARK: Onboarding

    /// Sets up the device and creates the first vault for `pattern`. Phase stays `.onboarding`.
    func createFirstVault(pattern: UnlockPattern) async throws {
        let keyring = keyring, files = files
        let opened = try await Task.detached(priority: .userInitiated) {
            try files.prepare()
            try keyring.setUpIfNeeded()
            let credentials = try keyring.credentials(for: pattern)
            let masterKey = try Self.loadMasterKey(credentials, files: files) ?? Self.createMasterKey(credentials, files: files)
            return OpenVault(credentials: credentials, masterKey: masterKey)
        }.value
        activate(opened)
    }

    func finishOnboarding() {
        guard openVault != nil else { return }
        phase = .unlocked
    }

    // MARK: Unlock

    /// Opens the vault belonging to `pattern`, or an empty in-memory vault if none exists yet.
    func unlock(pattern: UnlockPattern) async throws {
        let keyring = keyring, files = files
        let opened = try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: pattern)
            return OpenVault(credentials: credentials, masterKey: try Self.loadMasterKey(credentials, files: files))
        }.value
        activate(opened)
        backgroundedAt = nil
        phase = .unlocked
    }

    private func activate(_ vault: OpenVault) {
        library?.close()
        openVault = vault
        library = VaultLibrary(
            files: files,
            vaultID: vault.credentials.vaultID,
            masterKey: vault.masterKey,
            keyProvider: { [weak self] in
                guard let self else { throw VaultError.locked }
                return try await self.masterKeyForWriting()
            }
        )
    }

    /// True if `pattern` belongs to the open vault. Used to confirm a pattern before a new vault is first saved,
    /// so a mis-drawn pattern can't silently create a vault the user can never find again.
    func patternOpensCurrentVault(_ pattern: UnlockPattern) async -> Bool {
        guard let currentID = openVault?.credentials.vaultID else { return false }
        let keyring = keyring
        let id = try? await Task.detached(priority: .userInitiated) {
            try keyring.credentials(for: pattern).vaultID
        }.value
        return id == currentID
    }

    // MARK: Writing

    /// Returns the master key, persisting the vault first if this is its first write.
    func masterKeyForWriting() async throws -> SymmetricKey {
        guard let vault = openVault else { throw VaultError.locked }
        if let key = vault.masterKey { return key }
        let files = files, credentials = vault.credentials
        let key = try await Task.detached(priority: .userInitiated) {
            try Self.createMasterKey(credentials, files: files)
        }.value
        openVault?.masterKey = key
        return key
    }

    // MARK: Lock

    func lock() {
        library?.close()
        library = nil
        openVault = nil
        backgroundedAt = nil
        TemporaryFiles.purgeAll()
        if phase == .unlocked { phase = .locked }
    }

    func appDidEnterBackground() {
        guard phase == .unlocked else { return }
        TemporaryFiles.purgeAll()
        if autoLockDelay == .immediately {
            lock()
        } else {
            backgroundedAt = .now
        }
    }

    func appDidBecomeActive() {
        guard phase == .unlocked, let since = backgroundedAt else { return }
        backgroundedAt = nil
        if Date.now.timeIntervalSince(since) >= TimeInterval(autoLockDelay.rawValue) {
            lock()
        }
    }

    // MARK: Management

    /// Moves the open vault to a new pattern. Fails with `.patternInUse` if that pattern already has a vault.
    func changePattern(to newPattern: UnlockPattern) async throws {
        guard let vault = openVault else { throw VaultError.locked }
        let masterKey = try await masterKeyForWriting()
        let keyring = keyring, files = files, oldID = vault.credentials.vaultID
        let newCredentials = try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: newPattern)
            guard credentials.vaultID != oldID else { return credentials }
            guard !files.vaultExists(credentials.vaultID) else { throw VaultError.patternInUse }
            let record = try Self.wrap(masterKey, with: credentials)
            try files.rekey(from: oldID, to: credentials.vaultID, newRecord: record)
            return credentials
        }.value
        // The vault directory moved, so the library must reopen it at its new location.
        activate(OpenVault(credentials: newCredentials, masterKey: masterKey))
        await library?.load()
    }

    /// Permanently deletes the open vault and locks.
    func deleteCurrentVault() throws {
        guard let vault = openVault else { throw VaultError.locked }
        try files.deleteVault(vault.credentials.vaultID)
        lock()
    }

    /// Deletes every vault and the device salt, returning to onboarding.
    func eraseEverything() throws {
        try files.deleteAll()
        try keyring.destroy()
        library?.close()
        library = nil
        openVault = nil
        TemporaryFiles.purgeAll()
        phase = .onboarding
    }

    // MARK: Key records

    nonisolated private static func wrap(_ masterKey: SymmetricKey, with credentials: VaultCredentials) throws -> Data {
        let raw = masterKey.withUnsafeBytes { Data($0) }
        return try VaultCrypto.seal(raw, using: credentials.wrappingKey, authenticating: keyRecordAAD + Data(credentials.vaultID.utf8))
    }

    /// Nil if no vault exists for these credentials. Throws if records exist but none decrypt.
    nonisolated private static func loadMasterKey(_ credentials: VaultCredentials, files: VaultFileStore) throws -> SymmetricKey? {
        let records = files.keyRecords(credentials.vaultID)
        guard !records.isEmpty else { return nil }
        let aad = keyRecordAAD + Data(credentials.vaultID.utf8)
        for record in records {
            if let raw = try? VaultCrypto.open(record, using: credentials.wrappingKey, authenticating: aad), raw.count == 32 {
                return SymmetricKey(data: raw)
            }
        }
        throw VaultError.corruptedVault
    }

    nonisolated private static func createMasterKey(_ credentials: VaultCredentials, files: VaultFileStore) throws -> SymmetricKey {
        let masterKey = SymmetricKey(size: .bits256)
        try files.writeKeyRecord(try wrap(masterKey, with: credentials), vaultID: credentials.vaultID)
        return masterKey
    }
}
