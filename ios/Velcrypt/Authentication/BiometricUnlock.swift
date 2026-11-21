import CryptoKit
import Foundation
import LocalAuthentication
import Security

/// A vault the user has chosen to open with Face ID (or Touch ID).
struct BiometricVault: Identifiable, Sendable {
    let vaultID: String
    /// The name the user gave the vault for the Face ID list.
    let name: String
    let masterKey: SymmetricKey

    var id: String { vaultID }
}

/// Stores a copy of each opted-in vault's master key behind biometrics.
///
/// Face ID is off for every vault until the user turns it on for that vault. Vaults without it are never
/// stored here, so they never appear in the Face ID list.
protocol BiometricKeyStore {
    /// Vault IDs that have Face ID turned on. Reading this never asks for Face ID.
    func enabledVaultIDs() -> Set<String>
    func save(vaultID: String, name: String, masterKey: SymmetricKey) throws
    func remove(vaultID: String) throws
    func removeAll() throws
    /// Reads every entry using a context that has already passed biometric authentication.
    /// Entries that no longer open (for example after Face ID was reset) are removed and skipped.
    func entries(authenticatedWith context: LAContext) -> [BiometricVault]
}

/// Keychain-backed `BiometricKeyStore`. Each entry is `ThisDeviceOnly`, needs a device passcode, and is bound
/// to the faces or fingerprints enrolled when it was saved: enrolling a new one invalidates every entry.
///
/// Each vault has two items: the key, behind Face ID, and a plain marker (no secret, just the vault ID) in a
/// separate service. Which vaults have Face ID on is read from the markers only, because querying items behind
/// Face ID without a prompt is not reliable: iOS may refuse with `errSecInteractionNotAllowed`.
struct KeychainBiometricKeyStore: BiometricKeyStore {
    private struct Payload: Codable {
        var version = 1
        var name: String
        var key: Data
    }

    let service: String
    private var markerService: String { service + ".index" }

    init(service: String = "com.velcrypt.biometric") {
        self.service = service
    }

    private func baseQuery(_ service: String, _ vaultID: String? = nil) -> [String: Any] {
        var query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
        ]
        if let vaultID { query[kSecAttrAccount as String] = vaultID }
        return query
    }

    func enabledVaultIDs() -> Set<String> {
        var query = baseQuery(markerService)
        query[kSecReturnAttributes as String] = true
        query[kSecMatchLimit as String] = kSecMatchLimitAll
        var result: CFTypeRef?
        guard SecItemCopyMatching(query as CFDictionary, &result) == errSecSuccess,
              let rows = result as? [[String: Any]] else { return [] }
        return Set(rows.compactMap { $0[kSecAttrAccount as String] as? String })
    }

    func save(vaultID: String, name: String, masterKey: SymmetricKey) throws {
        try remove(vaultID: vaultID)
        var error: Unmanaged<CFError>?
        guard let access = SecAccessControlCreateWithFlags(
            nil, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly, .biometryCurrentSet, &error
        ) else {
            throw SecretStoreError.unexpectedStatus(errSecParam)
        }
        let payload = Payload(name: name, key: masterKey.withUnsafeBytes { Data($0) })
        var keyItem = baseQuery(service, vaultID)
        keyItem[kSecAttrAccessControl as String] = access
        keyItem[kSecValueData as String] = try JSONEncoder().encode(payload)
        let status = SecItemAdd(keyItem as CFDictionary, nil)
        guard status == errSecSuccess else { throw SecretStoreError.unexpectedStatus(status) }

        var marker = baseQuery(markerService, vaultID)
        marker[kSecAttrAccessible as String] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        marker[kSecValueData as String] = Data()
        let markerStatus = SecItemAdd(marker as CFDictionary, nil)
        guard markerStatus == errSecSuccess else {
            try? remove(vaultID: vaultID)
            throw SecretStoreError.unexpectedStatus(markerStatus)
        }
    }

    func remove(vaultID: String) throws {
        for itemService in [self.service, markerService] {
            let status = SecItemDelete(baseQuery(itemService, vaultID) as CFDictionary)
            guard status == errSecSuccess || status == errSecItemNotFound else {
                throw SecretStoreError.unexpectedStatus(status)
            }
        }
    }

    func removeAll() throws {
        for itemService in [self.service, markerService] {
            let status = SecItemDelete(baseQuery(itemService) as CFDictionary)
            guard status == errSecSuccess || status == errSecItemNotFound else {
                throw SecretStoreError.unexpectedStatus(status)
            }
        }
    }

    func entries(authenticatedWith context: LAContext) -> [BiometricVault] {
        // One read per entry, so a single invalidated entry can't hide the others.
        enabledVaultIDs().sorted().compactMap { vaultID in
            var keyQuery = baseQuery(service, vaultID)
            keyQuery[kSecReturnData as String] = true
            keyQuery[kSecMatchLimit as String] = kSecMatchLimitOne
            keyQuery[kSecUseAuthenticationContext as String] = context
            var result: CFTypeRef?
            let status = SecItemCopyMatching(keyQuery as CFDictionary, &result)
            guard status == errSecSuccess,
                  let data = result as? Data,
                  let payload = try? JSONDecoder().decode(Payload.self, from: data),
                  payload.key.count == 32 else {
                // Gone or invalidated (Face ID was reset): drop it. A cancelled prompt changes nothing.
                if status != errSecUserCanceled && status != errSecInteractionNotAllowed {
                    try? remove(vaultID: vaultID)
                }
                return nil
            }
            return BiometricVault(vaultID: vaultID, name: payload.name, masterKey: SymmetricKey(data: payload.key))
        }
    }
}

/// Face ID / Touch ID prompts and availability.
enum BiometricAuth {
    enum Kind {
        case faceID, touchID, opticID
    }

    /// The biometry this iPhone has set up, or nil if none is enrolled or it's unavailable.
    static var availableKind: Kind? {
        let context = LAContext()
        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) else { return nil }
        switch context.biometryType {
        case .faceID: return .faceID
        case .touchID: return .touchID
        case .opticID: return .opticID
        default: return nil
        }
    }

    /// Whether this iPhone has Face ID or Touch ID hardware, even if nothing is enrolled yet.
    static var hasHardware: Bool {
        let context = LAContext()
        _ = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        return context.biometryType != .none
    }

    /// "Face ID" or "Touch ID", for labels.
    static var displayName: String {
        let context = LAContext()
        _ = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        switch context.biometryType {
        case .touchID: return "Touch ID"
        case .opticID: return "Optic ID"
        default: return "Face ID"
        }
    }

    static var symbolName: String {
        availableKind == .touchID ? "touchid" : "faceid"
    }

    /// Asks for Face ID or Touch ID only, with no passcode fallback. Returns the authenticated context,
    /// which can then read every entry without asking again.
    static func authenticate(reason: String) async throws -> LAContext {
        let context = LAContext()
        // Hides "Enter Password": the device passcode must never stand in for biometrics here.
        context.localizedFallbackTitle = ""
        _ = try await context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason)
        return context
    }

    /// True if the user cancelled the prompt, so no error needs to be shown.
    static func isCancellation(_ error: Error) -> Bool {
        guard let error = error as? LAError else { return false }
        let cancellations: [LAError.Code] = [.userCancel, .systemCancel, .appCancel, .userFallback]
        return cancellations.contains(error.code)
    }
}
