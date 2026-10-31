---
pageId: duress-password-explained
title: "Duress Password: Meaning, Code Words, PINs and Phones"
description: "What a duress password means, how duress code words and alarm duress PINs work, why the ATM reverse PIN is a myth, and what iPhone and Android offer."
h1: "Duress passwords, panic codes and duress patterns, explained"
navTitle: "Duress passwords explained"
answer: "A duress password (also called a panic password or duress code) is a second secret you use only when someone forces you to unlock something. It looks like a normal unlock, but quietly triggers a protective action, such as a silent alarm or deleting sensitive data. In Velcrypt, the duress pattern opens a decoy vault and permanently deletes every other vault on the iPhone."
keyFacts:
  - "A duress password looks like a normal unlock but triggers a hidden protective action."
  - "The idea comes from alarm systems and banking, where a duress code raises a silent alarm."
  - "On phones, duress codes usually open harmless content and delete or lock the rest."
  - "In Velcrypt, the duress pattern opens a decoy vault and permanently deletes every other vault."
  - "Deletion is irreversible; only a backup file made earlier brings data back."
  - "It is a personal-safety tool, never a way to destroy evidence or defy lawful orders."
  - "iPhone has no built-in duress passcode and most Android phones don’t either; GrapheneOS offers a duress PIN that wipes the phone."
primaryKeyword: "duress password"
keywords: ["panic password", "duress code", "what is a duress password", "duress password meaning", "duress code word", "duress code word examples", "duress pin", "alarm duress code", "atm reverse pin myth", "duress fingerprint meaning", "phone duress code", "android duress pin", "grapheneos duress pin", "iphone duress passcode", "duress pin phone", "duress pattern"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "What duress passwords, code words and duress PINs are, what iPhone and Android offer, and how Velcrypt’s duress pattern works."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "What is a duress password?"
    a: "A duress password is a secret you only use under coercion. Entering it looks like a normal unlock to anyone watching, but it also triggers something protective in the background, such as a silent alarm, opening decoy content or deleting sensitive data."
  - q: "Is a panic password the same as a duress code?"
    a: "Yes, in everyday use the terms mean the same thing. “Duress code” is common for alarm systems, “panic password” or “duress PIN” for apps and devices. Velcrypt uses a pattern instead of a PIN, so it calls its version a duress pattern."
  - q: "Does entering your PIN backwards at an ATM call the police?"
    a: "No. The “reverse PIN” story is a long-running myth. Banks have studied and patented ideas like it, but ATMs do not generally work that way. Don’t rely on it."
  - q: "What is a duress code word?"
    a: "A duress code word is an ordinary-sounding word or phrase, agreed in advance, that tells someone you are in trouble without the person pressuring you noticing. Workplaces, venues (such as the UK’s “Ask for Angela” scheme) and families use them, each with an agreed response."
  - q: "Does iPhone or Android have a built-in duress PIN?"
    a: "iPhone has no duress passcode. Pressing and holding the side button and a volume button only turns Face ID off until the passcode is entered. Most Android phones have none either, although Lockdown turns off biometrics. GrapheneOS offers a duress PIN that wipes the whole phone."
  - q: "What does Velcrypt’s duress pattern do?"
    a: "Drawing it on the lock screen opens the decoy vault you set it up in and, at the same time, silently and permanently deletes every other vault on that iPhone. The unlock looks and takes the same time as normal."
  - q: "Can I use a duress password when police or border officials ask for access?"
    a: "You shouldn’t use it to delete data in that situation. Laws differ by country, and deleting data in response to a lawful demand can itself be an offence, such as destroying evidence or obstruction. Get legal advice instead."
---

Most security is about keeping strangers out. A duress password is about a different moment: when someone is standing next to you and making you let them in. This guide explains what duress passwords are, where the idea comes from, how duress code words work, what iPhone and Android offer, how phone apps use it, and how Velcrypt’s duress pattern works, including its limits.

## What a duress password is

A **duress password** is a second secret that you only use when you are being coerced. To the person watching, entering it looks exactly like a normal unlock. Behind the scenes, it does something extra to protect you or your data.

You will see several names for the same idea:

- **Duress code**, the usual term for alarm systems and secure facilities.
- **Panic password** or **panic PIN**, common in apps.
- **Duress PIN** or **duress pattern**, depending on how the device unlocks.

The defining feature is that the response is **silent**. If entering the code caused a siren, a warning message or a visible change, it would put you at greater risk, because the person forcing you would know you had resisted.

## Where the idea comes from

### Alarm systems

Many home and business alarm panels support a duress code. You enter it at the keypad and the alarm switches off as usual, so an intruder who forced you to disarm it sees nothing unusual. At the same time, the panel quietly alerts the monitoring centre that you are in trouble.

Alarm duress codes usually only work with professional monitoring, and entering one requests a real emergency response, even as a test. Alarm providers and police also warn that a code too close to your normal one causes false alarms, so pick one you can’t mix up.

### Banks and secure facilities

Bank staff have long had silent alarms and duress signals: a button, a code word or a code that alerts security without alerting the robber. The goal is the same as with alarm panels: comply on the surface, call for help underneath.

You may have heard that typing your ATM PIN backwards calls the police. That is a myth. The idea goes back to a 1990s patent for an “emergency PIN”, but a 2010 staff report by the US Federal Trade Commission found that such systems had never been deployed at ATMs, and fact-checkers have debunked the viral claim many times. If you are robbed at an ATM, hand over what is asked if that keeps you safe, then call the police and your bank.

### Encryption software

Disk-encryption tools added a related idea: a second password that opens a believable outer volume while a hidden volume stays out of sight. That isn’t a duress code in the strict sense, because nothing is triggered, but it shares the goal of making “giving in partially” a safe option. [Plausible deniability, explained](id:plausible-deniability-explained) covers that history.

## Duress code words: the spoken version

A **duress code word** is a duress password you say instead of type: an ordinary-sounding word or phrase, agreed in advance, that means “I’m not OK, but I can’t say so”. Anyone overhearing hears small talk. The person who knows the code hears a call for help, and already knows what to do.

Where they are used:

- **Workplaces and security teams.** Banks, shops, hospitals and security staff often agree on a phrase that can be said on the phone or the radio in front of an aggressor, so a colleague can get help without anyone noticing.
- **Public safety schemes.** In the UK, many bars and venues take part in “Ask for Angela”: someone who feels unsafe on a date or a night out asks staff for “Angela”, and trained staff help discreetly, for example by calling a taxi. This code is public on purpose, so venues can put up posters.
- **Families and friends.** Some families agree on a word a child or relative can text or say on a call to mean “come and get me” or “call for help” without explaining why. Many families now also use a *safe word* to check that a panicked call really comes from a relative and not a voice-cloning scammer. That is a verification word rather than a duress code, but the same rules apply.

Examples of the *type* of phrase that works (make your own rather than copying these):

- asking for a person who doesn’t exist, as in “Is Angela working tonight?”;
- a question about a pet, relative or chore that the listener knows is wrong;
- an unusual detail in an otherwise normal sentence, such as a colour or a meal you never mention.

Good duress code words sound natural in the conversation where you would use them, never come up by accident, come with an agreed response (who calls whom, and what happens next), and get rehearsed now and then so nobody forgets. Keep them private: a code that is posted online, or known to the person you are afraid of, stops working.

## Duress PINs on phones: what iPhone and Android offer

People searching for a “phone duress code”, “duress PIN” or “duress fingerprint” usually want to know whether their phone has one built in. The short answer: iPhone doesn’t, and most Android phones don’t either.

### iPhone

- **No duress passcode.** iOS has no second passcode that opens a decoy, raises an alert or wipes the phone.
- **Emergency SOS turns Face ID off.** Pressing and holding the side button and either volume button for about two seconds opens the power-off and Emergency SOS screen. From then on, Face ID and Touch ID stay off until the passcode is entered, so nobody can unlock the phone by holding it up to your face. Tap Cancel if you don’t want to call; depending on your settings, holding longer can start an emergency call. [What to do if someone forces you to unlock your phone](id:forced-to-unlock-phone) covers this in more detail.
- **Erase Data is not a duress code.** The Erase Data option in Settings → Face ID & Passcode wipes the iPhone after 10 failed passcode attempts. It helps against guessing, not against someone standing next to you demanding the passcode.
- **Duress features live inside apps.** Because iOS has no system-wide duress PIN, any duress feature on iPhone belongs to a single app and only reaches that app’s data. Velcrypt’s duress pattern, below, is one example.

### Android

- **Lockdown.** On Android 9 and later, many phones offer Lockdown in the power menu; on some brands you turn it on in settings first. It locks the phone and turns off fingerprint and face unlock until the PIN, pattern or password is entered. <!-- TODO verify: Samsung One UI may have changed or removed the Lockdown menu item -->
- **No duress PIN on standard Android.** Android as shipped by Google, Samsung and most other makers has no built-in duress PIN. <!-- TODO verify -->
- **GrapheneOS duress PIN.** GrapheneOS, a security-focused operating system for supported Google Pixel phones, has a duress PIN and password. Entering either one anywhere the phone asks for its credentials wipes the whole device, including eSIMs, immediately and irreversibly. That protects the data, but it is obvious afterwards that the phone was reset.
- **Third-party apps.** Some open-source Android apps, such as Duress and Wasted on F-Droid, watch for a duress password on the lock screen and then lock or wipe the phone, using accessibility and device-admin permissions. How reliably they work depends on the phone and Android version. <!-- TODO verify -->

### What “duress fingerprint” means

A **duress fingerprint** is a specific finger enrolled as a silent alarm. Some biometric access-control systems support it: you scan that finger, the door opens as usual, and a duress alarm goes to security. Mainstream phones don’t offer this. <!-- TODO verify --> On a phone, biometrics are the weak spot under coercion, because someone can hold the phone to your face or press your finger on the sensor. That is why turning Face ID off quickly matters, and why Velcrypt [has no Face ID unlock by design](id:pattern-lock-vs-pin-vs-face-id).

## How phone apps implement duress codes

On phones there is usually no monitoring centre to alert, so duress codes protect the data instead. The common approaches are:

1. **Open harmless content.** The duress code opens a decoy: a second, ordinary-looking space. This is close to a [decoy vault](id:what-is-a-decoy-vault), and on its own it deletes nothing.
2. **Open harmless content and delete the rest.** The duress code opens the decoy and, at the same time, wipes the sensitive data. This is the strongest form, and it can’t be undone.
3. **Wipe everything.** Some security-focused systems offer a duress PIN that erases the whole device or app. That protects the data but makes it obvious that something happened.

What separates a good implementation from a poor one is mostly about **what can be observed**:

- Does the unlock look and take the same time as a normal one?
- Is there any setting, badge or file that reveals a duress code is configured?
- Does anything on screen change afterwards?

If the answer to any of these gives the code away, it can make a tense situation worse.

## How Velcrypt’s duress pattern works

Velcrypt unlocks with a pattern drawn on a 5×5 grid, and every pattern opens its own vault. Its [duress pattern](id:duress-pattern) is a Premium feature built on that model:

- **You set it up from inside a decoy vault**, in Settings → Duress Pattern. A decoy is a second vault with harmless, believable content. Vaults beyond the first need Premium.
- **You draw a separate pattern twice and confirm.** It can’t be a pattern that already opens a vault.
- **On the lock screen, drawing the duress pattern opens the decoy** and silently, permanently deletes every other vault on that iPhone.
- **Nothing on screen shows it happened.** The unlock looks the same and takes the same time as normal.
- **The app never shows whether a duress pattern is set.** A fixed-size encrypted record always exists in the iOS Keychain; when no duress pattern is set, it holds random bytes.
- **One per iPhone.** Setting a new duress pattern replaces the old one. Turning it off requires drawing it, and turning it off deletes nothing.
- **It keeps working if Premium lapses.** Only setting it up needs Premium.

If you set it up in the only vault on the phone, there is nothing else to delete, and Velcrypt warns you about that.

## The honest limits

### Deletion is permanent

Deleted vaults can’t be recovered from the phone. Vault data is excluded from iCloud and computer backups, so the only way back is an encrypted backup file you made earlier in Settings → Backup. Backup is free, and backup files stored outside the app are not touched by the duress pattern. The [security page](id:security#encrypted-backup) explains how backups are protected.

### Deleted is not the same as physically erased

Flash storage gives no guarantee that deleted bytes are physically wiped right away. What Velcrypt relies on is that vault data is encrypted with AES-256-GCM and the keys are deleted with the vault directories, so any leftover data is ciphertext without a key.

### It only reaches Velcrypt’s vaults

Copies in your Photos library, Recently Deleted, iCloud, chats or someone else’s phone are untouched. [Delete originals after importing](id:delete-original-photos-after-import).

### It can’t undo observation

If someone has seen or filmed you drawing your real pattern, a duress pattern doesn’t change what they know.

## Responsibility: what a duress password is not for

A duress password is a personal-safety tool. It is meant for moments such as a robbery, a threat, or a controlling partner demanding to see your phone.

It is **not** a way to destroy evidence or to get around a lawful demand from police, border officials or a court. Laws differ by country, and deleting data in response to a legal demand can itself be an offence, for example destroying evidence or obstructing an investigation. If you are facing a legal demand, or expect to, seek legal advice. The [border-crossing guide](id:phone-privacy-border-crossing) covers travel specifically.

## Should you use one?

A duress pattern makes sense if you can picture being pressed to unlock your vaults and you would rather lose those files than have them seen. It makes less sense if the files are irreplaceable and you have no backup, or if you would struggle to remember which pattern does what under stress.

If you decide to use one, start with a backup, build a believable decoy, and read [how to set up a decoy vault and duress pattern](id:set-up-decoy-vault-and-duress-pattern). If you are thinking about it because of a specific person, [what to do if someone forces you to unlock your phone](id:forced-to-unlock-phone) covers the wider safety picture. Premium plans are listed on the [pricing page](id:pricing).
