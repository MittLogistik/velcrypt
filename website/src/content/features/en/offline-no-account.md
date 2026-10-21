---
pageId: offline-no-account
title: "Offline Photo Vault with No Account, No Cloud, No Servers"
description: "Velcrypt works fully on your iPhone: no account, no email, no servers, no uploads and no analytics on vault content. Here is what that means for you."
h1: "Fully offline, no account"
navTitle: "Offline, no account"
answer: "Velcrypt runs entirely on your iPhone. There is no account, no sign-up, no email, no server and no upload, and no analytics on what you store. In the first version vault data is also excluded from iCloud and computer backups, so a lost phone or forgotten pattern cannot be recovered."
keyFacts:
  - "No account, sign-up or email address."
  - "No servers and no uploads; vault files never leave the phone."
  - "No analytics on vault content."
  - "Vault data is excluded from iCloud and Finder/iTunes backups in the first version."
  - "Trade-off: no recovery if the phone is lost or the pattern is forgotten. An encrypted backup is planned."
primaryKeyword: "offline photo vault no account"
keywords: ["photo vault without account", "private photo app no cloud", "offline vault iphone", "photo vault no sign up", "local only photo vault"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "No account, no servers, no uploads, no content analytics. Everything stays on your iPhone, with an honest trade-off on recovery."
status: available
schemaType: WebPage
order: 5
related: [encryption, photo-vault-without-account, forgot-vault-pattern, are-photo-vault-apps-safe, privacy]
faq:
  - q: "Does Velcrypt need an account or email address?"
    a: "No. There is no sign-up, no login and no email. You open the app and draw a pattern; that is all."
  - q: "Are my vault files backed up to iCloud?"
    a: "No. In the first version, vault data is excluded from iCloud and from computer backups made with Finder or iTunes. Your files exist only on your iPhone."
  - q: "What happens to my vault if I lose my phone?"
    a: "The vault is lost with it. Because nothing is stored on a server or in a backup, neither you nor Velcrypt can restore it. Keep copies of anything irreplaceable somewhere you trust."
  - q: "Will Velcrypt ever offer backups?"
    a: "An encrypted backup and recovery option is planned, likely as part of the optional Premium upgrade. There is no release date yet, and the first version does not include it."
---

Many vault apps start by asking for your email. Velcrypt does not ask for anything. There is nothing to sign up for, nothing to log into and nothing on a server that could leak, because there is no server. This page explains what that means in practice, including the downside.

## What “offline” means in Velcrypt

An offline vault is one that stores and encrypts everything on the device itself, without relying on a remote service. In Velcrypt that means:

- **No account.** No username, password reset or profile.
- **No email or phone number.** Velcrypt never asks who you are.
- **No servers.** There is no Velcrypt cloud that holds your files or keys.
- **No uploads.** Photos, videos and documents you import stay on your iPhone.
- **No analytics on vault content.** Nothing about what you store, how many items you have or what they show is collected.

Your files are encrypted on the phone with keys derived from your [pattern](id:pattern-lock), as described on the [encryption](id:encryption) page. The keys never exist anywhere else.

## Why no account is a privacy feature

Every account is a link between you and your data. It is an email address someone can search for, a password someone can phish and a database someone can breach. Leaving accounts out removes all three.

It also means Velcrypt cannot hand over your files, because it has none. There is no company-side copy to request. The guide on [photo vaults without an account](id:photo-vault-without-account) goes deeper into why this matters, and the [privacy policy](id:privacy) describes exactly what the app and website do and do not collect.

## Excluded from iCloud and computer backups

In the first version, vault data is excluded from iCloud Backup and from computer backups made with Finder or iTunes. That is intentional: a backup is another copy, stored somewhere you do not fully control, and Velcrypt keeps the number of copies at one.

This is different from Apple's own Hidden album, which syncs through iCloud Photos when that is turned on. If you are unsure how your existing photos are stored, read [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud)

## The honest trade-off: no recovery

Keeping everything on one device has a clear cost, and it is better to see it plainly:

| Situation | Can the vault be recovered? |
| --- | --- |
| You forget your pattern | No |
| Your phone is lost or stolen | No |
| Your phone breaks beyond repair | No |
| You restore a new phone from a backup | No, vault data is not in the backup |
| You delete Velcrypt from the phone | No, deleting an iOS app removes its data |

Nobody can help, including Velcrypt, because no one else ever had a copy. Before you move irreplaceable files into a vault, decide where a second copy should live, for example on an encrypted drive you keep at home. The guide on [what to do if you forget your vault pattern](id:forgot-vault-pattern) explains the options that remain.

## Planned: encrypted backup

An encrypted backup and recovery option is planned for a future version, as part of the optional Premium upgrade. The goal is to let you keep a protected copy without giving up the principle that only you hold the keys. There is no date for it yet, and nothing in this page should be read as a promise of when it will arrive.

## Good habits for an offline vault

- **Choose a pattern you will remember** and practise it in the first days.
- **Keep a separate copy of anything irreplaceable**, such as ID scans or family photos, in a place you trust.
- **Delete originals deliberately** once a copy is in the vault, including from Recently Deleted. See [deleting originals after import](id:delete-original-photos-after-import).
- **Keep the [auto-lock](id:auto-lock) delay short** so an open vault does not stay open if you put the phone down.
