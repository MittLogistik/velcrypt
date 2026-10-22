---
pageId: faq
title: "Velcrypt FAQ: Vaults, Patterns, Encryption"
description: "Answers to common questions about Velcrypt: pattern vaults, encryption, backups, privacy, pricing and which iPhones it works on."
h1: "Velcrypt frequently asked questions"
navTitle: "FAQ"
answer: "Velcrypt is an iPhone app (iOS 17 or later) that stores photos, videos and documents in encrypted vaults on your device. Each vault opens with its own pattern, there’s no account, and nothing is uploaded — which also means a forgotten pattern can’t be recovered. An encrypted backup file protects you against a lost phone."
keyFacts:
  - "iPhone app, iOS 17 or later."
  - "Each pattern opens its own vault; unknown patterns open an empty one."
  - "AES-256-GCM encryption, on-device only, no account."
  - "No recovery for a forgotten pattern; free encrypted backup for a lost phone."
  - "Free: 1 vault, up to 50 items. Premium from $1.99/week (USD)."
primaryKeyword: "velcrypt faq"
keywords: ["velcrypt questions", "how does velcrypt work", "photo vault app faq", "velcrypt pattern help", "velcrypt backup"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Basics"
    items:
      - q: "What is Velcrypt?"
        a: "Velcrypt is an iPhone app that keeps private photos, videos and documents in encrypted vaults on your device. You open a vault by drawing a pattern on a 5×5 grid of dots."
      - q: "What can I store in Velcrypt?"
        a: "Photos and videos from your Photos library or the in-vault camera, documents from the Files app, and secure text notes. Inside a vault you can organise items into albums, view photos and videos with zoom and swipe, and move or export items securely."
      - q: "Does importing a photo into Velcrypt remove it from my Photos library?"
        a: "No. Importing makes an encrypted copy, and the original stays in Photos until you delete it. After deleting, also empty Recently Deleted, where items otherwise stay for about 30 days."
      - q: "Does Velcrypt have a built-in camera?"
        a: "Yes. The in-vault camera saves photos and videos straight into the open vault, encrypted. They never go into your Photos library."
      - q: "Is Velcrypt the same as the iPhone Hidden album?"
        a: "No. The Hidden album only removes photos from the main library view and is opened with Face ID or your passcode. Velcrypt encrypts files with a key derived from a separate pattern that is not your device passcode."
  - title: "Pattern & vaults"
    items:
      - q: "What makes a valid Velcrypt pattern?"
        a: "One continuous line through at least 6 dots on the 5×5 grid, with at least one change of direction. Longer patterns of 8–12 dots are recommended."
      - q: "How do I create a second vault?"
        a: "With Premium, draw a new pattern you haven’t used before. Every pattern is its own vault, so a new pattern opens a new, empty vault that you can start filling. The free version has one vault."
      - q: "Why did my pattern open an empty vault?"
        a: "Most likely you drew a slightly different pattern, which Velcrypt treats as a different vault. Try again slowly; the app never shows a “wrong pattern” message by design."
      - q: "Can I see a list of my vaults?"
        a: "No. Velcrypt keeps no list of vaults, so nothing in the app reveals how many exist. You need to remember each pattern yourself."
      - q: "What is a decoy vault?"
        a: "A decoy vault is an ordinary-looking vault with harmless content that you can open if pressured, while your private vault stays behind a different pattern. Nothing in Velcrypt proves the second vault exists. A second vault needs Premium."
      - q: "What is the duress pattern?"
        a: "The duress pattern is a planned feature for a future update and isn’t available yet. Drawing it would open a vault you choose and silently remove access to the others."
      - q: "Can I organise items inside a vault?"
        a: "Yes. Each vault can hold albums, and you can multi-select items and move them between albums within that vault."
      - q: "Why doesn’t Velcrypt use Face ID or Touch ID?"
        a: "By design. A face or finger can be used without your consent, for example while you sleep or under pressure, while a pattern exists only in your memory."
  - title: "Security & encryption"
    items:
      - q: "How does Velcrypt encrypt my files?"
        a: "With AES-256-GCM through Apple CryptoKit. Each vault has its own random 256-bit master key, and each file gets its own key derived with HKDF."
      - q: "How is my pattern turned into a key?"
        a: "Velcrypt runs the pattern through PBKDF2-HMAC-SHA512 with at least 600,000 iterations and a random salt unique to your device, stored in the iOS Keychain. The pattern itself is never saved."
      - q: "Does Velcrypt use iOS Data Protection?"
        a: "Yes. Vault files use the complete protection class, so iOS keeps them encrypted whenever the iPhone is locked, on top of Velcrypt’s own encryption."
      - q: "Does Velcrypt lock automatically?"
        a: "Yes. It locks when the app goes to the background, after a delay you can configure, and vault content is hidden in the app switcher."
      - q: "Has Velcrypt been security audited?"
        a: "No independent audit has taken place yet. Velcrypt uses standard algorithms and Apple’s CryptoKit, and we would welcome an external review."
      - q: "What can’t Velcrypt protect against?"
        a: "Someone watching you draw your pattern, being forced to unlock, a phone handed over with a vault open, malware on a compromised or jailbroken device, photos of your screen, and copies that still exist elsewhere. The security page lists these limits in full."
  - title: "Backup & recovery"
    items:
      - q: "What happens if I forget my Velcrypt pattern?"
        a: "The vault cannot be opened again. Velcrypt never stores your pattern or keys, so neither you nor Velcrypt can recover it."
      - q: "Is my vault included in my iCloud backup?"
        a: "No. Vault data is excluded from iCloud backups so encrypted files never leave your device on their own. To protect against a lost phone, create an encrypted backup file in Settings → Backup."
      - q: "Is my vault included in a Finder or iTunes backup?"
        a: "No. Vault data is also excluded from computer backups. Velcrypt’s own encrypted backup file is the way to keep a copy of a vault."
      - q: "What happens to my vaults if I get a new iPhone?"
        a: "Vaults don’t transfer automatically. Create an encrypted backup of each vault in Settings → Backup, save the .velcrypt file to Files, iCloud Drive or a computer, then restore it on the new iPhone with your backup password."
      - q: "Does Velcrypt have encrypted backup?"
        a: "Yes, and it’s free. Settings → Backup creates an encrypted .velcrypt file for the open vault, protected by a backup password you choose. You store the file where you want and restore it on any iPhone."
      - q: "What if I forget my backup password?"
        a: "The backup can’t be restored. Like your pattern, the backup password is never stored or sent anywhere, so neither you nor Velcrypt can recover it."
      - q: "Can Velcrypt support reset my pattern?"
        a: "No. Support has no access to your vaults, patterns or keys, so there is nothing to reset on our side."
  - title: "Privacy"
    items:
      - q: "Do I need an account to use Velcrypt?"
        a: "No. There is no sign-up, no email address and no login. You install the app and draw a pattern."
      - q: "Does Velcrypt upload my photos?"
        a: "No. Velcrypt has no servers for your content, and vault files never leave your iPhone unless you export them or save a backup file yourself."
      - q: "Does Velcrypt collect analytics?"
        a: "Velcrypt collects no analytics on vault content. If you have chosen to share analytics with app developers in iOS settings, Apple may share crash and diagnostic data with us."
      - q: "Can other people tell that I use Velcrypt?"
        a: "The app icon is visible on your Home Screen, and forensic tools may be able to tell that Velcrypt holds encrypted data and roughly how much. Velcrypt hides the number of vaults and their contents, not its own existence."
      - q: "Does Velcrypt show ads or sell data?"
        a: "No. Velcrypt has no ads and doesn’t sell data. It doesn’t collect your content in the first place."
  - title: "Pricing & availability"
    items:
      - q: "Is Velcrypt free?"
        a: "Yes. The free version has one vault with up to 50 items, full encryption and encrypted backup. Premium is optional: $1.99 a week, $19.99 a year with a 3-day free trial, or $39.99 lifetime (USD; prices vary by country)."
      - q: "What does Premium include?"
        a: "Unlimited items, more vaults (each extra pattern opens its own vault) and alternate app icons. Subscriptions renew automatically until you cancel in your Apple Account settings."
      - q: "Where can I get Velcrypt?"
        a: "Velcrypt is an iPhone app distributed through the App Store. Check the App Store button on this site for current availability."
      - q: "Who handles payments?"
        a: "Apple handles all purchases through the App Store. Velcrypt never sees your payment details."
  - title: "Compatibility"
    items:
      - q: "Which iOS version does Velcrypt need?"
        a: "Velcrypt requires iOS 17 or later on iPhone."
      - q: "Is there a Velcrypt app for iPad, Mac or Android?"
        a: "No. Velcrypt is an iPhone app only, and there is no web version."
      - q: "Does Velcrypt sync between devices?"
        a: "No. There is no cloud sync; each vault lives on the iPhone where it was created. You can move a vault to another iPhone by restoring an encrypted backup file."
      - q: "Can I import documents from the Files app?"
        a: "Yes. You can import documents from the Files app into any vault, alongside photos and videos."
---

These are the questions people ask most about Velcrypt, grouped by topic. Each answer stands on its own, so you can jump straight to the section you need.

If you want the full technical picture, the [security model](id:security) page explains how your pattern becomes a key and how files are encrypted, along with the things Velcrypt cannot protect against. For what’s included in each version, see [pricing](id:pricing). If you think you’ve lost access to a vault, read [forgot your vault pattern](id:forgot-vault-pattern) before trying anything else — and remember that drawing an unfamiliar pattern simply opens a new, empty vault rather than an error.

Can’t find your question here? [Contact support](id:support) and we’ll help where we can. We can answer questions about how the app works, but we can never open, reset or recover a vault for you.
