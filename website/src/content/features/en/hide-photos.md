---
pageId: hide-photos
title: "Hide Photos on iPhone in an Encrypted Vault | Velcrypt"
description: "Import photos from your iPhone library into an encrypted Velcrypt vault, remove the originals and Recently Deleted copies, and organise them in albums."
h1: "Hide photos in an encrypted vault"
navTitle: "Hide photos"
answer: "Velcrypt imports photos from your Photos library as encrypted copies inside a vault. The originals stay in Photos until you delete them, so after importing you remove them and empty Recently Deleted. Inside the vault you can sort photos into albums and view them with zoom and swipe."
keyFacts:
  - "Importing copies a photo into the vault; the original stays in Photos."
  - "Delete originals afterwards and empty Recently Deleted, where items otherwise stay about 30 days."
  - "Every imported photo is encrypted with AES-256-GCM on the device."
  - "Organise photos into albums inside each vault."
  - "View photos with pinch-to-zoom and swipe between them."
primaryKeyword: "hide photos iphone app"
keywords: ["encrypted photo vault iphone", "private photo album app", "hide pictures iphone", "lock photos app", "secret photo vault"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Import photos as encrypted copies, clear the originals and Recently Deleted, then browse them in albums with zoom and swipe."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Does Velcrypt delete the photo from my camera roll?"
    a: "Not automatically. Importing creates an encrypted copy in the vault and leaves the original in Photos. Delete the original yourself, then remove it from Recently Deleted as well."
  - q: "How long do deleted photos stay in Recently Deleted?"
    a: "About 30 days, unless you delete them from Recently Deleted sooner. Until then they can be recovered by anyone who can open that album."
  - q: "Is a photo in Velcrypt different from a photo in the Hidden album?"
    a: "Yes. The Hidden album is still part of your Photos library and can sync through iCloud Photos. A photo in Velcrypt is encrypted with keys derived from your pattern and is not included in iCloud or computer backups."
  - q: "Does Velcrypt upload my photos anywhere?"
    a: "No. Velcrypt has no servers and no account. Imported photos are encrypted and stored only on your iPhone."
---

Your camera roll is the most visited place on your phone. Anyone who borrows it to look at one picture can scroll past it to everything else. Moving private photos into Velcrypt takes them out of that scroll and puts them behind a pattern and encryption.

## How importing photos works

Importing is the act of bringing a photo from your iPhone's Photos library into a Velcrypt vault. You pick one or several photos with the standard iOS photo picker, and Velcrypt stores an encrypted copy in the vault you currently have open.

The important word is **copy**. Velcrypt does not move or delete anything in your Photos library. The original stays exactly where it was until you remove it. That is a safety measure, because you can check that the import worked before anything is deleted, but it means one more step is up to you.

Every imported photo is encrypted on the device with AES-256-GCM, using a key derived from that vault's master key. How those keys are built is explained on the [encryption](id:encryption) page.

## Removing the originals

A photo is only private if the other copies are gone. After importing:

1. **Open Photos and select the originals** you just imported.
2. **Delete them.** They move to the Recently Deleted album.
3. **Open Recently Deleted.** In iOS 18 and later it sits under “Utilities” in the Photos app; in older versions it is near the bottom of the Albums tab.
4. **Delete them again from there.** Otherwise they stay recoverable for about 30 days.

Since iOS 16, Recently Deleted and Hidden are locked with Face ID, Touch ID or your passcode by default, but anyone who knows your device passcode can still open them. If you use iCloud Photos, deleting on one device removes the photo from your other devices too. The full walkthrough is in [deleting originals after import](id:delete-original-photos-after-import).

Also think about copies elsewhere: photos sent in chats, shared albums, email attachments or a computer you once synced with. Velcrypt can only protect what is inside the vault.

## Organising photos in albums

Inside each vault you can create albums, for example “Documents”, “Personal” or “Trip”, and sort photos into them. Multi-select lets you move many photos at once, and you can move items between albums whenever your system changes. See the [albums](id:albums) feature for details.

Albums belong to the vault they are in. A different pattern opens a different vault with its own albums, which is how [hidden vaults](id:hidden-vaults) keep separate collections fully apart.

## Viewing photos inside the vault

Photos open in Velcrypt's built-in viewer. You can pinch to zoom into details and swipe left or right to move through an album. Photos are decrypted for display while the vault is open and the app locks again on its own when you leave it, according to your [auto-lock](id:auto-lock) setting.

## Velcrypt vs the Hidden album

| | iPhone Hidden album | Velcrypt vault |
| --- | --- | --- |
| Where the photo lives | Your Photos library | An encrypted vault in the app |
| How it is unlocked | Face ID, Touch ID or device passcode | Your Velcrypt pattern |
| iCloud | Syncs with iCloud Photos if enabled | Not included in iCloud or computer backups |
| Separate collections | One Hidden album | A separate vault per pattern |

The Hidden album is convenient and good enough for many people. Its limits are covered in [is the iPhone Hidden album private?](id:is-iphone-hidden-album-private), and a broader walkthrough of every option is in [how to hide photos on iPhone](id:hide-photos-iphone).

## Good to know

- The in-vault camera saves new photos straight into the vault, so they never reach your Photos library. For photos you already took, import them, then delete the original.
- Photos can carry location and device data. If you plan to share them later, [remove photo metadata](id:remove-photo-metadata-iphone) first.
- Vault data is not included in iCloud or computer backups. If a photo is irreplaceable, create an encrypted backup in Settings → Backup and keep the file somewhere you trust.
