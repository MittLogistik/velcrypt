---
pageId: forgot-vault-pattern
title: "Forgot Your Photo Vault Password or Pattern?"
description: "Forgot your photo vault password or pattern? What to try first, why Velcrypt has no reset, how other apps handle recovery, and how to avoid lockouts."
h1: "Forgot your photo vault password or pattern? What you can and can’t do"
navTitle: "Forgot your vault pattern"
answer: "In Velcrypt, a forgotten pattern can’t be reset or recovered, by you or by Velcrypt, because the key exists only in your memory and no server keeps a copy. What you can do is calmly retry close variations of the pattern. Other vault apps may offer email or account recovery; check what yours uses."
keyFacts:
  - "Velcrypt has no reset, no recovery email and no recovery phrase: keys are derived from your pattern on the device."
  - "A wrong pattern in Velcrypt opens an empty vault rather than showing an error, so an empty vault often means a slightly different pattern."
  - "Vault data is excluded from iCloud and computer backups in the first version."
  - "An encrypted backup / recovery option is planned, with no date promised."
  - "If losing something would be unbearable, keep a copy somewhere else you trust."
primaryKeyword: "forgot photo vault password"
keywords: ["forgot vault pattern", "recover photo vault", "photo vault app forgot pin", "reset vault pattern", "locked out of photo vault"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What to try first, why Velcrypt can’t reset a forgotten pattern, how other apps handle recovery, and habits that prevent lockouts."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "Can Velcrypt support reset my pattern?"
    a: "No. Velcrypt has no account and no server, and your keys are derived from the pattern on your iPhone. There is nothing the team could reset or look up, which is also why nobody else can get in."
  - q: "My vault suddenly looks empty. Is my data gone?"
    a: "Probably not. In Velcrypt, a pattern the app hasn’t seen opens a new, empty vault, so an empty vault usually means you drew a slightly different pattern. Close the app and try again carefully, and avoid adding anything to the empty vault."
  - q: "Will reinstalling Velcrypt let me start over and keep my photos?"
    a: "No. Deleting the app deletes its encrypted data from the device. Reinstalling gives you a clean app, not access to the old vaults. Only delete it if you have accepted that the content is gone."
  - q: "How do other photo vault apps handle a forgotten PIN?"
    a: "Many account-based apps let you reset the PIN by email or through a cloud account, which means some recovery path exists outside your memory. Check your app’s help pages before you need it, and understand that a recovery path can also be a way in for someone else."
  - q: "Will Velcrypt add a recovery option?"
    a: "An encrypted backup and recovery option is planned, but there is no release date. Until it exists, treat your pattern as the only key."
---

That sinking feeling when the shape you have drawn a hundred times suddenly doesn’t work is real. Before anything else: don’t delete or reinstall the app. Most “forgotten” patterns turn out to be slightly misremembered ones, and there are sensible things to try first.

## First, try this (in Velcrypt)

Velcrypt behaves differently from most apps when you get the pattern wrong. It doesn’t show an error. Any pattern it hasn’t seen before simply opens a new, empty vault. So if your vault looks empty, the most likely explanation is that you drew a slightly different pattern, not that your data disappeared.

Work through these calmly:

1. **Don’t add anything to the empty vault.** If you import items into it, you create a new vault under that mistaken pattern, which adds confusion later.
2. **Close the app and start again.** Velcrypt locks when it goes to the background (after the delay you have set), which gives you a fresh unlock screen.
3. **Check the starting dot.** A pattern is a sequence of dots, so starting from the other end of the same shape is generally a different pattern.
4. **Check for skipped or extra dots.** On a 5×5 grid, a straight line can easily pass through one more or one fewer dot than you intended.
5. **Think about where you usually are.** Muscle memory is tied to posture. Try drawing in the position you usually unlock in: one-handed, two-handed, sitting down.
6. **Sketch it on paper.** Draw the 5×5 grid and sketch the pattern from memory, then compare variants. Destroy the paper afterwards.
7. **Take a break.** Memory recall under stress is worse. Trying again later, rested, often works.

## If it really is gone

If none of that works, here is the honest answer: the content can’t be recovered. Not by you, not by Velcrypt, not by anyone.

That isn’t a policy choice that could be overridden. It is how the encryption works:

- Velcrypt has no account, no email and no server. See [offline, no account](id:offline-no-account).
- Your vault keys are unlocked by a key derived from your pattern on the device, using PBKDF2 and a salt stored in the iOS Keychain. Without the pattern, that key can’t be produced.
- The vault’s data is encrypted with AES-256-GCM, which can’t be brute-forced. The [AES-256 explainer](id:aes-256-encryption-explained) explains why.
- In the first version, vault data is excluded from iCloud and Finder/iTunes backups, so there is no older copy to restore from.

The same properties that make your vault private make a forgotten pattern final. A system with a “forgot pattern?” button necessarily keeps a way in that doesn’t depend on you alone.

### What about other vaults?

Because every pattern is its own vault, forgetting one pattern doesn’t affect the others. If you remember your [decoy vault](id:what-is-a-decoy-vault)’s pattern, that vault opens normally.

## Why “no reset” is a deliberate trade-off

Recovery mechanisms always create a second key. Email resets can be triggered by anyone with access to your inbox. Cloud backups can be restored by anyone who gets into the account. Security questions are often guessable from social media.

Velcrypt chose to have no second key. That rules out an entire category of attacks and means there is nothing to subpoena, leak or phish. The cost is that you carry sole responsibility for remembering the pattern. For many people that trade-off is worth it; for some content, it isn’t. Decide which kind of content you are storing.

## Preventing a lockout

### Choose a pattern that is strong but memorable

Strength and memorability are not opposites. A good pattern on the 5×5 grid:

- uses 8–12 dots and changes direction several times,
- doesn’t start in a corner or trace a letter,
- has some personal logic that only you know, like a shape tied to a place or a gesture you find natural.

Test a similar shape (not your real one) with the [pattern strength checker](id:pattern-strength-checker), and read [pattern vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) for what makes patterns weak.

### Practise it

- Open the vault regularly in the first weeks so the movement becomes muscle memory.
- Avoid changing your pattern right before a stressful period like travel.
- If you have several vaults, make their patterns clearly different so you don’t blend them.

### Keep originals where loss would hurt

If losing a photo or document would be truly unbearable, a vault should not be the only place it lives. For irreplaceable items, keep an additional copy somewhere you trust, such as an encrypted drive in a safe place. This is a conscious trade-off: every extra copy is one more place to protect.

### Don’t write the pattern down near the phone

If you must keep a written reminder, make it something only you can interpret and keep it far from the device.

## If you use a different vault app

Recovery varies a lot between apps. Before you need it, check:

- **Is there an account?** Apps that use an email login often allow a PIN reset through that email.
- **Is there cloud backup?** Some apps can restore content after reinstalling if it was synced to their servers.
- **Is there a recovery code?** Some apps generate one during setup. If you didn’t save it, it won’t help.
- **What does the help page say?** Look for the vendor’s official recovery instructions. Be wary of third-party “unlock” tools; they rarely work and can be scams.

The [guide to photo vaults without an account](id:photo-vault-without-account) explains the trade-offs between account-based and device-only apps.

## Where Velcrypt fits

Velcrypt is a device-only vault by design: no account, no server, no recovery phrase, no copy of your keys anywhere else. An encrypted backup and recovery option is planned as part of an optional Premium upgrade, without a promised date. If you are unsure, [support](id:support) can explain how the app behaves, but nobody there can open a vault for you.
