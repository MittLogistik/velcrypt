---
pageId: hide-photos
title: "Fotos verstecken am iPhone im Foto-Tresor | Velcrypt"
description: "Importiere Fotos aus deiner iPhone-Mediathek in einen verschlüsselten Velcrypt-Tresor, lösch Originale und „Zuletzt gelöscht“, sortiere in Alben."
h1: "Fotos verstecken im verschlüsselten Tresor"
navTitle: "Fotos verstecken"
answer: "Velcrypt importiert Fotos aus deiner Fotomediathek als verschlüsselte Kopien in einen Tresor. Die Originale bleiben in Fotos, bis du sie löschst – nach dem Import entfernst du sie also und leerst „Zuletzt gelöscht“. Im Tresor sortierst du Fotos in Alben und siehst sie mit Zoom und Wischen an."
keyFacts:
  - "Beim Import wird ein Foto in den Tresor kopiert; das Original bleibt in Fotos."
  - "Lösch die Originale danach und leere „Zuletzt gelöscht“, wo Objekte sonst etwa 30 Tage bleiben."
  - "Jedes importierte Foto wird auf dem Gerät mit AES-256-GCM verschlüsselt."
  - "Organisiere Fotos in Alben innerhalb jedes Tresors."
  - "Sieh Fotos mit Zwei-Finger-Zoom an und wische zwischen ihnen hin und her."
primaryKeyword: "fotos verstecken iphone app"
keywords: ["foto tresor app iphone", "verschlüsselter foto tresor iphone", "privates fotoalbum app", "bilder verstecken iphone", "fotos sperren iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Fotos als verschlüsselte Kopien importieren, Originale und „Zuletzt gelöscht“ leeren, dann in Alben mit Zoom und Wischen ansehen."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Löscht Velcrypt das Foto aus meiner Mediathek?"
    a: "Nicht automatisch. Der Import erstellt eine verschlüsselte Kopie im Tresor und lässt das Original in Fotos. Lösch das Original selbst und entferne es danach auch aus „Zuletzt gelöscht“."
  - q: "Wie lange bleiben gelöschte Fotos in „Zuletzt gelöscht“?"
    a: "Etwa 30 Tage, sofern du sie dort nicht früher löschst. Bis dahin kann sie jeder wiederherstellen, der dieses Album öffnen kann."
  - q: "Ist ein Foto in Velcrypt etwas anderes als ein Foto im Album „Ausgeblendet“?"
    a: "Ja. „Ausgeblendet“ ist weiterhin Teil deiner Fotomediathek und kann über iCloud-Fotos synchronisiert werden. Ein Foto in Velcrypt ist mit Schlüsseln aus deinem Muster verschlüsselt und nicht in iCloud- oder Computer-Backups enthalten."
  - q: "Lädt Velcrypt meine Fotos irgendwo hoch?"
    a: "Nein. Velcrypt hat keine Server und kein Konto. Importierte Fotos werden verschlüsselt und nur auf deinem iPhone gespeichert."
---

Deine Fotomediathek ist der meistbesuchte Ort auf deinem Handy. Wer sie sich leiht, um ein Bild anzusehen, kann daran vorbei zu allem anderen wischen. Wenn du private Fotos in Velcrypt verschiebst, verschwinden sie aus diesem Scrollen und liegen hinter einem Muster und echter Verschlüsselung.

## So funktioniert der Fotoimport

Importieren heißt, ein Foto aus der Fotomediathek deines iPhone in einen Velcrypt-Tresor zu holen. Du wählst ein oder mehrere Fotos in der normalen iOS-Fotoauswahl aus, und Velcrypt speichert eine verschlüsselte Kopie in dem Tresor, der gerade offen ist.

Das entscheidende Wort ist **Kopie**. Velcrypt verschiebt oder löscht nichts in deiner Fotomediathek. Das Original bleibt genau dort, bis du es entfernst. Das ist eine Sicherheitsmaßnahme, weil du prüfen kannst, ob der Import geklappt hat, bevor etwas gelöscht wird – aber ein Schritt bleibt damit an dir.

Jedes importierte Foto wird auf dem Gerät mit AES-256-GCM verschlüsselt, mit einem Schlüssel, der aus dem Hauptschlüssel dieses Tresors abgeleitet wird. Wie diese Schlüssel aufgebaut sind, erklärt die Seite zur [Verschlüsselung](id:encryption).

## Die Originale entfernen

Ein Foto ist erst privat, wenn die anderen Kopien weg sind. Nach dem Import:

1. **Öffne Fotos und wähle die Originale aus,** die du gerade importiert hast.
2. **Lösch sie.** Sie landen im Album „Zuletzt gelöscht“.
3. **Öffne „Zuletzt gelöscht“.** Ab iOS 18 findest du es in der Fotos-App unter „Sonstiges“; in älteren Versionen weiter unten im Tab „Alben“.
4. **Lösch sie dort noch einmal.** Sonst lassen sie sich etwa 30 Tage lang wiederherstellen.

<!-- TODO verify iOS label -->

Seit iOS 16 sind „Zuletzt gelöscht“ und „Ausgeblendet“ standardmäßig mit Face ID, Touch ID oder deinem Code geschützt – wer deinen Gerätecode kennt, kann sie trotzdem öffnen. Nutzt du iCloud-Fotos, verschwindet ein auf einem Gerät gelöschtes Foto auch von deinen anderen Geräten. Die vollständige Anleitung steht unter [Originale nach dem Import löschen](id:delete-original-photos-after-import).

Denk auch an Kopien anderswo: Fotos, die du in Chats geschickt hast, geteilte Alben, E-Mail-Anhänge oder ein Computer, mit dem du mal synchronisiert hast. Velcrypt kann nur schützen, was im Tresor liegt.

## Fotos in Alben organisieren

In jedem Tresor kannst du Alben anlegen, etwa „Dokumente“, „Privat“ oder „Reise“, und Fotos darin einsortieren. Mit der Mehrfachauswahl verschiebst du viele Fotos auf einmal, und du kannst Objekte jederzeit zwischen Alben verschieben, wenn sich deine Ordnung ändert. Details findest du bei der Funktion [Alben](id:albums).

Alben gehören zu dem Tresor, in dem sie liegen. Ein anderes Muster öffnet einen anderen Tresor mit eigenen Alben – so halten [versteckte Tresore](id:hidden-vaults) getrennte Sammlungen vollständig auseinander.

## Fotos im Tresor ansehen

Fotos öffnen sich im integrierten Viewer von Velcrypt. Du kannst mit zwei Fingern in Details zoomen und nach links oder rechts wischen, um durch ein Album zu blättern. Fotos werden zur Anzeige entschlüsselt, solange der Tresor offen ist, und die App sperrt sich von selbst wieder, wenn du sie verlässt – je nach Einstellung der [automatischen Sperre](id:auto-lock).

## Velcrypt vs. Album „Ausgeblendet“

| | iPhone-Album „Ausgeblendet“ | Velcrypt-Tresor |
| --- | --- | --- |
| Wo das Foto liegt | In deiner Fotomediathek | In einem verschlüsselten Tresor in der App |
| Wie es entsperrt wird | Face ID, Touch ID oder Gerätecode | Dein Velcrypt-Muster |
| iCloud | Synchronisiert mit iCloud-Fotos, falls aktiviert | Nicht in iCloud- oder Computer-Backups enthalten |
| Getrennte Sammlungen | Ein Album „Ausgeblendet“ | Ein eigener Tresor pro Muster |

Das Album „Ausgeblendet“ ist bequem und für viele Menschen ausreichend. Seine Grenzen beschreibt [Ist das iPhone-Album „Ausgeblendet“ privat?](id:is-iphone-hidden-album-private), und einen Überblick über alle Möglichkeiten gibt [Fotos verstecken am iPhone](id:hide-photos-iphone).

## Gut zu wissen

- Velcrypt hat keine integrierte Kamera. Mach das Foto mit der Kamera-App, importiere es und lösch dann das Original.
- Fotos können Standort- und Gerätedaten enthalten. Wenn du sie später teilen willst, [entferne zuerst die Metadaten](id:remove-photo-metadata-iphone).
- Tresordaten werden in der ersten Version nicht gesichert. Ist ein Foto unersetzlich, bewahr eine zweite Kopie an einem Ort auf, dem du vertraust.
