---
pageId: what-is-a-decoy-vault
title: "What Is a Decoy Vault? How to Set Up a Believable One"
description: "A decoy vault is a second, harmless vault you can open under pressure. How it works, how to make one believable in Velcrypt, and where it falls short."
h1: "What is a decoy vault, and how do you make one believable?"
navTitle: "What is a decoy vault?"
answer: "A decoy vault is a second vault, opened with a different secret, that holds harmless but plausible content. If someone pressures you to open your vault, you can open the decoy instead. In Velcrypt, any new pattern opens its own vault, so a decoy is simply a second pattern that you fill with ordinary photos and documents."
keyFacts:
  - "A decoy vault is a real, working vault filled with low-stakes content you are comfortable showing."
  - "In Velcrypt, every pattern is its own vault and there is no list of vaults to give the others away."
  - "An empty decoy is suspicious; a lived-in decoy with albums and recent items is convincing."
  - "A decoy protects against snooping and casual pressure, not against forensic analysis or someone who watched you draw."
  - "A duress pattern that also removes access to other vaults is a planned Premium feature (coming soon)."
primaryKeyword: "decoy vault"
keywords: ["what is a decoy vault", "decoy password photo vault", "fake vault app", "decoy pattern", "second vault iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What a decoy vault is, how to build one that looks lived-in with a second Velcrypt pattern, and the limits you should know."
category: security
order: 41
related: [hidden-vaults, plausible-deniability-explained, duress-pattern, pattern-lock-vs-pin-vs-face-id, partner-scrolling-camera-roll, phone-privacy-border-crossing]
howTo:
  name: "Set up a decoy vault in Velcrypt"
  steps:
    - name: "Choose a second pattern"
      text: "Pick a new pattern of at least 6 dots with at least one change of direction, clearly different from your real pattern in shape and starting point."
    - name: "Draw it on the unlock screen"
      text: "Velcrypt opens a new, empty vault for any pattern it has not seen before. No extra setting is needed."
    - name: "Decide on a believable purpose"
      text: "Choose an everyday reason for the vault, such as ID copies, receipts, booking screenshots or gift ideas."
    - name: "Add real, low-stakes content"
      text: "Import a few dozen ordinary items into a couple of albums so the vault looks lived-in."
    - name: "Keep it current and practise"
      text: "Add something every few weeks and practise drawing the decoy pattern smoothly, without hesitation."
faq:
  - q: "What is a decoy password in a photo vault app?"
    a: "A decoy password (or decoy PIN or pattern) is a second secret that opens a separate, harmless set of content. It lets you appear to comply with a request to open the app without revealing what you actually keep private."
  - q: "How do I create a decoy vault in Velcrypt?"
    a: "Draw a second pattern you have never used before. Velcrypt opens a new, empty vault for it. Add believable everyday content, such as receipts, screenshots and ordinary photos, and that pattern now opens your decoy."
  - q: "Can someone tell that a vault is a decoy?"
    a: "Not from inside the app: Velcrypt keeps no list of vaults and shows no hint that others exist. What can give a decoy away is its content, for example if it is empty, stale, or clearly staged."
  - q: "Is a decoy vault the same as a duress pattern?"
    a: "No. A decoy simply opens a different vault. A duress pattern, a planned Velcrypt Premium feature that is coming soon, would open a chosen vault and also silently remove access to the others."
  - q: "Should I use a decoy vault with police or border officials?"
    a: "This guide can’t give legal advice. Misleading officials can be an offence in many countries. A decoy is mainly for everyday snooping and informal pressure; for official situations, learn your rights and talk to a lawyer."
---

Imagine someone grabs your phone, sees a vault app, and says: “Open it.” Refusing can make things worse, and saying “there’s nothing in there” rarely ends the conversation. A decoy vault gives you a third option: open something real that simply isn’t the thing you are protecting.

## What a decoy vault is

A decoy vault is a fully working vault, protected by its own secret, that you fill with content you don’t mind being seen. It sits alongside your real vault, and nothing on screen tells the viewer which one they are looking at.

The idea is old. Safes have had “diversion” compartments for generations, and encryption tools have offered hidden volumes for years (see [plausible deniability explained](id:plausible-deniability-explained)). On phones, the most common form is a decoy PIN in a photo vault app.

What makes a decoy work is not the technology but the story. A decoy succeeds when the person looking at it concludes, “Oh, it’s just that,” and moves on.

## How decoys work in Velcrypt

Most apps treat the decoy as a special setting: one real PIN, one fake PIN. Velcrypt takes a simpler approach. Every pattern is its own vault:

- There is no list of vaults anywhere in the app.
- A pattern Velcrypt has never seen opens a new, empty vault.
- There is no “wrong pattern” error message, and nothing proves that other vaults exist.

So a decoy vault in Velcrypt is not a feature you switch on. It is just a second pattern you choose to use as a decoy. Your real vault and your decoy look and behave exactly the same, because they are the same kind of thing. The [hidden vaults](id:hidden-vaults) page explains the model in more detail.

## Setting up a believable decoy, step by step

1. **Pick a second pattern.** It must follow the usual rules (one continuous line through at least 6 dots on the 5×5 grid, at least one change of direction). Make it easy for you to recall under stress, but different from your real pattern in shape and starting point.
2. **Draw it on the unlock screen.** Velcrypt opens an empty vault for it. Nothing else needs configuring.
3. **Give it a reason to exist.** Ask yourself why someone like you would plausibly use a vault. Common, believable answers: copies of ID and insurance documents, receipts and warranties, screenshots of bookings, gift ideas, a surprise you are planning.
4. **Fill it with real content.** Import a few dozen items across a couple of [albums](id:albums), for example “Documents”, “Receipts” and “Gift ideas”. Use real, low-stakes material rather than random stock images.
5. **Keep it alive.** Add something every few weeks. A decoy whose newest item is a year old looks abandoned, which invites the question: “So where do you keep the recent stuff?”
6. **Practise both patterns.** You should be able to draw the decoy without hesitating, while someone is watching you, without accidentally starting your real one.

### What makes a decoy unconvincing

- **It is empty.** An empty vault suggests you opened the wrong one on purpose.
- **It is too innocent.** Ten pictures of sunsets in a vault app is odd. Mildly private content, like ID scans, is more natural.
- **The size doesn’t fit the story.** If you say the vault holds “a few documents” but the app clearly uses a lot of storage in iPhone Settings, someone attentive may notice. Velcrypt does not hide that it stores encrypted data on the device.
- **You hesitate.** A long pause before drawing invites suspicion more than any detail in the app.

## The limits of a decoy

A decoy vault is a social tool backed by good cryptography. It is not magic, and it is worth being clear about where it stops.

- **Someone who watched you draw your real pattern** can open your real vault. A decoy doesn’t help after that.
- **Forensic analysis** of a seized device may show that the app holds more encrypted data than the decoy accounts for. It can’t read that data without the pattern, but it may conclude that more exists.
- **Your originals elsewhere.** If the private photos are still in your Photos library, iCloud or a chat, the decoy protects nothing. See [deleting originals after import](id:delete-original-photos-after-import).
- **Persistent coercion.** A decoy defuses a moment. It is not a plan for an ongoing abusive situation; if that is your situation, please reach out to local support services.
- **Legal settings.** Misleading officials can be an offence in many countries. Think carefully before using a decoy with authorities, and see the [border-crossing guide](id:phone-privacy-border-crossing).

## Decoy vault vs duress pattern

A decoy opens a different vault and leaves everything else untouched. A **duress pattern** goes one step further: it opens a vault you have chosen and quietly removes access to the others at the same time. In Velcrypt, the [duress pattern](id:duress-pattern) is a planned Premium feature and is coming soon. Until then, a well-kept decoy covers most everyday situations, such as a curious partner, a friend scrolling through your phone, or a nosy colleague.

## Where Velcrypt fits

Velcrypt was designed so that decoys are natural, not bolted on: every pattern is its own vault, there is no vault list, an unknown pattern shows no error, and there is no Face ID that someone could use to skip the question entirely. Each vault is encrypted on your iPhone with AES-256-GCM under its own key, so the decoy and the real vault are equally protected; the only difference is what you put in them. Read more in the [security overview](id:security).
