---
pageId: delete-original-photos-after-import
title: "Delete Original Photos After Importing to a Vault"
description: "Vault apps copy photos, they don’t move them. Delete the originals from Photos, empty Recently Deleted, and understand iCloud and chat copies."
h1: "How to delete original photos after importing them into a vault"
navTitle: "Delete originals after import"
answer: "Importing into a vault app copies a photo; the original stays in your library. After checking the copy opens in the vault, delete the original in Photos, then open Utilities › Recently Deleted (iOS 18 and later) and delete it there too, or it remains for about 30 days. With iCloud Photos on, the deletion applies to all your devices."
keyFacts:
  - "Importing a photo into a vault creates a copy; it does not move the original."
  - "Deleted photos stay in Recently Deleted for about 30 days unless you remove them sooner."
  - "In iOS 18 and later, Recently Deleted is under Utilities in the Photos app and is locked with Face ID or passcode."
  - "With iCloud Photos on, deleting a photo removes it from iCloud and every synced device."
  - "Copies in chats, shared albums, other cloud apps and other people’s phones are not affected."
primaryKeyword: "delete photos after importing to vault"
keywords: ["delete original photos after import", "empty recently deleted iphone", "permanently delete photos iphone", "recently deleted ios 18", "delete photos from iphone but not vault", "vault app copy or move"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Copy vs move, deleting originals from Photos, emptying Recently Deleted, and the iCloud and chat copies that remain."
category: practical
order: 30
related: [hide-photos, hide-videos, are-hidden-photos-saved-to-icloud, store-intimate-photos-safely-iphone, forgot-vault-pattern, hide-photos-iphone]
faq:
  - q: "Does importing photos into a vault app delete them from my camera roll?"
    a: "Usually not. Most vault apps, Velcrypt included, copy the photo and leave the original in Photos. You delete the original yourself once the copy is safely in the vault."
  - q: "How long do photos stay in Recently Deleted on iPhone?"
    a: "About 30 days. After that iOS removes them permanently. You can remove them sooner by deleting them from the Recently Deleted album."
  - q: "Where is Recently Deleted in iOS 18?"
    a: "Open Photos and scroll down to the Utilities section. Recently Deleted is listed there and requires Face ID, Touch ID or your passcode to open."
  - q: "If I delete a photo on my iPhone, is it deleted from iCloud?"
    a: "Yes, if iCloud Photos is on. The deletion syncs to iCloud and every device using the same library, and the item moves to Recently Deleted on all of them."
  - q: "Can a permanently deleted photo be recovered?"
    a: "Not from the Photos app once it has left Recently Deleted. It may still exist in an older computer backup, another cloud service, a shared album or a chat, so check those too."
  - q: "Should I delete the original before or after checking the vault?"
    a: "After. Open the imported photo or video in the vault first and make sure it plays and looks right. Only then delete the original."
howTo:
  name: "Delete original photos after importing them into a vault"
  steps:
    - name: "Check the copy in the vault"
      text: "Open the vault and view each imported photo or play each video to confirm the copy is complete."
    - name: "Select the originals in Photos"
      text: "In the Photos app, tap Select and choose the same photos and videos."
    - name: "Delete them"
      text: "Tap the trash button and confirm. The items move to Recently Deleted."
    - name: "Open Recently Deleted"
      text: "Scroll down to Utilities and open Recently Deleted (in the Albums tab on iOS 17 and earlier), then authenticate with Face ID, Touch ID or your passcode."
    - name: "Delete them permanently"
      text: "Tap Select, choose the items or use the option to delete all, and confirm. They are now removed from the device and, with iCloud Photos, from iCloud."
    - name: "Check other copies"
      text: "Look for the same photos in shared albums, chat threads, other cloud backup apps and duplicates in your library."
---

Moving private photos into a vault feels like the end of the job. In most cases it is only the halfway point. Almost every vault app, including Velcrypt, copies what you import rather than moving it, so the photo you meant to protect is still sitting in your camera roll, unprotected, until you remove it.

## Copy vs move: why vaults copy

Copying means the vault creates its own encrypted version of a photo while the original stays where it was. Moving would mean the original disappears from Photos as part of the import.

iOS strongly favours copying. Apps that read from your library through the system photo picker receive a copy of the image data and, in many cases, cannot delete anything from your library at all. Even apps with full library access must ask iOS for permission to delete, and iOS shows its own confirmation dialog. Copying is also the safer default: if an import fails halfway, nothing is lost.

The consequence is simple. Protecting a photo in a vault takes two steps: import it, then delete the original.

## Step 1: check the copy first

Before deleting anything, open the vault and look at what you imported. View a few photos at full size and play each video to the end. Large videos in particular can take a moment to import, and if your library uses **Optimize iPhone Storage** with iCloud Photos, the original may have needed to download from iCloud first.

This check matters more than usual with vaults that keep data only on the device. If the vault copy is the only copy left, there is no other way back.

## Step 2: delete the originals in Photos

1. Open **Photos** and tap **Select**.
2. Tap each photo and video you imported. You can drag a finger across thumbnails to select a row quickly.
3. Tap the **trash** button and confirm.

The items are not gone yet. They have moved to **Recently Deleted**, where they stay for about 30 days.

If you imported from the Hidden album, delete them from inside the Hidden album the same way.

## Step 3: empty Recently Deleted

Recently Deleted is a safety net: an album that holds deleted photos and videos for roughly 30 days so you can restore mistakes. For privacy it is also a loophole, because anything in it can be restored by anyone who can open it.

1. In Photos, scroll down to **Utilities** and open **Recently Deleted** (iOS 18 and later). On iOS 16 and 17, it is at the bottom of the **Albums** tab. In iOS 26, look for Utilities in the collections view.
2. Authenticate with Face ID, Touch ID or your passcode. Since iOS 16 this album is locked by default.
3. Tap **Select**, choose the items, and delete them. To clear everything at once, use the option to delete all; depending on your iOS version it appears directly after tapping Select or in the More (•••) menu.
4. Confirm. The items are now permanently removed from the Photos app.

## Work in batches

If you are moving a large set of photos and videos, especially video, do it in rounds rather than all at once. Import one batch, check it, delete those originals, empty them from Recently Deleted, and then start the next. This has two benefits. Storage stays under control, because each batch’s duplicates are cleared before new ones are created. And it is much easier to keep track of which items you have already checked, so nothing is deleted before its copy has been confirmed.

A simple way to keep your place is to add each batch to a temporary album in Photos before importing it. After import, you select everything in that album, delete it, and then delete the empty album.

## What iCloud Photos changes

iCloud Photos keeps one library in sync across your iPhone, iPad, Mac and iCloud.com. That cuts both ways:

| Action on iPhone | Effect with iCloud Photos on |
| --- | --- |
| Delete a photo | Moves to Recently Deleted on every synced device |
| Empty Recently Deleted | Removed from iCloud and all devices |
| Restore from Recently Deleted on another device | Comes back everywhere |
| Import into a vault | No change in iCloud until you delete the original |

While iCloud Photos is on, there is no way to delete a photo from just one device: a deletion is a deletion everywhere, which is exactly what you want here. For how iCloud stores your library, see [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud).

If you use a **Shared Library**, a photo you contributed may be deletable by other participants or may need to be moved to your Personal Library first. Check which library it sits in before you delete.

## Copies that deleting does not touch

Deleting from Photos cleans up your library. It does nothing about copies elsewhere:

- **Chats.** Photos sent or received in Messages, WhatsApp, Telegram and other apps live in those conversations and, often, on the other person’s phone.
- **Shared albums.** Each shared album holds its own copy for its subscribers. Delete the photo from the shared album itself.
- **Other cloud apps.** Google Photos, OneDrive, Dropbox and similar apps may have uploaded the photo automatically. Delete it there too, including from their own trash folders.
- **Computer backups and imports.** A Mac or PC you once imported photos to, or an older device backup, may still contain them.
- **Duplicates.** Screenshots, edited copies and duplicates are separate items. Check **Utilities › Duplicates** in iOS 16 and later.

For particularly sensitive images, the guide to [storing intimate photos safely](id:store-intimate-photos-safely-iphone) goes through these places with extra care.

## Where Velcrypt fits

Velcrypt follows the copy model described above. When you [import photos](id:hide-photos) or [videos](id:hide-videos), the vault encrypts its own copy with AES-256-GCM and leaves the original in Photos, so deleting the original and emptying Recently Deleted is up to you.

Before you do, weigh one limit honestly. Velcrypt’s vault data is stored only on your iPhone and is excluded from iCloud and computer backups. Once the originals are gone, the vault holds the only copy on that device. If you [forget the pattern](id:forgot-vault-pattern), those files cannot be recovered by you or by Velcrypt. To protect against a lost phone, create an encrypted backup in Settings → Backup and save the file somewhere you trust, such as Files, iCloud Drive or a computer.
