---
pageId: password-protect-photos-iphone
title: "How to Password Protect Photos on iPhone"
description: "iOS has no per-photo password. Here are the real options for password protecting individual photos on iPhone, and what each one actually protects."
h1: "How to password protect photos on iPhone"
navTitle: "Password protect photos"
answer: "iOS cannot put a password on an individual photo. The closest built-in options are hiding it in the Face ID–locked Hidden album or adding it to a locked note with its own Notes password. To protect specific photos with a secret that is not your device passcode, copy them into an encrypted vault app and delete the originals."
keyFacts:
  - "The Photos app has no per-photo or per-album password setting."
  - "The Hidden album opens with Face ID, Touch ID or the device passcode, not a separate password."
  - "A locked note can use its own Notes password, separate from the iPhone passcode."
  - "Adding a photo to a note or vault creates a copy; the original stays in Photos until deleted."
  - "An encrypted vault app gives individual photos a lock that is independent of the device."
primaryKeyword: "password protect photos on iphone"
keywords: ["password protect individual photos iphone", "put password on photos iphone", "password protect pictures iphone", "lock individual photos iphone", "photo password iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Why iOS has no per-photo password, and three practical ways to put a real lock on specific photos instead."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "Can you put a password on a single photo on iPhone?"
    a: "Not in the Photos app. iOS only locks the Hidden and Recently Deleted albums, and those use Face ID, Touch ID or your device passcode. A single photo can get its own password only by moving a copy into a locked note or a vault app."
  - q: "Can I set a different password for the Hidden album?"
    a: "No. The Hidden album always uses your device’s Face ID, Touch ID or passcode. There is no setting for a separate Hidden album password."
  - q: "Are photos in locked notes encrypted?"
    a: "Yes. Apple encrypts the contents of locked notes, including attached images. If you use a separate Notes password and forget it, Apple cannot recover those notes."
  - q: "If I password protect a photo, is it removed from my camera roll?"
    a: "Not automatically. Locked notes and vault apps make a copy, so you need to delete the original from Photos and then from Recently Deleted for it to be gone."
  - q: "Is a password safer than Face ID for photos?"
    a: "For keeping out people who are physically with you, often yes. Face ID can be used while you are asleep or pressured, and the Photos lock falls back to the device passcode that others may know. A separate secret avoids both."
---

People often search for a way to put a password on one photo, the way you might on a PDF. iOS does not offer that. What it offers are a few nearby features, and which one works for you depends on what you mean by “password” and who you are protecting the photo from.

## Why there is no per-photo password

The iPhone’s security model protects the whole device with one passcode. When the phone is locked, your data is encrypted; once you unlock it, apps you open can show their contents. Individual photos do not carry their own locks. The Photos app adds a second prompt only for two system albums, Hidden and Recently Deleted, and that prompt uses the same Face ID, Touch ID or passcode as the lock screen.

So there are really two separate needs hiding behind the question:

1. **“I don’t want it in my camera roll.”** That is a visibility problem, and hiding solves it.
2. **“I want it to need a secret only I know.”** That is an access problem, and it needs a lock that is different from your device passcode.

## Option 1: hide it behind Face ID

If your main concern is someone scrolling past the photo, hiding it is quick:

1. Open the photo in **Photos**.
2. Tap **More (•••)** › **Hide**.
3. Check that **Use Face ID** is on in **Settings › Apps › Photos** (Settings › Photos before iOS 18).

The photo now sits in the Hidden album, behind biometric authentication. It is not a password in the usual sense: anyone who knows your iPhone passcode can choose the passcode fallback and open the album. More detail is in [how to hide photos on iPhone](id:hide-photos-iphone).

## Option 2: a locked note with its own password

Apple Notes is the only built-in app that lets you set a separate password, distinct from the device passcode, for content you choose. A locked note is encrypted, and attached photos are included.

1. Go to **Settings › Apps › Notes › Password** (Settings › Notes › Password on older versions) and choose to use a custom password rather than your iPhone passcode. Add a hint you will understand and others will not.
2. In **Notes**, create a new note. Tap the camera button and either take a photo directly into the note or choose one from your library.
3. Tap **More (•••)** › **Lock**.
4. Return to Photos and delete the original, then delete it again from **Recently Deleted**.

Taking the photo directly inside the note is the cleaner path, because it never lands in your camera roll in the first place.

Be aware of the trade-offs. Notes syncs through iCloud if you use iCloud for Notes, and Notes is not designed for viewing many photos or videos. If you forget the custom password, those notes cannot be opened. [Velcrypt vs Apple Notes locked notes](id:velcrypt-vs-apple-notes-locked-notes) goes into the comparison.

## Option 3: an encrypted vault app

A photo vault is an app that keeps its own encrypted copy of your images, locked with a secret the app manages. This is the closest thing to a real per-photo password: you decide exactly which photos go in, and the device passcode does not open them.

Look for a few things before trusting one:

- **Real encryption,** not just a hidden folder. The app should encrypt files on the device with a modern authenticated cipher.
- **A lock independent of the device.** If the vault opens with Face ID alone, it inherits the same passcode fallback problem as the Hidden album.
- **Clear data handling.** Does it upload to a server? Does it need an account? What happens if you forget the code?

[Are photo vault apps safe?](id:are-photo-vault-apps-safe) covers these questions in more depth.

## Comparing the options

| | Hide | Locked note | Vault app |
| --- | --- | --- | --- |
| Separate from device passcode | No | Yes, with a custom Notes password | Usually |
| Removes photo from camera roll | Yes, moves it to Hidden | Only if you delete the original | Only if you delete the original |
| Comfortable for many photos | Yes | No | Yes |
| Handles videos well | Yes | Poorly | Usually |
| Built into iOS | Yes | Yes | No |

## Choosing a secret worth having

A separate password only helps if it is genuinely separate. A few habits make the difference:

- **Don’t reuse your iPhone passcode.** If the people you are protecting against know your passcode, a matching Notes password or vault code gives them both.
- **Avoid the obvious.** Birthdays, anniversaries, 1234-style sequences and the same code as your banking app are the first things anyone tries.
- **Make it memorable to you alone.** You will not be able to reset it in most cases, so pick something you can recall months from now without writing it on a sticky note in your phone case.
- **Mind your surroundings.** Any secret can be read over your shoulder. Enter it when nobody is watching the screen.

## A note on the originals

Whichever lock you choose, a protected copy does not help if an unprotected copy is still around. After moving a photo into a note or vault, delete it from Photos, empty it from Recently Deleted, and think about other places it might exist: an iCloud shared album, a chat thread, a cloud storage app. The guide to [deleting originals after import](id:delete-original-photos-after-import) walks through each step.

## Where Velcrypt fits

Velcrypt answers the second need, a secret only you know. Instead of a typed password, you draw a [pattern](id:pattern-lock) on a 5×5 grid of dots. It has to pass through at least six dots with at least one change of direction, and patterns of eight to twelve dots are recommended. Velcrypt does not use Face ID or Touch ID at all, so your iPhone passcode and your face cannot open it.

Each pattern opens its own vault, and the photos inside are [encrypted](id:encryption) with AES-256-GCM using keys derived from that pattern. Because everything stays on the device and is excluded from iCloud and computer backups, there is no way to reset a forgotten pattern. An optional encrypted backup file protects against a lost phone, but it is locked with a backup password that can’t be reset either. If you would rather have a password you can recover, that limitation is worth weighing honestly before you move anything important.
