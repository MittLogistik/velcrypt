import CryptoKit
import Foundation

/// Keys derived from one unlock pattern: where its vault lives and how to unwrap its master key.
struct VaultCredentials: Sendable {
    /// Hex identifier of the vault directory. Reveals nothing about the pattern.
    let vaultID: String
    /// Wraps the vault's random master key.
    let wrappingKey: SymmetricKey
}

/// Turns unlock patterns into vault credentials using a per-device salt kept in the Keychain.
///
/// Every method may block (PBKDF2 takes ~0.6 s), so call it off the main actor.
final class VaultKeyring: @unchecked Sendable {
    struct DeviceKDF: Codable, Equatable {
        var version: Int
        var salt: Data
        var rounds: UInt32
    }

    static let account = "device.kdf"

    private let store: SecretStore
    private let roundsProvider: () -> UInt32

    init(store: SecretStore, roundsProvider: @escaping () -> UInt32 = { KeyDerivation.calibratedRounds() }) {
        self.store = store
        self.roundsProvider = roundsProvider
    }

    /// True once onboarding has created the device salt.
    var isSetUp: Bool {
        (try? store.data(for: Self.account)) != nil
    }

    /// Creates the per-device salt and round count. Does nothing if they already exist.
    func setUpIfNeeded() throws {
        guard !isSetUp else { return }
        let record = DeviceKDF(version: 1, salt: VaultCrypto.randomBytes(32), rounds: roundsProvider())
        try store.set(try JSONEncoder().encode(record), for: Self.account)
    }

    func credentials(for pattern: UnlockPattern) throws -> VaultCredentials {
        guard let raw = try store.data(for: Self.account),
              let kdf = try? JSONDecoder().decode(DeviceKDF.self, from: raw),
              kdf.version == 1 else {
            throw VaultError.notSetUp
        }
        let root = try KeyDerivation.pbkdf2(password: pattern.keyMaterial, salt: kdf.salt, rounds: kdf.rounds, prf: .sha512)
        let idKey = VaultCrypto.deriveKey(from: root, purpose: .vaultID, outputByteCount: 16)
        let vaultID = idKey.withUnsafeBytes { $0.map { String(format: "%02x", $0) }.joined() }
        return VaultCredentials(vaultID: vaultID, wrappingKey: VaultCrypto.deriveKey(from: root, purpose: .vaultWrap))
    }

    func destroy() throws {
        try store.deleteAll()
    }
}

enum VaultError: Error, Equatable {
    case notSetUp
    /// Another vault already uses this pattern.
    case patternInUse
    /// The key record exists but cannot be decrypted with the derived key.
    case corruptedVault
    case locked
}
