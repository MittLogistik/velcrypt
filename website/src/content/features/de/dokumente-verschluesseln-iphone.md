---
pageId: private-documents
title: "Dokumente verschlüsseln am iPhone: PDFs, Scans und Ausweise"
description: "Importiere PDFs, Scans und Ausweiskopien aus der Dateien-App in einen verschlüsselten Velcrypt-Tresor, sieh sie offline an, exportier nur bei Bedarf."
h1: "Private Dokumente im verschlüsselten Tresor aufbewahren"
navTitle: "Private Dokumente"
answer: "Velcrypt importiert Dokumente wie PDFs, Scans und Ausweiskopien aus der iOS-App „Dateien“ in einen verschlüsselten Tresor. Du kannst sie in der App ansehen, in Alben ablegen und eine Kopie exportieren, wenn du eins verschicken oder drucken musst. Das Original in „Dateien“ bleibt, bis du es löschst."
keyFacts:
  - "Import von Dokumenten aus der Dateien-App, einschließlich PDFs und gescannter Seiten."
  - "Jedes Dokument wird auf dem Gerät mit AES-256-GCM verschlüsselt."
  - "Dokumente im Tresor ansehen, komplett offline."
  - "Ein Export erstellt eine Kopie außerhalb des Tresors; geh sorgsam damit um."
  - "Das Original in „Dateien“ bleibt, bis du es löschst."
primaryKeyword: "dokumente verschlüsseln iphone"
keywords: ["pdf verschlüsseln iphone", "ausweis sicher speichern iphone", "dokumenten tresor iphone", "dokumente verstecken iphone", "reisepass scan verschlüsselt iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "PDFs, Scans und Ausweiskopien aus „Dateien“ in einen verschlüsselten Tresor importieren, offline ansehen und nur bei Bedarf exportieren."
status: available
schemaType: WebPage
order: 8
related: [scan-documents-privately-iphone, medical-and-id-documents, password-protect-folder-iphone, encryption, albums]
faq:
  - q: "Welche Dokumente kann ich in Velcrypt speichern?"
    a: "Dokumente, die du in der iOS-App „Dateien“ erreichst, etwa PDFs und gescannte Seiten, sowie Bilder von Dokumenten. Typische Beispiele sind Reisepass- und Ausweiskopien, Arztbriefe, Verträge und Steuerunterlagen."
  - q: "Kann ich ein Dokument direkt in Velcrypt scannen?"
    a: "Velcrypt hat keinen integrierten Dokumentscanner. Mit der Kamera im Tresor kannst du eine Seite zwar direkt in den Tresor fotografieren; für einen sauberen Scan nutze eine App, die in „Dateien“ speichert, importiere den Scan in Velcrypt und lösch dann die erzeugte Datei."
  - q: "Kann ich ein Dokument aus meinem Tresor an jemanden schicken?"
    a: "Ja, per Export. Der Export legt eine entschlüsselte Kopie außerhalb des Tresors ab, zum Beispiel in „Dateien“ oder bei einem Ziel im Teilen-Menü. Diese Kopie schützt Velcrypt nicht mehr, lösch sie also, wenn du fertig bist."
  - q: "Werden meine Dokumente hochgeladen oder synchronisiert?"
    a: "Nein. Velcrypt hat keine Server, kein Konto und keine Cloud-Synchronisierung. Dokumente bleiben verschlüsselt auf deinem iPhone und sind von iCloud- und Computer-Backups ausgeschlossen. Eine Sicherung erstellst du nur selbst, als verschlüsseltes Backup unter Einstellungen → Backup."
---

Reisepässe, Versichertenkarten, Arztbriefe und unterschriebene Verträge landen gern als lose Dateien in „Downloads“ oder als Fotos in der Mediathek. Velcrypt gibt ihnen einen eigenen, verschlüsselten Platz auf deinem iPhone, getrennt von allem, was du täglich durchblätterst.

## Import aus der Dateien-App

Velcrypt importiert Dokumente über die iOS-Dokumentauswahl, also dieselbe Ansicht wie in der App „Dateien“. Du kannst Dateien aus „Auf meinem iPhone“, iCloud Drive oder anderen Orten wählen, die „Dateien“ anzeigt, und Velcrypt speichert eine verschlüsselte Kopie in dem Tresor, der gerade offen ist.

Typische Inhalte:

- **PDFs** wie Verträge, Gehaltsabrechnungen, Steuererklärungen und Bankschreiben.
- **Scans** von Papierdokumenten.
- **Ausweiskopien**: Reisepass, Führerschein, Aufenthaltstitel, Versichertenkarte.
- **Medizinische Unterlagen**: Befunde, Rezepte, Überweisungen.

Jedes Dokument wird auf dem Gerät mit AES-256-GCM verschlüsselt, mit einem eigenen Schlüssel aus dem Hauptschlüssel des Tresors. Wie das funktioniert, erklärt die Seite zur [Verschlüsselung](id:encryption).

## Privat scannen

Velcrypt enthält keinen Dokumentscanner. Die Kamera im Tresor fotografiert eine Seite direkt in den Tresor, ohne Umweg über „Fotos“, begradigt sie aber nicht wie ein Scanner. Für einen echten Scan scannst du am sichersten mit einem Werkzeug, das in „Dateien“ speichert, importierst das Ergebnis in Velcrypt und löschst den Scan dann an seinem ursprünglichen Ort. Hat der Scanner zusätzlich eine Kopie in Fotos oder in einem Cloud-Ordner abgelegt, lösch auch die.

Die Anleitung [Dokumente privat scannen am iPhone](id:scan-documents-privately-iphone) vergleicht die integrierten Scan-Möglichkeiten von iOS und zeigt, wo jede ihr Ergebnis speichert.

## Dokumente im Tresor ansehen

Dokumente öffnen sich direkt in Velcrypt. So kannst du eine Passnummer nachsehen oder einen Brief lesen, ohne etwas zu exportieren. Alles passiert offline, nichts wird zum Anzeigen irgendwohin geschickt.

Du kannst Dokumente in [Alben](id:albums) gruppieren, etwa „Ausweise“, „Gesundheit“ und „Wohnung“, und sie per Mehrfachauswahl zwischen Alben verschieben. Wenn du die App verlässt, schließt die [automatische Sperre](id:auto-lock) den Tresor, und der App-Umschalter zeigt keine Vorschau des offenen Dokuments.

## Ein Dokument exportieren

Mit dem Export holst du ein Dokument wieder aus dem Tresor, etwa um es an ein Amt zu mailen, in ein Formular hochzuladen oder auszudrucken. Beim Export schreibt Velcrypt eine **entschlüsselte Kopie** außerhalb des Tresors.

Diese Kopie schützt Velcrypt nicht mehr. Behandle sie wie jede andere Datei:

1. **Exportier nur, was du brauchst,** und nur, wenn du es brauchst.
2. **Verschick oder drucke es.**
3. **Lösch die exportierte Kopie** aus „Dateien“, „Downloads“ oder wo auch immer sie gelandet ist.
4. **Denk an die Kopie beim Empfänger.** Ist ein Dokument verschickt, liegt es auf dessen Gerät und in dessen Postfach – außerhalb deiner Kontrolle.

Das Original bleibt die ganze Zeit in deinem Tresor.

## Originale aus „Dateien“ entfernen

Der Import kopiert eine Datei, er verschiebt sie nicht. Wenn du geprüft hast, dass sich das Dokument in Velcrypt öffnet, lösch das Original in der Dateien-App. Aus iCloud Drive oder „Auf meinem iPhone“ gelöschte Dateien landen in „Dateien“ unter „Zuletzt gelöscht“, wo sie sich meist bis zu 30 Tage wiederherstellen lassen – entferne sie also auch dort.

## Velcrypt vs. gesperrter Ordner oder gesperrte Notiz

| Option | Wie sie geschützt ist | Hinweise |
| --- | --- | --- |
| Ordner in der Dateien-App | Nur durch den Gerätecode | Jeder mit deinem entsperrten Handy kann ihn öffnen |
| Gesperrte Notiz in Notizen | Gerätecode oder separates Notizen-Passwort | Verschlüsselt, aber auf Notizen beschränkt |
| Velcrypt-Tresor | Dein Muster, getrennt vom Gerätecode | Pro Datei verschlüsselt, getrennte Tresore pro Muster |

Wenn du zwischen diesen Optionen abwägst, geht [Ordner mit Passwort schützen am iPhone](id:password-protect-folder-iphone) jede davon durch, und der Anwendungsfall [Gesundheits- und Ausweisdokumente](id:medical-and-id-documents) zeigt ein komplettes Setup.

## Gut zu wissen

- Tresordaten sind nicht in iCloud- oder Computer-Backups enthalten. Ein verschlüsseltes Backup unter Einstellungen → Backup schützt vor Geräteverlust; bewahr die Datei außerhalb des iPhones auf und merk dir das Backup-Passwort, denn es lässt sich nicht wiederherstellen.
- Ein Tresor kann kein Dokument schützen, das jemand fotografiert, während es offen auf deinem Bildschirm ist.
