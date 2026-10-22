# Velcrypt — Architecture

## Build strategy (no local Mac)

The Xcode project is **generated** from [`project.yml`](../project.yml) with
[XcodeGen](https://github.com/yonaskolb/XcodeGen). No `.xcodeproj` is committed.
All compilation, testing and TestFlight uploads run on GitHub-hosted macOS
runners (see `.github/workflows/`).

## Layered design

```
UI (SwiftUI views)                Onboarding · LockScreen/PatternGrid · Vault · MediaViewer · Albums · Settings · Subscription
  │ observes
State (@Observable, @MainActor)   VaultSession (the only holder of an open vault's keys)
  │ calls
Services (no UI imports)          VaultKeyring · VaultFileStore · (M3) ItemStore · ImportService
  │ uses
Primitives                        VaultCrypto (CryptoKit AES-GCM, HKDF) · KeyDerivation (PBKDF2) · SecretStore (Keychain)
```

The app uses MVVM on top of the Observation framework. Views never touch Keychain, CryptoKit or the
file system directly. Anything that blocks, such as PBKDF2, file I/O or encryption, runs in detached
tasks off the main actor.

## Unlock model: one pattern = one vault

* The user unlocks by drawing a path through a **5×5 dot grid**. A valid pattern
  has ≥ 6 distinct dots and ≥ 1 change of direction. Dragging across a dot always
  selects it, so straight segments include any dots they pass through.
* **Every valid pattern opens a vault.** If the pattern has never been used, the
  user gets an empty vault that exists only in memory. It is written to disk the
  first time something is stored in it. The UI is identical either way, so an
  observer cannot tell a real pattern from a new one, and there is no list of vaults.
* There is no PIN and no Face ID/Touch ID, **by design**. Biometrics can be
  compelled, while a pattern exists only in the user's memory.
* Because a "wrong" pattern does not exist, there is no attempt counter or lockout.
  Resistance to guessing comes from the size of the pattern space and the cost of
  PBKDF2 (see Limitations).

## Key hierarchy

```
Device salt (32 B random) + rounds        Keychain "device.kdf", WhenUnlockedThisDeviceOnly
            │
Pattern ──PBKDF2-HMAC-SHA512 (≥ 600k rounds, calibrated ~0.6 s)──► Pattern root key (256-bit)
            │
            ├─HKDF "velcrypt.vault.id.v1"   (128-bit) ─► vaultID  → directory name  Vaults/<hex>/
            └─HKDF "velcrypt.vault.wrap.v1" (256-bit) ─► Wrapping key
                                                            │ AES-GCM, AAD = "velcrypt.vault.key.v1" ‖ vaultID
                                     Vaults/<id>/key.vck = sealed Vault Master Key (VMK, 256-bit random)
                                                            │
                                     VMK ─HKDF "velcrypt.metadata.v1"──────────► metadata key (M3)
                                         ─HKDF(salt=item UUID) "velcrypt.item.v1" ► per-item key (M3)
```

* The VMK is random and independent of the pattern, so changing the pattern only
  re-wraps the VMK and renames the directory. Content is never re-encrypted.
* A pattern change is crash-safe: the new wrap is written as `key.vck.pending`,
  the directory is moved, and then the pending file replaces `key.vck`. Unlock
  tries both records.
* The device salt is per install. The same pattern on another device (or after a
  reinstall) yields a different vault, and the salt cannot be used for
  precomputation.
* While unlocked, only `VaultSession` holds the VMK. Locking drops every reference.
  Swift does not guarantee memory zeroing, and we do not claim secure erasure.

### Content format (Milestone 3)

`<itemUUID>.vcf`: `magic "VCF1" | version | chunkSize | [AES-GCM(nonce‖ciphertext‖tag) per 1 MiB chunk]`.
Each chunk's AAD is `uuid ‖ chunkIndex ‖ isFinal`, which prevents reordering, truncation and file
swapping. Nonces are fresh and random, and keys are per item.

## Storage

* `Application Support/Vaults/`: excluded from backups and created with
  `NSFileProtectionComplete`. Each file is written with `.completeFileProtection`.
* Decrypted temp files (video playback, export) will live in `tmp/Decrypted/` and
  are deleted on lock, on backgrounding and at launch (M3).

## Encrypted backup

Settings → Backup writes the open vault to one `.velcrypt` file (UTType `com.velcrypt.backup`)
that can be restored on any iPhone:

```
header    "VCB1" | version u8 | rounds u32 | salt (32)
entries   per item: VCF1 stream under HKDF(BK, "velcrypt.backup.item.v1", salt = uuid),
          then its thumbnail, AES-GCM under HKDF(BK, "velcrypt.backup.thumbnail.v1", salt = uuid)
manifest  AES-GCM(HKDF(BK, "velcrypt.backup.manifest.v1"), JSON {albums, items, offsets}), AAD = header
trailer   manifest length u64
```

* `BK = PBKDF2-HMAC-SHA512(NFC(password), salt, rounds)`, with rounds calibrated to about 1 s
  (at least 600,000). The pattern is not used, because the device salt never leaves the
  iPhone and a pattern is too short to protect a file that can be attacked offline.
* Items are re-encrypted chunk by chunk from the item key to the backup key, so plaintext never
  reaches disk. Chunk AADs are unchanged, so tampering, truncation and swapping are still detected.
* A backup covers only the open vault, so it never reveals that other vaults exist. Restoring adds
  the backup's albums and items to the open vault. It skips items that are already there and
  counts damaged items as failed without stopping.
* A forgotten backup password cannot be recovered.

## Duress pattern (planned, Premium)

A designated pattern that opens a chosen vault and silently deletes the key
records of all other vaults on the device. Planned design:
* The Keychain always holds a fixed-size duress record, filled with random bytes
  when no duress pattern is set, so its presence reveals nothing.
* The record holds an HKDF tag derived from the duress pattern's root key and is
  checked on every unlock.

## Fresh install detection

Keychain items survive app deletion. On the first launch after an install
(`UserDefaults` flag missing), all Velcrypt Keychain items and vault files are deleted.

## Limitations of the security model

* **Guessing.** A short pattern (6 dots, one turn) is in the same range as a 4-digit
  PIN. Without a lockout, someone holding the unlocked phone can keep trying, at
  about 0.6 s per attempt. Users are steered to 8+ dots. An offline attacker would
  first need the device salt and vault files, which iOS keeps on-device,
  `ThisDeviceOnly` and protected while the phone is locked.
* **Deniability is not perfect.** A forensic examination of the file system can
  count vault directories and see which ones contain data. What it cannot do is
  link a directory to a pattern or decrypt it.
* The duress wipe will remove key records. Flash storage gives no guarantee that
  deleted bytes are physically erased.
* Imported originals stay in the Photos library and its iCloud backups until the
  user deletes them.
* There is no recovery: a forgotten pattern means that vault is lost, unless the user
  has a backup and remembers its password.
* Not independently audited.
