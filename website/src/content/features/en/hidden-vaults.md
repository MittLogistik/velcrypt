---
pageId: hidden-vaults
title: "Hidden Vaults: Every Pattern Opens Its Own Vault"
description: "In Velcrypt every pattern is a separate vault. There is no vault list, and an unknown pattern opens an empty vault with no error. Here is how it works."
h1: "Hidden vaults: one pattern, one vault, no list"
navTitle: "Hidden vaults"
answer: "In Velcrypt every pattern opens its own encrypted vault. There is no list of vaults, and a pattern the app has never seen simply opens an empty vault without an error, so nothing on screen proves that other vaults exist."
keyFacts:
  - "Each pattern is its own vault with its own encryption key."
  - "Velcrypt never shows a list of vaults."
  - "An unknown pattern opens an empty vault, with no error message."
  - "You can keep a decoy vault with ordinary content."
  - "More vaults are a planned part of the optional Premium upgrade."
primaryKeyword: "hidden vault app iphone"
keywords: ["multiple vaults photo app", "decoy vault iphone", "secret vault app", "plausible deniability photo vault", "second hidden vault"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Every pattern is its own vault. No vault list, no error for unknown patterns, and room for a believable decoy vault."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "How do I see all my vaults in Velcrypt?"
    a: "You can't, and that is intentional. Velcrypt has no vault list. The only way to open a vault is to draw its pattern, so keep track of your patterns yourself."
  - q: "What happens if I draw a wrong pattern?"
    a: "Velcrypt opens an empty vault for that pattern instead of showing an error. If you added files there, that pattern would become a new vault. If you expected your photos and see nothing, you probably drew a slightly different pattern."
  - q: "Can someone tell that I have more than one vault?"
    a: "Not from the app's interface. There is no list, counter or error message that reveals other vaults. Velcrypt cannot hide that the app itself is installed, and it cannot prevent someone from watching you draw a pattern."
  - q: "What is a decoy vault?"
    a: "A decoy vault is a vault with ordinary, believable content that you can open if you are pressured to show what is inside the app. Your real vault stays behind a different pattern."
howTo:
  name: "Create a second hidden vault in Velcrypt"
  steps:
    - name: "Lock Velcrypt"
      text: "Leave the vault you are in so the pattern grid appears."
    - name: "Draw a new pattern"
      text: "Draw a pattern you have not used before, with at least 6 dots and at least one change of direction. An empty vault opens."
    - name: "Add content"
      text: "Import a photo, video or document into the empty vault to start using it."
    - name: "Practise the pattern"
      text: "Lock and unlock a few times so you remember which pattern belongs to which vault."
---

Most vault apps have one password and one locked area, so asking "what's the password?" reveals everything. Velcrypt works differently: the pattern you draw does not just unlock the app, it decides which vault appears. That simple idea is what makes hidden vaults possible.

## Every pattern is its own vault

A hidden vault is a vault whose existence cannot be confirmed from the outside. In Velcrypt, every valid pattern on the [5×5 grid](id:pattern-lock) maps to a separate vault with its own random master key and its own files. Pattern A shows the photos you stored behind pattern A. Pattern B shows a completely different set.

There is no settings screen that lists them, no "switch vault" menu and no number that says how many exist. From inside the app, each vault looks like it is the only one.

## No error for an unknown pattern

When you draw a pattern Velcrypt has never seen, it does not say "wrong pattern". It opens an empty vault. That behaviour is the core of the feature:

- **Nothing to count.** There is no attempt counter or failure message that confirms the "real" pattern is still out there.
- **Nothing to compare.** An empty vault looks exactly like a vault you just created.
- **Nothing to prove.** Someone looking at the app cannot tell whether you have one vault or several.

This is a form of [plausible deniability](id:plausible-deniability-explained): the ability to credibly say that what you have shown is all there is, because the software gives no evidence otherwise.

It also has a practical side effect. If you mistype your pattern, you will land in an empty vault rather than see an error. If your photos seem to have vanished, lock the app and draw your pattern again, carefully.

## How to create a second vault

1. **Lock Velcrypt.** Leave the vault you are in so the pattern grid appears.
2. **Draw a new pattern.** Use one you have not used before, following the usual rules: at least 6 dots and at least one change of direction.
3. **Add something.** An empty vault opens. Import a photo, video or document to start using it.
4. **Practise the pattern.** Lock and unlock a few times so you remember exactly which pattern belongs to which vault.

## Using a decoy vault

A decoy vault is a vault filled with harmless but believable content, for example some saved receipts, screenshots or holiday photos. If someone insists on seeing what is in Velcrypt, you can open the decoy, and it behaves like any other vault.

A decoy works best when it looks lived-in. An empty vault invites the question "why install a vault app for nothing?", while a vault with a few dozen ordinary items rarely does. The guide on [what a decoy vault is](id:what-is-a-decoy-vault) covers how to make one convincing.

Velcrypt is also planning a [duress pattern](id:duress-pattern) for the optional Premium upgrade (coming soon). It is meant to go one step further than a decoy by opening a chosen vault and silently removing access to the others.

## How each vault stays separate

Separation is not just a matter of hiding folders. Each vault has its own random 256-bit master key, unlocked by a key derived from that vault's pattern. Files in one vault are encrypted with keys that belong to that vault alone, so opening one vault gives no access to another. The [encryption](id:encryption) page explains the full key chain.

## What hidden vaults can and can't do

Hidden vaults make it hard to prove that more content exists. They do not make you invisible:

- The Velcrypt icon is visible on the Home Screen. iOS 18 and later let you hide apps in a hidden folder protected by Face ID, but that is an iOS feature, not part of Velcrypt.
- Someone who watches you draw your real pattern can open the real vault.
- Copies of a file that still exist elsewhere, such as in Photos, Recently Deleted, iCloud or a chat, are outside the vault's protection.
- Deniability depends on context. It is a technical property of the app, not a legal guarantee.

For situations like crossing a border or handing a phone over, read [phone privacy at border crossings](id:phone-privacy-border-crossing) before you rely on any single feature.
