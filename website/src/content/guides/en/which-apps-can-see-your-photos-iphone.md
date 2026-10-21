---
pageId: which-apps-can-see-your-photos-iphone
title: "Which Apps Can See My Photos on iPhone? How to Check"
description: "Find out which iPhone apps have full, limited or add-only access to your photos, how the system photo picker works, and how to review and tighten access."
h1: "Which apps can see your photos on iPhone?"
navTitle: "Which apps can see your photos"
answer: "Open Settings › Privacy & Security › Photos to see every app that has asked for photo access and its level: Full Access, Limited Access, Add Photos Only or None. Apps with Full Access can read your entire library; apps that use the system photo picker only receive the specific items you choose and need no permission at all."
keyFacts:
  - "Settings › Privacy & Security › Photos lists apps with Full Access, Limited Access, Add Photos Only or None."
  - "Full Access lets an app read every photo and video in your library, including metadata such as location."
  - "Limited Access gives an app only the items you select; you can change the selection at any time."
  - "Add Photos Only lets an app save into your library without being able to read it."
  - "Apps that use the system photo picker get only the items you pick and don’t need photo permission."
primaryKeyword: "which apps can see my photos iphone"
keywords:
  - "iphone photo permissions"
  - "app photo access iphone"
  - "limited photo access iphone"
  - "full access photos iphone"
  - "check which apps have access to photos"
  - "add photos only permission"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "How to see which apps can read your photo library, what Full, Limited and Add-only access mean, and how to tighten them in a few minutes."
category: apple
order: 13
related:
  - is-iphone-hidden-album-private
  - remove-photo-metadata-iphone
  - are-photo-vault-apps-safe
  - offline-no-account
  - hide-photos
faq:
  - q: "How do I see which apps have access to my photos?"
    a: "Go to Settings › Privacy & Security › Photos. Every app that has requested photo access is listed with its current level, and you can tap any app to change it."
  - q: "What is the difference between Full Access and Limited Access?"
    a: "Full Access lets an app read your whole photo library, including new photos you take later. Limited Access lets it see only the photos and videos you have explicitly selected for that app."
  - q: "Does an app need photo permission to let me upload a picture?"
    a: "Not if it uses the system photo picker. The picker runs outside the app, and the app receives only the items you choose, so it never needs access to the rest of your library."
  - q: "Can an app with Add Photos Only see my pictures?"
    a: "No. Add Photos Only lets an app save new photos or videos into your library, for example an editing or camera app, but it cannot browse or read what is already there."
  - q: "Will changing an app to Limited Access break it?"
    a: "Usually not. Most apps work with Limited Access and simply show the photos you selected. Some features, such as automatic backup or library-wide search, genuinely need Full Access, so decide whether you want those features."
  - q: "Can apps see photos in my Hidden album?"
    a: "Don’t treat hiding as protection against apps. Hiding is a Photos app display setting, not a permission level, so the safe approach is to give sensitive apps Limited Access or none at all."
---

Your photo library is probably the most personal data on your phone: faces, places, documents, screenshots of conversations. iOS gives you fairly precise control over which apps can read it, but the settings are spread across prompts you tapped through months ago. This guide explains the access levels and shows you how to audit them.

## The four access levels

When an app asks to use your photos, iOS lets you grant one of several levels. Each app’s level is shown in Settings › Privacy & Security › Photos.

| Level | What the app can do | Typical use |
| --- | --- | --- |
| **Full Access** | Read every photo and video in your library, including future ones, plus their metadata | Backup apps, gallery replacements, some editors |
| **Limited Access** | Read only the items you selected for it | Social apps, messaging, most editors |
| **Add Photos Only** | Save new items into your library, without reading it | Camera apps, apps that export images |
| **None** | No access at all | Anything that doesn’t need photos |

Older iOS versions used slightly different wording: what is now Limited Access was called **Selected Photos**, and Full Access was called **All Photos**. The behaviour is the same.

Full Access matters more than people expect. Photos carry metadata, and that often includes the GPS location where each picture was taken, the date and time, and the device used. An app with Full Access can, in principle, read all of that for your entire library. If that worries you, our guide to [removing photo metadata on iPhone](id:remove-photo-metadata-iphone) explains what is stored and how to strip it before sharing.

## The photo picker: access without permission

Many apps never need any of the levels above. Since iOS 14, Apple has offered a **system photo picker**: a browser for your library that runs outside the app. You choose the pictures you want to share, and only those are handed over. The app never sees the rest of your library and doesn’t need to ask for photo permission.

You can usually spot the picker because it looks exactly like the Photos app, with its own search and albums, and because no permission prompt appears first. Apps that rely solely on the picker may not appear in the Photos privacy list at all, which is fine: there is nothing to revoke.

Keep in mind that the items you do pick still leave your library. Whatever you send to an app is now on its servers or in its storage, governed by its own privacy policy.

## How to review which apps can see your photos

Set aside five minutes and go through the list once. It is one of the highest-value privacy checks on an iPhone.

1. Open **Settings › Privacy & Security › Photos**.
2. Read the level shown under each app’s name.
3. Tap any app with **Full Access** and ask whether it really needs your entire library. If not, choose **Limited Access** or **None**.
4. For apps on **Limited Access**, tap **Edit Selected Photos** to see exactly what they can read and remove anything that no longer needs to be there.
5. Switch camera-style or export-only apps to **Add Photos Only** where that option is offered.
6. Repeat the check every few months, and after installing new apps.

You can also reach the same setting from an individual app’s page in Settings, which on iOS 18 and later lives under Settings › Apps.

## What changed in recent iOS versions

Apple has gradually made photo access more explicit:

- **iOS 14** introduced Limited Access (then called Selected Photos) and the out-of-process photo picker.
- **iOS 17** refreshed the permission flow and made it easier for apps to let you add more items to a limited selection without granting full access.
- **Recent versions**, including iOS 18, make the full-access choice more deliberate, showing you more clearly what an app would gain, and iOS 18 brought a similar choose-what-to-share model to Contacts.
- **iOS 18** also moved the Hidden and Recently Deleted albums under **Utilities** in the redesigned Photos app, though their Face ID lock works as before.

Exact prompt wording varies by version, so read each prompt rather than tapping the highlighted button out of habit.

## Things photo permissions don’t control

Permissions decide which apps can read your library on the phone. They don’t cover:

- **iCloud.** If iCloud Photos is on, your library, hidden items included, also lives in iCloud. See [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud)
- **People who can unlock your phone.** Anyone with your passcode can open Photos and, on recent versions, the Hidden album. See [is the Hidden album private?](id:is-iphone-hidden-album-private)
- **Copies already shared.** Photos sent in chats or uploaded to services stay there even if you revoke access later.
- **Screenshots and the share sheet.** Sharing an image from Photos to an app sends that item, regardless of the app’s photo permission level.

## Keeping sensitive photos out of reach of every app

If some photos shouldn’t be readable by any app with Full Access, the cleanest fix is to take them out of the photo library altogether. Files stored inside another app’s private storage are not part of your photo library, so other apps’ photo permissions don’t reach them.

Velcrypt works this way. You import photos and videos into an encrypted vault on the device ([hide photos](id:hide-photos)), and the vault content is encrypted with keys derived from your unlock pattern. Importing copies an item, so the original remains in Photos until you delete it and empty Recently Deleted, which our [guide to deleting originals](id:delete-original-photos-after-import) walks through. Velcrypt has no account and doesn’t upload anything ([on-device, no account](id:offline-no-account)).

Whichever vault you consider, check what it asks for and why. Our checklist on [whether photo vault apps are safe](id:are-photo-vault-apps-safe) explains what to look for in permissions, privacy labels and storage.
