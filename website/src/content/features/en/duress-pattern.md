---
pageId: duress-pattern
title: "Duress Pattern: Open a Decoy, Erase Every Other Vault"
description: "Velcrypt’s duress pattern opens your decoy vault and silently, permanently deletes every other vault on the iPhone. How it works, setup and limits."
h1: "Duress pattern"
navTitle: "Duress pattern"
answer: "The duress pattern is a Premium feature in Velcrypt 1.0. You set it up from inside a decoy vault. If you ever draw it on the lock screen, Velcrypt opens that decoy vault and silently, permanently deletes every other vault on the iPhone. Nothing on screen shows that it happened."
keyFacts:
  - "Available now in Velcrypt 1.0 as part of Premium."
  - "Set up in Settings → Duress Pattern, from inside a decoy vault."
  - "Drawing it opens the decoy and permanently deletes every other vault on that iPhone."
  - "Unlock looks the same and takes the same time as a normal unlock."
  - "The app never shows whether a duress pattern is set."
  - "Deleted vaults can only be restored from an encrypted backup file you made earlier."
  - "It is a personal-safety tool, not legal advice or a way around lawful orders."
primaryKeyword: "duress pattern vault app"
keywords: ["duress password iphone", "panic pattern photo vault", "duress code app", "coerced unlock protection", "self-destruct vault pattern"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "A separate pattern that opens your decoy vault and silently, permanently deletes every other vault on the iPhone. Premium."
status: available
schemaType: WebPage
order: 3
related: [set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, self-destruct-photo-vault, hidden-vaults, what-is-a-decoy-vault, plausible-deniability-explained]
howTo:
  name: "Set up a duress pattern in Velcrypt"
  steps:
    - name: "Make an encrypted backup of your real vault"
      text: "Open your real vault, go to Settings → Backup and save a password-protected .velcrypt file somewhere outside the app, such as Files or a computer."
    - name: "Open your decoy vault"
      text: "Draw the pattern of a second vault that holds harmless, believable content. Vaults beyond the first need Premium."
    - name: "Open Settings → Duress Pattern"
      text: "From inside the decoy vault, open Settings and choose Duress Pattern."
    - name: "Draw a new duress pattern twice"
      text: "Draw a separate pattern that does not open any vault, then draw it again to confirm it."
    - name: "Confirm"
      text: "Read the warning and confirm. From now on, drawing that pattern on the lock screen opens this decoy and deletes every other vault on the iPhone."
faq:
  - q: "Is the duress pattern available in Velcrypt now?"
    a: "Yes. It ships in Velcrypt 1.0 as part of Premium. You set it up in Settings → Duress Pattern while a decoy vault is open."
  - q: "What happens when someone draws the duress pattern?"
    a: "Velcrypt opens the decoy vault it was set up in and, at the same time, silently and permanently deletes every other vault on that iPhone. There is no message, animation or delay that gives it away."
  - q: "Can someone tell whether I have a duress pattern?"
    a: "Not from the app. Velcrypt never shows whether one is set. A fixed-size encrypted record always exists in the Keychain, filled with random bytes when no duress pattern is set, so the record looks the same either way."
  - q: "Can I get the deleted vaults back?"
    a: "Not from the phone. The only way back is an encrypted backup file you made earlier in Settings → Backup and saved outside the app. The duress pattern does not touch backup files stored elsewhere."
  - q: "Do I need to keep paying for Premium for it to work?"
    a: "No. Setting it up needs Premium, but a duress pattern you have already set keeps working if Premium lapses."
  - q: "How do I turn the duress pattern off?"
    a: "In Settings → Duress Pattern, tap Turn Off Duress Pattern and draw the duress pattern. Drawing it there only turns it off; nothing is deleted."
  - q: "Can the duress pattern delete photos I already shared?"
    a: "No. It only deletes Velcrypt’s own vaults on that phone. Copies in your Photos library, iCloud, chats, email, a backup file or another person’s device are out of its reach."
  - q: "Is it legal to use a duress pattern?"
    a: "That depends on where you are and the situation. Deleting data when police, border officials or a court lawfully demand access can itself be an offence. The duress pattern is meant for personal-safety situations, not for destroying evidence. If a legal demand is involved, get legal advice."
---

Sometimes the risk is not a stolen phone but a person standing in front of you, telling you to open the app. A [decoy vault](id:what-is-a-decoy-vault) helps in many of those moments. The duress pattern goes further: it opens the decoy **and** permanently deletes every other vault on the iPhone, so your private vaults can no longer be opened there, not even later.

It is part of Premium in Velcrypt 1.0.

## What the duress pattern does

A duress pattern is a separate unlock pattern that you only use under pressure. In Velcrypt it works like this:

1. You set it up in advance, from inside a decoy vault: a second vault filled with harmless, believable content.
2. If you are ever forced to unlock the app, you draw the duress pattern instead of your real one.
3. Velcrypt opens the decoy vault, exactly as a normal unlock would.
4. At the same moment, it silently and permanently deletes every other vault on that iPhone.

Nothing on screen tells the other person what happened. There is no alert, no animation and no extra delay: the unlock looks and takes the same time as any other.

## How to set it up

You need Premium, because the duress pattern lives in a second vault and vaults beyond the first are a Premium feature.

1. **Back up your real vault first.** Open it, go to **Settings → Backup** and save the password-protected .velcrypt file somewhere outside the app, such as Files, iCloud Drive or a computer. This is the only way to recover the vault if the duress pattern is ever used.
2. **Open your decoy vault.** If you don’t have one yet, draw a new pattern to create it and add some ordinary content; Velcrypt asks you to add something before a vault can get a duress pattern. The [decoy vault guide](id:what-is-a-decoy-vault) explains how to make it believable.
3. **Go to Settings → Duress Pattern** while the decoy vault is open.
4. **Draw the duress pattern twice.** It must be a new pattern that does not open any existing vault.
5. **Read the warning and confirm.** Afterwards, practise the pattern in your head, not on the lock screen: drawing it there deletes your other vaults.

The full walkthrough, including practice tips, is in [how to set up a decoy vault and duress pattern](id:set-up-decoy-vault-and-duress-pattern).

### Rules worth knowing

- **One per iPhone.** There is only one duress pattern on a device. Setting a new one replaces the old.
- **Turning it off** requires drawing the duress pattern in Settings → Duress Pattern. Drawing it there only turns it off; nothing is deleted.
- **It keeps working if Premium lapses.** Only setting it up needs Premium.
- **Set it up in a decoy, not in your only vault.** If the decoy is the only vault on the phone, there is nothing for the duress pattern to delete. Velcrypt warns you when this is the case.

## Nothing reveals that it exists

A duress pattern is only useful if nobody can tell it is there. Velcrypt never shows whether one is set, in the interface or in its settings. Behind the scenes, a fixed-size encrypted record always exists in the iOS Keychain; when no duress pattern is set, it holds random bytes. So the record looks the same whether you use the feature or not.

This builds on [hidden vaults](id:hidden-vaults): every pattern opens its own vault, there is no list of vaults, and an unknown pattern opens an empty vault without an error. The idea behind both is explained in [plausible deniability, explained](id:plausible-deniability-explained).

## When it can help

The duress pattern is meant for personal-safety situations, for example:

- **A controlling or abusive partner** who demands to see everything on your phone.
- **A robbery or threat**, where someone forces you to unlock things on the spot.
- **Persistent snooping** by someone who won’t accept the decoy and will keep asking.

If you are in one of these situations, the guide on [what to do if someone forces you to unlock your phone](id:forced-to-unlock-phone) covers the wider picture, including when to contact support services.

## Honest limits

**It is permanent.** Deleted vaults cannot be recovered from the phone. Vault data is excluded from iCloud and computer backups, so the only way back is an encrypted backup file you made earlier. Backup files saved outside the app are not touched.

**Flash storage has limits.** Like any app, Velcrypt cannot guarantee that deleted bytes are physically erased from flash storage. What it does guarantee is that vault data is encrypted with AES-256-GCM and that the keys are deleted along with the vault directories, so the leftover data is unreadable ciphertext.

**It cannot undo copies.** If a photo is still in your Photos library, in Recently Deleted, in iCloud Photos, in a chat or on someone else’s phone, it stays there. [Delete originals after importing](id:delete-original-photos-after-import).

**It does not stop observation.** If someone has watched you draw your real pattern or filmed the screen, the duress pattern doesn’t change what they saw. Draw it out of sight.

**Your safety comes first.** Some people may react badly if they suspect something has been hidden or removed. A duress pattern is one option, never an obligation. You are the best judge of whether using it is safe.

**It is not a way around the law.** Never use it to destroy evidence or to defy a lawful demand from police, border officials or a court. Laws on device searches and deleting data differ by country, and deleting data under a legal demand can itself be an offence. If a legal demand is involved, get legal advice. The [border-crossing guide](id:phone-privacy-border-crossing) covers travel.

## Pricing

The duress pattern is part of Premium, alongside unlimited items, more vaults and alternate app icons. Encrypted backup stays free for everyone. See [pricing](id:pricing) for plans.
