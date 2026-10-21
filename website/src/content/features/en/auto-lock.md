---
pageId: auto-lock
title: "Auto-Lock: Your Vault Locks When You Leave the App"
description: "Velcrypt locks your vault when the app goes to the background, after a delay you choose, and hides vault content in the iPhone app switcher."
h1: "Auto-lock: the vault closes when you leave"
navTitle: "Auto-lock"
answer: "Velcrypt locks the open vault automatically when the app goes to the background, after a delay you can configure. Vault content is also hidden in the iPhone app switcher, so a quick swipe up does not reveal what you were looking at."
keyFacts:
  - "The vault locks when Velcrypt goes to the background."
  - "The delay before locking is configurable."
  - "Vault content is hidden in the app switcher preview."
  - "After locking, your pattern is needed to open the vault again."
  - "A shorter delay is safer; a longer one is more convenient."
primaryKeyword: "auto lock vault app iphone"
keywords: ["photo vault auto lock", "hide app switcher preview", "app locks when closed iphone", "lock vault in background", "auto lock delay"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "The vault locks when the app goes to the background, after a delay you choose, and stays blank in the app switcher."
status: available
schemaType: WebPage
order: 9
related: [pattern-lock, hidden-vaults, partner-scrolling-camera-roll, guided-access-show-one-photo, sharing-phone-with-kids]
faq:
  - q: "When does Velcrypt lock automatically?"
    a: "When the app goes to the background, for example when you go to the Home Screen, switch apps, take a call or lock the iPhone. It locks after the delay you set in Velcrypt's settings."
  - q: "What does someone see in the app switcher?"
    a: "Not your vault content. Velcrypt hides it in the app switcher preview, so swiping up to switch apps does not show the photo, video or document you had open."
  - q: "Which auto-lock delay should I choose?"
    a: "The shortest one you can live with. Immediate locking is the safest choice. A short delay can help if you often switch apps briefly, but every extra second is a window in which an unlocked vault could be reopened."
  - q: "Does auto-lock protect me if I hand over my phone with the vault open?"
    a: "Only once the app leaves the foreground and the delay passes. While Velcrypt is open on screen, the person holding the phone sees what you see. Lock the vault before handing the phone over."
---

The most common way private photos get seen is not a hack. It is a phone left on a table, or handed to someone with an app still open. Auto-lock exists for exactly that moment: as soon as you leave Velcrypt, the vault closes behind you.

## How auto-lock works

Auto-lock is a feature that closes the open vault when the app is no longer in the foreground. In Velcrypt it triggers whenever the app moves to the background, for example when you:

- go to the Home Screen,
- switch to another app,
- answer a call or open a notification,
- lock your iPhone with the side button, or let the screen turn off.

After the delay you have chosen, the vault locks. The next time you open Velcrypt, the [pattern grid](id:pattern-lock) appears and you need to draw your pattern again. Because every pattern is its own [hidden vault](id:hidden-vaults), the pattern you draw decides which vault opens next.

## A delay you can configure

The auto-lock delay is the time Velcrypt waits after going to the background before it locks. You set it in the app's settings.

| Delay | Best for | Trade-off |
| --- | --- | --- |
| Immediately | Maximum privacy | You draw your pattern every time you return |
| Short delay | Quickly copying something from another app and coming back | A brief window in which the vault can be reopened without a pattern |
| Longer delay | Convenience during long sessions | More time for someone else to pick up the phone |

For most people, immediate or a short delay is the right choice. If you mainly use Velcrypt at home and alone, a slightly longer delay may feel more comfortable; if you carry sensitive files while travelling, keep it short.

## Hidden in the app switcher

When you swipe up to switch apps, iOS shows a snapshot of each open app. Without protection, that snapshot could show the photo or document you were last viewing, even after the vault itself has locked.

Velcrypt hides vault content in the app switcher. The preview does not reveal what you were looking at, so someone flicking through your open apps does not see it.

## Why locking matters more with a pattern

Velcrypt deliberately has no Face ID or Touch ID, so reopening a locked vault always means drawing your pattern. That can feel like friction, and it is tempting to pick a long delay to avoid it. Resist that a little: the pattern only protects the vault while the vault is locked. A short delay, combined with a pattern you can draw quickly by feel, gives you both privacy and comfort.

## Practical tips

- **Lock before you hand over the phone.** Auto-lock starts when the app leaves the foreground, not when someone else picks up the phone. If you need to pass your iPhone to someone, leave Velcrypt first.
- **Show one photo, not your whole library.** If you want to show someone a single picture from your camera roll, iOS Guided Access can pin the screen to one app. The guide on [showing one photo with Guided Access](id:guided-access-show-one-photo) explains how.
- **Use a strong device passcode too.** Auto-lock protects Velcrypt; your device passcode protects everything else, including the Photos app and its Recently Deleted album.
- **Shield your pattern in public.** Locking often means drawing your pattern often. Tilt the screen away from onlookers.
- **Think about who else uses your phone.** Children, partners and repair shops all get hands-on time with phones. The [sharing your phone with kids](id:sharing-phone-with-kids) and [partner scrolling your camera roll](id:partner-scrolling-camera-roll) use cases show how auto-lock fits into a wider setup.

## What auto-lock cannot do

Auto-lock closes the vault when you leave the app. It cannot stop someone from looking over your shoulder while the vault is open, photographing the screen with another device, or using the phone while you are still in Velcrypt. Those limits, and others, are described on the [security page](id:security#what-velcrypt-does-not-protect-against).
