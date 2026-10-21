---
pageId: aes-256-encryption-explained
title: "AES-256 Encryption Explained (GCM, PBKDF2, Quantum)"
description: "What AES-256 is, why GCM mode matters, why key derivation matters more than the cipher for pattern-protected data, and what quantum computers change."
h1: "AES-256 encryption explained, without the hype"
navTitle: "AES-256 encryption explained"
answer: "AES-256 is a symmetric cipher that encrypts data with a 256-bit key; nobody can feasibly break it by trying keys. For data protected by a pattern or password, the real strength depends on key derivation: how slowly and carefully that short secret is turned into the key. GCM mode adds tamper detection on top of secrecy."
keyFacts:
  - "AES is a block cipher standardised by NIST in 2001; AES-256 uses a 256-bit key and 14 rounds."
  - "GCM is an authenticated mode: it encrypts and also detects any change to the ciphertext."
  - "A weak pattern or password undermines AES-256, because attackers guess the secret, not the key."
  - "Slow key derivation such as PBKDF2 with many iterations makes each guess expensive."
  - "Grover’s algorithm would reduce AES-256 to roughly 128-bit security against a quantum attacker, still considered strong."
primaryKeyword: "aes-256 encryption explained"
keywords: ["what is aes 256", "aes-256-gcm", "pbkdf2 explained", "is aes 256 quantum safe", "aes 256 vs aes 128", "authenticated encryption"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, key sizes, GCM authenticated encryption, why PBKDF2 matters more than the cipher, and the quantum question, in plain English."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "Can AES-256 be cracked?"
    a: "There is no known practical attack that recovers an AES-256 key faster than brute force, and brute-forcing a 256-bit key is far beyond any conceivable computer. Real-world breaches come from weak passwords, stolen keys or bugs around the cipher, not from AES itself."
  - q: "What is the difference between AES-128 and AES-256?"
    a: "Both use the same algorithm with different key lengths and round counts: 128-bit keys with 10 rounds versus 256-bit keys with 14 rounds. AES-128 is already considered secure; AES-256 adds a large margin, including against future quantum attacks."
  - q: "What does GCM mean in AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) is a mode of operation that both encrypts data and produces an authentication tag. If even one bit of the encrypted file is altered, decryption fails instead of returning corrupted or manipulated data."
  - q: "Is AES-256 quantum safe?"
    a: "It is generally considered quantum-resistant. Grover’s algorithm would, in theory, halve the effective key strength to around 128 bits, which is still regarded as secure. Quantum computers are a bigger threat to public-key algorithms like RSA than to AES."
  - q: "Why does an app that uses AES-256 still need a strong password or pattern?"
    a: "Because attackers don’t guess the 256-bit key; they guess the short secret it is derived from. If your secret is one of a few thousand common choices, even slow key derivation only buys limited time."
---

“AES-256 encryption” appears on almost every privacy app’s feature list. It is a real and meaningful claim, but it is also the least likely part of a system to fail. This guide explains what AES-256 does, what the extra letters like GCM mean, and why the step that turns your pattern or password into a key deserves more of your attention.

## What AES is

AES (Advanced Encryption Standard) is a symmetric block cipher: the same secret key encrypts and decrypts, and data is processed in blocks of 128 bits. It was selected by the US National Institute of Standards and Technology (NIST) in 2001 after an open, multi-year public competition, and the winning design, Rijndael, came from two Belgian cryptographers.

Today AES is everywhere: in HTTPS connections, Wi-Fi, disk encryption and the hardware of every modern iPhone. That ubiquity is a feature. It has been studied by cryptographers for over two decades, and many processors accelerate it in hardware.

### Key sizes

AES comes in three key lengths:

| Variant | Key length | Rounds | Possible keys |
|---|---|---|---|
| AES-128 | 128 bits | 10 | about 3.4 × 10³⁸ |
| AES-192 | 192 bits | 12 | about 6.3 × 10⁵⁷ |
| AES-256 | 256 bits | 14 | about 1.2 × 10⁷⁷ |

To put the AES-256 figure in perspective: it is not far off common estimates of the number of atoms in the observable universe. Trying every key is not a matter of faster computers; it is physically out of reach.

## Modes: why “GCM” matters

A block cipher on its own only scrambles a single 16-byte block. A **mode of operation** defines how to encrypt whole files safely. Older modes provided secrecy only, which meant an attacker could sometimes flip bits in the ciphertext and cause predictable changes in the decrypted data.

**GCM (Galois/Counter Mode) is an authenticated encryption mode.** It encrypts the data and also computes an authentication tag over it. When you decrypt, the tag is checked first. If the file has been tampered with or corrupted, decryption fails cleanly rather than handing back altered content.

GCM has one strict rule: a nonce (a number used once) must never repeat under the same key. Well-designed systems avoid that risk structurally, for example by giving each file its own key.

## The part that actually decides your security: key derivation

Here is the uncomfortable truth about “AES-256” on a lock-protected app. Nobody attacks the 256-bit key directly. They attack the thing you remember.

A pattern, PIN or password is short. A **key derivation function (KDF)** is the process that turns that short secret into a full-length key. If the KDF is fast, an attacker who has copied the encrypted data can test billions of guesses. If it is deliberately slow, each guess costs real time and computing power.

### How PBKDF2 slows attackers down

**PBKDF2** (Password-Based Key Derivation Function 2) is a widely used, standardised KDF. It runs your secret through a keyed hash function (HMAC) many thousands of times, and mixes in a **salt**, a random value that makes your derived key unique even if someone else chose the same secret.

- **Iterations** multiply the cost of every guess. At hundreds of thousands of iterations, a guess that would take a microsecond takes a noticeable fraction of a second.
- **The salt** defeats precomputed tables. An attacker can’t build one giant list of “pattern → key” and reuse it across devices.

Even so, no KDF can rescue a secret that is among the first few thousand an attacker would try. That is why guidance on choosing a strong secret, in the [pattern vs PIN vs Face ID guide](id:pattern-lock-vs-pin-vs-face-id), matters as much as the cipher. Test a similar shape (never your real one) with the [pattern strength checker](id:pattern-strength-checker).

## The quantum question

Quantum computers threaten some cryptography badly and other cryptography only mildly.

- **Public-key algorithms** like RSA and elliptic-curve cryptography could be broken by Shor’s algorithm on a sufficiently large quantum computer. That is why post-quantum key exchange is being rolled out across the industry.
- **Symmetric ciphers** like AES face Grover’s algorithm, which offers a quadratic speed-up for brute-force search. In practice, that roughly halves the effective key length: AES-256 would offer about 128-bit security against a quantum attacker.

128-bit security is still considered strong. That is one reason AES-256 is recommended for data that needs to stay confidential for a long time.

## Common misconceptions

- **Superlatives on a feature list mean something.** They don’t. AES is a public standard used by banks, browsers and messaging apps alike; dramatic adjectives in front of it are marketing.
- **AES-256 makes an app secure.** It makes the encrypted bytes secure. Key handling, the KDF, the unlock design, backups and copies left elsewhere decide whether the whole system is.
- **Longer keys fix weak passwords.** They don’t. A 256-bit key derived from “1234” is only as strong as “1234”.

## How Velcrypt uses AES-256

Velcrypt’s design follows the principle above: strong cipher, careful key handling, slow derivation.

- **Cipher:** AES-256-GCM through Apple CryptoKit, so every file is encrypted and authenticated.
- **Key derivation:** your pattern is processed with PBKDF2-HMAC-SHA512 using at least 600,000 iterations and a per-device random salt stored in the iOS Keychain.
- **Key hierarchy:** each vault has its own random 256-bit master key, and per-file keys are derived from it with HKDF. Separate per-file keys also keep GCM’s nonce rule easy to honour.
- **Extra layer:** iOS Data Protection (complete protection class) is applied to the files on top of Velcrypt’s own encryption.
- **On-device only:** no account and no servers, so there is no copy of your keys anywhere else.

The [encryption feature page](id:encryption) summarises this, and the [security overview](id:security) is explicit about what encryption can’t protect against, such as someone watching you draw your pattern or a phone handed over with the vault open.
