import CryptoKit
import Foundation
import LocalAuthentication
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
        var vaultID: String
        /// Nil when the vault was opened with Face ID; the pattern is then not known.
        var credentials: VaultCredentials?
        /// Nil until the vault is first written to.
        var masterKey: SymmetricKey?
        /// Set when the duress pattern opened this vault and deleted the others.
        var isDuressDecoy = false

        init(credentials: VaultCredentials, masterKey: SymmetricKey?) {
            vaultID = credentials.vaultID
            self.credentials = credentials
            self.masterKey = masterKey
        }

        init(vaultID: String, masterKey: SymmetricKey) {
            self.vaultID = vaultID
            credentials = nil
            self.masterKey = masterKey
        }
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

    /// True if at least one vault can be opened with Face ID, so the lock screen offers it.
    private(set) var hasBiometricVaults = false
    /// True if the open vault has Face ID turned on. Off for every vault until the user turns it on.
    private(set) var currentVaultUsesBiometrics = false

    @ObservationIgnored private var openVault: OpenVault?
    @ObservationIgnored private var backgroundedAt: Date?
    @ObservationIgnored private let keyring: VaultKeyring
    @ObservationIgnored private let files: VaultFileStore
    @ObservationIgnored private let defaults: UserDefaults
    @ObservationIgnored private let biometrics: BiometricKeyStore

    init(
        store: SecretStore = KeychainSecretStore(),
        files: VaultFileStore = VaultFileStore(),
        defaults: UserDefaults = .standard,
        keyring: VaultKeyring? = nil,
        biometrics: BiometricKeyStore = KeychainBiometricKeyStore()
    ) {
        let keyring = keyring ?? VaultKeyring(store: store)
        self.keyring = keyring
        self.files = files
        self.defaults = defaults
        self.biometrics = biometrics

        // Keychain items outlive app deletion. A fresh install must never inherit an old device salt.
        if !defaults.bool(forKey: DefaultsKey.hasLaunched) {
            try? store.deleteAll()
            try? files.deleteAll()
            try? biometrics.removeAll()
            defaults.set(true, forKey: DefaultsKey.hasLaunched)
        }
        // Plaintext temp files from a previous run (e.g. after a crash) must not survive a relaunch.
        TemporaryFiles.purgeAll()
        VaultBackup.purgeTemporaryFiles()

        self.phase = keyring.isSetUp ? .locked : .onboarding
        try? keyring.ensureDuressRecord()
        self.autoLockDelay = AutoLockDelay(rawValue: defaults.integer(forKey: DefaultsKey.autoLock)) ?? .immediately
        refreshBiometricState()
    }

    var isUnlocked: Bool { phase == .unlocked }

    /// Vaults saved on this iPhone. Never shown in the UI.
    var savedVaultCount: Int {
        files.vaultIDs().filter(files.vaultExists).count
    }

    /// Vaults other than the open one that hold at least one file, for the free-version limit only.
    /// An empty vault, such as one opened by mistake with a different pattern, never counts.
    var otherVaultsWithItemsCount: Int {
        let current = openVault?.vaultID
        return files.vaultIDs().filter { $0 != current && files.vaultExists($0) && files.hasItems($0) }.count
    }

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
    /// The duress pattern instead opens its decoy vault after deleting every other vault.
    func unlock(pattern: UnlockPattern) async throws {
        let keyring = keyring, files = files
        let opened = try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: pattern)
            if let decoyKey = keyring.duressDecoyKey(for: credentials) {
                var decoy = try Self.triggerDuress(credentials: credentials, decoyKey: decoyKey, files: files)
                decoy.isDuressDecoy = true
                return decoy
            }
            return OpenVault(credentials: credentials, masterKey: try Self.loadMasterKey(credentials, files: files))
        }.value
        if opened.isDuressDecoy {
            // Deleted vaults must not linger in the Face ID list.
            for id in biometrics.enabledVaultIDs() where id != opened.vaultID || opened.masterKey == nil {
                try? biometrics.remove(vaultID: id)
            }
        }
        activate(opened)
        backgroundedAt = nil
        phase = .unlocked
    }

    // MARK: Face ID

    /// The vaults that have Face ID turned on, read with a context that has already passed Face ID.
    /// Entries whose vault no longer exists are removed.
    func biometricVaults(authenticatedWith context: LAContext) -> [BiometricVault] {
        let vaults = biometrics.entries(authenticatedWith: context).filter { vault in
            if files.vaultExists(vault.vaultID) { return true }
            try? biometrics.remove(vaultID: vault.vaultID)
            return false
        }
        refreshBiometricState()
        return vaults.sorted { $0.name.localizedStandardCompare($1.name) == .orderedAscending }
    }

    /// Opens a vault picked from the Face ID list.
    func unlock(biometricVault vault: BiometricVault) {
        activate(OpenVault(vaultID: vault.vaultID, masterKey: vault.masterKey))
        backgroundedAt = nil
        phase = .unlocked
    }

    /// Turns Face ID on for the open vault, under `name` in the Face ID list. The vault must already be saved.
    /// Also used to rename it there.
    func enableBiometricUnlock(name: String) throws {
        guard let vault = openVault, let masterKey = vault.masterKey else { throw VaultError.locked }
        try biometrics.save(vaultID: vault.vaultID, name: name, masterKey: masterKey)
        refreshBiometricState()
    }

    func disableBiometricUnlock() throws {
        guard let vault = openVault else { throw VaultError.locked }
        try biometrics.remove(vaultID: vault.vaultID)
        refreshBiometricState()
    }

    private func refreshBiometricState() {
        let enabled = biometrics.enabledVaultIDs()
        hasBiometricVaults = !enabled.isEmpty
        currentVaultUsesBiometrics = openVault.map { enabled.contains($0.vaultID) } ?? false
    }

    private func activate(_ vault: OpenVault) {
        library?.close()
        openVault = vault
        library = VaultLibrary(
            files: files,
            vaultID: vault.vaultID,
            masterKey: vault.masterKey,
            keyProvider: { [weak self] in
                guard let self else { throw VaultError.locked }
                return try await self.masterKeyForWriting()
            }
        )
        refreshBiometricState()
    }

    /// True if `pattern` belongs to the open vault. Used to confirm a pattern before a new vault is first saved,
    /// so a mis-drawn pattern can't silently create a vault the user can never find again.
    func patternOpensCurrentVault(_ pattern: UnlockPattern) async -> Bool {
        guard let currentID = openVault?.vaultID else { return false }
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
        guard let credentials = vault.credentials else { throw VaultError.locked }
        let files = files
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
        currentVaultUsesBiometrics = false
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

    /// Moves the open vault to a new pattern. Fails with `.patternInUse` if that pattern already has a vault
    /// or is the duress pattern.
    func changePattern(to newPattern: UnlockPattern) async throws {
        guard let vault = openVault else { throw VaultError.locked }
        let masterKey = try await masterKeyForWriting()
        try await library?.saveIndexNow()
        let keyring = keyring, files = files, oldID = vault.vaultID
        let hadBiometrics = biometrics.enabledVaultIDs().contains(oldID)
        let newCredentials = try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: newPattern)
            guard credentials.vaultID != oldID else { return credentials }
            guard !files.vaultExists(credentials.vaultID), keyring.duressDecoyKey(for: credentials) == nil else {
                throw VaultError.patternInUse
            }
            let record = try Self.wrap(masterKey, with: credentials)
            try files.rekey(from: oldID, to: credentials.vaultID, newRecord: record)
            return credentials
        }.value
        // Face ID follows the vault to its new location, under the same name.
        if hadBiometrics && newCredentials.vaultID != oldID {
            let name = library?.name ?? String(localized: "Vault")
            try? biometrics.save(vaultID: newCredentials.vaultID, name: name, masterKey: masterKey)
            try? biometrics.remove(vaultID: oldID)
        }
        // The vault directory moved, so the library must reopen it at its new location.
        activate(OpenVault(credentials: newCredentials, masterKey: masterKey))
        await library?.load()
    }

    // MARK: Duress

    /// Makes `pattern` the duress pattern, with the open vault as its decoy. Replaces any earlier duress pattern.
    /// The open vault must already be saved, and the pattern must not open any vault.
    func setDuressPattern(_ pattern: UnlockPattern) async throws {
        guard let vault = openVault, let masterKey = vault.masterKey, let library else { throw VaultError.locked }
        // The decoy is found by its index, so make sure there is one.
        try await library.saveIndexNow()
        let keyring = keyring, files = files, currentID = vault.vaultID
        try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: pattern)
            guard credentials.vaultID != currentID, !files.vaultExists(credentials.vaultID) else {
                throw VaultError.patternInUse
            }
            try keyring.setDuress(decoyMasterKey: masterKey, credentials: credentials)
        }.value
    }

    /// Turns the duress pattern off if `pattern` is it. Returns false if it isn't, and changes nothing.
    func removeDuressPattern(_ pattern: UnlockPattern) async throws -> Bool {
        let keyring = keyring
        return try await Task.detached(priority: .userInitiated) {
            let credentials = try keyring.credentials(for: pattern)
            guard keyring.duressDecoyKey(for: credentials) != nil else { return false }
            try keyring.clearDuress()
            return true
        }.value
    }

    /// Deletes every vault except the decoy and opens the decoy. The decoy is the vault whose index opens
    /// with the stored master key. If it no longer exists, every vault is deleted and an empty vault opens,
    /// exactly as for any new pattern.
    nonisolated private static func triggerDuress(credentials: VaultCredentials, decoyKey: SymmetricKey, files: VaultFileStore) throws -> OpenVault {
        let decoyID = files.vaultIDs().first { id in
            VaultStore.indexOpens(directory: files.directory(for: id), vaultID: id, masterKey: decoyKey)
        }
        try files.deleteVaults(except: decoyID)
        guard let decoyID else {
            return OpenVault(credentials: credentials, masterKey: nil)
        }
        let decoy = VaultCredentials(vaultID: decoyID, wrappingKey: credentials.wrappingKey, duressKey: credentials.duressKey)
        return OpenVault(credentials: decoy, masterKey: decoyKey)
    }

    /// Permanently deletes the open vault and locks.
    func deleteCurrentVault() throws {
        guard let vault = openVault else { throw VaultError.locked }
        try files.deleteVault(vault.vaultID)
        try? biometrics.remove(vaultID: vault.vaultID)
        lock()
        refreshBiometricState()
    }

    /// Deletes every vault and the device salt, returning to onboarding.
    func eraseEverything() throws {
        try files.deleteAll()
        try keyring.destroy()
        try? biometrics.removeAll()
        library?.close()
        library = nil
        openVault = nil
        TemporaryFiles.purgeAll()
        refreshBiometricState()
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
