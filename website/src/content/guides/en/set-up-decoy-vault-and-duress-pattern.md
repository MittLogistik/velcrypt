---
pageId: set-up-decoy-vault-and-duress-pattern
title: "How to Set Up a Decoy Vault and Duress Pattern"
description: "Step by step: back up your real vault, build a believable decoy vault and set up a duress pattern in Velcrypt, plus how to test, change and turn it off."
h1: "How to set up a decoy vault and duress pattern in Velcrypt"
navTitle: "Set up a decoy and duress pattern"
answer: "First back up your real vault in Settings → Backup. Then, with Premium, draw a new pattern to create a decoy vault and fill it with harmless content. From inside the decoy, open Settings → Duress Pattern, draw a separate pattern twice and confirm. Drawing that pattern on the lock screen will open the decoy and permanently delete every other vault."
keyFacts:
  - "Start with an encrypted backup of your real vault; it is the only way back after the duress pattern is used."
  - "A decoy vault is a second pattern with harmless, believable content; it needs Premium."
  - "Set up the duress pattern from inside the decoy, in Settings → Duress Pattern."
  - "The duress pattern must be new: it can’t be a pattern that opens any vault."
  - "Never test it on the lock screen; practise in your head instead."
  - "One duress pattern per iPhone; a new one replaces the old, and turning it off deletes nothing."
primaryKeyword: "how to set up a decoy vault"
keywords: ["set up duress pattern", "velcrypt duress pattern setup", "decoy vault setup iphone", "create decoy vault", "duress pattern how to"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Back up first, build a believable decoy vault, then set up a duress pattern in Velcrypt, with tips for practising, changing and turning it off."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Set up a decoy vault and duress pattern in Velcrypt"
  steps:
    - name: "Back up your real vault"
      text: "Open your real vault, go to Settings → Backup → Back Up This Vault, choose a backup password of at least 8 characters, and save the .velcrypt file outside the app, such as in iCloud Drive or on a computer."
    - name: "Create a decoy vault"
      text: "With Premium, lock the app and draw a new pattern you have never used. Velcrypt opens a new, empty vault for it."
    - name: "Make the decoy believable"
      text: "Import a few dozen harmless, everyday items, such as receipts, ID scans or gift ideas, into a couple of albums."
    - name: "Open Settings → Duress Pattern in the decoy"
      text: "While the decoy vault is open, go to Settings → Duress Pattern and tap Set Up Duress Pattern."
    - name: "Draw the duress pattern twice and confirm"
      text: "Draw a separate pattern that opens no vault, draw it again to confirm, then read the warning and tap Turn On."
    - name: "Practise without triggering it"
      text: "Rehearse the duress pattern in your head or on paper you destroy afterwards, never on the lock screen."
faq:
  - q: "Do I need Premium to set up a decoy vault and duress pattern?"
    a: "Yes. The free version has one vault, and a decoy is a second vault. The duress pattern is also part of Premium. Once it is set up, it keeps working even if Premium lapses."
  - q: "Why do I need a backup first?"
    a: "Because the duress pattern permanently deletes every vault except the decoy, and vault data is not in iCloud or computer backups. An encrypted backup file you saved outside the app is the only way to get a deleted vault back."
  - q: "Can I test the duress pattern?"
    a: "Not on the lock screen: drawing it there deletes your other vaults for real. Practise it in your head instead. You can check that you remember it in Settings → Duress Pattern → Turn Off Duress Pattern, but drawing it there turns it off, so you would need to set it up again."
  - q: "Can I have more than one duress pattern?"
    a: "No. There is one duress pattern per iPhone. Setting up a new one, from any decoy vault, replaces the old one."
  - q: "How do I get my real vault back after the duress pattern was used?"
    a: "Draw your real pattern, which now opens a new, empty vault. Then go to Settings → Backup → Restore from Backup, choose your .velcrypt file and enter its backup password."
---

This guide walks through the full setup in Velcrypt: a backup of your real vault, a believable decoy vault, and a [duress pattern](id:duress-pattern) that opens the decoy and silently deletes every other vault on the iPhone. It takes about 15 minutes, most of it spent making the decoy look real.

Before you start, a short reminder of what the duress pattern does. When someone draws it on the lock screen, Velcrypt opens the decoy vault and, at the same moment, **permanently deletes every other vault on that iPhone**. The unlock looks and takes the same time as normal, and nothing on screen shows what happened. That is the point, and it is also why the first step is a backup.

## What you need

- **Velcrypt Premium.** The free version has one vault with up to 50 items. A decoy is a second vault, and the duress pattern is a Premium feature. See [pricing](id:pricing).
- **A safe place for a backup file**, outside the app: iCloud Drive, Files on another device, or a computer.
- **Three patterns you can tell apart:** your real one, the decoy, and the duress pattern.

## Step 1: Back up your real vault

Vault data is not included in iCloud or computer backups. If the duress pattern is ever used, the only way to get your real vault back is an encrypted backup file you made beforehand.

1. Draw your real pattern to open your real vault.
2. Go to **Settings → Backup → Back Up This Vault**.
3. Choose a backup password of at least 8 characters, enter it twice, and tap **Create Backup**.
4. Tap **Save Backup…** and save the .velcrypt file somewhere other than this iPhone.

A few things to know:

- **Backup is free** and covers the vault that is open. If you have several private vaults, back up each one.
- **The duress pattern does not touch backup files** stored outside the app.
- **Keep the backup password safe.** A forgotten backup password can’t be recovered, by you or by Velcrypt.
- **Think about who can reach the file.** If the person you are worried about can open your iCloud Drive or computer, choose another place. The file is encrypted, but its existence shows there is a vault to restore.

Repeat the backup from time to time, because it only contains what was in the vault when you made it.

## Step 2: Create the decoy vault

In Velcrypt, every pattern is its own vault, and a pattern the app has never seen opens a new, empty vault. So creating a decoy is just drawing a new pattern.

1. Lock the app.
2. Draw a new pattern: one continuous line through at least 6 dots on the 5×5 grid, with at least one change of direction. Make it clearly different from your real pattern in shape and starting point.
3. Velcrypt opens a new, empty vault. That is your decoy.

The [pattern lock](id:pattern-lock) page explains what makes a pattern strong, and the free [pattern strength checker](id:pattern-strength-checker) can help you compare ideas. Never test your real patterns on a website.

## Step 3: Make the decoy believable

An empty vault is suspicious. A decoy works when someone looks at it and thinks, “Oh, it’s just that.”

- **Give it a reason to exist:** copies of ID and insurance cards, receipts and warranties, booking screenshots, gift ideas.
- **Import a few dozen real items** into a couple of albums.
- **Keep it current.** Add something every few weeks so the newest item isn’t months old.

Velcrypt also asks you to add something before a vault can get a duress pattern, because the duress pattern opens this vault. [What is a decoy vault?](id:what-is-a-decoy-vault) has more ideas, and explains what gives a decoy away.

## Step 4: Set up the duress pattern

Do this from inside the decoy vault. The duress pattern always opens the vault it was set up in.

1. With the decoy vault open, go to **Settings → Duress Pattern**.
2. Read the three short explanations, then tap **Set Up Duress Pattern**.
3. **Draw a duress pattern.** It must be a new pattern that doesn’t open any vault; if it does, Velcrypt asks you to choose another.
4. **Draw it again to confirm.**
5. Read the warning, “Drawing it on the lock screen opens this vault and permanently deletes every other vault on this iPhone”, and tap **Turn On**.

If the decoy is the only vault on the iPhone, Velcrypt warns you that the duress pattern would delete nothing. Create the decoy with a different pattern from your real vault first.

### Choosing the duress pattern

- Make it **easy to draw under stress**, smoothly and without hesitation.
- Make it **impossible to confuse with your real pattern**. Drawing the duress pattern by mistake deletes your real vault.
- Consider making it **look similar in effort** to your real one, so drawing it doesn’t look different to someone watching.

## Step 5: Practise, without triggering it

Never test the duress pattern on the lock screen. That isn’t a test; it really deletes your other vaults.

Instead, rehearse it in your head, trace it on a surface with your finger, or sketch it on paper you destroy afterwards. Practise until you can draw both the decoy and the duress pattern without thinking, while being watched.

## Living with a duress pattern

- **Nothing shows it is set.** Velcrypt never displays whether a duress pattern exists. Behind the scenes, a fixed-size encrypted record always exists in the iOS Keychain, with random bytes when none is set.
- **One per iPhone.** Setting up a new duress pattern replaces the old one.
- **Turning it off:** go to **Settings → Duress Pattern → Turn Off Duress Pattern** and draw it. Drawing it there only turns it off; nothing is deleted.
- **If Premium lapses,** the duress pattern keeps working. Only setting one up needs Premium.

## If the duress pattern is ever used

Your other vaults are gone from that iPhone. To restore one:

1. Draw your real pattern. It now opens a new, empty vault.
2. Go to **Settings → Backup → Restore from Backup**.
3. Choose your .velcrypt file and enter its backup password.

Only do this when it is safe. If the person who made you unlock the phone is still around, restoring the vault right away may undo the reason you used the duress pattern.

## Limits to keep in mind

- **Copies outside Velcrypt stay.** Delete originals from Photos and Recently Deleted after importing; see [deleting originals after import](id:delete-original-photos-after-import).
- **Flash storage gives no guarantee of physical erasure.** Vault data is encrypted with AES-256-GCM and the keys are deleted with the vault directories, so leftover data is unreadable.
- **It doesn’t stop someone who watched you draw your real pattern.**
- **It is a personal-safety tool.** Never use it to destroy evidence or to defy a lawful demand from police, border officials or a court. Laws differ by country, and deleting data under a legal demand can itself be an offence; seek legal advice if that applies to you.

If you are setting this up because of a particular person, [what to do if someone forces you to unlock your phone](id:forced-to-unlock-phone) covers the wider safety picture. If you are worried about forgetting a pattern, read [forgot your vault pattern](id:forgot-vault-pattern) first.
