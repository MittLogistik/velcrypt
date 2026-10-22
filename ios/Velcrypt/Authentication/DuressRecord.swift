import CryptoKit
import Foundation

/// The duress record: one fixed-size Keychain item that exists on every set-up device.
///
/// With a duress pattern set, it holds AES-GCM(duressKey(pattern), decoy vault master key). Without one,
/// it holds random bytes of the same length. Only the duress pattern can tell the two apart, so the
/// record's presence reveals nothing. Every unlock tries it with the drawn pattern's duress key; this is
/// one AES-GCM open on top of the key derivation that runs anyway, so timing doesn't change either.
enum DuressRecord {
    static let account = "duress.v1"
    /// nonce (12) ‖ 32-byte master key ‖ tag (16)
    static let length = 12 + 32 + 16
    private static let aad = Data("velcrypt.duress.v1".utf8)

    enum RecordError: Error {
        case unexpectedLength
    }

    /// Writes a random placeholder if the device has no record yet (fresh setup or an older install).
    static func ensureExists(in store: SecretStore) throws {
        guard try store.data(for: account) == nil else { return }
        try store.set(VaultCrypto.randomBytes(length), for: account)
    }

    static func set(decoyMasterKey: SymmetricKey, duressKey: SymmetricKey, in store: SecretStore) throws {
        let raw = decoyMasterKey.withUnsafeBytes { Data($0) }
        let sealed = try VaultCrypto.seal(raw, using: duressKey, authenticating: aad)
        guard sealed.count == length else { throw RecordError.unexpectedLength }
        try store.set(sealed, for: account)
    }

    /// Replaces the record with random bytes, which turns the duress pattern off.
    static func clear(in store: SecretStore) throws {
        try store.set(VaultCrypto.randomBytes(length), for: account)
    }

    /// The decoy vault's master key if `duressKey` opens the record, otherwise nil.
    static func decoyMasterKey(duressKey: SymmetricKey, in store: SecretStore) -> SymmetricKey? {
        guard let sealed = try? store.data(for: account),
              let raw = try? VaultCrypto.open(sealed, using: duressKey, authenticating: aad),
              raw.count == 32 else {
            return nil
        }
        return SymmetricKey(data: raw)
    }
}
