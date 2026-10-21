---
pageId: remove-photo-metadata-iphone
title: "How to Remove EXIF and Location Data from iPhone Photos"
description: "Remove EXIF and location metadata from iPhone photos: share-sheet Options, No Location in Photos, Camera location settings, and a free in-browser remover."
h1: "How to remove EXIF and location metadata from iPhone photos"
navTitle: "Remove photo metadata on iPhone"
answer: "To strip location before sharing on iPhone, tap Options at the top of the share sheet and turn off Location. To remove it from the photo itself, open the photo, swipe up or tap Info, choose Adjust next to the location and select No Location. To stop it being recorded, set Camera to Never in Location Services."
keyFacts:
  - "EXIF metadata can include GPS coordinates, date and time, device model, lens and software."
  - "The share sheet’s Options menu lets you remove location (and other data) per share."
  - "In Photos, the Info panel lets you set No Location on a photo."
  - "Settings › Privacy & Security › Location Services › Camera › Never stops new photos recording location."
  - "Once a photo has been shared with its metadata, removing it from your copy doesn’t change the copy you sent."
primaryKeyword: "remove exif data iphone"
keywords: ["remove location from iphone photos", "remove photo metadata iphone", "strip gps from photo", "iphone photo location privacy", "exif remover"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "What EXIF reveals, four ways to remove location and other metadata from iPhone photos, and a free in-browser metadata remover."
category: practical
order: 31
related: [photo-metadata-remover, which-apps-can-see-your-photos-iphone, store-intimate-photos-safely-iphone, phone-privacy-border-crossing, hide-photos-iphone]
howTo:
  name: "Remove location metadata from an iPhone photo"
  steps:
    - name: "Remove location when sharing"
      text: "Select the photo in Photos, tap Share, tap Options at the top of the share sheet, turn off Location, tap Done, then share."
    - name: "Remove location from the photo itself"
      text: "Open the photo, swipe up or tap the Info button, tap Adjust next to the location or map, and choose No Location."
    - name: "Stop new photos recording location"
      text: "Go to Settings › Privacy & Security › Location Services › Camera and choose Never."
    - name: "Strip all metadata if needed"
      text: "Open the Photo Metadata Remover in Safari, choose the photo, review the detected metadata and save a clean copy."
faq:
  - q: "Do iPhone photos contain location data?"
    a: "Yes, if Location Services is allowed for the Camera app, which it is by default for most people. The GPS coordinates are stored inside the photo’s metadata and travel with the file when you share the original."
  - q: "Does sending a photo by message remove its metadata?"
    a: "Not reliably. Some messaging and social apps strip metadata on upload, others keep it, and AirDrop, email and file sharing usually send the original. Remove location yourself before sharing rather than relying on the app."
  - q: "Does taking a screenshot remove EXIF data?"
    a: "A screenshot is a new image and usually carries no GPS location from the original, but it has its own metadata, lower resolution, and may capture other things on screen. It is a blunt workaround, not a clean solution."
  - q: "Can I remove the date and camera model, not just the location?"
    a: "The iPhone share sheet mainly controls location and, in some versions, other included data such as captions. To remove camera details and dates, use a dedicated tool such as the in-browser Photo Metadata Remover, which saves a new copy without embedded metadata."
  - q: "Does removing metadata make a photo anonymous?"
    a: "No. Faces, street signs, landmarks, reflections and even the view from a window can reveal where a photo was taken. Removing metadata removes hidden data, not what is visible in the picture."
---

Every photo you take on an iPhone carries a small file of hidden information. Most of the time that is useful: Photos can sort your pictures by place and date. When you share a photo with a stranger, a buyer or the internet, it can reveal far more than you intended, including exactly where you live.

## What EXIF metadata contains

EXIF (Exchangeable Image File Format) is a standard for storing information inside an image file alongside the pixels. On an iPhone photo it can include:

| Field | Example | Why it matters |
|---|---|---|
| GPS coordinates | Latitude and longitude, often accurate to a few metres | Can reveal your home, workplace or a child’s school |
| Date and time | The moment the shutter fired | Shows routines and when you were somewhere |
| Device | Make and model | Narrows down who took it |
| Lens and settings | Front or back camera, focal length, exposure | Minor, but adds to a fingerprint |
| Software | iOS version or editing app | Shows which device or app processed it |
| Orientation | Rotation flag | Harmless, but needed to display it correctly |

Photos can also carry XMP and IPTC data (captions, edit history, keywords). HEIC, the iPhone’s default format, stores similar information.

## Four ways to control metadata on iPhone

### 1. Remove location when you share

This is the quickest habit to build, and it works per share.

1. In Photos, select one or more photos and tap **Share**.
2. At the top of the share sheet, under the selection summary, tap **Options**.
3. Turn off **Location**. Depending on your iOS version you may also see options for other photo data, such as captions, or for sending as an original file.
4. Tap **Done**, then share as usual.

The setting applies to that share only; your original keeps its location. It works for Messages, Mail, AirDrop and most apps that receive photos through the share sheet.

### 2. Remove location from the photo itself

If you want the location gone from the photo in your library:

1. Open the photo in Photos.
2. Swipe up, or tap the **Info** (ⓘ) button.
3. Tap **Adjust** next to the location or map.
4. Choose **No Location**.

You can select several photos and adjust their location together on recent iOS versions. Labels can vary slightly between iOS 18 and iOS 26; look for the location field in the Info panel.

### 3. Stop the camera recording location

To prevent new photos from storing GPS at all:

1. Open **Settings › Privacy & Security › Location Services**.
2. Tap **Camera**.
3. Choose **Never**.

You will lose location-based features in Photos, like the map view and place-based Memories, for new photos. Some people switch it off only while travelling or at home.

### 4. Use a metadata remover for everything else

The share sheet focuses on location. If you also want to remove the date, device model and other embedded data, use a dedicated tool. Our [Photo Metadata Remover](id:photo-metadata-remover) runs entirely in your browser, so nothing is uploaded. It shows what a JPEG contains (camera, lens, date, software, orientation and GPS coordinates), then redraws the pixels into a new JPEG that drops EXIF, GPS, XMP, IPTC and other embedded metadata.

A few things to know: re-encoding can change the file size slightly; HEIC works only where the browser can open it (such as Safari); and when you pick a photo in Safari on iPhone, iOS may already convert HEIC to JPEG.

## The screenshot trick, and why it’s a blunt tool

A common tip is to screenshot a photo and share the screenshot. A screenshot is a brand-new image, so it doesn’t carry the original’s GPS coordinates. But:

- it is lower resolution than the original and may be cropped oddly,
- it can capture the status bar, notifications or other parts of the screen,
- it has its own metadata (such as the date it was taken and the device),
- it is easy to forget and share the original instead.

It works in a pinch. For anything important, use the share-sheet option or a metadata remover.

## Metadata can’t be recalled

Removing metadata only changes the copy you are editing. If you already posted, sent or uploaded the original, the recipient’s copy keeps whatever it had. Some platforms strip metadata on upload; many messaging and file-sharing routes don’t. Assume anything you shared in the past still carries its original data.

Also remember what metadata isn’t. Faces, house numbers, number plates, shop signs, a distinctive view or a reflection in a window can identify a place just as well as GPS.

## Which apps can read the metadata?

Any app you give full photo access to can read the metadata of every photo in your library, including location. Limiting apps to selected photos reduces that exposure. See [which apps can see your photos](id:which-apps-can-see-your-photos-iphone) for how photo permissions work on iOS.

## Where Velcrypt fits

Velcrypt doesn’t edit photos or remove metadata; it protects them. Photos you import into a vault are encrypted on your iPhone with AES-256-GCM, so their contents, including any embedded metadata, can’t be read by other apps or by someone browsing your library. If you keep private photos, combining both habits works well: strip location before sharing, and keep the originals in an encrypted vault. See [hiding photos on iPhone](id:hide-photos-iphone) and [storing intimate photos safely](id:store-intimate-photos-safely-iphone).
