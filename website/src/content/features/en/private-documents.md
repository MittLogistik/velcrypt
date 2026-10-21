---
pageId: private-documents
title: "Private Documents on iPhone: Encrypt PDFs, Scans and IDs"
description: "Import PDFs, scans and ID documents from the Files app into an encrypted Velcrypt vault, view them offline, and export a copy only when you need it."
h1: "Keep private documents in an encrypted vault"
navTitle: "Private documents"
answer: "Velcrypt imports documents such as PDFs, scans and ID copies from the iOS Files app into an encrypted vault. You can view them inside the app, keep them in albums, and export a copy when you need to send or print one. The original in Files stays until you delete it."
keyFacts:
  - "Import documents from the Files app, including PDFs and scanned pages."
  - "Each document is encrypted on the device with AES-256-GCM."
  - "View documents inside the vault, fully offline."
  - "Export creates a copy outside the vault; handle it with care."
  - "The original in Files stays until you delete it."
primaryKeyword: "private documents app iphone"
keywords: ["encrypt pdf iphone", "store id documents iphone securely", "secure document vault iphone", "hide documents iphone", "encrypted passport scan iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Import PDFs, scans and ID copies from Files into an encrypted vault, view them offline and export only when needed."
status: available
schemaType: WebPage
order: 8
related: [scan-documents-privately-iphone, medical-and-id-documents, password-protect-folder-iphone, encryption, albums]
faq:
  - q: "Which documents can I store in Velcrypt?"
    a: "Documents you can reach in the iOS Files app, such as PDFs and scanned pages, as well as images of documents. Typical examples are passport and ID copies, medical letters, contracts and tax papers."
  - q: "Can I scan a document directly into Velcrypt?"
    a: "Velcrypt has no built-in scanner or camera. Scan with an app that saves to Files, import the scan into Velcrypt, then delete the file it created."
  - q: "Can I send a document from my vault to someone?"
    a: "Yes, by exporting it. Export places a decrypted copy outside the vault, for example in Files or a share sheet destination. That copy is no longer protected by Velcrypt, so delete it once you are done."
  - q: "Are my documents uploaded or synced?"
    a: "No. Velcrypt has no servers, no account and no cloud sync. Documents stay encrypted on your iPhone and are excluded from iCloud and computer backups in the first version."
---

Passports, insurance cards, medical letters and signed contracts tend to end up as loose files in Downloads or as photos in the camera roll. Velcrypt gives them a dedicated, encrypted place on your iPhone, separate from everything you browse every day.

## Importing from the Files app

Velcrypt imports documents through the iOS document picker, the same browser you see in the Files app. You can pick files from On My iPhone, iCloud Drive or other locations the Files app shows, and Velcrypt saves an encrypted copy in the vault you have open.

Common things to store:

- **PDFs** such as contracts, payslips, tax returns and bank letters.
- **Scans** of paper documents.
- **ID copies**: passport, driving licence, residence permit, insurance card.
- **Medical paperwork**: test results, prescriptions, referral letters.

Each document is encrypted on the device with AES-256-GCM, using its own key derived from the vault's master key. The [encryption](id:encryption) page explains how.

## Scanning privately

Velcrypt does not include a camera or scanner. The safest flow is to scan with a tool that saves to Files, import the result into Velcrypt and then delete the scan from its original location. If the scanner also saved a copy to Photos or to a cloud folder, delete that too.

The guide on [scanning documents privately on iPhone](id:scan-documents-privately-iphone) compares the built-in iOS scanning options and where each one stores its output.

## Viewing documents in the vault

Documents open inside Velcrypt, so you can check a passport number or read a letter without exporting anything. Everything happens offline, and nothing is sent anywhere to render the file.

You can group documents in [albums](id:albums), for example “ID”, “Health” and “Home”, and move them between albums with multi-select. When you leave the app, [auto-lock](id:auto-lock) closes the vault and the app switcher shows no preview of the open document.

## Exporting a document

Export is a way to take a document back out of the vault, for example to email it to an office, upload it to a form or print it. When you export, Velcrypt writes a **decrypted copy** outside the vault.

That copy is not protected by Velcrypt anymore. Treat it like any other file:

1. **Export only what you need**, only when you need it.
2. **Send or print it.**
3. **Delete the exported copy** from Files, Downloads or wherever it landed.
4. **Remember the recipient's copy.** Once a document is sent, it lives on their device and in their mailbox, beyond your control.

The original stays in your vault the whole time.

## Removing the originals from Files

Importing copies a file; it does not move it. After checking that the document opens in Velcrypt, delete the original from the Files app. Files deleted from iCloud Drive or On My iPhone go to a Recently Deleted location in Files, where they can usually be restored for up to 30 days, so remove them from there as well.

## Velcrypt vs a locked folder or note

| Option | How it is protected | Notes |
| --- | --- | --- |
| Files app folder | Device passcode only | Anyone using your unlocked phone can open it |
| Locked note in Notes | Device passcode or a separate notes password | Encrypted, but limited to notes |
| Velcrypt vault | Your pattern, separate from the device passcode | Encrypted per file, separate vaults per pattern |

If you are deciding between these, [how to password-protect a folder on iPhone](id:password-protect-folder-iphone) walks through each option, and the [medical and ID documents](id:medical-and-id-documents) use case shows a full setup.

## Good to know

- Vault data is not included in iCloud or computer backups in the first version. Keep a second copy of irreplaceable originals, such as a scan of your passport, somewhere you trust.
- A vault cannot protect a document someone photographs while it is open on your screen.
