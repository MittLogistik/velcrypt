import CommonCrypto
import CryptoKit
import Foundation

enum KeyDerivationError: Error {
    case derivationFailed(Int32)
}

/// Password-based key derivation (PBKDF2 via CommonCrypto).
/// CryptoKit has no password KDF, so we use Apple's CommonCrypto implementation.
enum KeyDerivation {
    enum PRF {
        case sha256, sha512

        var ccValue: CCPseudoRandomAlgorithm {
            switch self {
            case .sha256: CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA256)
            case .sha512: CCPseudoRandomAlgorithm(kCCPRFHmacAlgSHA512)
            }
        }
    }

    /// Minimum rounds for unlock-pattern derivation, regardless of calibration.
    static let minimumRounds: UInt32 = 600_000

    static func pbkdf2(
        password: Data,
        salt: Data,
        rounds: UInt32,
        prf: PRF = .sha512,
        outputByteCount: Int = 32
    ) throws -> SymmetricKey {
        var derived = Data(count: outputByteCount)
        let status: Int32 = derived.withUnsafeMutableBytes { derivedBytes in
            password.withUnsafeBytes { passwordBytes in
                salt.withUnsafeBytes { saltBytes in
                    CCKeyDerivationPBKDF(
                        CCPBKDFAlgorithm(kCCPBKDF2),
                        passwordBytes.baseAddress?.assumingMemoryBound(to: CChar.self),
                        password.count,
                        saltBytes.baseAddress?.assumingMemoryBound(to: UInt8.self),
                        salt.count,
                        prf.ccValue,
                        rounds,
                        derivedBytes.baseAddress?.assumingMemoryBound(to: UInt8.self),
                        outputByteCount
                    )
                }
            }
        }
        guard status == Int32(kCCSuccess) else { throw KeyDerivationError.derivationFailed(status) }
        defer { derived.resetBytes(in: 0..<derived.count) }
        return SymmetricKey(data: derived)
    }

    /// Picks a round count that takes roughly `milliseconds` on this device, never below `minimumRounds`.
    static func calibratedRounds(milliseconds: UInt32 = 600) -> UInt32 {
        let rounds = CCCalibratePBKDF(
            CCPBKDFAlgorithm(kCCPBKDF2),
            40,
            32,
            PRF.sha512.ccValue,
            32,
            milliseconds
        )
        return max(rounds, minimumRounds)
    }
}
