import CryptoKit
import XCTest
@testable import Velcrypt

final class EncryptionTests: XCTestCase {
    private let key = SymmetricKey(size: .bits256)
    private let aad = Data("test.aad".utf8)

    func testSealOpenRoundTrip() throws {
        let plaintext = Data("private photo bytes".utf8)
        let sealed = try VaultCrypto.seal(plaintext, using: key, authenticating: aad)
        XCTAssertNotEqual(sealed, plaintext)
        XCTAssertEqual(sealed.count, 12 + plaintext.count + 16)
        XCTAssertEqual(try VaultCrypto.open(sealed, using: key, authenticating: aad), plaintext)
    }

    func testNoncesAreUniquePerSeal() throws {
        let plaintext = Data(repeating: 7, count: 64)
        let a = try VaultCrypto.seal(plaintext, using: key, authenticating: aad)
        let b = try VaultCrypto.seal(plaintext, using: key, authenticating: aad)
        XCTAssertNotEqual(a.prefix(12), b.prefix(12))
        XCTAssertNotEqual(a, b)
    }

    func testTamperedCiphertextIsRejected() throws {
        var sealed = try VaultCrypto.seal(Data("secret".utf8), using: key, authenticating: aad)
        sealed[14] ^= 0x01
        XCTAssertThrowsError(try VaultCrypto.open(sealed, using: key, authenticating: aad)) {
            XCTAssertEqual($0 as? VaultCryptoError, .authenticationFailed)
        }
    }

    func testWrongKeyIsRejected() throws {
        let sealed = try VaultCrypto.seal(Data("secret".utf8), using: key, authenticating: aad)
        XCTAssertThrowsError(try VaultCrypto.open(sealed, using: SymmetricKey(size: .bits256), authenticating: aad))
    }

    func testWrongAADIsRejected() throws {
        let sealed = try VaultCrypto.seal(Data("secret".utf8), using: key, authenticating: aad)
        XCTAssertThrowsError(try VaultCrypto.open(sealed, using: key, authenticating: Data("other".utf8)))
    }

    func testTruncatedCiphertextIsMalformed() {
        XCTAssertThrowsError(try VaultCrypto.open(Data([1, 2, 3]), using: key, authenticating: aad)) {
            XCTAssertEqual($0 as? VaultCryptoError, .malformedCiphertext)
        }
    }

    func testHKDFSubkeysAreDomainSeparated() {
        let metadata = VaultCrypto.deriveKey(from: key, purpose: .metadata)
        let item = VaultCrypto.deriveKey(from: key, purpose: .item)
        let itemOtherSalt = VaultCrypto.deriveKey(from: key, purpose: .item, salt: Data("uuid-2".utf8))
        XCTAssertNotEqual(metadata, item)
        XCTAssertNotEqual(item, itemOtherSalt)
        XCTAssertEqual(item, VaultCrypto.deriveKey(from: key, purpose: .item))
        XCTAssertEqual(VaultCrypto.deriveKey(from: key, purpose: .vaultID, outputByteCount: 16).bitCount, 128)
    }

    func testPBKDF2IsDeterministicAndSaltDependent() throws {
        let password = UnlockPattern.sample.keyMaterial
        let salt = Data(repeating: 1, count: 32)
        let a = try KeyDerivation.pbkdf2(password: password, salt: salt, rounds: TestConstants.fastRounds)
        let b = try KeyDerivation.pbkdf2(password: password, salt: salt, rounds: TestConstants.fastRounds)
        let c = try KeyDerivation.pbkdf2(password: password, salt: Data(repeating: 2, count: 32), rounds: TestConstants.fastRounds)
        XCTAssertEqual(a, b)
        XCTAssertNotEqual(a, c)
    }

    /// RFC 7914 §11 PBKDF2-HMAC-SHA256 test vector (P="passwd", S="salt", c=1) — verifies the CommonCrypto binding.
    func testPBKDF2KnownVector() throws {
        let key = try KeyDerivation.pbkdf2(password: Data("passwd".utf8), salt: Data("salt".utf8), rounds: 1, prf: .sha256, outputByteCount: 64)
        let hex = key.withUnsafeBytes { $0.map { String(format: "%02x", $0) }.joined() }
        XCTAssertEqual(hex, "55ac046e56e3089fec1691c22544b605f94185216dde0465e68b9d57c20dacbc49ca9cccf179b645991664b39d77ef317c71b845b1e30bd509112041d3a19783")
    }

    func testSHA512DiffersFromSHA256() throws {
        let salt = Data("salt".utf8), password = Data("passwd".utf8)
        XCTAssertNotEqual(
            try KeyDerivation.pbkdf2(password: password, salt: salt, rounds: 1, prf: .sha256),
            try KeyDerivation.pbkdf2(password: password, salt: salt, rounds: 1, prf: .sha512)
        )
    }

    func testCalibratedRoundsRespectMinimum() {
        XCTAssertGreaterThanOrEqual(KeyDerivation.calibratedRounds(milliseconds: 1), KeyDerivation.minimumRounds)
    }
}
