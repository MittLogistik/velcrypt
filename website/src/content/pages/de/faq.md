---
pageId: faq
title: "Velcrypt FAQ: Tresore, Muster, Verschlüsselung"
description: "Antworten auf häufige Fragen zu Velcrypt: Muster-Tresore, Verschlüsselung, Backups, Datenschutz, Preise und unterstützte iPhones."
h1: "Häufige Fragen zu Velcrypt"
navTitle: "FAQ"
answer: "Velcrypt ist eine iPhone-App (iOS 17 oder neuer), die Fotos, Videos und Dokumente in verschlüsselten Tresoren auf deinem Gerät speichert. Jeder Tresor öffnet sich mit einem eigenen Muster, es gibt kein Konto und nichts wird hochgeladen – deshalb lässt sich ein vergessenes Muster auch nicht wiederherstellen."
keyFacts:
  - "iPhone-App, iOS 17 oder neuer."
  - "Jedes Muster öffnet einen eigenen Tresor; unbekannte Muster öffnen einen leeren."
  - "AES-256-GCM-Verschlüsselung, nur auf dem Gerät, kein Konto."
  - "Kein Weg zurück bei vergessenem Muster; ein verschlüsseltes Backup schützt vor Geräteverlust."
  - "Kostenlos mit 1 Tresor und 50 Objekten; Premium ab 1,99 $/Woche, 19,99 $/Jahr oder 39,99 $ einmalig."
primaryKeyword: "velcrypt faq"
keywords: ["velcrypt fragen", "wie funktioniert velcrypt", "foto tresor app faq", "velcrypt muster hilfe", "velcrypt backup"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Grundlagen"
    items:
      - q: "Was ist Velcrypt?"
        a: "Velcrypt ist eine iPhone-App, die private Fotos, Videos und Dokumente in verschlüsselten Tresoren auf deinem Gerät aufbewahrt. Einen Tresor öffnest du, indem du ein Muster auf ein 5×5-Punkteraster zeichnest."
      - q: "Was kann ich in Velcrypt speichern?"
        a: "Fotos und Videos aus deiner Fotos-Mediathek, Dokumente aus der App „Dateien“, Aufnahmen der Kamera im Tresor und sichere Notizen. In einem Tresor kannst du Objekte in Alben ordnen, Fotos und Videos mit Zoomen und Wischen ansehen und Objekte sicher verschieben oder exportieren."
      - q: "Entfernt der Import in Velcrypt ein Foto aus meiner Mediathek?"
        a: "Nein. Beim Import entsteht eine verschlüsselte Kopie, das Original bleibt in „Fotos“, bis du es löschst. Leere danach auch „Zuletzt gelöscht“, wo Objekte sonst etwa 30 Tage liegen bleiben."
      - q: "Hat Velcrypt eine eingebaute Kamera?"
        a: "Ja. Mit der Kamera im Tresor nimmst du Fotos und Videos direkt in den geöffneten Tresor auf. Sie landen nie in deiner Fotos-Mediathek."
      - q: "Ist Velcrypt dasselbe wie das Album „Ausgeblendet“ auf dem iPhone?"
        a: "Nein. Das Album „Ausgeblendet“ nimmt Fotos nur aus der Hauptansicht der Mediathek und wird mit Face ID oder deinem Gerätecode geöffnet. Velcrypt verschlüsselt Dateien mit einem Schlüssel, der aus einem separaten Muster abgeleitet wird – nicht aus deinem Gerätecode."
  - title: "Muster und Tresore"
    items:
      - q: "Was ist ein gültiges Velcrypt-Muster?"
        a: "Eine durchgehende Linie durch mindestens 6 Punkte auf dem 5×5-Raster mit mindestens einem Richtungswechsel. Empfohlen sind längere Muster mit 8–12 Punkten."
      - q: "Wie lege ich einen zweiten Tresor an?"
        a: "Zeichne ein neues Muster, das du noch nicht benutzt hast. Jedes Muster ist ein eigener Tresor, ein neues Muster öffnet also einen neuen, leeren Tresor, den du befüllen kannst. Die kostenlose Version hat einen Tresor; weitere Tresore gehören zu Premium."
      - q: "Warum hat mein Muster einen leeren Tresor geöffnet?"
        a: "Wahrscheinlich hast du ein leicht anderes Muster gezeichnet, das Velcrypt als anderen Tresor behandelt. Versuche es langsam noch einmal; eine Meldung „falsches Muster“ zeigt die App absichtlich nie."
      - q: "Kann ich eine Liste meiner Tresore sehen?"
        a: "Nein. Velcrypt führt keine Tresorliste, daher verrät nichts in der App, wie viele existieren. Jedes Muster musst du dir selbst merken."
      - q: "Was ist ein Köder-Tresor?"
        a: "Ein Köder-Tresor ist ein unauffälliger Tresor mit harmlosen Inhalten, den du unter Druck öffnen kannst, während dein privater Tresor hinter einem anderen Muster bleibt. Nichts in Velcrypt beweist, dass der zweite Tresor existiert. Weil dafür ein zweiter Tresor nötig ist, braucht ein Köder-Tresor Premium."
      - q: "Was ist das Notfallmuster?"
        a: "Das Notfallmuster ist für ein künftiges Update geplant und noch nicht in der App. Die Idee: Zeichnest du es, öffnet sich ein von dir gewählter Tresor, und der Zugriff auf die anderen wird still entfernt."
      - q: "Kann ich Objekte in einem Tresor ordnen?"
        a: "Ja. Jeder Tresor kann Alben enthalten, und du kannst mehrere Objekte auswählen und zwischen den Alben dieses Tresors verschieben."
      - q: "Warum nutzt Velcrypt kein Face ID oder Touch ID?"
        a: "Mit Absicht. Ein Gesicht oder Finger lässt sich ohne deine Zustimmung benutzen, etwa während du schläfst oder unter Druck – ein Muster existiert dagegen nur in deinem Kopf."
  - title: "Sicherheit und Verschlüsselung"
    items:
      - q: "Wie verschlüsselt Velcrypt meine Dateien?"
        a: "Mit AES-256-GCM über Apple CryptoKit. Jeder Tresor hat einen eigenen zufälligen 256-Bit-Hauptschlüssel, und jede Datei erhält einen eigenen, mit HKDF abgeleiteten Schlüssel."
      - q: "Wie wird aus meinem Muster ein Schlüssel?"
        a: "Velcrypt verarbeitet das Muster mit PBKDF2-HMAC-SHA512, mindestens 600.000 Iterationen und einem zufälligen, gerätespezifischen Salt aus dem iOS-Schlüsselbund. Das Muster selbst wird nie gespeichert."
      - q: "Nutzt Velcrypt den iOS-Datenschutz?"
        a: "Ja. Tresordateien nutzen die Schutzklasse „Complete“, sodass iOS sie verschlüsselt hält, sobald das iPhone gesperrt ist – zusätzlich zur Verschlüsselung durch Velcrypt."
      - q: "Sperrt sich Velcrypt automatisch?"
        a: "Ja. Die App sperrt sich, sobald sie in den Hintergrund wechselt, nach einer einstellbaren Verzögerung, und Tresorinhalte sind in der App-Übersicht verborgen."
      - q: "Wurde Velcrypt einem Sicherheitsaudit unterzogen?"
        a: "Ein unabhängiges Audit gab es bisher nicht. Velcrypt nutzt Standardalgorithmen und Apples CryptoKit, und eine externe Prüfung würden wir begrüßen."
      - q: "Wovor kann Velcrypt nicht schützen?"
        a: "Vor jemandem, der dir beim Zeichnen des Musters zusieht, vor Zwang zum Entsperren, vor einem iPhone, das mit offenem Tresor übergeben wird, vor Schadsoftware auf kompromittierten oder gejailbreakten Geräten, vor Fotos deines Bildschirms und vor Kopien, die noch anderswo existieren. Die Sicherheitsseite listet diese Grenzen vollständig auf."
  - title: "Backup und Wiederherstellung"
    items:
      - q: "Was passiert, wenn ich mein Velcrypt-Muster vergesse?"
        a: "Der Tresor lässt sich nicht mehr öffnen. Velcrypt speichert dein Muster und deine Schlüssel nie, daher können weder du noch Velcrypt ihn wiederherstellen."
      - q: "Ist mein Tresor in meinem iCloud-Backup enthalten?"
        a: "Nein. Tresordaten sind von iCloud-Backups ausgeschlossen, damit verschlüsselte Dateien dein Gerät nicht ungefragt verlassen. Für eine Sicherung erstellst du selbst ein verschlüsseltes Backup unter Einstellungen → Backup."
      - q: "Ist mein Tresor in einem Finder- oder iTunes-Backup enthalten?"
        a: "Nein. Auch von Computer-Backups sind Tresordaten ausgeschlossen. Nutze stattdessen das verschlüsselte Backup von Velcrypt."
      - q: "Was passiert mit meinen Tresoren, wenn ich ein neues iPhone bekomme?"
        a: "Sie werden nicht automatisch übertragen. Erstelle auf dem alten iPhone für jeden Tresor unter Einstellungen → Backup ein verschlüsseltes Backup, speichere die Datei etwa in iCloud Drive oder auf einem Computer und stelle sie auf dem neuen iPhone im geöffneten Tresor wieder her."
      - q: "Bietet Velcrypt ein verschlüsseltes Backup?"
        a: "Ja, kostenlos. Unter Einstellungen → Backup erstellst du eine .velcrypt-Datei für den geöffneten Tresor, geschützt mit einem Backup-Passwort, das du wählst. Velcrypt erhält die Datei nie, und ein vergessenes Backup-Passwort lässt sich nicht wiederherstellen."
      - q: "Kann der Velcrypt-Support mein Muster zurücksetzen?"
        a: "Nein. Der Support hat keinen Zugriff auf deine Tresore, Muster oder Schlüssel, es gibt auf unserer Seite also nichts zurückzusetzen."
  - title: "Datenschutz"
    items:
      - q: "Brauche ich ein Konto für Velcrypt?"
        a: "Nein. Es gibt keine Registrierung, keine E-Mail-Adresse und keinen Login. Du installierst die App und zeichnest ein Muster."
      - q: "Lädt Velcrypt meine Fotos hoch?"
        a: "Nein. Velcrypt hat keine Server für deine Inhalte. Tresordateien verlassen dein iPhone nur, wenn du selbst ein verschlüsseltes Backup oder einen Export speicherst, und auch dann nur dorthin, wo du sie ablegst."
      - q: "Erhebt Velcrypt Analysedaten?"
        a: "Velcrypt erhebt keine Analysedaten zu Tresorinhalten. Wenn du in den iOS-Einstellungen zugestimmt hast, Analysedaten mit App-Entwicklern zu teilen, kann Apple Absturz- und Diagnosedaten mit uns teilen."
      - q: "Können andere erkennen, dass ich Velcrypt nutze?"
        a: "Das App-Symbol ist auf deinem Home-Bildschirm sichtbar, und forensische Werkzeuge können womöglich erkennen, dass Velcrypt verschlüsselte Daten enthält und ungefähr wie viele. Velcrypt verbirgt die Anzahl der Tresore und ihre Inhalte, nicht seine eigene Existenz."
      - q: "Zeigt Velcrypt Werbung oder verkauft es Daten?"
        a: "Nein. Velcrypt hat keine Werbung und verkauft keine Daten. Deine Inhalte werden gar nicht erst erhoben."
  - title: "Preise und Verfügbarkeit"
    items:
      - q: "Ist Velcrypt kostenlos?"
        a: "Ja. Die kostenlose Version hat 1 Tresor mit bis zu 50 Objekten und das verschlüsselte Backup. Premium kostet 1,99 $ pro Woche, 19,99 $ pro Jahr mit 3 Tagen Gratistest oder 39,99 $ einmalig (USD; die Preise variieren je nach Land und stehen im App Store)."
      - q: "Was enthält Premium?"
        a: "Unbegrenzte Objekte, mehr Tresore (andere Muster bekommen eigene Tresore) und alternative App-Symbole. Abos verlängern sich automatisch, wenn du sie nicht mindestens 24 Stunden vor Ende des Zeitraums in den Einstellungen deines Apple Accounts kündigst."
      - q: "Wo bekomme ich Velcrypt?"
        a: "Velcrypt ist eine iPhone-App, die über den App Store vertrieben wird. Den aktuellen Stand der Verfügbarkeit zeigt der App-Store-Button auf dieser Website."
      - q: "Wer wickelt Zahlungen ab?"
        a: "Apple wickelt alle Käufe über den App Store ab. Velcrypt sieht deine Zahlungsdaten nie."
  - title: "Kompatibilität"
    items:
      - q: "Welche iOS-Version braucht Velcrypt?"
        a: "Velcrypt setzt iOS 17 oder neuer auf dem iPhone voraus."
      - q: "Gibt es Velcrypt für iPad, Mac oder Android?"
        a: "Nein. Velcrypt ist eine reine iPhone-App, und eine Webversion gibt es nicht."
      - q: "Synchronisiert Velcrypt zwischen Geräten?"
        a: "Nein. Es gibt keine Cloud-Synchronisierung. Um einen Tresor auf ein anderes iPhone zu bringen, erstellst du ein verschlüsseltes Backup und stellst es dort wieder her."
      - q: "Kann ich Dokumente aus der App „Dateien“ importieren?"
        a: "Ja. Du kannst Dokumente aus der App „Dateien“ in jeden Tresor importieren, zusätzlich zu Fotos und Videos."
---

Hier findest du die häufigsten Fragen zu Velcrypt, nach Themen sortiert. Jede Antwort steht für sich, du kannst also direkt zum passenden Abschnitt springen.

Wenn du das vollständige technische Bild willst, erklärt die Seite zum [Sicherheitsmodell](id:security), wie aus deinem Muster ein Schlüssel wird und wie Dateien verschlüsselt werden – und wovor Velcrypt nicht schützen kann. Was in welcher Version enthalten ist, steht unter [Preise](id:pricing). Wenn du glaubst, den Zugang zu einem Tresor verloren zu haben, lies zuerst [Tresormuster vergessen](id:forgot-vault-pattern), bevor du etwas anderes versuchst – und denk daran: Ein unbekanntes Muster öffnet einfach einen neuen, leeren Tresor statt einer Fehlermeldung.

Deine Frage ist nicht dabei? [Kontaktiere den Support](id:support), wir helfen, wo wir können. Fragen zur Funktionsweise der App beantworten wir gern, aber einen Tresor öffnen, zurücksetzen oder wiederherstellen können wir niemals.
