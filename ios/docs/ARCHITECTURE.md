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
  observer cannot tell a real pattern from a new one, and there is no list of vaults
  (except the opt-in Face ID list below).
* There is no PIN. **Face ID / Touch ID is opt-in per vault and off by default**, because
  biometrics can be compelled while a pattern exists only in the user's memory. See "Face ID".
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

## Duress pattern (Premium)

A separate pattern that opens a chosen decoy vault and silently and permanently deletes every other
vault on the device (`DuressRecord`, `VaultSession.triggerDuress`).

* Every pattern's root key also yields `duressKey = HKDF(root, "velcrypt.duress.v1")`.
* The Keychain always holds a fixed-size record (`duress.v1`, 60 bytes). With a duress pattern set,
  the record is AES-GCM(duressKey, decoy master key). Without one, it is random bytes. Only the duress
  pattern can tell the two apart, and the app never shows whether one is set.
* Every unlock tries to open the record with the drawn pattern's duress key. That is one AES-GCM
  operation after the PBKDF2 that runs anyway, so unlock timing doesn't change.
* On a match, the decoy is the vault whose index decrypts with the stored master key. This survives a
  pattern change of the decoy, which renames its directory but keeps its master key. Every other vault
  directory is deleted and the decoy opens. If the decoy no longer exists, every vault is deleted and an
  empty vault opens, as for any new pattern.
* Setting up requires a saved vault and a pattern that opens no vault. A vault's pattern can't be changed
  to the duress pattern. Setting up a new duress pattern replaces the old one. Turning it off requires
  drawing it, which overwrites the record with random bytes.
* The duress pattern keeps working after a subscription lapses. Only setting it up needs Premium.

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
* The duress wipe deletes vault directories. Flash storage gives no guarantee that
  deleted bytes are physically erased.
* Imported originals stay in the Photos library and its iCloud backups until the
  user deletes them.
* There is no recovery: a forgotten pattern means that vault is lost, unless the user
  has a backup and remembers its password.
* **The free version's one-vault limit is visible.** Without Premium, adding the first item to a second vault
  shows the paywall when another vault already holds items, which tells someone holding the unlocked phone that
  such a vault exists.
  Premium removes the limit and with it this signal, so decoy vaults are effectively a Premium
  feature.
* Not independently audited.

## Face ID (opt-in, per vault)

* Off for every vault until the user turns it on from inside that vault (Settings → Face ID) and names it.
* `KeychainBiometricKeyStore` keeps one Keychain item per opted-in vault (service `com.velcrypt.biometric`,
  account = vaultID). The item holds the vault's master key and its name. Its access control is
  `kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly` + `.biometryCurrentSet`, so it never leaves the device,
  needs a passcode to be set, and becomes unreadable if a face or finger is enrolled. Unreadable entries are
  deleted the next time the list is read, and the user turns Face ID on again after opening the vault with
  its pattern.
* The lock screen shows "Unlock with Face ID" only if at least one entry exists (read from a plain marker item per vault in `com.velcrypt.biometric.index`, because iOS may refuse to list Face ID–protected items without a prompt).
  `BiometricAuth.authenticate` evaluates `.deviceOwnerAuthenticationWithBiometrics` with no passcode fallback,
  and the evaluated `LAContext` reads every entry without further prompts. One entry opens directly. Several
  show a picker with their names. Vaults without Face ID never appear.
* A vault opened with Face ID has no pattern credentials in memory (`OpenVault.credentials == nil`). Everything
  that needs them already has the master key. The vault name lives in the encrypted index (`VaultIndex.name`),
  so a pattern change can re-save the entry under the new vault ID.
* Deleting a vault, erasing everything, a fresh install and the duress pattern all remove the entries of the
  vaults they delete. The Face ID list never triggers duress.
* Trade-off: anyone who gets past Face ID sees the names of the vaults in the list. The settings screen says so.

## Premium (StoreKit 2 and RevenueCat)

`PremiumStore` offers three products: `com.velcrypt.app.premium.weekly` and `com.velcrypt.app.premium.yearly`
(auto-renewable, in one subscription group, and the yearly plan has a free-trial introductory offer), plus
`com.velcrypt.app.premium.lifetime` (non-consumable).

From 1.2, purchases go through the RevenueCat SDK, configured with the public key `REVENUECAT_API_KEY` from
`project.yml`. Premium is on when RevenueCat's `velcrypt_private_photo_vault_pro` entitlement is active or StoreKit
has a verified, unrevoked entitlement for one of the products. StoreKit's local check keeps Premium working offline
and covers purchases from before RevenueCat; those are synced to RevenueCat once. `PaywallView` shows the
remotely designed paywall of the current offering (`Offerings.current`, never a hard-coded offering, so
experiments work). If the current offering has no paywall, or RevenueCat doesn't answer within 4 seconds, it shows
the built-in paywall. Without a valid key, or in
unit tests, the SDK is never configured and everything runs on StoreKit alone. Setup: `docs/REVENUECAT.md`.

Privacy: the SDK is the app's only network code. It uses an anonymous app user ID (no `logIn`), automatic device
identifier collection is off, and nothing from a vault is ever passed to it.

The free version allows one vault with 50 items and only the standard icon (`PremiumLimits`). Only vaults that hold
at least one item count (`VaultFileStore.hasItems` looks at file names, nothing is decrypted), so the empty vault
left behind by onboarding or a mistyped pattern never uses up the free vault. Restoring a backup
is never limited, so moving to a new iPhone always works. A lapsed subscription keeps every existing item, but
nothing more can be added above the limit. The welcome paywall appears once, the first time a vault opens that
already holds items (never straight after onboarding). It also appears when a limit is reached and from Settings.
