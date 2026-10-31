---
pageId: advanced-data-protection-uk
title: "Advanced Data Protection in the UK: Status (Oct 2026)"
description: "Why Apple pulled Advanced Data Protection in the UK, what is still end-to-end encrypted, the legal fight so far and how to keep photos out of iCloud."
h1: "Advanced Data Protection in the UK: what happened and what’s left"
navTitle: "Advanced Data Protection in the UK"
answer: "As of October 2026, Apple still doesn’t offer Advanced Data Protection to new users in the United Kingdom. It withdrew the feature in February 2025 after a government order under the Investigatory Powers Act. UK users keep end-to-end encryption for 15 categories such as Keychain and Health, but iCloud Photos, Backup and Drive use standard protection, where Apple holds the keys."
keyFacts:
  - "Apple stopped offering Advanced Data Protection (ADP) to new UK users on 21 February 2025 and hadn’t restored it as of October 2026."
  - "The withdrawal followed a reported Technical Capability Notice from the Home Office under the Investigatory Powers Act 2016."
  - "In the UK, Photos, iCloud Backup, iCloud Drive, Notes and six other categories are not end-to-end encrypted."
  - "15 categories, including iCloud Keychain, Health and Messages in iCloud (with iCloud Backup off), stay end-to-end encrypted, as do iMessage and FaceTime."
  - "Apple’s challenge at the Investigatory Powers Tribunal is still unresolved; a full hearing on its case is not expected before 2027."
primaryKeyword: "advanced data protection uk"
keywords:
  - "apple adp uk"
  - "icloud adp uk"
  - "is advanced data protection available in the uk"
  - "apple uk encryption backdoor"
  - "icloud end to end encryption uk"
  - "technical capability notice apple"
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Why ADP disappeared in the UK, what stays end-to-end encrypted, where the legal case stands and how UK users can keep photos out of iCloud."
category: apple
order: 63
related:
  - icloud-advanced-data-protection-explained
  - icloud-access-data-on-web
  - are-hidden-photos-saved-to-icloud
  - delete-original-photos-after-import
  - offline-no-account
  - encryption
faq:
  - q: "Is Advanced Data Protection available in the UK now?"
    a: "No. As of October 2026, Apple’s support article still says it can no longer offer Advanced Data Protection to new users in the United Kingdom. Apple says it hopes to offer it again in the future, but has announced no date."
  - q: "What happens if I turned on Advanced Data Protection in the UK before February 2025?"
    a: "Apple can’t switch ADP off for you, because it doesn’t hold your keys. It has said UK users who already use ADP will get a period of time to turn it off themselves to keep using iCloud, and that it will provide more guidance. Apple has published no deadline in its support article."
  - q: "Are my iCloud photos end-to-end encrypted in the UK?"
    a: "Not unless you already had ADP turned on. For new UK users, iCloud Photos uses Standard Data Protection: the photos are encrypted, but Apple holds the keys and could decrypt them, for example when legally compelled."
  - q: "Are iMessage and FaceTime still end-to-end encrypted in the UK?"
    a: "Yes. Apple says iMessage and FaceTime remain end-to-end encrypted worldwide, including in the UK. Be aware that if iCloud Backup is on, the backup contains a copy of the key for Messages in iCloud."
  - q: "How can I keep private photos out of iCloud in the UK?"
    a: "Turn off iCloud Photos sync on the iPhone, exclude Photos from iCloud Backup or turn the backup off, and avoid Shared Albums. For the most sensitive files, an on-device encrypted vault keeps them out of iCloud entirely."
---

*Status checked on 31 October 2026. This topic moves through courts and government decisions, so check [Apple’s UK support article](https://support.apple.com/122234) for the latest position. This guide explains the technical situation; it isn’t legal advice.*

Advanced Data Protection is Apple’s optional setting that end-to-end encrypts most of your iCloud data. In most of the world you can switch it on in a minute. In the United Kingdom you can’t, and if you search for “advanced data protection uk” you’ll find a mix of old headlines and rumours. Here is what is confirmed, what is still open and what you can do about your photos today.

## What happened in the UK

The short version: the UK government used its surveillance law to demand access to encrypted iCloud data, and Apple chose to withdraw the feature rather than build that access.

- **January 2025:** the Home Office reportedly served Apple a **Technical Capability Notice** (TCN) under the Investigatory Powers Act 2016. According to reporting first published by The Washington Post, it demanded the ability to access end-to-end encrypted iCloud content, and it reportedly covered users worldwide, not just in Britain. The law forbids companies from confirming such notices, so neither Apple nor the government has officially acknowledged it.
- **21 February 2025:** Apple stopped offering Advanced Data Protection to new users in the UK. In its statement Apple said it was “deeply disappointed” and that it has “never built a backdoor or master key” to any of its products and never will.
- **Spring 2025:** Apple challenged the order at the **Investigatory Powers Tribunal**, the court that hears complaints about UK surveillance powers. In April 2025 the tribunal refused the government’s request to keep even the basic facts of the case secret.
- **August 2025:** the US Director of National Intelligence, Tulsi Gabbard, said the UK had agreed to drop its demand. The Home Office neither confirmed nor denied it.
- **October 2025:** the Financial Times reported that the Home Office had issued a new, narrower notice, this time limited to the data of British users. Apple did not bring ADP back.
- **2026:** Apple’s first tribunal case reportedly ended because the original notice had been replaced, and Apple filed a renewed challenge against the new one. <!-- TODO verify --> At a hearing on 17 September 2026, the tribunal heard arguments about whether the government can keep refusing to confirm the notice exists. A separate challenge by Privacy International and Liberty is listed for a hearing in December 2026, and Reuters reported that a full hearing of Apple’s own case is unlikely before 2027.

As of late October 2026, the tribunal had not ruled on the substance of either case, and Apple had not restored ADP in the UK.

## Is ADP back in the UK?

No. Apple’s support article, “Apple can no longer offer Advanced Data Protection in the United Kingdom to new users,” was still live and unchanged at the end of October 2026. It says the feature remains available everywhere else in the world. If you have a UK Apple Account and look for **Advanced Data Protection** under Settings › [your name] › iCloud, you won’t be able to turn it on.

Be careful with articles that claim ADP has “returned” to the UK. The August 2025 announcement was about the UK dropping its demand for American users’ data, not about Apple re-enabling the feature for British users.

## What about people who already had ADP turned on?

This is the part with the least public detail. Because ADP is end-to-end encrypted, Apple says it can’t turn it off on your behalf. Its support article states that UK users who already enabled ADP “will be given a period of time to disable the feature themselves to keep using their iCloud account,” and that Apple “will soon provide additional guidance.”

As of October 2026, Apple’s article still contains that wording and names no deadline. <!-- TODO verify --> If you’re in this group and see a prompt from Apple on your iPhone, follow it carefully, and make a local copy of anything important before you change settings.

## What is still end-to-end encrypted for UK users

Withdrawing ADP doesn’t touch the categories Apple encrypts end-to-end by default. According to Apple’s iCloud security overview, these 15 stay end-to-end encrypted for everyone, UK included:

- Passwords and Keychain
- Health data and Journal data
- Home data
- Messages in iCloud (only while iCloud Backup is off, see below)
- Payment information and Apple Card transactions
- Maps (pins, guides and search history)
- Safari history, Tab Groups and iCloud Tabs
- Screen Time, Siri information, Wi-Fi passwords, QuickType learned vocabulary, Bluetooth keys and Memoji

iMessage and FaceTime also remain end-to-end encrypted in transit, worldwide.

One catch matters a lot: **if iCloud Backup is on, your backup contains a copy of the Messages in iCloud key.** Without ADP, that backup is under standard protection, so your messages are only as private as the backup.

## What isn’t end-to-end encrypted without ADP

These are the 10 categories that ADP would have protected and that new UK users now keep under Standard Data Protection:

| Category | UK user without ADP |
| --- | --- |
| Photos (including Hidden and Recently Deleted) | Encrypted, Apple holds keys |
| iCloud Backup (device and Messages backups) | Encrypted, Apple holds keys |
| iCloud Drive | Encrypted, Apple holds keys |
| Notes, Reminders, Voice Memos | Encrypted, Apple holds keys |
| Safari Bookmarks, Shortcuts, Wallet passes, Freeform | Encrypted, Apple holds keys |

“Apple holds keys” doesn’t mean your data is lying around in plain text. It is encrypted in transit and on Apple’s servers. The difference is who can decrypt it: under standard protection Apple can, which is what makes account recovery possible and what makes the data reachable through legal requests. Mail, Contacts and Calendars aren’t end-to-end encrypted anywhere, with or without ADP.

## How UK users can keep photos out of non-end-to-end iCloud

You can’t get ADP, but you can decide what goes to iCloud in the first place. From least to most effort:

1. **Turn off iCloud Photos on the iPhone.** Go to Settings › [your name] › iCloud › Photos and turn off **Sync this iPhone** (older versions call it **iCloud Photos**). New photos stay on the device. Apple warns that photos already in iCloud are deleted 30 days after you stop using iCloud Photos on all devices, so download copies first.
2. **Keep photos out of iCloud Backup.** If iCloud Photos is off and iCloud Backup is on, your library is included in the backup. In Settings › [your name] › iCloud › iCloud Backup you can turn the backup off, or exclude Photos from it where your iOS version offers that option. Our guide on [whether hidden photos are saved to iCloud](id:are-hidden-photos-saved-to-icloud) explains exactly how the two interact.
3. **Back up to a computer instead, with encryption on.** A Finder or Apple Devices backup on your own computer stays out of iCloud. Tick **Encrypt local backup** so it is protected with a password you choose.
4. **Avoid Shared Albums for anything sensitive.** They aren’t end-to-end encrypted even where ADP exists.
5. **Close the web door.** Turning off [iCloud data access on the web](id:icloud-access-data-on-web) doesn’t add encryption, but it stops iCloud.com from showing your data in a browser.
6. **Use an on-device encrypted vault for the most private files.**

## Where an on-device vault fits

Without ADP, the most reliable way to keep a photo away from Apple’s servers is not to put it there. An on-device vault encrypts files on the iPhone, with keys that never leave it.

Velcrypt works this way. Photos, videos and documents you import are encrypted with AES-256-GCM, using keys derived from a 5×5 pattern you draw ([how the encryption works](id:encryption)). There is no account and no server, and vault content is excluded from iCloud and computer backups ([on-device, no account](id:offline-no-account)). Each pattern opens its own vault, so you can keep a decoy vault for when someone insists you unlock the app.

After importing, delete the originals from the Photos library and Recently Deleted, or they’ll keep syncing; see [deleting originals after import](id:delete-original-photos-after-import). If you want a safety net, Velcrypt can create an encrypted backup file protected by a backup password you choose. That file is encrypted before it leaves the app, so even if you save it to iCloud Drive under standard protection, Apple only stores ciphertext.

The trade-off is the same one ADP asks of you, only stricter: forget the pattern or the backup password and nobody, including us, can recover the vault. For a fuller comparison of the two approaches, read [Advanced Data Protection explained](id:icloud-advanced-data-protection-explained).
