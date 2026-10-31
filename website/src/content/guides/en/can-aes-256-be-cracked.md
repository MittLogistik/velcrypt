---
pageId: can-aes-256-be-cracked
title: "Can AES-256 Be Cracked? Brute Force, Quantum and GCM"
description: "How long brute-forcing a 256-bit key would take, what cryptanalysis and quantum computers change, what GCM adds, and where attacks really aim."
h1: "Can AES-256 be cracked? The maths, the attacks and the quantum question"
navTitle: "Can AES-256 be cracked?"
answer: "Not by trying keys: even a billion machines each testing a billion billion keys per second would need about 10⁴² years on average. The best known attacks shave only a couple of bits off, and a quantum computer running Grover’s algorithm would still face around 2¹²⁸ steps. Real attacks go after the password or pattern, the device or the implementation instead."
keyFacts:
  - "A 256-bit key has about 1.2 × 10⁷⁷ possible values; brute force is out of reach under any realistic assumption."
  - "The best known single-key attack on full AES-256 (biclique, 2011) costs about 2²⁵⁴·⁴ operations, not 2²⁵⁶."
  - "Grover’s algorithm would leave AES-256 with roughly 128-bit security; NIST, the BSI and the UK NCSC all treat AES as fit for the quantum era."
  - "Shor’s algorithm threatens RSA and elliptic-curve cryptography, not AES."
  - "For a pattern-protected vault, the weak point is the pattern’s entropy and the key derivation, not the cipher."
primaryKeyword: "can aes 256 be cracked"
keywords: ["how long to crack aes 256", "is aes 256 quantum safe", "aes-256-gcm", "rijndael 256", "aes 256 brute force time", "has aes been broken"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Brute-force arithmetic for a 256-bit key, known attacks, Grover vs Shor, what GCM adds, and why the pattern is the real target."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "How long would it take to crack AES-256 by brute force?"
    a: "Assuming a billion machines that each test 10¹⁸ keys per second, finding a 256-bit key would take about 1.8 × 10⁴² years on average, roughly 10³² times the age of the universe. The assumptions are wildly generous; real hardware is far slower."
  - q: "Is AES-256 quantum safe?"
    a: "It is considered quantum-resistant. Grover’s algorithm would reduce its effective strength to about 128 bits, which is still regarded as secure. NIST says current applications can keep using AES, and the German BSI recommends 256-bit keys for long-term protection against quantum attacks."
  - q: "Has AES ever been broken?"
    a: "Not in practice. Academic attacks exist, such as biclique attacks that reduce AES-256 from 2²⁵⁶ to about 2²⁵⁴·⁴ operations and related-key attacks that need an unrealistic setup. None of them lets anyone decrypt real AES-256 data."
  - q: "Is Rijndael 256 the same as AES-256?"
    a: "Not quite. Rijndael is the design that became AES, and it allows block sizes of 128, 192 or 256 bits. AES fixes the block at 128 bits; AES-256 means a 256-bit key. A Rijndael variant with a 256-bit block is not AES."
  - q: "What does AES-256-GCM add compared with plain AES-256?"
    a: "GCM turns AES into authenticated encryption. Besides keeping data secret, it attaches an authentication tag, so any change to the encrypted file makes decryption fail. It requires that a nonce is never reused with the same key."
  - q: "So can a vault that uses AES-256 be cracked?"
    a: "The cipher won’t be the way in. An attacker who copies the encrypted data guesses your pattern or password instead, and slow key derivation only limits how many guesses per second they get. A long, irregular secret is what keeps the vault closed."
---

“Can AES-256 be cracked?” is a fair question, and the honest answer has two halves. The cipher itself is, by every serious estimate, not going to be broken by trying keys, by the best known cryptanalysis or by quantum computers on any horizon we can see. But data protected by AES-256 can still be exposed, because attackers aim at whatever is weaker. This guide does the arithmetic and then follows the attacker to where they actually go. For the basics of how AES works, start with [AES-256 encryption explained](id:aes-256-encryption-explained).

## How long would brute force take?

Brute force means trying every possible key until one works. A 256-bit key has 2²⁵⁶ possible values, about 1.16 × 10⁷⁷. On average you find the right one halfway through, so about 5.8 × 10⁷⁶ attempts.

Now give the attacker absurdly generous resources:

- **Speed per machine:** 10¹⁸ keys per second (a billion billion). That is far beyond any real AES-cracking hardware.
- **Number of machines:** one billion, all running in parallel.
- **Total:** 10²⁷ keys per second.

The result: 5.8 × 10⁷⁶ ÷ 10²⁷ ≈ 5.8 × 10⁴⁹ seconds, which is about **1.8 × 10⁴² years**. The universe is about 1.38 × 10¹⁰ years old, so that is roughly 10³² times its age. Doubling the hardware a few dozen times doesn’t change the conclusion: every extra bit of key doubles the work, and 256 bits leaves no room for engineering to catch up.

That is why nobody in cryptography talks about brute-forcing AES-256. The question is only whether there is a shortcut.

## Known attacks: tiny theoretical gains

AES has been public since 2001 and is one of the most studied algorithms in existence. Cryptanalysts have found attacks that are, strictly speaking, faster than brute force, but by margins that matter only on paper.

- **Biclique attacks (2011).** Bogdanov, Khovratovich and Rechberger showed a key-recovery attack on full AES-256 costing about 2²⁵⁴·⁴ operations instead of 2²⁵⁶. That is roughly three times less work than brute force, still around 10⁷⁶ operations. The authors themselves stated that the attack does not threaten practical use of AES.
- **Related-key attacks (2009).** Biryukov and Khovratovich found an attack on AES-256 with about 2⁹⁹·⁵ time, but only in a model where the attacker gets data encrypted under several secret keys with a specific mathematical relationship. Properly designed systems generate independent random keys, so this model doesn’t apply to them.

Neither result recovers a key from real AES-256 data. Both are useful mainly as evidence that two decades of scrutiny have found no meaningful crack.

### What “Rijndael 256” means

Rijndael is the design by Joan Daemen and Vincent Rijmen that NIST selected as AES. Rijndael supports block sizes and key sizes of 128, 192 and 256 bits. AES standardised only the 128-bit block. So AES-256 means Rijndael with a 128-bit block and a 256-bit key. A “Rijndael-256” with a 256-bit block is a different, non-standard cipher, and it is not what apps or browsers mean by AES-256.

## Is AES-256 quantum safe?

Quantum computers affect two families of cryptography very differently.

- **Shor’s algorithm** solves factoring and discrete logarithms efficiently. A large enough quantum computer would break RSA and elliptic-curve cryptography, the public-key methods used to exchange keys and sign data. That is why post-quantum key exchange is being rolled out.
- **Grover’s algorithm** speeds up brute-force search quadratically: searching 2²⁵⁶ keys takes about 2¹²⁸ quantum steps. In effect, AES-256 offers around 128-bit security against a quantum attacker.

How big is 2¹²⁸ steps? Suppose a quantum computer could run a billion Grover iterations per second, each one evaluating a full AES circuit. That is very optimistic. It would still need about 10²² years. Grover also parallelises badly: splitting the search across many machines gives much less than a proportional speed-up.

The official positions line up:

- **NIST** (US) says in its post-quantum FAQ that Grover’s algorithm will likely provide little or no advantage in attacking AES, and that current applications can continue to use AES with 128, 192 or 256-bit keys.
- **BSI** (Germany) states that symmetric ciphers such as AES are considered fundamentally resistant to quantum attacks when key lengths are adapted, and recommends 256-bit keys for new systems where long-term protection matters.
- **NCSC** (UK) writes that the security of symmetric cryptography is not significantly impacted by quantum computers, and that AES can continue to be used with suitable key sizes.

So yes: AES-256 is the variant recommended for data that has to stay confidential for a long time, quantum computers included.

## What GCM adds in AES-256-GCM

AES on its own encrypts one 16-byte block. A mode of operation decides how whole files are encrypted. **GCM (Galois/Counter Mode)**, standardised by NIST in SP 800-38D, is an authenticated mode: alongside the ciphertext it produces an authentication tag. On decryption the tag is checked, and if a single bit of the file was changed, decryption fails instead of returning altered data.

GCM has one hard rule: a nonce must never repeat under the same key. Reusing one can leak information about the plaintext and let an attacker forge tags. That isn’t a weakness in AES; it is the kind of implementation mistake that real attacks exploit. Giving each file its own key, as Velcrypt does, makes the rule easy to honour.

## Where attacks really go

If the cipher is out of reach, attackers go around it. In practice they target three things.

1. **The secret you remember.** The 256-bit key is usually derived from a password, PIN or pattern. Guessing the secret is vastly cheaper than guessing the key.
2. **The device.** Malware, a jailbroken phone, a vault left open or someone watching you unlock all skip the encryption entirely.
3. **The implementation.** Nonce reuse, keys stored next to the data, weak random numbers or side channels such as timing leaks. This is why well-tested system libraries like Apple CryptoKit are preferable to home-made crypto code.

## The honest bottom line for a pattern-based vault

In a vault like Velcrypt, the key that encrypts your files is a random 256-bit master key, which is as strong as AES gets. But that master key is sealed with a key derived from the pattern you draw. Someone who has copied the encrypted data, and the per-device salt, can test guesses offline. The cipher’s strength is then irrelevant; what counts is how many pattern guesses they can try and how many they need.

Velcrypt slows every guess with PBKDF2-HMAC-SHA512 at no fewer than 600,000 iterations. Extrapolating from public password-cracking benchmarks, one high-end gaming GPU manages on the order of 5,000 guesses per second at that setting. That is a rough figure, not a measurement of Velcrypt itself. Here is what it means:

| Patterns the attacker must try | Approx. bits | One GPU | 100 GPUs |
|---|---|---|---|
| 10,000 (common shapes) | ~13 | seconds | instantly |
| 1 million | ~20 | minutes | seconds |
| 1 billion | ~30 | about 2 days | about 30 minutes |
| 1 trillion | ~40 | about 6 years | about 3 weeks |

For scale: even treating a pattern as any ordered choice of 10 distinct dots out of 25 gives only about 1.2 × 10¹³ possibilities (about 43 bits), and that is a generous upper bound, because a continuous line limits the moves and people favour corners, letters and short shapes. A pattern lives in the tens of bits; the key lives at 256.

None of this happens easily on an iPhone: the attacker first has to get the encrypted files and the salt off the device, past iOS Data Protection. But it shows where your effort belongs:

- **Use 8–12 dots**, with several changes of direction and ideally a crossing.
- **Avoid corner starts, letters and simple shapes** such as L, Z or a square.
- **Draw it out of sight**, because no amount of entropy helps against someone who watched.

Test a similar shape, never your real one, with the [pattern strength checker](id:pattern-strength-checker), and read [pattern lock vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) for how human-chosen secrets compare. The [encryption page](id:encryption) details Velcrypt’s full key chain, and the [security overview](id:security#what-velcrypt-does-not-protect-against) lists what encryption can’t protect against.
