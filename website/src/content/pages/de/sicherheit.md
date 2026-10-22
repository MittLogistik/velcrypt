---
pageId: security
title: "Velcrypt Sicherheit: So funktioniert die Verschlüsselung"
description: "So schützt Velcrypt deine Tresore: PBKDF2-Schlüsselableitung, Hauptschlüssel pro Tresor, AES-256-GCM, iOS-Datenschutz – und wo der Schutz endet."
h1: "So funktioniert Velcrypt: das Sicherheitsmodell"
navTitle: "Sicherheitsmodell"
answer: "Velcrypt macht aus dem Muster, das du zeichnest, mit PBKDF2-HMAC-SHA512 (mindestens 600.000 Iterationen) einen Schlüssel, schützt damit einen zufälligen 256-Bit-Hauptschlüssel für diesen Tresor und verschlüsselt jede Datei mit AES-256-GCM auf deinem iPhone. Nichts wird hochgeladen, und es gibt weder ein Konto noch eine Wiederherstellungskopie deiner Schlüssel."
keyFacts:
  - "Muster → PBKDF2-HMAC-SHA512, mindestens 600.000 Iterationen, gerätespezifischer Zufalls-Salt im iOS-Schlüsselbund."
  - "Jeder Tresor hat einen eigenen zufälligen 256-Bit-Hauptschlüssel; Schlüssel pro Datei werden mit HKDF abgeleitet."
  - "Dateien werden mit AES-256-GCM über Apple CryptoKit verschlüsselt, zusätzlich mit iOS-Datenschutz (Schutzklasse „Complete“)."
  - "Ein unbekanntes Muster öffnet einen leeren Tresor – keine Tresorliste, keine Meldung „falsches Muster“."
  - "Kein Netzwerk, kein Konto, keine Analyse von Tresorinhalten; Tresordaten sind in v1 von iCloud- und Computer-Backups ausgeschlossen."
  - "Velcrypt wurde bisher keinem unabhängigen Sicherheitsaudit unterzogen."
primaryKeyword: "velcrypt sicherheit"
keywords: ["foto tresor verschlüsselung iphone", "wie funktioniert velcrypt verschlüsselung", "aes-256-gcm foto tresor", "pbkdf2 mustersperre", "foto tresor bedrohungsmodell", "tresor app glaubhafte abstreitbarkeit"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Kann Velcrypt meine Fotos sehen oder wiederherstellen?"
    a: "Nein. Velcrypt hat keine Server, kein Kontosystem und keine Kopie deiner Schlüssel. Dein Muster wird nie gespeichert, daher kann bei Velcrypt niemand einen Tresor öffnen, zurücksetzen oder wiederherstellen."
  - q: "Was passiert, wenn jemand in Velcrypt das falsche Muster zeichnet?"
    a: "Ein Muster, das Velcrypt noch nie gesehen hat, öffnet einfach einen neuen, leeren Tresor. Es gibt keine Fehlermeldung und nichts, was der Person verrät, ob weitere Tresore existieren."
  - q: "Ist die Verschlüsselung von Velcrypt dieselbe wie die eingebaute iPhone-Verschlüsselung?"
    a: "Nein, sie kommt hinzu. iOS verschlüsselt das Gerät bereits, und Velcrypt wendet die strengste iOS-Datenschutzklasse auf seine Dateien an. Zusätzlich verschlüsselt es jede Datei mit einem eigenen AES-256-GCM-Schlüssel, der aus deinem Tresormuster abgeleitet ist – ein entsperrtes iPhone allein öffnet also keinen Tresor."
  - q: "Wurde Velcrypt unabhängig geprüft?"
    a: "Noch nicht. Velcrypt basiert auf Apples CryptoKit und auf etablierten, gut untersuchten Algorithmen. Eine unabhängige Sicherheitsprüfung würden wir begrüßen, bisher hat aber keine stattgefunden."
  - q: "Verbirgt Velcrypt, dass ich einen verschlüsselten Tresor nutze?"
    a: "Nicht vollständig. Die App ist auf deinem Home-Bildschirm sichtbar, und mit forensischen Werkzeugen lässt sich womöglich erkennen, dass Velcrypt verschlüsselte Daten speichert und ungefähr wie viele. Velcrypt verbirgt, wie viele Tresore du hast und was darin liegt."
---

Diese Seite erklärt verständlich, was mit deinen Fotos, Videos und Dokumenten passiert, wenn du sie in Velcrypt ablegst – und wo der Schutz endet. Sie richtet sich an alle, die das Konzept verstehen wollen, bevor sie ihm etwas Persönliches anvertrauen.

## Die Kurzfassung

Velcrypt ist eine iPhone-App, die private Dateien in verschlüsselten Tresoren auf deinem Gerät aufbewahrt. Einen Tresor öffnest du, indem du ein Muster auf ein 5×5-Punkteraster zeichnest. Dieses Muster wird nirgends gespeichert. Stattdessen durchläuft es eine bewusst langsame Schlüsselableitungsfunktion, die daraus einen Schlüssel erzeugt – und dieser Schlüssel schützt den Inhalt des Tresors.

Alles passiert auf dem iPhone selbst. Velcrypt hat kein Konto, keine Server und keinen Upload, es gibt also nirgendwo sonst eine Kopie deines Tresors oder deiner Schlüssel. Das ist seine Stärke und zugleich seine wichtigste Einschränkung: Vergisst du das Muster oder verlierst du das iPhone, lässt sich der Tresor nicht wiederherstellen.

## Vom Muster zum Schlüssel

### Das Muster

Ein Muster ist eine durchgehende Linie durch mindestens 6 der 25 Punkte mit mindestens einem Richtungswechsel. Empfohlen sind längere Muster mit 8–12 Punkten, denn jeder zusätzliche Punkt vervielfacht die Zahl der Muster, die ein Angreifer durchprobieren müsste. Mehr zu den Abwägungen liest du unter [Mustersperre vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id), und wie die Sperre selbst funktioniert, zeigt die [Funktionsseite zur Mustersperre](id:pattern-lock).

### PBKDF2 mit gerätespezifischem Salt

Sobald du fertig gezeichnet hast, wandelt Velcrypt die Punktfolge mit **PBKDF2-HMAC-SHA512** und mindestens **600.000 Iterationen** in einen Schlüssel um. PBKDF2 ist eine Schlüsselableitungsfunktion: ein absichtlich langsames, reproduzierbares Verfahren, das aus einem Geheimnis (deinem Muster) einen kryptografischen Schlüssel macht. Die Langsamkeit ist gewollt. Für dich dauert die Ableitung einen Sekundenbruchteil, aber wer Millionen von Mustern ausprobiert, muss diesen Aufwand millionenfach bezahlen.

In die Ableitung fließt außerdem ein **Salt** ein – ein Zufallswert, der einmalig auf deinem Gerät erzeugt und im iOS-Schlüsselbund gespeichert wird. Weil der Salt nur zu deinem iPhone gehört, erhalten zwei Personen, die zufällig dasselbe Muster zeichnen, völlig unterschiedliche Schlüssel, und vorberechnete Tabellen nach dem Schema „häufiges Muster → Schlüssel“ sind nutzlos.

### Ein Hauptschlüssel pro Tresor

Jeder Tresor hat einen eigenen **Hauptschlüssel**: 256 zufällige Bits, die beim Anlegen des Tresors vom sicheren Zufallszahlengenerator des Systems erzeugt werden. Der Hauptschlüssel ist der Schlüssel, der die Dateien des Tresors tatsächlich schützt. Er wird nur in geschützter (umhüllter) Form gespeichert, versiegelt mit dem Schlüssel aus deinem Muster. Ohne das richtige Muster lässt er sich nicht entsiegeln.

Diese Trennung ist wichtig. Der Hauptschlüssel ist echt zufällig, seine Stärke hängt also nicht davon ab, wie einprägsam dein Muster ist. Und sie macht jeden Tresor kryptografisch unabhängig von allen anderen Tresoren auf demselben iPhone.

### Ein Schlüssel pro Datei

Aus dem Hauptschlüssel leitet Velcrypt mit **HKDF** für jede Datei einen eigenen Schlüssel ab – einem Standardverfahren, um aus einem starken Geheimnis mehrere unabhängige Schlüssel zu gewinnen. Würde der Schlüssel einer Datei jemals bekannt, verriete er weder den Hauptschlüssel noch die Schlüssel anderer Dateien.

## So werden Dateien verschlüsselt

### AES-256-GCM über Apple CryptoKit

Jedes Foto, jedes Video und jedes Dokument wird mit **AES-256-GCM** verschlüsselt – über Apples Framework CryptoKit statt mit selbst geschriebenem Krypto-Code. AES-256-GCM ist eine authentifizierte Verschlüsselung: Sie hält den Inhalt vertraulich *und* erkennt Manipulationen. Wird auch nur ein Bit einer verschlüsselten Datei verändert, schlägt die Entschlüsselung fehl, statt beschädigte oder manipulierte Daten zu liefern. Ausführlicher erklären das [AES-256-Verschlüsselung erklärt](id:aes-256-encryption-explained) und die [Funktionsseite zur Verschlüsselung](id:encryption).

### iOS-Datenschutz als zweite Schicht

Zusätzlich zur Verschlüsselung durch Velcrypt werden Tresordateien mit der iOS-Datenschutzklasse **„Complete Protection“** geschrieben. In dieser Klasse hält iOS die Dateien mit einem Schlüssel verschlüsselt, der nur verfügbar ist, solange das iPhone entsperrt ist. Ist das iPhone gesperrt, kann selbst das Betriebssystem sie nicht lesen. Diese Schicht stellt Apple bereit, unabhängig von den Schlüsseln von Velcrypt – ein Angreifer müsste also beide überwinden.

## Warum ein unbekanntes Muster einen leeren Tresor öffnet

Die meisten Apps prüfen dein Passwort gegen etwas Gespeichertes – einen Hash, einen Prüfwert, eine „richtige Antwort“ – und melden dann *falsches Passwort*. Velcrypt tut das absichtlich nicht.

Es gibt keine Tresorliste und keinen gespeicherten Wert, der bestätigt, ob ein Muster „richtig“ ist. Wenn du ein Muster zeichnest, leitet Velcrypt einen Schlüssel ab und versucht, den dazugehörigen Tresor zu öffnen. Passt kein Tresor, öffnet die App einfach einen neuen, leeren Tresor für dieses Muster. Für die Person, die das iPhone in der Hand hält, sehen ein nie benutztes Muster und ein echter, aber leerer Tresor gleich aus.

Das gibt dir **glaubhafte Abstreitbarkeit**: die Möglichkeit, glaubwürdig zu sagen, dass es nichts weiter zu sehen gibt, weil nichts in der App das Gegenteil beweist. Du kannst einen Köder-Tresor mit gewöhnlichen Fotos führen und einen separaten Tresor für das, was wirklich privat ist. Mehr dazu findest du auf der Seite [versteckte Tresore](id:hidden-vaults) und in unseren Anleitungen zu [Köder-Tresoren](id:what-is-a-decoy-vault) und [glaubhafter Abstreitbarkeit](id:plausible-deniability-explained).

Eine praktische Nebenwirkung: Liegst du bei deinem Muster um einen Punkt daneben, landest du in einem leeren Tresor statt bei einer Fehlermeldung. Das ist so gewollt und kein Fehler.

## Sperren und die App-Übersicht

Velcrypt sperrt sich automatisch, sobald die App in den Hintergrund wechselt – nach einer Verzögerung, die du einstellen kannst. Beim Sperren werden die Tresorschlüssel aus dem Speicher entfernt, und das Muster muss neu gezeichnet werden. Tresorinhalte sind außerdem in der iOS-App-Übersicht verborgen, sodass ein Blick auf deine zuletzt genutzten Apps keine Vorschau eines privaten Fotos zeigt. Die Einstellungen findest du unter [automatische Sperre](id:auto-lock).

Ein Entsperren per Face ID oder Touch ID gibt es bewusst nicht. Ein Gesicht oder ein Finger lässt sich ohne deine Zustimmung benutzen – während du schläfst oder unter Druck. Ein Muster existiert nur in deinem Kopf.

## Kein Netzwerk, kein Konto, keine Backups

Velcrypt funktioniert komplett offline. Es gibt keine Registrierung, keine E-Mail-Adresse, keinen Server und keinen Upload von Tresorinhalten, und es werden keine Analysedaten darüber erhoben, was du speicherst. Was das praktisch bedeutet, steht auf der Seite [offline, ohne Konto](id:offline-no-account).

In der ersten Version sind Tresordaten außerdem **von iCloud- und Computer-Backups (Finder) ausgeschlossen**. So landen deine verschlüsselten Dateien weder auf Apples Servern noch auf einem Computer, mit dem du synchronisierst. Das hat aber eine echte Konsequenz: Geht dein iPhone verloren, kaputt oder wird es zurückgesetzt, sind die Tresore mit ihm weg. Eine verschlüsselte Backup-Option ist geplant, ohne festes Datum.

## Das Bedrohungsmodell im Überblick

| Bedrohung | Geschützt? | Hinweise |
|---|---|---|
| Jemand scrollt durch deine Fotos-Mediathek | Ja | Was du importierst und danach in „Fotos“ löschst (inklusive „Zuletzt gelöscht“), liegt nur noch in Velcrypt. |
| Jemand nimmt dein entsperrtes iPhone und öffnet Velcrypt | Ja | Die Person braucht dein Muster; ein falsches zeigt einen leeren Tresor. |
| Jemand will beweisen, dass du weitere Tresore hast | Weitgehend | Keine Tresorliste, keine Meldung „falsches Muster“; die Anzahl der Tresore wird in der App nicht angezeigt. |
| Diebstahl eines gesperrten iPhones | Ja | iOS-Datenschutz plus eigene AES-256-GCM-Verschlüsselung von Velcrypt. |
| Brute-Force-Angriff auf das Muster mit ausgelesenen Dateien | Verlangsamt | PBKDF2 mit 600.000+ Iterationen und gerätespezifischem Salt; ein langes Muster zählt. |
| Ein Cloud-Konto wird gehackt | Ja | Tresordaten werden nicht hochgeladen und sind in v1 von iCloud-Backups ausgeschlossen. |
| Manipulation verschlüsselter Dateien | Erkannt | Die Authentifizierung von AES-256-GCM weist veränderte Daten zurück. |
| Jemand sieht dir beim Zeichnen des Musters zu | Nein | Siehe unten. |
| Schadsoftware oder ein gejailbreaktes Gerät | Nein | Siehe unten. |
| Vergessenes Muster oder verlorenes iPhone | Nein | Eine Wiederherstellung ist nicht möglich. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Wovor Velcrypt nicht schützt

Jedes Sicherheitswerkzeug hat Grenzen, und du solltest die von Velcrypt kennen, bevor du dich darauf verlässt.

- **Über die Schulter schauen.** Sieht jemand, wie du dein Muster zeichnest – persönlich oder über eine Kamera –, kann diese Person den Tresor öffnen. Zeichne es unbeobachtet und wähle am besten ein Muster, das nicht wie ein einfacher Buchstabe oder eine Form aussieht.
- **Zwang zum Entsperren.** Velcrypt kann niemanden daran hindern, dich zum Zeichnen eines Musters zu zwingen. Ein Köder-Tresor kann helfen; ein Notfallmuster (demnächst, Premium) soll einen gewählten Tresor öffnen und still den Zugriff auf die anderen entfernen.
- **Ein iPhone, das mit offenem Tresor übergeben wird.** Solange ein Tresor entsperrt ist, sieht jeder, der das iPhone hält, was du siehst. Sperre ihn, bevor du dein iPhone weitergibst.
- **Kompromittierte oder gejailbreakte Geräte und Schadsoftware.** Software, die auf einem kompromittierten Gerät den Bildschirm auslesen, Berührungen mitschneiden oder den App-Speicher untersuchen kann, hebelt jede Verschlüsselung auf App-Ebene aus.
- **Screenshots oder Fotos vom Bildschirm.** Velcrypt kann nicht verhindern, dass eine andere Kamera dein Display abfotografiert.
- **Kopien an anderen Orten.** Beim Import wird ein Foto kopiert; das Original bleibt in „Fotos“, bis du es löschst, und liegt danach etwa 30 Tage in „Zuletzt gelöscht“. Kopien können auch in iCloud-Fotos, Chat-Apps, E-Mails oder auf dem Handy einer anderen Person existieren. Folge der Anleitung zum [Löschen der Originale nach dem Import](id:delete-original-photos-after-import).
- **Verlust des iPhones oder ein vergessenes Muster.** Beides bedeutet: Die Daten sind weg. Es gibt keine Wiederherstellungsphrase und kein Zurücksetzen. Siehe [Tresormuster vergessen](id:forgot-vault-pattern).
- **Erkennen, dass Velcrypt genutzt wird.** Das App-Symbol ist sichtbar, und forensische Werkzeuge können womöglich erkennen, dass Velcrypt verschlüsselte Daten enthält und ungefähr wie viele. Velcrypt behauptet nicht, das zu verbergen – nur die Anzahl der Tresore und ihre Inhalte.
- **Schwache oder leicht zu erratende Muster.** Ein kurzes Muster oder eines in Form eines L, Z oder Quadrats ist viel leichter zu erraten. Teste eine ähnliche Form mit dem [Musterstärke-Prüfer](id:pattern-strength-checker) – niemals dein echtes Muster.

## Unabhängige Prüfung

Velcrypt setzt auf etablierte, gründlich untersuchte Bausteine und auf Apples eigene Kryptografie-Bibliotheken statt auf selbst erfundene Algorithmen. Trotzdem ist gutes Design nicht dasselbe wie geprüftes Design. Velcrypt wurde **nicht** unabhängig auditiert. Eine externe Sicherheitsprüfung würden wir begrüßen, und falls es dazu kommt, veröffentlichen wir das Ergebnis hier.

## Glossar

- **AES-256-GCM** ist ein symmetrisches Verschlüsselungsverfahren mit 256-Bit-Schlüssel, das die Daten zusätzlich authentifiziert, sodass jede Manipulation beim Entschlüsseln auffällt.
- **PBKDF2** (Password-Based Key Derivation Function 2) ist ein Standard, der aus einem Geheimnis wie einem Passwort oder Muster einen Schlüssel macht, indem eine Hashfunktion sehr oft wiederholt wird – das macht Raten langsam.
- **Salt** ist ein Zufallswert, der vor der Schlüsselableitung mit deinem Geheimnis kombiniert wird, damit dasselbe Muster auf verschiedenen Geräten unterschiedliche Schlüssel ergibt.
- **HKDF** (HMAC-based Key Derivation Function) ist ein Standardverfahren, um aus einem starken Schlüssel mehrere unabhängige Schlüssel abzuleiten.
- **Hauptschlüssel** ist der zufällige 256-Bit-Schlüssel, der zu einem Tresor gehört und alle Dateischlüssel dieses Tresors schützt.
- **Glaubhafte Abstreitbarkeit** bedeutet, dass nichts in der App beweisen kann, dass weitere Tresore existieren – du kannst also glaubwürdig einen Tresor zeigen, ohne andere preiszugeben.
