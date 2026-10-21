---
pageId: password-protect-folder-iphone
title: "How to Password Protect a Folder on iPhone"
description: "The Files app can’t password protect folders. Lock the Files app in iOS 18, use locked notes, or keep documents in an encrypted vault instead."
h1: "How to password protect a folder on iPhone"
navTitle: "Password protect a folder"
answer: "You can’t put a password on a folder in the iPhone Files app. The closest built-in options are locking the whole Files app with Require Face ID (iOS 18 and later) or storing content in a locked note with its own password. For documents that need a lock independent of your passcode, use an encrypted vault app that imports from Files."
keyFacts:
  - "The Files app has no setting to lock or password protect individual folders."
  - "iOS 18 and later can lock the Files app itself behind Face ID, Touch ID or the passcode."
  - "Locked notes are encrypted and can use a separate Notes password."
  - "Password-protected PDFs and encrypted archives protect single files, not folders."
  - "An encrypted vault app can hold documents from Files behind its own secret."
primaryKeyword: "password protect a folder on iphone"
keywords: ["lock files app iphone", "password protect folder iphone", "lock folder iphone", "password protect files iphone", "secure folder iphone", "hide files iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What the Files app can and cannot lock, and the practical ways to protect a folder of documents on iPhone."
category: hiding
order: 6
related: [private-documents, scan-documents-privately-iphone, lock-photos-iphone, secret-photo-album-iphone, medical-and-id-documents, offline-no-account]
faq:
  - q: "Can I lock a folder in the Files app on iPhone?"
    a: "No. Files does not offer per-folder passwords. On iOS 18 and later you can lock the entire Files app with Face ID, Touch ID or your passcode, which protects every folder at once."
  - q: "How do I lock the Files app on iPhone?"
    a: "Touch and hold the Files icon, choose Require Face ID (or Touch ID or Passcode) and confirm. This needs iOS 18 or later."
  - q: "Can I password protect a PDF on iPhone?"
    a: "Some apps can export or save a PDF with a password, but iOS has no general way to add one from the Files app. A password-protected PDF only protects that one file, not the folder it is in."
  - q: "Are files in On My iPhone encrypted?"
    a: "They are protected by iOS Data Protection while the phone is locked, like other data on the device. Once the iPhone is unlocked, anyone using it can open the Files app and read them unless the app is locked."
  - q: "Is iCloud Drive a safe place for private documents?"
    a: "iCloud Drive files are encrypted, but Apple holds the keys unless you turn on Advanced Data Protection. Anyone signed in to your Apple Account on another device can also browse them."
---

The Files app looks a lot like a desktop file browser, so it is natural to expect the same options: right-click a folder, set a password, done. iOS does not work that way. There is no per-folder lock in Files, and no hidden setting that adds one. What you can do is lock the app, lock the content in a different app, or move the documents somewhere that has its own lock.

## Why Files has no folder passwords

The Files app is a browser for storage locations: **On My iPhone**, **iCloud Drive**, and any third-party providers you have connected. It shows what is in those locations but leaves access control to iOS. Your iPhone’s security is built around a single device passcode. While the phone is locked, file data is encrypted by iOS Data Protection; once unlocked, the Files app can show it to whoever is holding the phone.

So the realistic question is not “how do I password protect this folder” but “how do I stop someone using my unlocked phone from opening these documents”.

## Option 1: lock the Files app (iOS 18 and later)

iOS 18 added app locking, which puts an authentication prompt in front of an app each time it opens.

1. Find **Files** on the Home Screen or in the App Library.
2. Touch and hold the icon.
3. Choose **Require Face ID** (the wording follows your device: Touch ID or Passcode).
4. Confirm.

Now Files asks for Face ID before showing anything. This protects every folder in Files, not just one, which is either a feature or an annoyance depending on how often you use it.

The limits are the usual ones for built-in locks. The fallback is your device passcode, so anyone who knows it can open Files. The lock also applies only to the Files app; other apps that can access the same storage, such as cloud storage apps or apps with their own document folders, are unaffected. Apple’s own apps generally can’t be moved into the Hidden apps folder, so Files remains visible on the device.

## Option 2: a locked note

Apple Notes can lock individual notes, encrypt them, and protect them with a password that is separate from your iPhone passcode. Notes can contain scanned documents, photos and file attachments, so a locked note can act as a small protected folder.

1. Set a custom password in **Settings › Apps › Notes › Password** (Settings › Notes › Password before iOS 18), or choose to use the device passcode.
2. Create a note and add your content. The camera button lets you scan documents straight into the note, so a paper document never touches your Photos library.
3. Tap **More (•••)** › **Lock**.

You can group several locked notes in a Notes folder, but it is the individual notes that are locked, not the folder. For a deeper comparison see [Velcrypt vs Apple Notes locked notes](id:velcrypt-vs-apple-notes-locked-notes), and for scanning specifically, [scan documents privately on iPhone](id:scan-documents-privately-iphone).

## Option 3: protect individual files

Some file types can carry their own password:

- **PDFs.** Several PDF editors and office apps can save a PDF with a password. iOS itself has no general tool for it.
- **Office documents.** Some productivity apps support document passwords; whether you can set one on iPhone depends on the app.
- **Encrypted archives.** A few file manager apps can create password-protected archives.

These protect one file at a time, and opening and closing them can leave decrypted copies in temporary folders depending on the app. They are useful when you need to send a protected file to someone else; they are clumsy as everyday storage.

## Option 4: an encrypted vault

A vault app imports documents into its own storage and encrypts them under a secret that only you know. In effect, it is the password-protected folder that Files does not provide, with the added benefit that the lock is not your device passcode.

When choosing one, check that it actually encrypts files (not just hides them), whether it uploads anything, and whether it can import from the Files app, since that is where most documents live. Remember to delete the original from Files afterwards; an imported copy does not remove the source. If it was in iCloud Drive, also check **Recently Deleted** in the Files app’s Browse locations.

## Places documents collect without you noticing

Locking one folder is only useful if the sensitive files are actually in it. On an iPhone, documents tend to pile up in a few predictable spots:

- **Downloads.** Safari and Mail save files to a Downloads folder in Files, either in iCloud Drive or On My iPhone, depending on your Safari settings.
- **Mail attachments.** Opening an attachment does not delete it from the email. The message itself is still in your mailbox, on every device that syncs it.
- **Messages and chat apps.** PDFs and scans you have sent or received stay in the conversation until you delete them there.
- **Recently Deleted in Files.** Files you delete from iCloud Drive or On My iPhone go to a Recently Deleted location in the Browse tab, where they wait before being removed for good.

Before deciding where your private folder should live, it is worth sweeping these locations once.

## Which option fits

| Need | Best fit |
| --- | --- |
| Stop casual access to all my files | Lock the Files app |
| Protect a few notes or scans with a separate password | Locked notes |
| Send a protected file to someone | Password-protected PDF or archive |
| Keep ID scans, medical records or contracts private from people who know my passcode | Encrypted vault |

For identity documents and health records specifically, the use case on [medical and ID documents](id:medical-and-id-documents) has more context.

## Where Velcrypt fits

Velcrypt keeps [private documents](id:private-documents) in the same encrypted vaults as photos and videos. You import them from the Files app, and they are encrypted on the device with AES-256-GCM under keys derived from your unlock pattern. There is no account and nothing goes to a server; the page on [offline, no-account storage](id:offline-no-account) explains what that means in practice.

Because vault data is excluded from iCloud and computer backups, keep an independent copy of any document you can’t afford to lose, stored somewhere you trust. If the phone is lost or the pattern forgotten, the vault cannot be opened by anyone, including Velcrypt.
