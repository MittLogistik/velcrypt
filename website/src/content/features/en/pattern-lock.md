---
pageId: pattern-lock
title: "Pattern Lock: Unlock Your Vault on a 5×5 Grid"
description: "Velcrypt unlocks with a pattern drawn on a 5×5 grid of dots. Learn the rules, how to draw a strong pattern, and why there is no Face ID."
h1: "Pattern lock: a 5×5 grid that only your memory can open"
navTitle: "Pattern lock"
answer: "Velcrypt opens with a pattern you draw on a 5×5 grid of dots: one continuous line through at least 6 dots with at least one change of direction. Patterns of 8–12 dots are recommended, and there is deliberately no Face ID or Touch ID."
keyFacts:
  - "Unlock by drawing one continuous line on a 5×5 grid of 25 dots."
  - "Minimum rules: at least 6 dots and at least one change of direction."
  - "Recommended length: 8–12 dots."
  - "No Face ID or Touch ID by design, because biometrics can be compelled."
  - "Your pattern is also the input to the vault's encryption key."
primaryKeyword: "pattern lock app iphone"
keywords: ["pattern lock photo vault", "5x5 pattern lock", "photo vault without face id", "draw pattern to unlock iphone app", "strong unlock pattern"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Unlock with a pattern drawn on a 5×5 grid. At least 6 dots and one turn; 8–12 dots recommended. No Face ID, by design."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "How many dots does a Velcrypt pattern need?"
    a: "At least 6 dots, drawn as one continuous line with at least one change of direction. For better protection, use 8–12 dots and include several turns."
  - q: "Why doesn't Velcrypt use Face ID or Touch ID?"
    a: "A face or a fingerprint can be used without your consent, for example while you are asleep or held. A pattern exists only in your memory, so nobody can take it from you physically. Velcrypt leaves biometrics out on purpose."
  - q: "What happens if I forget my pattern?"
    a: "The vault cannot be opened again, by you or by Velcrypt. The pattern is part of how the encryption key is derived, and there is no recovery phrase or account to reset it. Choose a pattern you can reliably remember."
  - q: "Is a 5×5 pattern safer than a phone-style 3×3 pattern?"
    a: "It can be. A 5×5 grid has 25 dots instead of 9, so far more patterns are possible. How safe yours is still depends on its length, number of turns and how predictable its shape is."
  - q: "Can I test my pattern somewhere before using it?"
    a: "You can try similar patterns in the Velcrypt pattern strength checker, which runs locally in your browser. Never enter your real pattern on any website; test a look-alike instead."
---

Most apps ask for a number. Velcrypt asks you to draw. The pattern lock is the front door of every vault, and it is also the secret from which the vault's encryption key is derived, so it deserves a few minutes of thought.

## How the 5×5 pattern lock works

A pattern lock is an unlock method where you trace a path between dots instead of typing a code. In Velcrypt the grid has 25 dots arranged in five rows and five columns. You put your finger down, drag through the dots you choose, and lift your finger to finish.

Two rules apply to every pattern:

1. **At least 6 dots.** Shorter lines are rejected.
2. **At least one change of direction.** A single straight line is not allowed.

Those are the minimums. Velcrypt recommends patterns of **8–12 dots**, because each additional dot multiplies the number of possible patterns someone would have to try.

Each pattern also does something more than unlock: it chooses which vault opens. That idea is explained on the [hidden vaults](id:hidden-vaults) page.

## What makes a pattern strong

A strong pattern is long, turns often and does not look like anything. The grid is large, but people tend to reuse the same habits: starting in the top-left corner, tracing letters, or drawing tidy boxes. Those habits are exactly what an observer or a guesser would try first.

| Habit | Why it is weak | Better alternative |
| --- | --- | --- |
| Starting in a corner | Corners are the most common starting points | Start on an inner or edge dot |
| Letters and shapes (L, Z, S, U, a square) | Easy to guess and easy to recognise over your shoulder | Use an irregular path with no obvious shape |
| Long straight runs | Few decisions, little uncertainty | Change direction every two or three dots |
| Staying in one area | Uses a small part of the grid | Cross several rows and columns |
| Very short patterns | Fewer combinations to try | Aim for 8–12 dots |

Some practical tips:

- **Cross your own path.** Lines that pass over earlier segments are harder to read from a smudge or a quick glance.
- **Make it rhythmic for you, not for others.** A path you can draw by feel is easier to remember than a random one you have to think about.
- **Draw it a few times before you rely on it.** Repetition is what turns a new pattern into muscle memory.
- **Shield the screen.** No pattern helps if someone watches you draw it. Tilt the phone or cover the grid in public.

If you want a second opinion, the [pattern strength checker](id:pattern-strength-checker) gives a rough rating and bit estimate based on length, turns, crossings and grid coverage. It is a heuristic, not a guarantee, and you should test a pattern similar to yours rather than the real one.

## Why there is no Face ID or Touch ID

Velcrypt has no biometric unlock, and that is a deliberate decision. Biometrics are convenient precisely because they are always with you, which is also their weakness: a face can be held in front of a phone and a finger can be pressed onto a sensor without your agreement.

A pattern exists only in your head. Nobody can lift it from your hand or point your phone at your face to get it. For a vault meant to protect your most private files, that difference matters more than saving a second at unlock. The trade-offs are compared in more depth in [pattern lock vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Your pattern and the encryption key

The pattern is not just checked and forgotten. Velcrypt runs it through a slow key-derivation function to produce the key that unlocks the vault's master key, which in turn protects every file. The full chain is described on the [encryption](id:encryption) page.

This has an honest consequence. Because the pattern is part of the key, there is no "reset pattern" link and no account to fall back on. If you forget it, the vault stays locked for good. Read [what to do if you forget your vault pattern](id:forgot-vault-pattern) before you choose one, and pick something you will still remember in six months.

## What a pattern cannot protect against

A strong pattern raises the bar, but it is one layer. It cannot stop someone who films or watches you draw it, someone you hand the phone to while a vault is open, or malware on a jailbroken device. The [security page](id:security#what-velcrypt-does-not-protect-against) lists these limits in full. Pairing your pattern with [auto-lock](id:auto-lock) closes the most common gap: a vault left open when you put the phone down.
