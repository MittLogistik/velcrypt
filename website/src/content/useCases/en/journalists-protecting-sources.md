---
pageId: journalists-protecting-sources
title: "Journalists: Protecting Source Photos on iPhone"
description: "Source photos and documents on a reporter’s iPhone: metadata, minimisation, threat modelling, and the honest limits of an encrypted vault."
h1: "Protecting sources’ photos and documents on a journalist’s iPhone"
navTitle: "Journalists protecting sources"
answer: "Start with a threat model, keep as little source material on your phone as you can, strip metadata before anything is published, and store what you must keep in an encrypted space separate from the camera roll. A vault is one layer; device seizure, compelled unlocking, cloud copies and messaging apps need their own plans."
keyFacts:
  - "Threat modelling means asking who might want the material, what they can do, and what happens if they get it."
  - "Minimisation, keeping less for less time, is often the strongest protection for sources."
  - "Photo metadata can reveal where and when an image was taken, and on which device."
  - "Velcrypt has no account, no servers and no sync; vaults open with a pattern, not Face ID."
  - "A vault doesn’t protect copies in iCloud, messaging apps, email or a source’s own phone."
primaryKeyword: "journalist protect sources iphone"
keywords: ["protect source photos phone", "journalist phone security", "source documents iphone privacy", "reporter device security", "threat modelling journalists"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Threat modelling, minimisation and metadata for reporters, and where an encrypted iPhone vault fits as one layer of source protection."
group: professional
schemaType: Article
order: 10
related: [phone-privacy-border-crossing, remove-photo-metadata-iphone, pattern-lock-vs-pin-vs-face-id, plausible-deniability-explained, security, scan-documents-privately-iphone]
faq:
  - q: "Should journalists use Face ID on their iPhone?"
    a: "It depends on your threat model. Biometrics are convenient, but a face or finger can be used without your consent. Many security trainers suggest knowing how to quickly disable biometrics, for example by pressing and holding the side button and a volume button, which then requires the passcode."
  - q: "How do I remove metadata from a source’s photo?"
    a: "Use a tool that re-saves the image without embedded data, such as our in-browser Photo Metadata Remover, which drops EXIF and GPS. Remember the visible content, like faces, signs or reflections, can still identify a place or person."
  - q: "Can a vault app protect sources if my phone is seized?"
    a: "It adds a layer: a Velcrypt vault opens only with your pattern, and an unknown pattern shows an empty vault. It doesn’t override the law, prevent pressure to unlock, or protect copies stored elsewhere."
  - q: "Where can journalists find digital security training?"
    a: "Press freedom organisations and journalist associations publish digital security guides and sometimes offer one-to-one help. Your newsroom’s security team, if you have one, is a good first contact."
---

Sources trust you with more than information. A photo of a document, a screenshot of a chat, or an image taken inside a workplace can identify the person who gave it to you. On a reporter’s iPhone, that material often sits next to lunch photos and press-conference shots — in a library that syncs, searches and surfaces content by design.

This page is practical, not exhaustive. Press freedom organisations and journalist associations publish detailed digital security guides, and if your newsroom has a security team, start there.

## Begin with a threat model

A threat model is a structured answer to a few questions: what are you protecting, from whom, what can they do, and what happens if you fail? For a local council story, the main risk might be a lost phone. For an investigation into a powerful organisation or state, it might be targeted hacking, legal orders or device seizure at a border.

The answers decide your tools. Over-engineering a low-risk story wastes time; under-protecting a high-risk one can hurt someone.

## Where source material leaks on iPhone

- **The camera roll and iCloud Photos.** Images sync to every device on your Apple Account and to Apple’s servers. Without [Advanced Data Protection](id:icloud-advanced-data-protection-explained), Apple holds the keys to iCloud Photos.
- **Device backups.** iCloud and computer backups may include messages and attachments.
- **Messaging apps.** Material received in a chat stays in that app and often in its backups, on both ends.
- **Metadata.** EXIF data can reveal GPS coordinates, time and device model. See [removing photo metadata](id:remove-photo-metadata-iphone).
- **Visible content.** Faces, reflections, window views, document watermarks and printer dots can identify a person or place even with metadata removed.
- **The unlocked phone.** If someone has your passcode or uses your face or finger, everything the passcode unlocks is exposed.

## Practical habits

1. **Minimise.** Keep only what you need, for as long as you need it. Deleting material you no longer need — including Recently Deleted and chat copies — protects sources better than any encryption.
2. **Separate.** Keep source material out of the Photos library. Document scans can go straight to a protected place instead of the camera roll; see [scanning documents privately](id:scan-documents-privately-iphone).
3. **Strip metadata before publishing,** and check images for identifying visual details.
4. **Use a strong passcode** and know how to quickly disable biometrics.
5. **Plan for travel.** Border inspections are a known risk; [phone privacy at border crossings](id:phone-privacy-border-crossing) covers the options and their limits.
6. **Agree on channels with sources,** and tell them honestly what you can and can’t protect.

## Where Velcrypt fits

Velcrypt is one layer in that plan. It stores photos, videos and documents in encrypted vaults on your iPhone, using AES-256-GCM with keys derived from your pattern. There’s no account, no server, no sync and no analytics on vault content, so there’s nothing on a server for anyone to request.

Vaults open with a pattern on a 5×5 grid. Velcrypt deliberately doesn’t support Face ID or Touch ID, because biometrics can be used without your consent; a pattern lives only in your memory. The reasoning is in [pattern vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id). Every pattern opens its own vault, and an unknown pattern opens an empty one with no error, which supports [plausible deniability](id:plausible-deniability-explained). With Premium, a [duress pattern](id:duress-pattern) opens a decoy vault and permanently deletes the others. It is meant for personal-safety situations such as theft or threats, not for deleting material when authorities lawfully demand access, which can itself be an offence; get legal advice if that is a risk for you.

## Honest limits

A vault is not a source-protection strategy on its own:

- **Device seizure and compelled unlocking.** Laws differ. You may face legal pressure or penalties for refusing to unlock. A vault doesn’t change the law.
- **Copies elsewhere.** Photos still in iCloud, messaging apps, email or the source’s own phone aren’t protected by your vault.
- **Compromised devices.** Malware on a jailbroken or targeted phone can see what’s on screen.
- **Observation.** Someone watching you draw your pattern, or cameras in the room, defeat it.
- **Visible app.** The Velcrypt icon is on your Home Screen unless you use iOS 18’s option to hide apps.
- **No automatic recovery.** Vault data isn’t in iCloud or computer backups. Forget the pattern, or lose the phone without an encrypted backup file, and it’s gone — which can be a feature for minimisation, and a risk for material you must keep. A backup file is one more copy to protect. See the [security page](id:security) for the full picture.

Protecting sources is mostly about habits. Good tools help, but the decision to keep less, share less and plan ahead does most of the work.
