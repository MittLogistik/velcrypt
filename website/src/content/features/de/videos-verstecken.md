---
pageId: hide-videos
title: "Videos verstecken am iPhone: verschlüsselt | Velcrypt"
description: "Importiere Videos in einen verschlüsselten Velcrypt-Tresor, spiel sie in der App ab, entferne die Originale aus Fotos und behalte den Speicher im Blick."
h1: "Videos verstecken im verschlüsselten Tresor"
navTitle: "Videos verstecken"
answer: "Velcrypt importiert Videos aus deiner Fotomediathek als verschlüsselte Kopien und spielt sie direkt im Tresor ab. Die Originale bleiben in Fotos, bis du sie löschst und „Zuletzt gelöscht“ leerst. Videos sind groß, prüf also deinen freien Speicher, bevor du viele auf einmal importierst."
keyFacts:
  - "Beim Import wird ein Video in den Tresor kopiert; das Original bleibt in Fotos."
  - "Videos laufen in Velcrypt, ohne den Tresor zu verlassen."
  - "Jedes Video wird auf dem Gerät mit AES-256-GCM verschlüsselt."
  - "Bis du das Original löschst, belegt das Video vorübergehend doppelt Speicher."
  - "„Zuletzt gelöscht“ behält gelöschte Videos etwa 30 Tage, wenn du es nicht leerst."
primaryKeyword: "videos verstecken iphone app"
keywords: ["video tresor iphone", "verschlüsselte videos iphone", "private videos app iphone", "videos sperren iphone", "videos aus mediathek verstecken"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Videos als verschlüsselte Kopien importieren, im Tresor abspielen und Originale entfernen, ohne dass der Speicher vollläuft."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Kann ich Videos ansehen, ohne sie aus Velcrypt zu exportieren?"
    a: "Ja. Videos laufen im eigenen Viewer von Velcrypt, solange der Tresor offen ist. Du musst sie nicht in die Fotos-App exportieren, um sie anzusehen."
  - q: "Warum ist mein freier Speicher nach dem Videoimport gesunken?"
    a: "Der Import erstellt eine Kopie. Bis du das Original aus Fotos löschst und „Zuletzt gelöscht“ leerst, existiert das Video zweimal. Sobald das Original weg ist, wird der Platz frei."
  - q: "Sind meine Tresorvideos im iCloud-Backup enthalten?"
    a: "Nein. In der ersten Version sind Tresordaten von iCloud- und Computer-Backups ausgeschlossen. Videos im Tresor existieren nur auf deinem iPhone."
  - q: "Werden Videos in Velcrypt mit meinen anderen Geräten synchronisiert?"
    a: "Nein. Velcrypt hat keine Cloud-Synchronisierung und läuft nur auf dem iPhone. Ein Video in deinem Tresor bleibt auf dem einen Handy, auf dem du es importiert hast."
---

Videos sind oft persönlicher als Fotos, und man stößt in der Mediathek genauso leicht auf sie. Mit Velcrypt verschiebst du sie in einen verschlüsselten Tresor und siehst sie dort an, ohne dass die Fotos-App je wieder beteiligt ist.

## So funktioniert der Videoimport

Ein Video importierst du genauso wie [Fotos](id:hide-photos). Du wählst ein oder mehrere Videos in der iOS-Auswahl aus, und Velcrypt speichert eine verschlüsselte Kopie in dem Tresor, der gerade offen ist. Größere Dateien brauchen etwas länger, weil das ganze Video vor dem Speichern auf dem Gerät verschlüsselt wird.

Wie bei Fotos ist der Import eine **Kopie**. Dein Originalvideo bleibt in der Fotomediathek, bis du es löschst. So kannst du prüfen, ob das Video im Tresor richtig abspielt, bevor du etwas entfernst.

Jedes Video wird mit AES-256-GCM und einem eigenen Schlüssel verschlüsselt, abgeleitet aus dem Hauptschlüssel des Tresors. Die ganze Schlüsselkette steht auf der Seite zur [Verschlüsselung](id:encryption).

## Wiedergabe im Tresor

Velcrypt hat einen integrierten Player, du kannst Videos also ansehen, ohne sie zu exportieren. Die Wiedergabe läuft, solange der Tresor offen ist. Wechselst du aus der App, sperrt Velcrypt gemäß deiner Einstellung der [automatischen Sperre](id:auto-lock), und der App-Umschalter zeigt keine Vorschau dessen, was gerade lief.

Du kannst Videos zusammen mit passenden Fotos im selben [Album](id:albums) aufbewahren und im Viewer durch sie wischen.

## Die Originale entfernen

Ein verstecktes Video ist erst privat, wenn das Original weg ist:

1. **Öffne Fotos und wähle die Videos aus,** die du gerade importiert hast.
2. **Lösch sie.** Sie landen in „Zuletzt gelöscht“.
3. **Öffne „Zuletzt gelöscht“.** Ab iOS 18 liegt es in der Fotos-App unter „Sonstiges“; in früheren Versionen weiter unten im Tab „Alben“.
4. **Lösch sie auch dort.** Sonst bleiben sie etwa 30 Tage wiederherstellbar.

<!-- TODO verify iOS label -->

Nutzt du iCloud-Fotos, löschst du ein Video auf dem iPhone auch auf deinen anderen Geräten mit derselben Mediathek. Die Anleitung [Originale nach dem Import löschen](id:delete-original-photos-after-import) erklärt die Details, auch zu geteilten Alben und anderen Orten, an denen sich gern Kopien verstecken.

## Ein Hinweis zum Speicherplatz

Videodateien sind groß. Ein paar Minuten hochaufgelöstes Material können Gigabytes belegen, und der Tresor speichert ungefähr dieselbe Datenmenge wie das Original.

Behalte drei Dinge im Kopf:

- **Vorübergehend doppelter Speicher.** Zwischen Import und Löschen des Originals existiert das Video zweimal. Importiere in Etappen, wenn dein Handy fast voll ist.
- **„Zuletzt gelöscht“ zählt mit.** Gelöschte Videos belegen weiter Platz, bis „Zuletzt gelöscht“ geleert ist oder die etwa 30 Tage vorbei sind.
- **Vor großen Importen prüfen.** Unter Einstellungen › Allgemein › iPhone-Speicher siehst du, wie viel Platz frei ist und wie viel Velcrypt belegt.

| Schritt | Belegter Speicher |
| --- | --- |
| Vor dem Import | Nur das Original |
| Nach dem Import | Original + verschlüsselte Kopie |
| Nach dem Löschen des Originals | Verschlüsselte Kopie + Objekt in „Zuletzt gelöscht“ |
| Nach dem Leeren von „Zuletzt gelöscht“ | Nur die verschlüsselte Kopie |

## Gut zu wissen

- Velcrypt hat keine integrierte Kamera. Nimm mit der Kamera-App auf, importiere das Video und lösch dann das Original.
- Verschiedene Muster öffnen verschiedene [versteckte Tresore](id:hidden-vaults). Sollen manche Videos nie neben anderen liegen, gib ihnen einen eigenen Tresor statt nur ein eigenes Album.
- Tresordaten werden in der ersten Version nicht gesichert. Bewahr von unersetzlichen Videos eine zweite Kopie an einem Ort auf, dem du vertraust.
- Wurde ein Video je in einem Chat verschickt oder in ein geteiltes Album gestellt, liegen diese Kopien außerhalb des Tresors. Die Anleitung [intime Fotos sicher aufbewahren](id:store-intimate-photos-safely-iphone) geht ausführlicher auf dieses Risiko ein.

Einen breiteren Blick auf alle integrierten Möglichkeiten und Apps von Drittanbietern bietet [Videos verstecken am iPhone](id:hide-videos-iphone).
