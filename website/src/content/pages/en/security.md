---
pageId: security
title: "Velcrypt Security: How the Encryption Works"
description: "How Velcrypt protects your vaults: PBKDF2 key derivation, per-vault master keys, AES-256-GCM, iOS Data Protection — and what it can’t protect against."
h1: "How Velcrypt works: the security model"
navTitle: "Security model"
answer: "Velcrypt turns the pattern you draw into a key with PBKDF2-HMAC-SHA512 (at least 600,000 iterations), uses it to protect a random 256-bit master key for that vault, and encrypts every file with AES-256-GCM on your iPhone. Nothing is uploaded, and there is no account or recovery copy of your keys."
keyFacts:
  - "Pattern → PBKDF2-HMAC-SHA512, at least 600,000 iterations, per-device random salt kept in the iOS Keychain."
  - "Each vault has its own random 256-bit master key; per-file keys are derived with HKDF."
  - "Files are encrypted with AES-256-GCM via Apple CryptoKit, plus iOS Data Protection (complete protection class)."
  - "An unknown pattern opens an empty vault — no list of vaults, no “wrong pattern” message."
  - "No network, no account, no analytics on vault content; vault data is excluded from iCloud and computer backups."
  - "Optional encrypted backup: a .velcrypt file protected by a backup password you choose."
  - "Velcrypt has not had an independent security audit yet."
primaryKeyword: "velcrypt security"
keywords: ["photo vault encryption iphone", "how velcrypt encryption works", "aes-256-gcm photo vault", "pbkdf2 pattern lock", "photo vault threat model", "plausible deniability vault app"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Can Velcrypt see or recover my photos?"
    a: "No. Velcrypt has no servers, no account system and no copy of your keys. Your pattern is never stored, so nobody at Velcrypt can open, reset or recover a vault."
  - q: "What happens if someone draws the wrong pattern in Velcrypt?"
    a: "A pattern Velcrypt has never seen simply opens a new, empty vault. There is no error message and nothing that tells the person whether other vaults exist."
  - q: "Is Velcrypt’s encryption the same as the iPhone’s built-in encryption?"
    a: "No, it adds to it. iOS already encrypts the device, and Velcrypt applies the strictest iOS Data Protection class to its files, but it also encrypts each file with its own AES-256-GCM key derived from your vault pattern, so an unlocked phone alone does not open a vault."
  - q: "Has Velcrypt been independently audited?"
    a: "Not yet. Velcrypt is built on Apple’s CryptoKit and standard, well-studied algorithms, and an independent security review is something we would welcome, but none has taken place so far."
  - q: "Does Velcrypt hide the fact that I use an encrypted vault?"
    a: "Not completely. The app is visible on your Home Screen, and someone with forensic tools may be able to tell that Velcrypt stores encrypted data and roughly how much. What Velcrypt hides is how many vaults you have and what is inside them."
---

This page explains, in plain language, what happens to your photos, videos and documents when you put them in Velcrypt — and where the protection ends. It is written for people who want to understand the design before trusting it with something personal.

## The short version

Velcrypt is an iPhone app that keeps private files in encrypted vaults on your device. You open a vault by drawing a pattern on a 5×5 grid of dots. That pattern is never saved anywhere. Instead, it is fed through a slow key-derivation function to produce a key, and that key is what protects the vault’s contents.

Everything happens on the iPhone itself. Velcrypt has no account, no servers and no upload step, so there is no copy of your vault, or of your keys, anywhere else. That is the source of its strength and also its main limitation: if the pattern is forgotten, the vault cannot be recovered, and if the phone is lost, only an encrypted backup file you made yourself can bring the vault back.

## From pattern to key

### The pattern

A pattern is one continuous line through at least 6 of the 25 dots, with at least one change of direction. Longer patterns of 8–12 dots are recommended, because every extra dot multiplies the number of possible patterns an attacker would have to try. You can read more about the trade-offs in [pattern lock vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id), and see how the lock itself works on the [pattern lock feature page](id:pattern-lock).

### PBKDF2 with a per-device salt

When you finish drawing, Velcrypt converts the sequence of dots into a key using **PBKDF2-HMAC-SHA512** with at least **600,000 iterations**. PBKDF2 is a key-derivation function: a deliberately slow, repeatable recipe that turns a secret (your pattern) into a cryptographic key. The slowness is the point. Deriving one key takes a fraction of a second for you, but anyone trying millions of patterns has to pay that cost millions of times.

The derivation also mixes in a **salt** — a random value generated once on your device and stored in the iOS Keychain. Because the salt is unique to your iPhone, two people who happen to draw the same pattern end up with completely different keys, and precomputed tables of “common patterns → keys” are useless.

### A master key per vault

Every vault has its own **master key**: 256 random bits generated by the system’s secure random number generator when the vault is created. The master key is the key that actually protects the vault’s files. It is stored only in protected (wrapped) form, sealed with the key derived from your pattern. Without the right pattern, the master key cannot be unsealed.

This separation matters. The master key is truly random, so its strength doesn’t depend on how memorable your pattern is, and it keeps each vault cryptographically independent of every other vault on the same phone.

### A key per file

From the master key, Velcrypt derives a separate key for each file using **HKDF**, a standard function for deriving multiple independent keys from one strong secret. If one file’s key were ever exposed, it would not reveal the master key or the keys of other files.

## How files are encrypted

### AES-256-GCM through Apple CryptoKit

Each photo, video and document is encrypted with **AES-256-GCM**, using Apple’s CryptoKit framework rather than custom cryptographic code. AES-256-GCM is authenticated encryption: it keeps the content confidential *and* detects tampering. If even one bit of an encrypted file is altered, decryption fails instead of producing corrupted or manipulated data. For a deeper explanation, see [AES-256 encryption explained](id:aes-256-encryption-explained) and the [encryption feature page](id:encryption).

### iOS Data Protection as a second layer

On top of Velcrypt’s own encryption, vault files are written with iOS Data Protection set to the **complete protection** class. With this class, iOS keeps the files encrypted with a key that is only available while the iPhone is unlocked. When the phone is locked, the operating system itself cannot read them. This layer is provided by Apple and is independent of Velcrypt’s keys, so an attacker would need to get past both.

## Why an unknown pattern opens an empty vault

Most apps check your password against something stored — a hash, a verifier, a “correct answer” — and then say *wrong password*. Velcrypt deliberately does not do this.

There is no list of vaults and no stored value that confirms whether a pattern is “correct”. When you draw a pattern, Velcrypt derives a key and tries to open the vault that belongs to it. If no vault matches, the app simply opens a new, empty vault for that pattern. To the person holding the phone, a never-used pattern and a real-but-empty vault look the same.

This gives you **plausible deniability**: the ability to credibly say there is nothing more to see, because nothing in the app proves otherwise. You can keep a decoy vault with ordinary photos and a separate vault for what is genuinely private. The [hidden vaults](id:hidden-vaults) page and our guides to [decoy vaults](id:what-is-a-decoy-vault) and [plausible deniability](id:plausible-deniability-explained) go into more detail.

A practical side effect: if you misremember your pattern by one dot, you will land in an empty vault rather than see an error. That is by design, not a bug.

## Locking and the app switcher

Velcrypt locks automatically when it goes to the background, after a delay you can configure. When it locks, the vault keys are dropped from memory and the pattern has to be drawn again. Vault content is also hidden in the iOS app switcher, so a glance at your recent apps doesn’t show a thumbnail of a private photo. See [auto-lock](id:auto-lock) for the settings.

There is no Face ID or Touch ID unlock, by design. A face or a finger can be used without your consent — while you sleep, or under pressure. A pattern exists only in your memory.

## No network, no account, no automatic backups

Velcrypt works entirely offline. There is no sign-up, no email address, no server and no upload of vault content, and no analytics are collected on what you store. The [offline, no-account](id:offline-no-account) page lists what that means in practice.

Vault data is also **excluded from iCloud and computer (Finder) backups**. That keeps your encrypted files off Apple’s servers and off any computer you sync with, but it has a real consequence: if your iPhone is lost, broken or reset, the vaults go with it — unless you made a backup yourself.

### Encrypted backup

In Settings → Backup you can create an encrypted `.velcrypt` file for the vault that is open, protected by a **backup password** you choose. You decide where the file goes — Files, iCloud Drive or a computer — and you can restore it on any iPhone. The backup is a separate, manual file: Velcrypt never uploads it and never receives it. Choose a strong backup password, because anyone who has both the file and the password can restore the vault, and a forgotten backup password cannot be recovered.

## Threat model at a glance

| Threat | Protected? | Notes |
|---|---|---|
| Someone scrolls your Photos library | Yes | Items you import and then delete from Photos (including Recently Deleted) are only in Velcrypt. |
| Someone picks up your unlocked phone and opens Velcrypt | Yes | They need your pattern; a wrong one shows an empty vault. |
| Someone tries to prove you have more vaults | Largely | No vault list, no “wrong pattern” message; vault count isn’t shown in the app. |
| Theft of a locked iPhone | Yes | iOS Data Protection plus Velcrypt’s own AES-256-GCM encryption. |
| Brute-forcing the pattern from extracted files | Slowed | PBKDF2 with 600,000+ iterations and a per-device salt; a long pattern matters. |
| Cloud account breach | Yes | Vault data isn’t uploaded and is excluded from iCloud backups. A backup file you store in the cloud stays encrypted with your backup password. |
| Tampering with encrypted files | Detected | AES-256-GCM authentication rejects modified data. |
| Someone watching you draw the pattern | No | See below. |
| Malware or a jailbroken device | No | See below. |
| Forgotten pattern or backup password | No | No recovery is possible. |
| Lost or broken phone | Only with a backup | Restore from an encrypted backup file you made earlier. |

## What Velcrypt does not protect against

Every security tool has limits, and you should know Velcrypt’s before you rely on it.

- **Shoulder-surfing.** If someone sees you draw your pattern, in person or on camera, they can open that vault. Draw it out of sight, and consider a pattern that doesn’t look like a simple letter or shape.
- **Being forced to unlock.** Velcrypt cannot stop someone from coercing you into drawing a pattern. A decoy vault can help; a duress pattern, planned for a future update, would open a chosen vault and silently remove access to the others.
- **A phone handed over with the vault open.** While a vault is unlocked, anyone holding the phone can see what you see. Lock it before passing your phone to anyone.
- **Compromised or jailbroken devices and malware.** Software that can read the screen, log touches or inspect app memory on a compromised device can defeat any app-level encryption.
- **Screenshots or photos of the screen.** Velcrypt can’t stop another camera from photographing your display.
- **Copies elsewhere.** Importing copies a photo; the original stays in Photos until you delete it, and then sits in Recently Deleted for about 30 days. Copies may also exist in iCloud Photos, chat apps, email or on someone else’s phone. Follow [deleting originals after import](id:delete-original-photos-after-import).
- **A forgotten pattern, or a lost phone without a backup.** Both mean the data is gone. There is no recovery phrase and no reset, and a forgotten backup password can’t be recovered either. See [forgot your vault pattern](id:forgot-vault-pattern).
- **Detection that Velcrypt is in use.** The app icon is visible, and forensic tools may be able to see that Velcrypt holds encrypted data and roughly how much. Velcrypt doesn’t claim to hide that — only the number of vaults and their contents.
- **Weak or guessable patterns.** A short pattern, or one shaped like an L, Z or square, is much easier to guess. Test a similar shape with the [pattern strength checker](id:pattern-strength-checker) — never your real one.

## Independent review

Velcrypt relies on standard, widely studied building blocks and on Apple’s own cryptography libraries rather than home-grown algorithms. Even so, good design is not the same as verified design. Velcrypt has **not** been independently audited. An external security review is something we would welcome, and if one happens we will publish the outcome here.

## Glossary

- **AES-256-GCM** is a symmetric encryption mode that uses a 256-bit key and authenticates the data, so any tampering is detected on decryption.
- **PBKDF2** (Password-Based Key Derivation Function 2) is a standard that turns a secret like a password or pattern into a key by repeating a hash function many times, making guessing slow.
- **Salt** is a random value combined with your secret before key derivation, so the same pattern produces different keys on different devices.
- **HKDF** (HMAC-based Key Derivation Function) is a standard way to derive several independent keys from one strong key.
- **Master key** is the random 256-bit key that belongs to one vault and protects all of that vault’s file keys.
- **Plausible deniability** is the property that nothing in the app can prove additional vaults exist, so you can credibly show one vault without revealing others.
