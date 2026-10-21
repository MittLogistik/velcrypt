---
pageId: hide-videos
title: "Hide Videos on iPhone in an Encrypted Vault | Velcrypt"
description: "Import videos into an encrypted Velcrypt vault, play them inside the app, remove the originals from Photos, and plan for the storage they use."
h1: "Hide videos in an encrypted vault"
navTitle: "Hide videos"
answer: "Velcrypt imports videos from your Photos library as encrypted copies and plays them inside the vault. The originals stay in Photos until you delete them and empty Recently Deleted. Videos are large, so check your free storage before importing many at once."
keyFacts:
  - "Importing copies a video into the vault; the original stays in Photos."
  - "Videos play inside Velcrypt, without leaving the vault."
  - "Each video is encrypted on the device with AES-256-GCM."
  - "Until you delete the original, the video temporarily takes up space twice."
  - "Recently Deleted keeps deleted videos for about 30 days unless you empty it."
primaryKeyword: "hide videos iphone app"
keywords: ["encrypted video vault iphone", "private video app iphone", "lock videos iphone", "secret video vault", "hide videos from camera roll"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Import videos as encrypted copies, play them inside the vault, and clear the originals without running out of storage."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Can I watch videos without exporting them from Velcrypt?"
    a: "Yes. Videos play in Velcrypt's own viewer while the vault is open. You do not need to export them to the Photos app to watch them."
  - q: "Why did my free storage drop after importing videos?"
    a: "Importing creates a copy, so until you delete the original from Photos and empty Recently Deleted, the video exists twice. Once the original is gone, the space is freed."
  - q: "Are my vault videos included in iCloud Backup?"
    a: "No. In the first version, vault data is excluded from iCloud and computer backups. Videos in the vault exist only on your iPhone."
  - q: "Do videos in Velcrypt sync to my other devices?"
    a: "No. Velcrypt has no cloud sync and runs only on iPhone. A video in your vault stays on the one phone where you imported it."
---

Videos are often more personal than photos, and they are just as easy to stumble upon in a camera roll. Velcrypt lets you move them into an encrypted vault and watch them there, without the Photos app ever being involved again.

## How importing videos works

Importing a video works the same way as [importing photos](id:hide-photos). You choose one or more videos with the iOS picker, and Velcrypt saves an encrypted copy in the vault you have open. Larger files take a little longer, because the whole video is encrypted on the device before it is stored.

As with photos, the import is a **copy**. Your original video stays in the Photos library until you delete it. That gives you a chance to check that the video plays correctly in the vault before you remove anything.

Each video is encrypted with AES-256-GCM using its own key, derived from the vault's master key. The full key chain is on the [encryption](id:encryption) page.

## Playback inside the vault

Velcrypt has a built-in player, so you can watch videos without exporting them. Playback happens while the vault is open; when you switch away from the app, Velcrypt locks according to your [auto-lock](id:auto-lock) setting and the app switcher shows no preview of what was playing.

You can keep videos together with related photos in the same [album](id:albums) and swipe through them in the viewer.

## Removing the originals

A hidden video is only private once the original is gone:

1. **Open Photos and select the videos** you just imported.
2. **Delete them.** They move to Recently Deleted.
3. **Open Recently Deleted.** In iOS 18 and later it is under “Utilities” in the Photos app; in earlier versions it is near the bottom of the Albums tab.
4. **Delete them from there too.** Otherwise they remain recoverable for about 30 days.

If you use iCloud Photos, deleting a video on your iPhone also deletes it from your other devices that use the same library. The guide on [deleting originals after import](id:delete-original-photos-after-import) covers the details, including shared albums and other places copies tend to hide.

## A note on storage space

Video files are large. A few minutes of high-resolution footage can take up gigabytes, and the vault stores roughly the same amount of data as the original.

Keep three things in mind:

- **Temporary double storage.** Between import and deleting the original, the video exists twice. Import in batches if your phone is nearly full.
- **Recently Deleted still counts.** Deleted videos keep using space until Recently Deleted is emptied or the roughly 30-day period passes.
- **Check before big imports.** Settings › General › iPhone Storage shows how much space is free and how much Velcrypt uses.

| Step | Space used |
| --- | --- |
| Before import | Original only |
| After import | Original + encrypted copy |
| After deleting original | Encrypted copy + item in Recently Deleted |
| After emptying Recently Deleted | Encrypted copy only |

## Good to know

- Velcrypt has no built-in camera. Record with the Camera app, import the video, then delete the original.
- Different patterns open different [hidden vaults](id:hidden-vaults). If some videos should never sit next to others, give them a vault of their own rather than just a separate album.
- Vault data is not backed up in the first version. For irreplaceable videos, keep a second copy somewhere you trust.
- If a video was ever sent in a chat or posted to a shared album, those copies are outside the vault. The guide on [storing intimate photos safely](id:store-intimate-photos-safely-iphone) covers that risk in more depth.

For a broader look at every built-in and third-party option, see [how to hide videos on iPhone](id:hide-videos-iphone).
