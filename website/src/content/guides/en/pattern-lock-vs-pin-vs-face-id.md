---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Pattern Lock vs PIN vs Face ID: Which Is Safer?"
description: "Pattern, PIN, password or Face ID? Compare guessable combinations, shoulder surfing, smudges and compelled unlocking to choose a lock for private data."
h1: "Pattern lock vs PIN vs password vs Face ID: which is safer?"
navTitle: "Pattern vs PIN vs Face ID"
answer: "No lock wins on every front. A long, random password resists guessing best; Face ID and Touch ID resist shoulder surfing best but can be used without your consent; a 6-digit PIN beats a 4-digit one by a factor of 100; and a pattern is only as strong as the shape a human actually picks — long, irregular patterns are fine, simple letters and corners are not."
keyFacts:
  - "A 4-digit PIN has 10,000 combinations; a 6-digit PIN has 1,000,000."
  - "Human-chosen patterns are far weaker than the theoretical maximum: people favour corners, letters and short shapes."
  - "Biometrics are convenient and hard to shoulder-surf, but a face or finger can be used while you are asleep, restrained or compelled."
  - "Smudges on the screen can leak patterns more easily than PINs."
  - "Velcrypt uses a pattern on a 5×5 grid (at least 6 dots); Face ID or Touch ID is optional, off by default and turned on per vault."
primaryKeyword: "pattern lock vs pin"
keywords: ["pin vs face id security", "is a pattern lock secure", "pattern vs password", "face id vs passcode", "most secure phone lock", "compelled biometrics"]
datePublished: 2026-10-21
dateModified: 2026-11-21
summary: "Search-space math, shoulder surfing, smudges and compelled biometrics: an honest comparison of the four common ways to lock private data."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Is a pattern lock safer than a PIN?"
    a: "It depends on the specific pattern and PIN. A long, irregular pattern on a large grid can beat a 6-digit PIN, but a short pattern shaped like a letter is easier to guess than a random 6-digit PIN. Length and unpredictability matter more than the type of lock."
  - q: "Is Face ID more secure than a passcode?"
    a: "Face ID is very hard to fool with a photo and impossible to shoulder-surf, so it protects well against casual snooping. Its weakness is consent: someone can hold the phone up to your face. A passcode only works if you enter it."
  - q: "How many combinations does a 6-digit PIN have?"
    a: "A 6-digit PIN has 1,000,000 possible combinations (000000 to 999999), compared with 10,000 for a 4-digit PIN. Common choices like 123456 or birthdays shrink the real number dramatically."
  - q: "Can someone guess my pattern from screen smudges?"
    a: "Sometimes. Under the right light, finger trails on a glass screen can reveal the path of a pattern. Wiping the screen, using a matte protector and choosing a pattern that crosses itself all make smudge attacks harder."
  - q: "Does Velcrypt use Face ID?"
    a: "Only if you turn it on. Face ID or Touch ID is off by default and you enable it per vault, in that vault's Settings. A face or fingerprint can be used without your agreement, so anyone who gets you to look at the phone can open every vault you added. Keep your most private vault on its pattern only."
---

Every lock is a trade-off between how hard it is to guess, how easy it is to watch, and how easily someone can make you open it. Most comparisons look only at the first. This guide looks at all three, with real numbers where numbers exist and honest caveats where they don’t.

## The four contenders

- **PIN** is a short sequence of digits, usually 4 or 6 on an iPhone.
- **Alphanumeric password** is a string of letters, numbers and symbols of any length.
- **Pattern** is a path drawn through a grid of dots. Android popularised a 3×3 grid; [Velcrypt’s pattern lock](id:pattern-lock) uses a 5×5 grid.
- **Biometrics** (Face ID, Touch ID) unlock with your face or fingerprint, backed by a passcode.

## Search space: how many guesses would it take?

The search space is the number of possible secrets an attacker would have to try in the worst case. It is the clearest number for comparing locks, but only if you remember that people don’t choose secrets at random.

### PINs

A 4-digit PIN has 10 × 10 × 10 × 10 = **10,000** possibilities. A 6-digit PIN has **1,000,000**. That 100× jump is the single easiest security upgrade most people can make.

The catch is distribution. Analyses of leaked PINs consistently show that a handful of codes (1234, 0000, 1111, years of birth, 123456) cover a large share of real-world choices. An attacker tries those first.

### Alphanumeric passwords

With roughly 70 possible characters per position, each character adds about 6 bits. A truly random 10-character password has more combinations than any PIN or practical pattern. The problem is memorability: people pick words, names and predictable substitutions, and long passwords are tedious to type on a phone many times a day.

### Patterns: theory versus people

This is where honesty matters. The theoretical number of patterns can sound enormous. On the classic Android 3×3 grid (4 to 9 dots, no dot reused), there are 389,112 valid patterns, more than a 5-digit PIN. On a 5×5 grid with 25 dots, the theoretical count is vastly larger.

Real patterns are much weaker than those numbers suggest. Research on Android patterns has repeatedly found that people:

- start in the top-left corner far more often than chance would predict,
- draw short patterns close to the minimum length,
- trace letters (L, Z, S, C, U, N) or simple boxes,
- move left-to-right and top-to-bottom, the way they read.

Because of this, the effective strength of a typical human-chosen 3×3 pattern is closer to that of a short PIN than to its theoretical maximum. A bigger grid only helps if you actually use it: a 6-dot “L” on a 5×5 grid is still easy to guess.

What makes a pattern strong is the same thing that makes any secret strong: length and unpredictability. On a 5×5 grid, an 8–12 dot pattern that changes direction several times, avoids corners as a starting point, doesn’t form a letter, and ideally crosses its own path is genuinely hard to guess. You can test a similar shape (never your real one) with the [pattern strength checker](id:pattern-strength-checker).

### Guess speed matters as much as guess count

The number of combinations is only half the story. The other half is how fast an attacker can try them. On an iPhone, the Secure Enclave enforces escalating delays for the device passcode. Inside an app, the defence is usually key derivation: Velcrypt runs every pattern through PBKDF2 with at least 600,000 iterations, which makes each guess deliberately slow. The [AES-256 explainer](id:aes-256-encryption-explained) covers why that step matters more than the cipher itself.

## Watching and smudges

**Shoulder surfing** means someone watching you unlock. It is the most common real-world attack on phone locks, because the people most motivated to get into your phone are often sitting next to you.

- **Patterns** are the easiest to watch. A shape is memorable at a glance, even from across a table.
- **PINs** are moderately easy to watch, especially 4-digit ones typed with one thumb.
- **Passwords** are harder to catch in one viewing because they are longer and the keyboard shifts between layouts.
- **Biometrics** can’t be shoulder-surfed at all.

**Smudge attacks** read the greasy trail your finger leaves on glass. Patterns are more exposed here than PINs, because a continuous line leaves a continuous trace. Patterns that cross themselves, double back or pass over dots in an ambiguous order are much harder to reconstruct from a trail.

Practical defences: angle the screen away, cover it with your other hand, wipe the screen occasionally, and unlock sensitive apps when you are alone.

## Compelled unlocking: the question most comparisons skip

Biometrics have a weakness no amount of engineering removes: they don’t require your participation. Someone can hold your phone to your face while you sleep, press your finger onto the sensor, or physically force you. In domestic situations, at parties or in a mugging, that is a realistic risk.

In some places, authorities can also legally require you to provide a fingerprint or face, while treating a memorised code differently. The legal picture varies widely between countries and has changed over time, so this guide does not give legal advice. The technical point is simple: a secret in your memory requires a decision from you; a body part does not.

If you rely on Face ID, know the escape hatch. On iPhone 8 and later, pressing and holding the side button and either volume button until the power-off/SOS screen appears (then cancelling) temporarily disables Face ID and Touch ID until the passcode is entered. See [border-crossing privacy](id:phone-privacy-border-crossing) for when that matters.

## Side-by-side comparison

| | 4-digit PIN | 6-digit PIN | Long password | Pattern (5×5, 8+ dots) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Possible combinations | 10,000 | 1,000,000 | Very large if random | Very large in theory; much lower for predictable shapes | Not applicable |
| Real-world guessability | High (common codes) | Moderate | Low if random | Low if irregular, high if a letter | Very low |
| Shoulder surfing | Easy | Moderate | Hard | Easy | Not possible |
| Smudge leakage | Some | Some | Low | High unless the path crosses itself | None |
| Can be used without your consent | No | No | No | No | Yes |
| Speed and comfort | Fast | Fast | Slow on a phone | Fast | Fastest |

## Choosing the right lock for each layer

You don’t have to pick one lock for everything. A sensible setup for most people:

1. **Device:** a 6-digit (or longer) passcode, with Face ID or Touch ID for convenience if your situation allows it.
2. **Private content:** a separate secret that is not your device passcode, so someone who learns or watches your passcode doesn’t automatically get everything.
3. **Know how to switch biometrics off quickly** when you are somewhere you may be pressured.

## Where Velcrypt fits

Every Velcrypt vault opens with a pattern on a 5×5 grid of dots, one continuous line through at least 6 dots with at least one change of direction. Longer patterns of 8–12 dots are recommended. The pattern always works, for every vault.

Face ID or Touch ID is optional and off by default. You turn it on per vault, from inside that vault (Settings › Face ID), and give the vault a name for the Face ID list. Once at least one vault has it, an “Unlock with Face ID” button appears on the lock screen; after Face ID succeeds you pick from the vaults you added, or the vault opens directly if there is only one. There is no passcode fallback, and the Face ID copy of the key stays in this iPhone’s Keychain only, not in iCloud or backups.

The compelled-unlocking problem above is why it is off by default. Anyone who can get you to look at your phone can see and open every vault in the Face ID list. A sensible split: use Face ID for convenience vaults if you want it, and keep your most private vault on its pattern only, because a pattern can’t be lifted from your body. The [duress pattern](id:duress-pattern) works through patterns only; the Face ID list does not trigger it.

The design also changes what “guessing” means. Every pattern is its own vault, and a pattern Velcrypt has never seen simply opens an empty vault, with no error message. Velcrypt never lists vaults, except the ones you deliberately add to the Face ID list. That means a wrong guess doesn’t announce itself as wrong, and with Premium you can keep a [decoy vault](id:what-is-a-decoy-vault) under a second pattern. The [hidden vaults](id:hidden-vaults) page explains the model, and the [security overview](id:security) lists what it can’t protect against, including someone watching you draw.
