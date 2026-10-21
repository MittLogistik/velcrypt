import Foundation
import Security

enum SecretStoreError: Error, Equatable {
    case unexpectedStatus(OSStatus)
    case invalidData
}

/// Abstraction over the Keychain so key management can be unit tested.
protocol SecretStore {
    /// Stores a secret readable only while the device is unlocked, never migrated to other devices or backups.
    func set(_ data: Data, for account: String) throws
    func data(for account: String) throws -> Data?
    func delete(_ account: String) throws
    func deleteAll() throws
}

/// Keychain-backed `SecretStore`. All items are `ThisDeviceOnly` and excluded from backups.
struct KeychainSecretStore: SecretStore {
    let service: String

    init(service: String = "com.velcrypt.vault") {
        self.service = service
    }

    private func baseQuery(_ account: String) -> [String: Any] {
        [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
        ]
    }

    func set(_ data: Data, for account: String) throws {
        try delete(account)
        var query = baseQuery(account)
        query[kSecValueData as String] = data
        query[kSecAttrAccessible as String] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly
        let status = SecItemAdd(query as CFDictionary, nil)
        guard status == errSecSuccess else { throw SecretStoreError.unexpectedStatus(status) }
    }

    func data(for account: String) throws -> Data? {
        var query = baseQuery(account)
        query[kSecReturnData as String] = true
        query[kSecMatchLimit as String] = kSecMatchLimitOne
        var result: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        switch status {
        case errSecSuccess:
            guard let data = result as? Data else { throw SecretStoreError.invalidData }
            return data
        case errSecItemNotFound:
            return nil
        default:
            throw SecretStoreError.unexpectedStatus(status)
        }
    }

    func delete(_ account: String) throws {
        let status = SecItemDelete(baseQuery(account) as CFDictionary)
        guard status == errSecSuccess || status == errSecItemNotFound else {
            throw SecretStoreError.unexpectedStatus(status)
        }
    }

    func deleteAll() throws {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
        ]
        let status = SecItemDelete(query as CFDictionary)
        guard status == errSecSuccess || status == errSecItemNotFound else {
            throw SecretStoreError.unexpectedStatus(status)
        }
    }
}
