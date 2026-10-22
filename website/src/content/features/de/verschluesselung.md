---
pageId: encryption
title: "Velcrypt-Verschlüsselung: AES-256-GCM, Schlüssel per Muster"
description: "So verschlüsselt Velcrypt deinen Foto-Tresor: PBKDF2-HMAC-SHA512 aus deinem Muster, zufälliger 256-Bit-Hauptschlüssel, HKDF und AES-256-GCM."
h1: "So verschlüsselt Velcrypt deinen Tresor"
navTitle: "Verschlüsselung"
answer: "Velcrypt verschlüsselt jede Datei mit AES-256-GCM. Dein Muster wird mit PBKDF2-HMAC-SHA512 (mindestens 600.000 Iterationen, gerätespezifisches Salt) zu einem Schlüssel gestreckt, der den zufälligen 256-Bit-Hauptschlüssel des Tresors entsperrt; daraus leitet HKDF für jede Datei einen eigenen Schlüssel ab. iOS-Datenschutz ergänzt eine zweite Schicht."
keyFacts:
  - "Verfahren: authentifizierte Verschlüsselung mit AES-256-GCM über Apple CryptoKit."
  - "Muster-Streckung: PBKDF2-HMAC-SHA512 mit mindestens 600.000 Iterationen."
  - "Ein zufälliges, gerätespezifisches Salt liegt im iOS-Schlüsselbund."
  - "Jeder Tresor hat einen eigenen zufälligen 256-Bit-Hauptschlüssel; jede Datei erhält per HKDF einen eigenen Schlüssel."
  - "Zusätzlich greift der iOS-Datenschutz (Klasse „Complete Protection“)."
primaryKeyword: "foto tresor verschlüsselung iphone"
keywords: ["aes-256-gcm foto tresor", "verschlüsselter foto tresor iphone", "pbkdf2 tresor app", "wie ist mein tresor verschlüsselt", "authentifizierte verschlüsselung erklärt"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM pro Datei, Schlüssel aus deinem Muster per PBKDF2-HMAC-SHA512 und HKDF, dazu iOS-Datenschutz."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Welche Verschlüsselung nutzt Velcrypt?"
    a: "AES-256-GCM, einen authentifizierten Verschlüsselungsmodus, über Apples Framework CryptoKit. Jede Datei wird mit einem eigenen Schlüssel verschlüsselt, der aus dem zufälligen 256-Bit-Hauptschlüssel des Tresors abgeleitet wird."
  - q: "Wird mein Muster auf dem iPhone gespeichert?"
    a: "Dein Muster wird nicht direkt als Schlüssel verwendet. Es wird mit PBKDF2-HMAC-SHA512, mindestens 600.000 Iterationen und einem gerätespezifischen Salt gestreckt, und das Ergebnis entsperrt den Hauptschlüssel des Tresors."
  - q: "Kann Velcrypt meine Dateien entschlüsseln?"
    a: "Nein. Velcrypt hat keine Server und keine Kopie deiner Schlüssel. Die Schlüssel lassen sich nur auf deinem Handy aus deinem Muster neu erzeugen – deshalb kann ein vergessenes Muster auch nicht zurückgesetzt werden."
  - q: "Warum wird zusätzlich der iOS-Datenschutz genutzt?"
    a: "Er bildet eine unabhängige Schicht. Die Dateien nutzen die Klasse „Complete Protection“, sodass iOS sie bei gesperrtem Handy mit an deinen Gerätecode gebundenen Schlüsseln verschlüsselt hält – zusätzlich zu Velcrypts eigener Verschlüsselung."
---

Verschlüsselung ist der Grund, warum ein Tresor mehr ist als ein versteckter Ordner. In Velcrypt wird jedes Foto, Video und Dokument auf deinem iPhone verschlüsselt, bevor es gespeichert wird – mit Schlüsseln, die sich nur aus deinem Muster wieder erzeugen lassen. Diese Seite zeigt, wie diese Schlüssel entstehen und verwendet werden.

## Die Schlüsselkette Schritt für Schritt

Velcrypt nutzt ein mehrschichtiges Schlüsselmodell. Jede Schicht hat genau eine Aufgabe.

1. **Dein Muster.** Du zeichnest es auf dem [5×5-Raster](id:pattern-lock). Es ist das einzige Geheimnis, das du dir merken musst.
2. **Schlüsselstreckung mit PBKDF2-HMAC-SHA512.** Das Muster durchläuft zusammen mit einem zufälligen Salt PBKDF2 mit SHA-512 – und zwar **mindestens 600.000 Iterationen**. Schlüsselstreckung ist eine Technik, die jeden einzelnen Rateversuch absichtlich verlangsamt, sodass Muster durchzuprobieren teuer wird.
3. **Ein gerätespezifisches Salt im Schlüsselbund.** Das Salt ist zufällig, wird auf deinem Gerät erzeugt und im iOS-Schlüsselbund aufbewahrt. Es sorgt dafür, dass dasselbe Muster auf einem anderen Handy einen anderen Schlüssel ergibt, und macht vorberechnete Ratetabellen nutzlos.
4. **Der Hauptschlüssel des Tresors.** Jeder Tresor hat einen eigenen **zufälligen 256-Bit-Hauptschlüssel**. Der gestreckte Musterschlüssel verschlüsselt deine Dateien nicht direkt, sondern entsperrt diesen Hauptschlüssel.
5. **Dateischlüssel mit HKDF.** Aus dem Hauptschlüssel leitet HKDF (eine Standardfunktion zur Schlüsselableitung) für jede Datei einen eigenen Schlüssel ab. Keine zwei Dateien teilen sich einen Schlüssel.
6. **AES-256-GCM.** Jede Datei wird mit ihrem eigenen Schlüssel per AES-256 im GCM-Modus verschlüsselt, über Apples CryptoKit.

| Schicht | Aufgabe |
| --- | --- |
| Muster | Das Geheimnis, das nur du kennst |
| PBKDF2-HMAC-SHA512, 600.000+ Iterationen | Macht jeden Rateversuch langsam |
| Gerätespezifisches Salt (Schlüsselbund) | Macht Schlüssel einzigartig fürs Gerät |
| Zufälliger 256-Bit-Hauptschlüssel | Einer pro Tresor, hält Tresore getrennt |
| HKDF | Ein eigener Schlüssel für jede Datei |
| AES-256-GCM | Verschlüsselt und authentifiziert die Datei |
| iOS-Datenschutz | Zweite Schicht auf Systemebene |

Weil jeder Tresor seinen eigenen Hauptschlüssel hat, sind Tresore kryptografisch voneinander getrennt. Genau das macht [versteckte Tresore](id:hidden-vaults) zu mehr als einem optischen Trick.

## Was authentifizierte Verschlüsselung bedeutet

Authentifizierte Verschlüsselung ist Verschlüsselung, die sowohl Vertraulichkeit als auch Integrität schützt. AES-256-GCM erledigt zwei Dinge gleichzeitig: Es macht die Datei ohne Schlüssel unlesbar, und es hängt ein Authentifizierungs-Tag an, das belegt, dass die Datei nicht verändert wurde.

Beim Öffnen einer Datei prüft Velcrypt dieses Tag. Wurde auch nur ein Byte verändert, ob durch Beschädigung oder Manipulation, schlägt die Entschlüsselung fehl, statt stillschweigend beschädigte oder manipulierte Daten zu liefern. Ältere Modi, die ohne Authentifizierung verschlüsseln, erkennen das nicht. Einen verständlichen Überblick über das Verfahren selbst gibt [AES-256-Verschlüsselung, erklärt](id:aes-256-encryption-explained).

## iOS-Datenschutz als zweite Schicht

Zusätzlich zu seiner eigenen Verschlüsselung speichert Velcrypt Tresordateien mit iOS-Datenschutz in der Klasse **„Complete Protection“** (vollständiger Schutz). In dieser Klasse hält iOS die Dateien bei gesperrtem Handy mit Schlüsseln verschlüsselt, die an deinen Gerätecode gebunden sind.

Die beiden Schichten sind unabhängig. Würde eine davon irgendwie umgangen, stünde die andere immer noch zwischen einem gesperrten Handy und deinen Dateien.

## Warum es nirgendwo sonst Schlüssel gibt

Velcrypt arbeitet [komplett offline und ohne Konto](id:offline-no-account). Es gibt keine Server, keine Uploads und keine Kopie deiner Schlüssel außerhalb deines Handys. Damit fällt eine ganze Risikokategorie weg: Es gibt keine Datenbank, die gehackt werden kann, und niemanden im Unternehmen, der deine Dateien entschlüsseln könnte.

Das hat auch einen Preis. Weil die Schlüssel nur auf dem Gerät und nur über dein Muster existieren, kann niemand einen Tresor wiederherstellen, wenn das Muster vergessen oder das Handy verloren ist. Gegen Geräteverlust hilft ein verschlüsseltes Backup, das du unter Einstellungen → Backup selbst erstellst: eine Datei, geschützt mit einem eigenen Backup-Passwort, das sich ebenfalls nicht wiederherstellen lässt.

## Was Verschlüsselung nicht abdeckt

Starke Verschlüsselung schützt gespeicherte Dateien. Sie hilft nicht, wenn dir jemand beim Zeichnen des Musters zusieht, wenn der Tresor offen ist, während du das Handy übergibst, oder wenn auf einem gejailbreakten Gerät Schadsoftware läuft. Kopien außerhalb von Velcrypt, etwa Originale, die noch in Fotos liegen, erreicht sie ebenfalls nicht. Die [Sicherheitsübersicht](id:security) beschreibt das Bedrohungsmodell vollständig, einschließlich dessen, [wovor Velcrypt nicht schützt](id:security#what-velcrypt-does-not-protect-against).
