---
pageId: encryption
title: "Velcrypt Encryption: AES-256-GCM, Keys from Your Pattern"
description: "How Velcrypt encrypts your vault: PBKDF2-HMAC-SHA512 from your pattern, a random 256-bit master key, HKDF per-file keys and AES-256-GCM."
h1: "How Velcrypt encrypts your vault"
navTitle: "Encryption"
answer: "Velcrypt encrypts every file with AES-256-GCM. Your pattern is stretched with PBKDF2-HMAC-SHA512 (at least 600,000 iterations, per-device salt) into a key that unlocks the vault's random 256-bit master key, from which HKDF derives a separate key for each file. iOS Data Protection adds a second layer."
keyFacts:
  - "Cipher: AES-256-GCM authenticated encryption via Apple CryptoKit."
  - "Pattern stretching: PBKDF2-HMAC-SHA512, at least 600,000 iterations."
  - "A random per-device salt is stored in the iOS Keychain."
  - "Each vault has its own random 256-bit master key; each file gets its own key via HKDF."
  - "iOS Data Protection (complete protection class) applies on top."
primaryKeyword: "photo vault encryption iphone"
keywords: ["aes-256-gcm photo vault", "encrypted photo vault iphone", "pbkdf2 vault app", "how is my vault encrypted", "authenticated encryption explained"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM per file, keys derived from your pattern with PBKDF2-HMAC-SHA512 and HKDF, plus iOS Data Protection."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "What encryption does Velcrypt use?"
    a: "AES-256-GCM, an authenticated encryption mode, using Apple's CryptoKit framework. Each file is encrypted with its own key derived from the vault's random 256-bit master key."
  - q: "Is my pattern stored on the phone?"
    a: "Your pattern is not used directly as a key. It is stretched with PBKDF2-HMAC-SHA512 using at least 600,000 iterations and a per-device salt, and the result is used to unlock the vault's master key."
  - q: "Can Velcrypt decrypt my files?"
    a: "No. Velcrypt has no servers and no copy of your keys. The keys can only be rebuilt on your phone from your pattern, which is also why a forgotten pattern cannot be reset."
  - q: "Why is iOS Data Protection used as well?"
    a: "It adds an independent layer. Files use the complete protection class, so iOS keeps them encrypted with keys tied to your device passcode while the phone is locked, in addition to Velcrypt's own encryption."
---

Encryption is the reason a vault is more than a hidden folder. In Velcrypt, every photo, video and document is encrypted on your iPhone before it is stored, using keys that can only be rebuilt from your pattern. This page walks through how those keys are made and used.

## The key chain, step by step

Velcrypt uses a layered key model. Each layer has one job.

1. **Your pattern.** You draw it on the [5×5 grid](id:pattern-lock). It is the only secret you have to remember.
2. **Key stretching with PBKDF2-HMAC-SHA512.** The pattern is fed through PBKDF2 with SHA-512 for **at least 600,000 iterations**, together with a random salt. Key stretching is a technique that makes every single guess deliberately slow, so trying patterns one by one becomes expensive.
3. **A per-device salt in the Keychain.** The salt is random, created on your device and kept in the iOS Keychain. It ensures that the same pattern produces a different key on a different phone, so precomputed guess tables are useless.
4. **The vault's master key.** Each vault has its own **random 256-bit master key**. The stretched pattern key does not encrypt your files directly; it unlocks this master key.
5. **Per-file keys with HKDF.** From the master key, HKDF (a standard key-derivation function) derives a separate key for every file. No two files share a key.
6. **AES-256-GCM.** Each file is encrypted with its own key using AES-256 in GCM mode, through Apple's CryptoKit.

| Layer | What it does |
| --- | --- |
| Pattern | The secret only you know |
| PBKDF2-HMAC-SHA512, 600,000+ iterations | Makes each guess slow |
| Per-device salt (Keychain) | Makes keys unique to the device |
| Random 256-bit master key | One per vault, keeps vaults separate |
| HKDF | A unique key for every file |
| AES-256-GCM | Encrypts and authenticates the file |
| iOS Data Protection | Second, OS-level layer |

Because each vault has its own master key, vaults are cryptographically separate. That is what makes [hidden vaults](id:hidden-vaults) more than a visual trick.

## What authenticated encryption means

Authenticated encryption is encryption that protects both secrecy and integrity. AES-256-GCM does two things at once: it scrambles the file so it cannot be read without the key, and it attaches an authentication tag that proves the file has not been altered.

When Velcrypt opens a file, it checks that tag. If even one byte was changed, whether by corruption or tampering, decryption fails instead of quietly returning damaged or manipulated data. Older modes that encrypt without authentication cannot detect this. For a plain-language overview of the cipher itself, see [AES-256 encryption, explained](id:aes-256-encryption-explained).

## iOS Data Protection as a second layer

On top of its own encryption, Velcrypt stores vault files with iOS Data Protection set to the **complete protection** class. Under this class, iOS keeps the files encrypted with keys tied to your device passcode whenever the phone is locked.

The two layers are independent. Even if one were somehow bypassed, the other would still stand between a locked phone and your files.

## Why there are no keys anywhere else

Velcrypt is [fully offline with no account](id:offline-no-account). There are no servers, no uploads and no copy of your keys outside your phone. That design removes a whole category of risk: there is no database to breach and no company employee who could decrypt your files.

It also has a cost. Because the keys exist only on the device and only through your pattern, nobody can recover a vault if the pattern is forgotten. If the phone is lost, only an encrypted backup file you created yourself in Settings → Backup can bring the vault back, and it needs the backup password you chose.

## What encryption does not cover

Strong encryption protects files at rest. It cannot help if someone watches you draw your pattern, if the vault is open when you hand over the phone, or if a jailbroken device runs malware. It also cannot reach copies outside Velcrypt, such as originals still in Photos. The [security overview](id:security) covers the threat model in full, including [what Velcrypt does not protect against](id:security#what-velcrypt-does-not-protect-against).
