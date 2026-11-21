import CryptoKit
import Foundation
import LocalAuthentication
@testable import Velcrypt

/// In-memory `SecretStore` for tests.
final class InMemorySecretStore: SecretStore, @unchecked Sendable {
    private var items: [String: Data] = [:]
    private let lock = NSLock()

    func set(_ data: Data, for account: String) throws {
        lock.withLock { items[account] = data }
    }

    func data(for account: String) throws -> Data? {
        lock.withLock { items[account] }
    }

    func delete(_ account: String) throws {
        lock.withLock { items[account] = nil }
    }

    func deleteAll() throws {
        lock.withLock { items.removeAll() }
    }
}

enum TestConstants {
    /// Low round count keeps tests fast. Production uses calibrated rounds (≥ 600k).
    static let fastRounds: UInt32 = 1_000
}

/// A throwaway vault root under the test's temporary directory.
func makeTemporaryFileStore() -> VaultFileStore {
    VaultFileStore(root: FileManager.default.temporaryDirectory
        .appending(path: "VelcryptTests-\(UUID().uuidString)", directoryHint: .isDirectory))
}

extension UnlockPattern {
    /// Z shape: top row, diagonal, bottom row.
    static let sample = try! UnlockPattern(dots: [0, 1, 2, 3, 4, 8, 12, 16, 20, 21, 22, 23, 24])
    /// L shape down the left edge and along the bottom.
    static let other = try! UnlockPattern(dots: [0, 5, 10, 15, 20, 21, 22])
    static let third = try! UnlockPattern(dots: [6, 7, 8, 13, 18, 17, 16])
}

/// In-memory `BiometricKeyStore` for tests. Ignores the authentication context.
final class InMemoryBiometricKeyStore: BiometricKeyStore, @unchecked Sendable {
    private var items: [String: (name: String, key: SymmetricKey)] = [:]
    private let lock = NSLock()

    func enabledVaultIDs() -> Set<String> {
        lock.withLock { Set(items.keys) }
    }

    func save(vaultID: String, name: String, masterKey: SymmetricKey) throws {
        lock.withLock { items[vaultID] = (name, masterKey) }
    }

    func remove(vaultID: String) throws {
        lock.withLock { items[vaultID] = nil }
    }

    func removeAll() throws {
        lock.withLock { items.removeAll() }
    }

    func entries(authenticatedWith context: LAContext) -> [BiometricVault] {
        lock.withLock {
            items.map { BiometricVault(vaultID: $0.key, name: $0.value.name, masterKey: $0.value.key) }
        }
    }
}
