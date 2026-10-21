---
pageId: secret-photo-album-iphone
title: "Secret Photo Album on iPhone: What Actually Works"
description: "How to make a secret photo album or secret folder on iPhone: the Hidden album, hiding it from view, why normal albums can’t be locked, and vault options."
h1: "How to make a secret photo album on iPhone"
navTitle: "Secret photo album on iPhone"
answer: "The iPhone’s built-in secret album is the Hidden album: hide photos with More (•••) › Hide, then turn off Show Hidden Album in Photos settings so the album disappears from view. Normal albums you create cannot be hidden or locked. For a secret folder that nobody can open with your passcode, use an encrypted vault app."
keyFacts:
  - "You cannot hide or lock an album you created yourself; only the system Hidden album is locked."
  - "Turning off Show Hidden Album removes the Hidden album from the Photos app entirely."
  - "Renaming an album to something boring does not hide its contents from your library."
  - "The Files app has no secret or locked folders, and its files are not password protected."
  - "Vault apps create separate, encrypted albums that the Photos app cannot see."
primaryKeyword: "secret photo album iphone"
keywords: ["secret folder iphone", "secret album iphone", "hidden folder iphone", "make a private album on iphone", "secret photos iphone", "private album iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Create a genuinely secret photo album on iPhone, and avoid the common tricks that only look secret."
category: hiding
order: 5
related: [hide-photos-iphone, hidden-vaults, what-is-a-decoy-vault, password-protect-folder-iphone, albums, plausible-deniability-explained]
faq:
  - q: "Can I make a private album on iPhone?"
    a: "Not one you name yourself. Albums you create are always visible and unlocked. The only private album is the system Hidden album, which is locked with Face ID or passcode and can be removed from view."
  - q: "Do photos in an album also appear in my library?"
    a: "Yes. An album is just a collection of references to photos in your library. Adding a photo to an album, even a secretly named one, leaves it fully visible in the Library view."
  - q: "How do I hide the Hidden album on iPhone?"
    a: "Go to Settings › Apps › Photos (Settings › Photos before iOS 18) and turn off Show Hidden Album. The album no longer appears in Photos until you turn the setting back on."
  - q: "Is there a secret folder on iPhone?"
    a: "iOS has no secret folder for files or photos. The Files app has no locking for folders, and the Hidden album is the only secret space in Photos. Secret folders in the stronger sense come from vault apps."
  - q: "Can someone tell I have a secret album?"
    a: "With the Hidden album, someone who knows iOS can check the Show Hidden Album setting. A vault app is visible on the Home Screen unless you hide it in iOS 18 and later, but some vaults can hide how many separate vaults exist."
---

A secret photo album needs two properties: people should not find it, and if they do find it, they should not be able to open it. iOS handles the first property reasonably well and the second only partly. Here is how to build the best version with what is built in, and where it runs out.

## The built-in secret album: Hidden

The Hidden album is the Photos app’s only private album. Anything you hide moves into it and out of your Library grid, your other albums and most suggestions.

### Step 1: move photos into Hidden

1. In **Photos**, tap **Select** and choose the photos and videos you want.
2. Tap the **More (•••)** button and choose **Hide**.

### Step 2: make the album disappear

Open **Settings › Apps › Photos** (Settings › Photos before iOS 18) and turn off **Show Hidden Album**. The Hidden album vanishes from the Photos app. There is no empty slot, no greyed-out entry, nothing to tap.

### Step 3: keep it locked

On the same screen, make sure **Use Face ID** (or Use Touch ID / Use Passcode) is on. That way, even after you turn Show Hidden Album back on to look at your photos, the album asks for authentication.

To view your secret album later, switch Show Hidden Album on, open **Utilities › Hidden** in Photos (iOS 18 and later), authenticate, and switch it off again when you are done.

## Tricks that only look secret

Several common tips feel private but do not keep anything out of view.

**Renaming an album.** You can create an album called “Receipts” or “Work” and fill it with personal photos. But an album is just a list pointing at photos that still live in the main library. Every photo in that album is also in the Library grid, in Memories and in search results.

**Using a shared album as a private one.** A shared album with no one else invited still appears in the shared albums section of Photos on every device signed in to your Apple Account, and it is unlocked.

**Putting photos in the Files app.** You can save images to **On My iPhone** or iCloud Drive in Files, which takes them out of Photos. But Files has no folder locks, and anyone who opens the app can browse those folders. The guide on [password protecting a folder on iPhone](id:password-protect-folder-iphone) covers what you can do there.

**Relying on Recently Deleted.** Deleted photos are locked like Hidden ones, but they are permanently removed after about 30 days. It is not storage.

## What the Hidden album cannot do

Even done carefully, the Hidden album has gaps that matter for anything sensitive:

- **It opens with your device passcode.** Face ID is the first prompt, but anyone who knows your passcode can use the fallback.
- **The setting is discoverable.** Someone familiar with iOS can switch Show Hidden Album back on in seconds.
- **It syncs.** With iCloud Photos, the same Hidden album appears on your iPad and Mac.
- **There is only one.** You cannot have a separate secret album for, say, medical records and personal photos with different access.

The page [is the iPhone Hidden album private?](id:is-iphone-hidden-album-private) goes into each point.

## A stronger secret album: a vault

A vault app keeps its own albums, separate from the Photos library, so nothing inside shows up in Library, Memories, Search or widgets. Good vaults encrypt that storage with a key derived from a secret you choose, independent of your phone’s passcode.

Some vaults go a step further and address the “if they find it” problem. A decoy vault is a second vault with harmless contents that you can open if pressured, while the real one stays hidden. That only works if the app gives no hint that other vaults exist. [What is a decoy vault?](id:what-is-a-decoy-vault) and [plausible deniability explained](id:plausible-deniability-explained) cover the idea and its limits.

One thing no vault can fully hide is its own existence. The app icon is on your Home Screen. In iOS 18 and later you can touch and hold most third-party app icons, choose **Require Face ID**, then hide the app, which moves it to a Hidden folder at the bottom of the App Library. That is an iOS feature, and like the Hidden album, the Hidden apps folder opens with your device passcode.

## Built-in vs vault: a quick comparison

| | Hidden album | Renamed album | Files folder | Vault app |
| --- | --- | --- | --- | --- |
| Out of Library view | Yes | No | Yes | Yes |
| Locked | Face ID / passcode | No | No | App’s own secret |
| Can be removed from view | Yes | No | No | App can be hidden (iOS 18+) |
| Multiple separate albums | No | Yes | Yes | Usually |
| Synced to iCloud | With iCloud Photos | With iCloud Photos | If in iCloud Drive | Depends on the app |

## Where Velcrypt fits

Velcrypt approaches the secret album from the “nobody can open it” side. Inside a vault you can create as many [albums](id:albums) as you like and move photos and videos between them, all encrypted on the device with AES-256-GCM.

The part that is unusual is how vaults work. Each pattern you draw on the 5×5 grid is its own vault, and the app keeps no list of them. A pattern Velcrypt has never seen simply opens a new, empty vault, with no error message. That means there is nothing in the app that reveals how many [hidden vaults](id:hidden-vaults) you have, and you can keep a harmless one as a decoy.

The honest limits: the Velcrypt icon itself is visible unless you use iOS’s own app hiding, and nothing protects a vault if someone sees you draw the pattern or takes the phone while the vault is open. Since vault data is not backed up, a forgotten pattern means a lost album.
