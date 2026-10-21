import CryptoKit
import Foundation

/// Streaming AES-256-GCM file format for vault items, so large videos never need to fit in memory.
///
///     header (17 B)  "VCF1" | version u8 | chunkSize u32 LE | plaintextLength u64 LE
///     chunks         nonce (12) ‖ ciphertext ‖ tag (16), one per `chunkSize` bytes of plaintext
///
/// Every chunk authenticates `header ‖ itemID ‖ chunkIndex ‖ isFinal`, which detects tampering,
/// reordering, truncation, extension and swapping chunks between files.
enum ChunkedCipher {
    enum CipherError: Error, Equatable {
        case malformed
        case authenticationFailed
    }

    static let defaultChunkSize = 1 << 20
    static let headerLength = 17
    private static let magic = Data("VCF1".utf8)
    private static let formatVersion: UInt8 = 1
    private static let overhead = 12 + 16
    private static let maximumChunkSize = 16 << 20

    // MARK: Encrypt

    static func encrypt(data: Data, to destination: URL, key: SymmetricKey, itemID: UUID, chunkSize: Int = defaultChunkSize) throws {
        let base = data.startIndex
        try encrypt(length: UInt64(data.count), to: destination, key: key, itemID: itemID, chunkSize: chunkSize) { offset, count in
            data.subdata(in: (base + offset)..<(base + offset + count))
        }
    }

    static func encrypt(fileAt source: URL, to destination: URL, key: SymmetricKey, itemID: UUID, chunkSize: Int = defaultChunkSize) throws {
        let input = try FileHandle(forReadingFrom: source)
        defer { try? input.close() }
        let length = try input.seekToEnd()
        try input.seek(toOffset: 0)
        try encrypt(length: length, to: destination, key: key, itemID: itemID, chunkSize: chunkSize) { _, count in
            try input.read(upToCount: count) ?? Data()
        }
    }

    /// Writes to `<destination>.partial` and renames on success, so an interrupted import never leaves a half file.
    private static func encrypt(
        length: UInt64,
        to destination: URL,
        key: SymmetricKey,
        itemID: UUID,
        chunkSize: Int,
        read: (_ offset: Int, _ count: Int) throws -> Data
    ) throws {
        precondition(chunkSize > 0 && chunkSize <= maximumChunkSize)
        let fileManager = FileManager.default
        let header = makeHeader(chunkSize: chunkSize, length: length)
        let partial = destination.appendingPathExtension("partial")
        try? fileManager.removeItem(at: partial)
        guard fileManager.createFile(
            atPath: partial.path(percentEncoded: false),
            contents: header,
            attributes: [.protectionKey: FileProtectionType.complete]
        ) else {
            throw CocoaError(.fileWriteUnknown)
        }

        do {
            let output = try FileHandle(forWritingTo: partial)
            defer { try? output.close() }
            try output.seekToEnd()
            let count = chunkCount(length: length, chunkSize: chunkSize)
            var offset = 0
            for index in 0..<count {
                try Task.checkCancellation()
                let size = Int(min(UInt64(chunkSize), length - UInt64(offset)))
                let plaintext = try read(offset, size)
                guard plaintext.count == size else { throw CipherError.malformed }
                let aad = chunkAAD(header: header, itemID: itemID, index: index, isFinal: index == count - 1)
                try output.write(contentsOf: VaultCrypto.seal(plaintext, using: key, authenticating: aad))
                offset += size
            }
            try output.synchronize()
        } catch {
            try? fileManager.removeItem(at: partial)
            throw error
        }
        try? fileManager.removeItem(at: destination)
        try fileManager.moveItem(at: partial, to: destination)
    }

    // MARK: Decrypt

    /// Decrypts a whole item into memory. Use for photos and thumbnails, not large videos.
    static func decrypt(fileAt url: URL, key: SymmetricKey, itemID: UUID) throws -> Data {
        var result = Data()
        try decrypt(fileAt: url, key: key, itemID: itemID) { result.append($0) }
        return result
    }

    /// Decrypts into a new file with complete data protection. The caller owns and must delete it.
    static func decrypt(fileAt url: URL, to destination: URL, key: SymmetricKey, itemID: UUID) throws {
        let fileManager = FileManager.default
        guard fileManager.createFile(
            atPath: destination.path(percentEncoded: false),
            contents: nil,
            attributes: [.protectionKey: FileProtectionType.complete]
        ) else {
            throw CocoaError(.fileWriteUnknown)
        }
        do {
            let output = try FileHandle(forWritingTo: destination)
            defer { try? output.close() }
            try decrypt(fileAt: url, key: key, itemID: itemID) { try output.write(contentsOf: $0) }
        } catch {
            try? fileManager.removeItem(at: destination)
            throw error
        }
    }

    private static func decrypt(fileAt url: URL, key: SymmetricKey, itemID: UUID, sink: (Data) throws -> Void) throws {
        let input = try FileHandle(forReadingFrom: url)
        defer { try? input.close() }
        guard let header = try input.read(upToCount: headerLength),
              header.count == headerLength,
              header.prefix(4) == magic,
              header[header.startIndex + 4] == formatVersion else {
            throw CipherError.malformed
        }
        let chunkSize = Int(readUInt32(header, at: 5))
        let length = readUInt64(header, at: 9)
        guard chunkSize > 0, chunkSize <= maximumChunkSize else { throw CipherError.malformed }

        let count = chunkCount(length: length, chunkSize: chunkSize)
        var remaining = length
        for index in 0..<count {
            try Task.checkCancellation()
            let size = Int(min(UInt64(chunkSize), remaining))
            guard let sealed = try input.read(upToCount: size + overhead), sealed.count == size + overhead else {
                throw CipherError.malformed
            }
            let aad = chunkAAD(header: header, itemID: itemID, index: index, isFinal: index == count - 1)
            let plaintext: Data
            do {
                plaintext = try VaultCrypto.open(sealed, using: key, authenticating: aad)
            } catch {
                throw CipherError.authenticationFailed
            }
            try sink(plaintext)
            remaining -= UInt64(size)
        }
        if let trailing = try input.read(upToCount: 1), !trailing.isEmpty {
            throw CipherError.malformed
        }
    }

    // MARK: Helpers

    static func chunkCount(length: UInt64, chunkSize: Int) -> Int {
        length == 0 ? 1 : Int((length + UInt64(chunkSize) - 1) / UInt64(chunkSize))
    }

    private static func makeHeader(chunkSize: Int, length: UInt64) -> Data {
        var header = magic
        header.append(formatVersion)
        withUnsafeBytes(of: UInt32(chunkSize).littleEndian) { header.append(contentsOf: $0) }
        withUnsafeBytes(of: length.littleEndian) { header.append(contentsOf: $0) }
        return header
    }

    private static func chunkAAD(header: Data, itemID: UUID, index: Int, isFinal: Bool) -> Data {
        var aad = header
        withUnsafeBytes(of: itemID.uuid) { aad.append(contentsOf: $0) }
        withUnsafeBytes(of: UInt64(index).littleEndian) { aad.append(contentsOf: $0) }
        aad.append(isFinal ? 1 : 0)
        return aad
    }

    private static func readUInt32(_ data: Data, at offset: Int) -> UInt32 {
        let start = data.startIndex + offset
        return UInt32(littleEndian: data.subdata(in: start..<(start + 4)).withUnsafeBytes { $0.loadUnaligned(as: UInt32.self) })
    }

    private static func readUInt64(_ data: Data, at offset: Int) -> UInt64 {
        let start = data.startIndex + offset
        return UInt64(littleEndian: data.subdata(in: start..<(start + 8)).withUnsafeBytes { $0.loadUnaligned(as: UInt64.self) })
    }
}

extension UUID {
    /// The 16 raw bytes, used as HKDF salt and AAD.
    var rawBytes: Data {
        withUnsafeBytes(of: uuid) { Data($0) }
    }
}
