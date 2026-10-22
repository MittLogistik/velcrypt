---
pageId: is-iphone-hidden-album-private
title: "Ist das Album „Ausgeblendet“ sicher? Was es schützt"
description: "Das iPhone-Album „Ausgeblendet“ hält Fotos aus der Mediathek und ist per Face ID gesperrt – aber dein Code öffnet es, und es synchronisiert mit iCloud."
h1: "Ist das Album „Ausgeblendet“ auf dem iPhone privat?"
navTitle: "Ist „Ausgeblendet“ privat?"
answer: "Teilweise. Das Album „Ausgeblendet“ nimmt Fotos aus deiner Mediathek und ist ab iOS 16 mit Face ID, Touch ID oder deinem Code gesperrt. Aber jeder, der deinen Gerätecode kennt, kann es öffnen, es wird über iCloud-Fotos synchronisiert und ist in iCloud nur Ende-zu-Ende-verschlüsselt, wenn du den Erweiterten Datenschutz aktivierst."
keyFacts:
  - "Ausblenden nimmt ein Foto aus Mediathek-Raster, Alben und Widgets; auf dem Gerät wird es nicht separat verschlüsselt."
  - "Ab iOS 16 ist das Album „Ausgeblendet“ standardmäßig mit Face ID, Touch ID oder dem Gerätecode gesperrt."
  - "Dein Gerätecode ist immer die Alternative – wer ihn kennt, kann das Album öffnen."
  - "Mit iCloud-Fotos werden ausgeblendete Fotos mit deinen anderen Geräten und mit iCloud synchronisiert."
  - "In iCloud sind ausgeblendete Fotos nur mit aktiviertem Erweitertem Datenschutz Ende-zu-Ende-verschlüsselt."
primaryKeyword: "album ausgeblendet sicher"
keywords:
  - "ausgeblendet album iphone datenschutz"
  - "wer kann ausgeblendete fotos sehen"
  - "ist ausgeblendet album gesperrt"
  - "ausgeblendet album face id"
  - "kann jemand meine ausgeblendeten fotos sehen"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Was das Album „Ausgeblendet“ wirklich schützt, wer es trotzdem öffnen kann und was iCloud-Sync und Erweiterter Datenschutz daran ändern."
category: apple
order: 10
related:
  - are-hidden-photos-saved-to-icloud
  - icloud-advanced-data-protection-explained
  - velcrypt-vs-iphone-hidden-album
  - hide-photos-iphone
  - partner-scrolling-camera-roll
faq:
  - q: "Kann jemand mein Album „Ausgeblendet“ sehen, wenn er meinen iPhone-Code kennt?"
    a: "Ja. Die Sperre des Albums nutzt dasselbe Face ID, Touch ID und denselben Gerätecode, mit denen du dein iPhone entsperrst. Schlägt Face ID fehl oder wird abgebrochen, bietet iOS den Code an – wer ihn kennt, öffnet das Album."
  - q: "Werden Fotos verschlüsselt, wenn ich sie auf dem iPhone ausblende?"
    a: "Nicht zusätzlich. Ausgeblendete Fotos sind durch denselben iOS-Datenschutz geschützt wie jede andere Datei auf deinem iPhone. Ausblenden ändert, wo das Foto erscheint, und fügt dem Album eine Authentifizierung hinzu, erzeugt aber keinen eigenen verschlüsselten Container."
  - q: "Sind ausgeblendete Fotos auf meinem Mac oder iPad sichtbar?"
    a: "Wenn iCloud-Fotos aktiv ist, ja. Ausgeblendete Objekte werden auf jedes Gerät mit demselben Apple Account synchronisiert und erscheinen dort im Album „Ausgeblendet“, das unter aktuellen macOS- und iPadOS-Versionen ebenfalls gesperrt ist."
  - q: "Kann ich die Face-ID-Sperre des Albums „Ausgeblendet“ abschalten?"
    a: "Ja. Ab iOS 18 unter Einstellungen › Apps › Fotos, bei älteren Versionen unter Einstellungen › Fotos. Schaltest du die Option für Face ID (bzw. Touch ID / Code) aus, ist das Album für jeden offen, der das Handy entsperren kann – lass sie also an."
  - q: "Können Apps mit Fotozugriff ausgeblendete Fotos sehen?"
    a: "Ausblenden ist eine Anzeigeeinstellung der Fotos-App, keine Berechtigungsgrenze. Verlass dich nicht darauf, um ein Foto von einer App mit vollem Zugriff auf deine Mediathek fernzuhalten; gib Apps eingeschränkten Zugriff oder nutze die Fotoauswahl des Systems."
---

Das Album „Ausgeblendet“ ist das Erste, was die meisten iPhone-Besitzer ausprobieren, wenn ein Foto aus dem Blickfeld soll. Es ist wirklich nützlich, aber „ausgeblendet“ und „privat“ sind nicht dasselbe. Diese Anleitung zeigt genau, was das Album tut, wo sein Schutz endet und wer trotzdem hineinkommt.

## Was das Album „Ausgeblendet“ wirklich tut

Das Album „Ausgeblendet“ ist eine eingebaute Sammlung in der Fotos-App, die Objekte enthält, die du als ausgeblendet markiert hast. Blendest du ein Foto oder Video aus, entfernt iOS es aus dem Mediathek-Raster, aus deinen anderen Alben, aus dem Fotos-Widget und aus Funktionen wie Rückblicken und ausgewählten Fotos. Die Datei selbst wandert nirgendwohin: Sie bleibt in derselben Fotomediathek, nur als ausgeblendet markiert.

Seit iOS 16 sind die Alben „Ausgeblendet“ und „Zuletzt gelöscht“ standardmäßig gesperrt. Beim Öffnen fragt iOS nach Face ID, Touch ID oder deinem Gerätecode. Wo du das Album findest, hängt von deiner iOS-Version ab:

| iOS-Version | Wo du das Album „Ausgeblendet“ findest |
| --- | --- |
| iOS 18 und neuer | Fotos-App, nach unten scrollen zu **Sonstige**, dann **Ausgeblendet** |
| iOS 16 und iOS 17 | Tab „Alben“, nach unten scrollen zu **Sonstige**, dann **Ausgeblendet** |
| iOS 15 und älter | Tab „Alben“, **Ausgeblendet** (ohne Sperre) |

<!-- TODO verify iOS label -->

Siehst du es gar nicht, ist das Album selbst womöglich ausgeschaltet. Ab iOS 18 findest du den Schalter **Album „Ausgeblendet“ anzeigen** unter Einstellungen › Apps › Fotos, bei älteren Versionen unter Einstellungen › Fotos. Ist er aus, verschwindet das Album aus der Fotos-App, die Fotos bleiben aber auf dem Gerät. Die vollständige Anleitung findest du unter [Fotos auf dem iPhone verstecken](id:hide-photos-iphone).

<!-- TODO verify iOS label -->

## Wo sein Schutz endet

Das Album „Ausgeblendet“ ist gut in einer Aufgabe: Es verhindert, dass Fotos auftauchen, wenn jemand durch deine Mediathek scrollt. Willst du mehr, sind einige Grenzen wichtig.

### Der Code ist immer die Alternative

Die Sperre des Albums ist deine Gerätesperre. Erkennt Face ID die Person mit dem Handy nicht, bietet iOS den Code an. Dein Album „Ausgeblendet“ öffnen können also genau die Menschen, die deinen iPhone-Code kennen: ein Partner, ein Familienmitglied oder jemand, der dir beim Eintippen zugesehen hat. Ein separates Passwort für das Album gibt es nicht.

### Es ist kein eigener verschlüsselter Bereich

Jede Datei auf einem gesperrten iPhone ist durch den iOS-Datenschutz geschützt, auch ausgeblendete Fotos. Ausblenden fügt aber keine weitere Verschlüsselungsebene mit eigenem Schlüssel hinzu. Sobald das Handy entsperrt und das Album mit den Gerätedaten geöffnet ist, ist alles darin lesbar. Vergleiche das mit einem Tresor, der einen eigenen Schlüssel nutzt, abgeleitet aus einem Geheimnis, das nur du kennst – das erklären wir in [AES-256-Verschlüsselung erklärt](id:aes-256-encryption-explained).

### Seine Existenz ist offensichtlich

Wer „Fotos“ öffnet und zu „Sonstige“ scrollt, sieht, dass es ein Album „Ausgeblendet“ gibt. Solange du das Album nicht ausgeschaltet hast, verbirgt es nicht, dass du etwas versteckst – und das kann in manchen Situationen zählen (siehe [Glaubhafte Abstreitbarkeit erklärt](id:plausible-deniability-explained)).

### Biometrie lässt sich ohne deine Mitwirkung nutzen

Face ID und Touch ID sind bequem, aber ein Gesicht oder Finger lässt sich verwenden, während du schläfst, festgehalten wirst oder einfach unter Druck stehst. Für manche Menschen ist das ein echtes Thema; wir besprechen es in [Muster vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Was in iCloud passiert

Ist iCloud-Fotos aktiv, werden ausgeblendete Fotos wie alle anderen Objekte synchronisiert. Sie erscheinen im Album „Ausgeblendet“ auf iPad und Mac und werden auf Apples Servern gespeichert. Ob Apple sie technisch lesen könnte, hängt von der Sicherheitseinstellung deines Accounts ab:

- **Standard-Datenschutz** (Voreinstellung): Fotos sind bei der Übertragung und auf Apples Servern verschlüsselt, aber Apple verwaltet die Schlüssel. Apple könnte sie also entschlüsseln, etwa wenn es rechtlich verpflichtet ist.
- **Erweiterter Datenschutz**: „Fotos“ ist Ende-zu-Ende-verschlüsselt, nur deine vertrauenswürdigen Geräte haben die Schlüssel.

Ausführlicher behandeln wir das in [Landen ausgeblendete Fotos in iCloud?](id:are-hidden-photos-saved-to-icloud) und [Erweiterter Datenschutz für iCloud erklärt](id:icloud-advanced-data-protection-explained).

Denk auch daran: iCloud ist ein Account, kein Gerät. Wer sich auf einem anderen Gerät oder – sofern Webzugriff erlaubt ist – auf iCloud.com mit deinem Apple Account anmeldet, kann womöglich auf deine Mediathek zugreifen, auch auf das Album „Ausgeblendet“, mit demselben Sperrverhalten auf diesem Gerät.

## Wer deine ausgeblendeten Fotos tatsächlich sehen kann

Eine nüchterne Übersicht, wer in ein Album „Ausgeblendet“ hineinkommt und wer nicht:

| Person oder Situation | Kann sie ausgeblendete Fotos sehen? |
| --- | --- |
| Jemand scrollt beiläufig durch deine entsperrte Mediathek | Nein, ausgeblendete Objekte erscheinen nicht in der Mediathek |
| Jemand, der deinen Gerätecode kennt | Ja, der Code öffnet das Album |
| Jemand mit Zugang zu deinem Apple Account | Möglicherweise, auf einem Gerät oder in einer Websitzung mit diesem Account |
| Jemand, mit dem du einen iCloud-Familientarif teilst | Nein, die Familienfreigabe teilt deine persönliche Mediathek nicht |
| Teilnehmende einer geteilten iCloud-Fotomediathek | Nur Objekte, die du in die geteilte Mediathek legst; behalte private Fotos in deiner persönlichen Mediathek |
| Apple | Technisch möglich mit Standard-Datenschutz; nicht mit aktiviertem Erweitertem Datenschutz |

Nutzt du eine geteilte iCloud-Fotomediathek, prüfe vor dem Ausblenden, zu welcher Mediathek ein Foto gehört. Unser Ratgeber zu [geteilten iCloud-Setups in der Familie](id:family-shared-icloud) erklärt den Unterschied.

## So machst du das Album „Ausgeblendet“ so privat wie möglich

Reicht dir das Album für deine Situation, machen es ein paar Einstellungen spürbar stärker:

1. **Lass die Sperre an.** Prüfe, ob die Option für Face ID / Touch ID / Code für das Album unter Einstellungen › Apps › Fotos (ab iOS 18) bzw. Einstellungen › Fotos aktiviert ist.
2. **Nutze einen starken Gerätecode.** Sechs Ziffern sind das Minimum; ein längerer alphanumerischer Code ist besser. Teile ihn nie.
3. **Aktiviere den Erweiterten Datenschutz,** wenn er für dich verfügbar ist und du mit den Anforderungen an die Wiederherstellung umgehen kannst.
4. **Erwäge, das Album selbst zu verbergen** – mit dem Schalter „Album ‚Ausgeblendet‘ anzeigen“.
5. **Räume „Zuletzt gelöscht“ auf,** nachdem du Dinge verschoben hast, denn gelöschte Objekte bleiben dort etwa 30 Tage.

## Wann ein separater Tresor sinnvoller ist

Das Album „Ausgeblendet“ ist für Ordnung und leichte Privatsphäre gedacht, nicht für Situationen, in denen jemand aus deinem Umfeld deinen Code kennt oder dich drängen könnte, das Handy zu entsperren. Dann willst du in der Regel einen Bereich mit eigenem Geheimnis und eigener Verschlüsselung.

Velcrypt verfolgt diesen Ansatz. Jeder Tresor öffnet sich mit einem Muster auf einem 5×5-Raster statt mit Face ID oder deinem Gerätecode, und sein Inhalt ist mit AES-256-GCM verschlüsselt, mit Schlüsseln, die aus diesem Muster abgeleitet werden ([so funktioniert die Verschlüsselung](id:encryption)). Jedes Muster öffnet einen eigenen Tresor, ein unbekanntes Muster einfach einen leeren – nichts verrät, wie viele Tresore es gibt ([versteckte Tresore](id:hidden-vaults)). Alles bleibt auf dem Gerät, ohne Konto und ohne Cloud-Kopie.

Das bringt auch ehrliche Kompromisse mit sich. Tresorinhalte sind in der ersten Version nicht in iCloud- oder Computer-Backups enthalten. Verlierst du das Handy oder vergisst du das Muster, lassen sie sich nicht wiederherstellen. Und beim Import wird ein Foto kopiert, du musst das Original also weiterhin aus „Fotos“ und „Zuletzt gelöscht“ entfernen. Den direkten Vergleich findest du unter [Velcrypt vs. Album „Ausgeblendet“](id:velcrypt-vs-iphone-hidden-album).
