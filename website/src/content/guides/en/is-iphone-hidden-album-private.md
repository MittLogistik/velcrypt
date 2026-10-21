---
pageId: is-iphone-hidden-album-private
title: "Is the iPhone Hidden Album Private? What It Protects"
description: "The iPhone Hidden album keeps photos out of your library and locks with Face ID, but your passcode opens it and it syncs to iCloud. Here’s what that means."
h1: "Is the iPhone Hidden album private?"
navTitle: "Is the Hidden album private?"
answer: "Partly. The Hidden album removes photos from your main library and, on iOS 16 and later, locks behind Face ID, Touch ID or your passcode. But anyone who knows your device passcode can open it, it syncs through iCloud Photos, and it is only end-to-end encrypted in iCloud if you turn on Advanced Data Protection."
keyFacts:
  - "Hiding a photo moves it out of the Library grid, albums and widgets; it does not encrypt it separately on the device."
  - "On iOS 16 and later the Hidden album is locked with Face ID, Touch ID or the device passcode by default."
  - "Your device passcode is always a fallback, so anyone who knows it can open the Hidden album."
  - "With iCloud Photos on, hidden photos sync to your other devices and to iCloud."
  - "In iCloud, hidden photos are end-to-end encrypted only when Advanced Data Protection is enabled."
primaryKeyword: "is the iphone hidden album private"
keywords:
  - "iphone hidden album privacy"
  - "who can see hidden photos on iphone"
  - "is hidden album locked"
  - "hidden album face id"
  - "can someone see my hidden photos"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What the Hidden album really protects, who can still open it, and how iCloud sync and Advanced Data Protection change the picture."
category: apple
order: 10
related:
  - are-hidden-photos-saved-to-icloud
  - icloud-advanced-data-protection-explained
  - velcrypt-vs-iphone-hidden-album
  - hide-photos-iphone
  - partner-scrolling-camera-roll
faq:
  - q: "Can someone see my Hidden album if they know my iPhone passcode?"
    a: "Yes. The Hidden album lock uses the same Face ID, Touch ID and device passcode that unlock your iPhone. If Face ID fails or is cancelled, iOS offers the passcode, so anyone who knows it can open the album."
  - q: "Does hiding a photo on iPhone encrypt it?"
    a: "Not in any extra way. Hidden photos are protected by the same iOS Data Protection as every other file on your iPhone. Hiding changes where the photo appears and adds an authentication step to the album, but it does not create a separate encrypted container."
  - q: "Are hidden photos visible on my Mac or iPad?"
    a: "If iCloud Photos is turned on, yes. Hidden items sync to every device signed in to the same Apple Account, where they appear in that device’s Hidden album, which is also locked on recent versions of macOS and iPadOS."
  - q: "Can I turn off the Face ID lock on the Hidden album?"
    a: "Yes. On iOS 18 and later go to Settings › Apps › Photos; on older versions, Settings › Photos. Turning off the Face ID (or Touch ID / passcode) option leaves the Hidden album open to anyone who can unlock the phone, so keep it on."
  - q: "Can apps with photo access see hidden photos?"
    a: "Hiding is a display setting in the Photos app rather than a permission boundary. Don’t rely on it to keep a photo away from an app that has full access to your library; give apps limited access or use the system photo picker instead."
---

The Hidden album is the first thing most iPhone owners try when they want a photo out of sight. It is genuinely useful, but “hidden” and “private” are not the same thing. This guide walks through exactly what the album does, where its protection stops, and who can still get in.

## What the Hidden album actually does

The Hidden album is a built-in collection in the Photos app that holds items you have marked as hidden. When you hide a photo or video, iOS removes it from the main Library grid, from your other albums, from the Photos widget and from features such as Memories and Featured Photos. The file itself does not move anywhere special: it stays in the same photo library, simply flagged as hidden.

Since iOS 16, the Hidden album and the Recently Deleted album are locked by default. Opening either one asks for Face ID, Touch ID or your device passcode. You will find the album in different places depending on your iOS version:

| iOS version | Where to find the Hidden album |
| --- | --- |
| iOS 18 and later | Photos app, scroll down to **Utilities**, then **Hidden** |
| iOS 16 and iOS 17 | Albums tab, scroll down to **Utilities**, then **Hidden** |
| iOS 15 and earlier | Albums tab, **Hidden** (no lock) |

If you can’t see it at all, the album itself may be switched off. On iOS 18 and later, look for the **Show Hidden Album** toggle in Settings › Apps › Photos; on older versions it is in Settings › Photos. Turning it off hides the album from the Photos app, but the photos are still on the device. For the full how-to, see [how to hide photos on iPhone](id:hide-photos-iphone).

## Where its protection stops

The Hidden album is good at one job: keeping photos from showing up when someone scrolls through your camera roll. Several limits matter if you want more than that.

### The passcode is always a fallback

The lock on the Hidden album is your device lock. If Face ID doesn’t recognise the person holding the phone, iOS offers the passcode instead. So the people who can open your Hidden album are exactly the people who know your iPhone passcode: a partner, a family member, or someone who has watched you type it. There is no separate password for the album.

### It is not a separate encrypted space

Every file on a locked iPhone is protected by iOS Data Protection, and hidden photos are no exception. But hiding doesn’t add another layer of encryption with its own key. Once the phone is unlocked and the album is opened with the device credentials, everything inside is readable. Compare this with a vault that uses its own key derived from a secret only you know, which we explain in [AES-256 encryption explained](id:aes-256-encryption-explained).

### Its existence is obvious

Anyone who opens Photos and scrolls to Utilities can see that a Hidden album exists. Unless you have turned the album off, it doesn’t hide the fact that you are hiding something, which matters in some situations (see [plausible deniability explained](id:plausible-deniability-explained)).

### Biometrics can be used without your cooperation

Face ID and Touch ID are convenient, but a face or finger can be presented while you are asleep, restrained or simply pressured. That is a real consideration for some people, and we discuss it in [pattern lock vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## What happens in iCloud

If iCloud Photos is on, hidden photos sync like every other item. They appear in the Hidden album on your iPad and Mac and are stored on Apple’s servers. Whether Apple can technically read them depends on your account’s security setting:

- **Standard Data Protection** (the default): photos are encrypted in transit and on Apple’s servers, but Apple holds the keys. That means Apple could decrypt them, for example when legally required.
- **Advanced Data Protection**: Photos is end-to-end encrypted, so only your trusted devices hold the keys.

We cover this in more detail in [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud) and [iCloud Advanced Data Protection explained](id:icloud-advanced-data-protection-explained).

Also remember that iCloud is an account, not a device. Anyone who signs in to your Apple Account on another device, or on iCloud.com where web access is allowed, may reach your library, including the Hidden album, subject to the same lock behaviour on that device.

## Who can actually see your hidden photos

Here is a plain summary of who can and cannot get into a Hidden album:

| Person or situation | Can they see hidden photos? |
| --- | --- |
| Someone casually scrolling your unlocked camera roll | No, hidden items don’t appear in the Library |
| Someone who knows your device passcode | Yes, the passcode opens the album |
| Someone with access to your Apple Account | Possibly, on a device or web session signed in to that account |
| A person you share a family iCloud plan with | No, Family Sharing does not share your personal library |
| A shared iCloud Photo Library participant | Only items you put in the Shared Library; keep private photos in your Personal Library |
| Apple | Technically possible under Standard Data Protection; not with Advanced Data Protection on |

If you use iCloud Shared Photo Library, check which library a photo belongs to before you hide it. Our guide to [family-shared iCloud setups](id:family-shared-icloud) explains the difference.

## How to make the Hidden album as private as it can be

If you decide the Hidden album is enough for your situation, a few settings make it noticeably stronger:

1. **Keep the lock on.** Confirm that the Face ID / Touch ID / passcode option for the Hidden album is enabled in Settings › Apps › Photos (iOS 18+) or Settings › Photos.
2. **Use a strong device passcode.** A six-digit code is the minimum; a longer alphanumeric passcode is better, and never share it.
3. **Turn on Advanced Data Protection** if it is available to you and you can manage the recovery requirements.
4. **Consider hiding the album itself** with the Show Hidden Album toggle.
5. **Clean up Recently Deleted** after moving things around, because deleted items stay there for about 30 days.

## When a separate vault makes more sense

The Hidden album is designed for tidiness and light privacy, not for situations where someone close to you knows your passcode or might pressure you to unlock the phone. In those cases, what you usually want is a space with its own secret and its own encryption.

Velcrypt takes that approach. Each vault opens with a pattern drawn on a 5×5 grid rather than with Face ID or your device passcode, and its contents are encrypted with AES-256-GCM using keys derived from that pattern ([how the encryption works](id:encryption)). Every pattern opens its own vault and an unfamiliar pattern simply opens an empty one, so nothing reveals how many vaults exist ([hidden vaults](id:hidden-vaults)). Everything stays on the device, with no account and no cloud copy.

That also brings honest trade-offs. Vault content is not included in iCloud or computer backups in the first version, so if you lose the phone or forget the pattern, the content can’t be recovered. And importing a photo copies it, so you still need to remove the original from Photos and Recently Deleted. For a side-by-side view, read [Velcrypt vs the iPhone Hidden album](id:velcrypt-vs-iphone-hidden-album).
