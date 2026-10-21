---
pageId: pattern-strength-checker
title: "Pattern Strength Checker: Test a 5×5 Unlock Pattern"
description: "Draw a test pattern on a 5×5 grid and get a rough strength rating and bits estimate. Runs locally. Never enter your real pattern on any website."
h1: "Pattern strength checker"
navTitle: "Pattern strength checker"
answer: "Draw a pattern on the 5×5 grid to see whether it meets Velcrypt’s minimum rules and get a rough rating from Too short to Very strong, plus an estimate in bits. It’s a heuristic, not a guarantee. Never enter your real pattern on any website; test a similar one instead."
keyFacts:
  - "Checks Velcrypt’s minimum rules: at least 6 dots and at least one change of direction."
  - "Rates patterns as Too short, Weak, Fair, Strong or Very strong, with a rough bits estimate."
  - "Rewards more dots, direction changes, self-crossings and wider grid coverage."
  - "Penalises corner starts, long straight runs and simple letter shapes like L, Z, S and U."
  - "Runs locally; nothing is stored or sent. Test a look-alike, never your real pattern."
primaryKeyword: "pattern strength checker"
keywords: ["unlock pattern strength", "how strong is my pattern", "pattern lock security", "5x5 pattern lock", "secure pattern ideas", "pattern password strength"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Draw a test pattern on a 5×5 grid and see a rough strength rating. Runs locally. Never use your real pattern."
toolName: "Pattern Strength Checker"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Check the strength of a test pattern"
  steps:
    - name: "Draw a look-alike pattern"
      text: "Tap or drag across the 5×5 grid to draw a pattern similar in style to the one you have in mind, not your real one."
    - name: "Check the minimum rules"
      text: "Confirm the pattern uses at least 6 dots and changes direction at least once."
    - name: "Read the rating"
      text: "Look at the rating from Too short to Very strong and the rough bits estimate."
    - name: "Adjust and try again"
      text: "Add dots, turns or a crossing, avoid corner starts and simple letter shapes, and see how the rating changes."
faq:
  - q: "Is it safe to enter my real pattern here?"
    a: "Don’t. The checker runs locally and stores nothing, but good practice is never to enter a real secret on any website. Draw a pattern with a similar style instead and apply what you learn."
  - q: "How is the strength calculated?"
    a: "It’s a heuristic. The checker counts dots and direction changes, notices when the line crosses itself, measures how many rows and columns it covers, and lowers the score for corner starts, long straight runs and shapes that look like simple letters."
  - q: "What do the bits mean?"
    a: "Bits are a rough measure of how many guesses an attacker might need; each extra bit roughly doubles it. The estimate here is approximate and assumes a person who knows common habits, not a purely random guess."
  - q: "How long should a Velcrypt pattern be?"
    a: "The minimum is 6 dots with at least one change of direction. Velcrypt recommends 8 to 12 dots for a stronger pattern you can still remember reliably."
  - q: "Can a strong pattern protect against someone watching me?"
    a: "No. If someone sees you draw it, strength doesn’t matter. Shield the screen, and draw it where you can’t be observed or filmed."
  - q: "What if I forget a complicated pattern?"
    a: "In Velcrypt’s first version, a forgotten pattern can’t be recovered by you or by Velcrypt. Choose something complex but memorable, and practise it before relying on it."
---

## How it works

Tap or drag across the 5×5 grid to draw a test pattern. As you draw, the checker first confirms Velcrypt’s minimum rules: one continuous line through at least six dots, with at least one change of direction. If the pattern doesn’t meet them, it’s rated **Too short**.

Once it passes, the checker gives a rough rating of **Weak**, **Fair**, **Strong** or **Very strong**, plus an approximate strength in bits. Everything runs in your browser. Nothing is saved, and nothing is sent anywhere.

## What the checker looks at

A pattern’s strength is roughly how hard it would be for someone to guess it, given what people tend to draw. The checker combines several signals:

- **Number of dots.** More dots means more possible patterns.
- **Direction changes.** Each turn adds unpredictability compared with a straight line.
- **Self-crossings.** A line that crosses its own path is less common and harder to guess.
- **Grid coverage.** Patterns that span several rows and columns score higher than ones squeezed into one area.
- **Corner start.** Starting in a corner is very common, so it lowers the score slightly.
- **Long straight runs.** Sweeping along a whole row or column is easy to guess and easy to see over your shoulder.
- **Simple shapes.** Patterns that resemble an L, Z, S, U or a square are among the first anyone would try.

The bits figure is an estimate, not a measurement. It is a heuristic designed to nudge you away from common habits, not a guarantee of how long a pattern would resist a determined attacker.

## Why human patterns are predictable

On paper, a 5×5 grid offers an enormous number of possible lines. In practice, people don’t pick at random. Research on the classic 3×3 phone pattern has repeatedly found strong biases: starting top-left, moving left to right and top to bottom, using few turns and drawing familiar letters. Those habits shrink the space an attacker realistically needs to search.

A strong pattern is one that avoids those habits while staying memorable to you. For a broader comparison of unlock methods, read [pattern lock vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Tips for a stronger pattern

1. **Aim for 8–12 dots.** That is Velcrypt’s recommendation: long enough to be hard to guess, short enough to remember.
2. **Add two or more turns.** Mix horizontal, vertical and diagonal moves.
3. **Cross your own line once.** It adds complexity without much effort to remember.
4. **Start somewhere other than a corner.** Middle or edge dots are less expected.
5. **Use the whole grid.** Touch at least three rows and three columns.
6. **Avoid letters and shapes.** Initials, L, Z, S, U and squares are early guesses.
7. **Practise before you rely on it.** Draw it several times so muscle memory takes over.

## Never enter your real pattern

This checker doesn’t store or transmit anything, but the habit matters more than this one page. Never type or draw a real password, PIN or pattern into any website. Instead, draw a pattern with a similar style (similar length, number of turns, starting area) and use the result as guidance.

## Strength is only part of the picture

In Velcrypt, your pattern is the key: encryption keys are derived from it with PBKDF2-HMAC-SHA512 using at least 600,000 iterations, which makes each guess slow. See [encryption](id:encryption). Every pattern also opens its own vault, as explained in [hidden vaults](id:hidden-vaults) and [pattern lock](id:pattern-lock).

A strong pattern can’t protect against someone watching you draw it, a phone handed over with the vault open, or a forgotten pattern. In the first version there is no recovery, so read [forgot your vault pattern](id:forgot-vault-pattern) before choosing something you might not remember.
