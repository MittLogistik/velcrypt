import CryptoKit
import Foundation

enum VaultCryptoError: Error, Equatable {
    /// Authentication tag mismatch: wrong key, tampered or corrupted data.
    case authenticationFailed
    case malformedCiphertext
}

/// Authenticated encryption primitives. Thin, audited-library-only wrappers around CryptoKit.
enum VaultCrypto {
    /// Seals `plaintext` with AES-256-GCM and a fresh random 96-bit nonce.
    /// Output layout: nonce (12) ‖ ciphertext ‖ tag (16).
    static func seal(_ plaintext: Data, using key: SymmetricKey, authenticating aad: Data) throws -> Data {
        let box = try AES.GCM.seal(plaintext, using: key, nonce: AES.GCM.Nonce(), authenticating: aad)
        guard let combined = box.combined else { throw VaultCryptoError.malformedCiphertext }
        return combined
    }

    static func open(_ sealed: Data, using key: SymmetricKey, authenticating aad: Data) throws -> Data {
        let box: AES.GCM.SealedBox
        do {
            box = try AES.GCM.SealedBox(combined: sealed)
        } catch {
            throw VaultCryptoError.malformedCiphertext
        }
        do {
            return try AES.GCM.open(box, using: key, authenticating: aad)
        } catch {
            throw VaultCryptoError.authenticationFailed
        }
    }

    /// Derives an independent subkey (HKDF-SHA256).
    static func deriveKey(
        from inputKey: SymmetricKey,
        purpose: KeyPurpose,
        salt: Data = Data(),
        outputByteCount: Int = 32
    ) -> SymmetricKey {
        HKDF<SHA256>.deriveKey(
            inputKeyMaterial: inputKey,
            salt: salt,
            info: Data(purpose.rawValue.utf8),
            outputByteCount: outputByteCount
        )
    }

    static func randomBytes(_ count: Int) -> Data {
        var generator = SystemRandomNumberGenerator()
        return Data((0..<count).map { _ in UInt8.random(in: .min ... .max, using: &generator) })
    }
}

/// Domain-separation labels for HKDF. Never reuse a label for a different purpose.
enum KeyPurpose: String {
    case vaultID = "velcrypt.vault.id.v1"
    case vaultWrap = "velcrypt.vault.wrap.v1"
    case metadata = "velcrypt.metadata.v1"
    case item = "velcrypt.item.v1"
    case thumbnail = "velcrypt.thumbnail.v1"
}
