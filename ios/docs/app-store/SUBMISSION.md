# Velcrypt 1.0: App Store submission

This is the checklist and the copy-paste answers for App Store Connect. Metadata per locale is in the other files in this folder. Run `node ios/scripts/count-metadata.mjs` after editing any of them.

## Checklist

- [ ] **Paid Apps Agreement** is *Active* (Business → Agreements). Bank and tax were submitted on 2026-10-22.
- [ ] **In-app purchases** each have a price, an English (U.S.) localization and a **review screenshot of the paywall**. Status should be *Ready to Submit*.
  - `com.velcrypt.app.premium.yearly` costs $19.99/year and has a free 3-day introductory offer.
  - `com.velcrypt.app.premium.weekly` costs $1.99/week.
  - `com.velcrypt.app.premium.lifetime` costs $39.99 and is non-consumable.
- [ ] **Subscription group** "Velcrypt Premium" has an English (U.S.) display name. The order is level 1 yearly, level 2 weekly.
- [ ] **App version 1.0.0** has been created (Distribution → iOS App → "+" or the version shown). It must match `MARKETING_VERSION` in `project.yml`.
- [ ] **Build** is selected: a TestFlight build with version 1.0.0.
- [ ] **Metadata** has been pasted for every locale: name, subtitle, keywords, promotional text, description and What's New.
- [ ] **Screenshots** are uploaded for 6.9" iPhone (1320 × 2868 or 1290 × 2796). Up to 10, the first 3 matter most.
- [ ] **URLs** are filled in (see below).
- [ ] **App Privacy** is answered (see below).
- [ ] **Age rating** questionnaire is answered (see below).
- [ ] **Price** is *Free* (the app itself; Premium is sold in-app).
- [ ] **In-App Purchases and Subscriptions** are added to the version (the section on the version page). The first subscription group must ship with an app version.
- [ ] **App Review Information** has the notes below, a contact name, phone and email. *Sign-in required* is off.
- [ ] **Release:** choose manual release for the first version, so we decide the moment it goes live.

## URLs

| Field | Value |
|---|---|
| Support URL | `https://velcrypt.app/support/` |
| Marketing URL | `https://velcrypt.app/` |
| Privacy Policy URL | `https://velcrypt.app/privacy/` |
| Terms of Use (EULA) | Use Apple's standard EULA in App Store Connect. The description also links `https://velcrypt.app/terms/`. |
| Copyright | `2026 Swedish Treats AB` |

## App Privacy ("nutrition label")

App Store Connect → App Privacy → Get Started:

- **Do you or your third-party partners collect data from this app?** Choose **No, we do not collect data from this app**.

The result is **Data Not Collected**. This is accurate because:
- Velcrypt has no account, no server, no analytics SDK, no ads SDK and no networking code. Vault content never leaves the device.
- Backups are files the user saves wherever they choose. Velcrypt never receives them.
- Purchases go through StoreKit. Apple processes them, and Velcrypt stores no purchase data of its own.
- Crash reports and TestFlight feedback are Apple's opt-in services and are not collected by the developer.

Privacy Policy URL: `https://velcrypt.app/privacy/`.

## Age rating

Answer **None** or **No** to every content question: violence, sexual content, profanity, drugs, gambling, horror, medical, mature themes, contests, unrestricted web access, user-generated content shared with others, messaging and chat, advertising. Velcrypt stores the user's own files privately and shows no third-party content. The expected rating is **4+**.

## Export compliance

`ITSAppUsesNonExemptEncryption` is set to `false` in Info.plist, so App Store Connect does not ask. Velcrypt uses only encryption provided by iOS (CryptoKit and CommonCrypto). It uses it solely to protect the user's own data on the device, which falls under the exemption for that purpose. If App Store Connect still asks, answer that the app uses encryption, but only exempt encryption.

## App Review notes (paste into "Notes")

```
Velcrypt is a private photo vault with no account and no login.

HOW TO GET IN
On first launch, a short onboarding asks you to draw an unlock pattern on a 5×5 grid of dots (at least 6 dots, drag your finger across them) and draw it again to confirm. That pattern opens your first vault. There is no PIN and no Face ID by design.

IMPORTANT DESIGN NOTE
Every different pattern opens its own separate vault. Drawing a pattern the app hasn't seen before does NOT show an error; it opens an empty vault on purpose, so nobody can tell whether other vaults exist (plausible deniability). To return to your first vault, lock the app (lock icon) and draw your original pattern again.

WHAT TO TRY
• "+" adds photos and videos (Photos picker), files (Files), camera captures or a secure note. Items are stored AES-256 encrypted on the device.
• Settings (gear icon) → Backup creates an encrypted .velcrypt file protected by a password, and can restore it.
• Settings → App Icon offers alternate icons (Premium).

PREMIUM (IN-APP PURCHASES)
The free version allows one vault with up to 50 items. Velcrypt Premium (weekly or yearly subscription with a 3-day free trial on yearly, or a lifetime purchase) unlocks unlimited items, more vaults and alternate app icons.
The paywall appears: once after onboarding; from Settings → "Upgrade to Premium"; when adding a 51st item; when saving into a second vault (draw a new pattern, then tap "+"); and when choosing an alternate icon. "Restore Purchases" is on the paywall.

DELETING ORIGINALS FROM PHOTOS (OPTIONAL, USER-INITIATED)
Importing makes an encrypted copy; it never removes anything by itself. After an import from the Photos picker, the app asks whether the user also wants to remove the originals. Only if the user taps "Delete Originals" does the app request Photos access and call PHAssetChangeRequest.deleteAssets for exactly the items the user just picked. iOS then shows its own system confirmation, and the items go to Recently Deleted for 30 days. Nothing is hidden or deleted without that explicit two-step confirmation, and the user can turn the offer off in Settings → Import. This mirrors what users would otherwise do by hand in the Photos app after moving files into a vault.

The app makes no network requests, collects no data and has no account.
```

> Apple has rejected at least one competitor under Guideline 2.5.1 for deleting originals after import ("decoy functionality to hide user's photos"). If we are rejected for this, reply that the deletion is user-initiated, confirmed twice (by the app and by iOS) and recoverable from Recently Deleted. If Apple still insists, ship without the deletion step and show a hint to delete the originals in Photos instead.

## Screenshots plan (6.9", up to 10)

1. "Hide photos behind a pattern" shows the lock screen with a pattern being drawn.
2. "Every pattern opens its own vault" shows the vault home.
3. "AES-256 encrypted on your iPhone" shows the security card or the photo grid.
4. "Notes, documents and camera" shows a note, the documents grid and the camera.
5. "Encrypted backup to a new iPhone" shows the backup screen.
6. "Disguise the app" shows the alternate icons.

Use a demo vault with stock-style images: no real personal photos, and nothing that looks like a real ID.
