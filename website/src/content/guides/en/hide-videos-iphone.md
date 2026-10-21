---
pageId: hide-videos-iphone
title: "How to Hide Videos on iPhone (and Save Space)"
description: "Hide videos on iPhone with the Hidden album, stop chat apps from saving clips to Photos, and handle the storage cost of large files and vault copies."
h1: "How to hide videos on iPhone"
navTitle: "Hide videos on iPhone"
answer: "Hide a video the same way as a photo: open it in Photos, tap More (•••) and choose Hide. It moves to the Face ID–locked Hidden album. Because videos are large and often arrive from chat apps or screen recordings, also turn off automatic saving in those apps and plan for storage if you copy videos into a vault."
keyFacts:
  - "Videos are hidden with the same More (•••) › Hide action as photos."
  - "Hidden videos stay in the Hidden album, which iOS 16 and later lock with Face ID or passcode."
  - "Screen recordings and videos saved from WhatsApp or Telegram land in your Photos library like any other video."
  - "A minute of 4K video can take several hundred megabytes, so copies add up quickly."
  - "Copying a video into a vault doubles its storage until you delete the original and empty Recently Deleted."
primaryKeyword: "how to hide videos on iphone"
keywords: ["hide videos on iphone", "hide video iphone", "private videos iphone", "hide screen recordings iphone", "stop whatsapp saving videos to photos", "hidden videos iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Hide videos on iPhone, keep chat apps from saving clips to your camera roll, and manage the storage that large private videos take up."
category: hiding
order: 3
related: [hide-photos-iphone, hide-videos, delete-original-photos-after-import, are-hidden-photos-saved-to-icloud, which-apps-can-see-your-photos-iphone]
faq:
  - q: "Is hiding a video different from hiding a photo on iPhone?"
    a: "No. The Hide action, the Hidden album and the Face ID lock work the same way for photos and videos. Videos simply take more storage and sync more slowly with iCloud Photos."
  - q: "Is a Live Photo a video?"
    a: "Not in the Photos library. A Live Photo is a still photo with a few seconds of motion and sound attached. It is hidden, shared and deleted as one item, and appears in the Live Photos media type rather than in Videos."
  - q: "Why do WhatsApp videos keep appearing in my camera roll?"
    a: "WhatsApp can save incoming media to Photos automatically. Turn off Save to Photos in WhatsApp’s chat settings, and check individual chats too, because a chat can have its own setting."
  - q: "Do hidden videos still use storage on my iPhone?"
    a: "Yes. Hiding changes visibility, not storage. A hidden video takes exactly as much space as before, and with iCloud Photos it also counts against your iCloud storage."
  - q: "Can I hide a video without deleting it from iCloud?"
    a: "Yes. Hiding keeps the video in your library and in iCloud Photos; it just moves it to the Hidden album on every synced device."
---

Hiding a video works exactly like hiding a photo, so the button is easy. The harder parts are specific to video: clips arrive from places you did not choose, they are big, and they tend to exist in more than one copy. This guide covers the hiding itself and then those video-specific details.

## Hide a video in the Photos app

1. Open **Photos** and tap the video.
2. Tap **More (•••)**.
3. Choose **Hide** and confirm.

To hide several videos, it helps to filter first. In the Photos app you can browse by media type, which includes a **Videos** collection (in iOS 18, scroll down to the media types section). From there, tap **Select**, choose the clips, and use More › Hide.

Hidden videos go to the Hidden album, which sits under **Utilities** in iOS 18 and later. It is locked with Face ID, Touch ID or your passcode as long as **Use Face ID** is on in **Settings › Apps › Photos** (Settings › Photos on older versions). For hiding the album itself, see [how to hide photos on iPhone](id:hide-photos-iphone).

## What counts as a video

A Live Photo is a still image with roughly three seconds of motion and audio stored alongside it. The Photos app treats it as a photo, not a video. Hiding a Live Photo hides both parts together. If you have turned a Live Photo into a video, for example by saving it as a video or creating a loop and exporting it, that new file is a separate item and needs hiding too.

Other common sources of video in your library:

- **Screen recordings.** Anything recorded with the Control Center screen recording button is saved to Photos as a normal video, and iOS also groups them under a Screen Recordings media type. A recording of a private conversation is as revealing as a screenshot.
- **Slow-motion and Cinematic videos.** These appear under their own media types but are hidden the same way.
- **Edited and duplicate clips.** Saving an edited version or trimming a video as a new clip creates a second item. Check the original.

## Stop chat apps from saving videos to Photos

Many private videos never pass through the Camera app. They arrive in messaging apps and get saved automatically, so hiding them once is not enough; the next one will appear in your camera roll too.

**WhatsApp.** In WhatsApp’s settings, look in the Chats section for **Save to Photos** and turn it off. Individual chats can override this, so open sensitive chats, tap the contact or group name and check the media visibility or save option there.

**Telegram.** Telegram’s data and storage settings include options to save incoming photos and videos to your gallery automatically. Turn those off for private chats, groups and channels as needed.

**Other apps.** Signal, Messenger and similar apps have their own settings for saving media. Menu names change between versions, so search each app’s settings for “save” or “media”.

Turning these off does not remove videos already saved. Those need to be hidden or deleted like any other item in Photos.

## Storage: why videos need extra planning

Video size depends mostly on resolution and frame rate. A minute of 4K video at 60 frames per second can take several hundred megabytes; 1080p at 30 fps is much smaller. You can see and change your recording format in **Settings › Apps › Camera** in iOS 18 and later (Settings › Camera on older versions).

This matters in three ways:

| Situation | Storage effect |
| --- | --- |
| Hiding a video | No change. It takes the same space in the Hidden album. |
| iCloud Photos with Optimize iPhone Storage | The full-size video may live only in iCloud, with a smaller version on the phone. Opening or exporting it downloads the original. |
| Copying a video into a vault app | The video now exists twice until you delete the original from Photos and empty Recently Deleted. |
| Deleting a video | The space is freed only after Recently Deleted is emptied, or after about 30 days. |

If you plan to move a large batch of videos into a vault, check free space in **Settings › General › iPhone Storage** first. Importing a few gigabytes into a vault while the originals are still in Photos can fill a nearly full phone quickly. Moving videos in smaller batches, and deleting each batch’s originals before the next, keeps things manageable. The guide to [deleting originals after import](id:delete-original-photos-after-import) explains the clean-up, including iCloud.

## Limits of hiding a video

Hidden videos behave like hidden photos. They open with your passcode, they sync through iCloud Photos to your other devices (see [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud)), and apps with full photo library access can, in principle, request hidden items. A video you sent in a chat also still exists in that chat and on the recipient’s phone.

For short-term privacy around friends and family, the Hidden album is usually fine. For videos that would genuinely hurt you if seen, a copy that sits outside the Photos library entirely is safer.

## Where Velcrypt fits

Velcrypt stores videos in an encrypted vault on the device, with the same protection it gives photos: AES-256-GCM encryption, a pattern lock that is separate from your iPhone passcode, and no uploads or account. Inside the vault you can sort clips into [albums](id:albums) and play them in the built-in viewer. The page on [hiding videos with Velcrypt](id:hide-videos) has the details.

Two honest notes for video in particular. Importing copies the file, so storage use doubles until you remove the original from Photos and Recently Deleted. And vault data is not included in iCloud or computer backups, so if you lose the phone or forget the pattern, the videos in the vault are gone. Keep that in mind before deleting the only other copy of something you want to keep.
