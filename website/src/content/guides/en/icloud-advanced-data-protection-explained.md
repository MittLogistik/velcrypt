---
pageId: icloud-advanced-data-protection-explained
title: "iCloud Advanced Data Protection Explained (2026)"
description: "What iCloud Advanced Data Protection encrypts, what it leaves out, the recovery rules you must accept, and how to turn it on step by step on your iPhone."
h1: "iCloud Advanced Data Protection, explained"
navTitle: "Advanced Data Protection explained"
answer: "Advanced Data Protection is an optional iCloud setting that end-to-end encrypts most of your iCloud data, including Photos, iCloud Backup, iCloud Drive and Notes, so only your trusted devices hold the keys. Mail, Contacts and Calendars stay under standard protection, and you must set up a recovery contact or recovery key because Apple can no longer help you recover the data."
keyFacts:
  - "Advanced Data Protection (ADP) end-to-end encrypts Photos, iCloud Backup, iCloud Drive, Notes, Reminders, Voice Memos and other categories."
  - "iCloud Mail, Contacts and Calendars are not end-to-end encrypted, even with ADP on."
  - "You must set up a recovery contact, a recovery key, or both before ADP can be turned on."
  - "If you lose all trusted devices and your recovery options, Apple cannot recover your end-to-end encrypted data."
  - "Every device on your Apple Account must run a recent enough software version to enable ADP."
  - "In 2025 Apple stopped offering ADP to new users in the United Kingdom; availability can vary by region."
primaryKeyword: "icloud advanced data protection"
keywords:
  - "advanced data protection iphone"
  - "what does advanced data protection encrypt"
  - "how to turn on advanced data protection"
  - "icloud end to end encryption photos"
  - "advanced data protection recovery key"
  - "advanced data protection uk"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What Advanced Data Protection encrypts, what stays standard, the recovery requirements, trade-offs and how to switch it on."
category: apple
order: 12
related:
  - are-hidden-photos-saved-to-icloud
  - is-iphone-hidden-album-private
  - aes-256-encryption-explained
  - encryption
  - offline-no-account
faq:
  - q: "Does Advanced Data Protection encrypt my photos?"
    a: "Yes. With Advanced Data Protection on, iCloud Photos, including the Hidden and Recently Deleted albums, is end-to-end encrypted, so only your trusted devices can decrypt it. Shared Albums are not covered."
  - q: "What happens if I lose my recovery key with Advanced Data Protection?"
    a: "If you still have a trusted device or a recovery contact, you can regain access and create a new key. If you lose your password, every trusted device, your recovery contact and your recovery key, Apple cannot recover your end-to-end encrypted data."
  - q: "Is Advanced Data Protection available in the UK?"
    a: "In February 2025 Apple stopped offering Advanced Data Protection to new users in the United Kingdom. The situation has continued to change, so check Apple Support for the current status in your region."
  - q: "Does Advanced Data Protection encrypt iCloud Mail, Contacts and Calendars?"
    a: "No. iCloud Mail, Contacts and Calendars remain under standard protection even with Advanced Data Protection on, because they need to work with external email and calendar systems."
  - q: "Can I turn off Advanced Data Protection later?"
    a: "Yes. You can turn it off in the same iCloud settings screen. Your iPhone then uploads the keys Apple needs, and your data returns to Standard Data Protection."
howTo:
  name: "Turn on iCloud Advanced Data Protection on iPhone"
  steps:
    - name: "Update your devices"
      text: "Update every iPhone, iPad, Mac and other Apple device signed in to your Apple Account to a current software version, or sign out of devices you can’t update."
    - name: "Check two-factor authentication and your passcode"
      text: "Make sure two-factor authentication is on for your Apple Account and that your iPhone has a device passcode."
    - name: "Open the Advanced Data Protection setting"
      text: "Go to Settings, tap your name, tap iCloud, then scroll to Advanced Data Protection."
    - name: "Set up account recovery"
      text: "Tap Turn On Advanced Data Protection and follow the prompts to add a recovery contact, generate a recovery key, or both. Store a recovery key somewhere safe and offline."
    - name: "Confirm with your passcode"
      text: "Enter your device passcode when asked. Your iPhone then finishes enabling ADP, which can take a while as data is re-encrypted."
---

Most iCloud data is encrypted, but by default Apple keeps a copy of the keys. That is what lets Apple help you if you forget your password, and it is also why Apple could, in principle, hand over readable data when legally compelled. Advanced Data Protection changes that arrangement for most of your data. Here is what it covers, what it costs you in convenience, and how to switch it on.

## What Advanced Data Protection is

Advanced Data Protection (ADP) is an opt-in iCloud security setting that extends end-to-end encryption to most iCloud data categories. End-to-end encryption means the data is encrypted with keys that exist only on your trusted devices; Apple stores the encrypted data but can’t decrypt it.

Without ADP your account uses **Standard Data Protection**. Some sensitive categories, such as iCloud Keychain passwords and Health data, are already end-to-end encrypted under Standard Data Protection. Others, including Photos and iCloud Backup, are encrypted with keys Apple also holds.

## What ADP covers and what it doesn’t

Apple publishes the exact list on its support site, and it occasionally changes. At the time of writing the picture looks like this:

| Data | Standard Data Protection | With ADP |
| --- | --- | --- |
| Photos (including Hidden and Recently Deleted) | Apple holds keys | End-to-end encrypted |
| iCloud Backup (including Messages backups) | Apple holds keys | End-to-end encrypted |
| iCloud Drive | Apple holds keys | End-to-end encrypted |
| Notes | Apple holds keys | End-to-end encrypted |
| Reminders, Safari bookmarks, Voice Memos, Wallet passes, Shortcuts, Freeform | Apple holds keys | End-to-end encrypted |
| Passwords/Keychain, Health, Screen Time | End-to-end encrypted | End-to-end encrypted |
| iCloud Mail | Standard | Standard |
| Contacts | Standard | Standard |
| Calendars | Standard | Standard |

Mail, Contacts and Calendars stay under standard protection because they need to work with the wider email and calendar systems outside Apple’s ecosystem.

A few further things are worth knowing:

- **Shared content has limits.** Shared Albums in Photos aren’t covered, and items you share with “anyone with the link” or collaborate on with people may follow different rules. Check Apple’s list if you rely on sharing.
- **Some metadata stays readable to Apple.** Things like file sizes, dates and certain checksums are needed for the service to work and are not end-to-end encrypted.
- **Web access is off by default.** With ADP on, iCloud.com can’t show your data unless you enable the option to access iCloud data on the web, which temporarily shares keys with the browser session.

## Requirements before you can turn it on

ADP has stricter requirements than most settings, because once it is on nobody else can rescue your data:

- **Two-factor authentication** must be enabled on your Apple Account.
- **A device passcode** (or password on a Mac) must be set on your devices.
- **Up-to-date software** on every device signed in to your account. If an old device can’t be updated, you will need to sign it out of your Apple Account.
- **A recovery method.** You must set up at least one of these:
  - a **recovery contact**, someone you trust with an Apple device who can help generate a recovery code for you; or
  - a **recovery key**, a long code you write down and keep safe.

Some account types, such as Managed Apple Accounts provided by an employer or school and child accounts, can’t use ADP.

## How to turn on Advanced Data Protection

On iOS 18 and iOS 26 the path is the same. If a label looks slightly different on your version, look for the Advanced Data Protection entry within your iCloud settings.

1. Update all your Apple devices, or sign out of any that can’t be updated.
2. Confirm two-factor authentication is on in Settings › [your name] › Sign-In & Security, and that your iPhone has a passcode.
3. Go to Settings › [your name] › iCloud and scroll to **Advanced Data Protection**.
4. Tap **Turn On Advanced Data Protection** and follow the prompts to add a recovery contact, create a recovery key, or both.
5. Enter your device passcode to confirm. Your iPhone finishes enabling ADP in the background.

If you generate a recovery key, Apple asks you to enter it again to prove you saved it. Write it on paper and keep it somewhere safe; a screenshot in your photo library is not a good place.

## The trade-offs, honestly

ADP is a meaningful upgrade, but it shifts responsibility to you.

**Recovery is your job.** If you forget your Apple Account password and lose access to every trusted device, Apple can’t restore your end-to-end encrypted data. Your recovery contact or recovery key is the only way back. Lose both and the data is gone.

**Some convenience goes away.** Web access needs explicit permission each time, and older devices may have to be removed from your account.

**It protects iCloud, not your phone.** ADP changes how data is stored on Apple’s servers. It does nothing about someone who knows your iPhone passcode and picks up the phone. Your Hidden album is still opened with that same passcode, as we explain in [is the Hidden album private?](id:is-iphone-hidden-album-private)

**It doesn’t cover copies elsewhere.** A photo you sent in a chat or posted to a Shared Album lives outside your ADP-protected library.

## Availability: the UK and other regions

ADP isn’t guaranteed to be available everywhere. In February 2025 Apple stopped offering Advanced Data Protection to new users in the United Kingdom, after a demand from the UK government, and said that existing UK users would eventually need to disable it. The situation has continued to evolve since then, and other countries could take different approaches.

If you don’t see the option in your iCloud settings, or it is greyed out, check [Apple Support](https://support.apple.com/) for the current status in your region rather than relying on older articles.

## Where on-device encryption fits

Advanced Data Protection and an on-device vault solve different problems. ADP keeps your iCloud data unreadable to Apple while still letting it sync and be recovered through your own recovery method. An on-device vault keeps certain files from going to the cloud at all and puts a separate secret between them and anyone who can unlock your phone.

Velcrypt is in the second category. Photos, videos and documents you import are encrypted with AES-256-GCM on the iPhone, with keys derived from a pattern you draw ([how the encryption works](id:encryption)). There is no account and nothing is uploaded ([on-device, no account](id:offline-no-account)). In the first version, vault content is excluded from iCloud and computer backups entirely, which means there is nothing to recover if the phone is lost; an encrypted backup option is planned.

Many people sensibly use both: ADP for their everyday library and backups, and a vault for the handful of files that shouldn’t sync anywhere. If you’re weighing up encryption terms, our [AES-256 explainer](id:aes-256-encryption-explained) and [are hidden photos saved to iCloud?](id:are-hidden-photos-saved-to-icloud) are good next reads.
