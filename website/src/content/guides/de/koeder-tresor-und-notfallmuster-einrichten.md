---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Köder-Tresor und Notfallmuster einrichten: Anleitung"
description: "Schritt für Schritt: echten Tresor sichern, glaubwürdigen Köder-Tresor anlegen, Notfallmuster in Velcrypt einrichten, üben, ändern und deaktivieren."
h1: "So richtest du in Velcrypt einen Köder-Tresor und ein Notfallmuster ein"
navTitle: "Köder und Notfallmuster einrichten"
answer: "Sichere zuerst deinen echten Tresor unter Einstellungen → Backup. Zeichne dann mit Premium ein neues Muster, um einen Köder-Tresor anzulegen, und füll ihn mit harmlosen Inhalten. Öffne im Köder Einstellungen → Notfallmuster, zeichne zweimal ein eigenes Muster und bestätige. Zeichnet jemand dieses Muster auf dem Sperrbildschirm, öffnet sich der Köder, und alle anderen Tresore werden endgültig gelöscht."
keyFacts:
  - "Beginne mit einem verschlüsselten Backup deines echten Tresors; nach dem Einsatz des Notfallmusters ist es der einzige Weg zurück."
  - "Ein Köder-Tresor ist ein zweites Muster mit harmlosen, glaubwürdigen Inhalten; er braucht Premium."
  - "Richte das Notfallmuster im Köder ein, unter Einstellungen → Notfallmuster."
  - "Das Notfallmuster muss neu sein: Es darf kein Muster sein, das einen Tresor öffnet."
  - "Teste es nie auf dem Sperrbildschirm; übe es stattdessen im Kopf."
  - "Ein Notfallmuster pro iPhone; ein neues ersetzt das alte, und das Deaktivieren löscht nichts."
primaryKeyword: "köder tresor einrichten"
keywords: ["notfallmuster einrichten", "velcrypt notfallmuster einrichten", "köder tresor iphone einrichten", "köder tresor erstellen", "notfallmuster anleitung"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Erst sichern, dann einen glaubwürdigen Köder-Tresor bauen und das Notfallmuster einrichten, mit Tipps zum Üben, Ändern und Deaktivieren."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Köder-Tresor und Notfallmuster in Velcrypt einrichten"
  steps:
    - name: "Sichere deinen echten Tresor"
      text: "Öffne deinen echten Tresor, geh zu Einstellungen → Backup → Diesen Tresor sichern, wähle ein Backup-Passwort mit mindestens 8 Zeichen und speichere die .velcrypt-Datei außerhalb der App, etwa in iCloud Drive oder auf einem Computer."
    - name: "Leg einen Köder-Tresor an"
      text: "Sperre mit Premium die App und zeichne ein neues Muster, das du noch nie benutzt hast. Velcrypt öffnet dafür einen neuen, leeren Tresor."
    - name: "Mach den Köder glaubwürdig"
      text: "Importiere ein paar Dutzend harmlose, alltägliche Objekte wie Quittungen, Ausweisscans oder Geschenkideen in ein paar Alben."
    - name: "Öffne im Köder Einstellungen → Notfallmuster"
      text: "Geh bei geöffnetem Köder-Tresor zu Einstellungen → Notfallmuster und tippe auf „Notfallmuster einrichten“."
    - name: "Zeichne das Notfallmuster zweimal und bestätige"
      text: "Zeichne ein eigenes Muster, das keinen Tresor öffnet, zeichne es zur Bestätigung noch einmal, lies dann die Warnung und tippe auf „Aktivieren“."
    - name: "Üben, ohne es auszulösen"
      text: "Übe das Notfallmuster im Kopf oder auf Papier, das du danach vernichtest, nie auf dem Sperrbildschirm."
faq:
  - q: "Brauche ich Premium für einen Köder-Tresor und ein Notfallmuster?"
    a: "Ja. Die kostenlose Version hat einen Tresor, und ein Köder ist ein zweiter Tresor. Auch das Notfallmuster gehört zu Premium. Einmal eingerichtet, funktioniert es weiter, selbst wenn Premium ausläuft."
  - q: "Warum brauche ich zuerst ein Backup?"
    a: "Weil das Notfallmuster jeden Tresor außer dem Köder endgültig löscht und Tresordaten nicht in iCloud- oder Computer-Backups enthalten sind. Eine verschlüsselte Backup-Datei, die du außerhalb der App gespeichert hast, ist der einzige Weg, einen gelöschten Tresor zurückzuholen."
  - q: "Kann ich das Notfallmuster testen?"
    a: "Nicht auf dem Sperrbildschirm: Dort gezeichnet, löscht es deine anderen Tresore wirklich. Übe es stattdessen im Kopf. Ob du es dir gemerkt hast, kannst du unter Einstellungen → Notfallmuster → Notfallmuster deaktivieren prüfen. Dort gezeichnet, schaltet es sich aber aus, und du müsstest es neu einrichten."
  - q: "Kann ich mehr als ein Notfallmuster haben?"
    a: "Nein. Es gibt ein Notfallmuster pro iPhone. Richtest du ein neues ein, egal aus welchem Köder-Tresor, ersetzt es das alte."
  - q: "Wie bekomme ich meinen echten Tresor zurück, nachdem das Notfallmuster benutzt wurde?"
    a: "Zeichne dein echtes Muster, das jetzt einen neuen, leeren Tresor öffnet. Geh dann zu Einstellungen → Backup → Aus Backup wiederherstellen, wähle deine .velcrypt-Datei und gib ihr Backup-Passwort ein."
---

Diese Anleitung führt durch die vollständige Einrichtung in Velcrypt: ein Backup deines echten Tresors, einen glaubwürdigen Köder-Tresor und ein [Notfallmuster](id:duress-pattern), das den Köder öffnet und still alle anderen Tresore auf dem iPhone löscht. Das dauert etwa 15 Minuten, die meiste Zeit davon, um den Köder echt wirken zu lassen.

Bevor du anfängst, kurz zur Erinnerung, was das Notfallmuster macht: Zeichnet jemand es auf dem Sperrbildschirm, öffnet Velcrypt den Köder-Tresor und **löscht im selben Moment endgültig alle anderen Tresore auf diesem iPhone**. Das Entsperren sieht genauso aus und dauert genauso lange wie sonst, und nichts auf dem Bildschirm zeigt, was passiert ist. Genau darum geht es, und genau deshalb ist der erste Schritt ein Backup.

## Was du brauchst

- **Velcrypt Premium.** Die kostenlose Version hat einen Tresor mit bis zu 50 Objekten. Ein Köder ist ein zweiter Tresor, und das Notfallmuster ist eine Premium-Funktion. Siehe [Preise](id:pricing).
- **Einen sicheren Ort für eine Backup-Datei** außerhalb der App: iCloud Drive, Dateien auf einem anderen Gerät oder einen Computer.
- **Drei Muster, die du auseinanderhalten kannst:** dein echtes, den Köder und das Notfallmuster.

## Schritt 1: Sichere deinen echten Tresor

Tresordaten sind nicht in iCloud- oder Computer-Backups enthalten. Wird das Notfallmuster jemals benutzt, bekommst du deinen echten Tresor nur über eine verschlüsselte Backup-Datei zurück, die du vorher erstellt hast.

1. Zeichne dein echtes Muster, um deinen echten Tresor zu öffnen.
2. Geh zu **Einstellungen → Backup → Diesen Tresor sichern**.
3. Wähle ein Backup-Passwort mit mindestens 8 Zeichen, gib es zweimal ein und tippe auf **Backup erstellen**.
4. Tippe auf **Backup speichern …** und speichere die .velcrypt-Datei an einem anderen Ort als diesem iPhone.

Ein paar Dinge, die du wissen solltest:

- **Das Backup ist kostenlos** und umfasst den geöffneten Tresor. Hast du mehrere private Tresore, sichere jeden einzeln.
- **Das Notfallmuster rührt Backup-Dateien nicht an**, die außerhalb der App liegen.
- **Bewahre das Backup-Passwort sicher auf.** Ein vergessenes Backup-Passwort lässt sich nicht wiederherstellen, weder von dir noch von Velcrypt.
- **Überleg, wer an die Datei herankommt.** Kann die Person, wegen der du dir Sorgen machst, dein iCloud Drive oder deinen Computer öffnen, wähle einen anderen Ort. Die Datei ist verschlüsselt, aber schon ihre Existenz zeigt, dass es einen Tresor zum Wiederherstellen gibt.

Wiederhole das Backup von Zeit zu Zeit, denn es enthält nur, was beim Erstellen im Tresor lag.

## Schritt 2: Leg den Köder-Tresor an

In Velcrypt ist jedes Muster ein eigener Tresor, und ein Muster, das die App noch nie gesehen hat, öffnet einen neuen, leeren Tresor. Einen Köder anzulegen heißt also einfach, ein neues Muster zu zeichnen.

1. Sperre die App.
2. Zeichne ein neues Muster: eine durchgehende Linie über mindestens 6 Punkte auf dem 5×5-Raster mit mindestens einer Richtungsänderung. Es sollte sich in Form und Startpunkt deutlich von deinem echten Muster unterscheiden.
3. Velcrypt öffnet einen neuen, leeren Tresor. Das ist dein Köder.

Was ein Muster stark macht, erklärt die Seite zur [Mustersperre](id:pattern-lock), und die kostenlose [Musterstärke-Prüfung](id:pattern-strength-checker) hilft dir, Ideen zu vergleichen. Teste deine echten Muster nie auf einer Website.

## Schritt 3: Mach den Köder glaubwürdig

Ein leerer Tresor wirkt verdächtig. Ein Köder funktioniert, wenn jemand ihn ansieht und denkt: „Ach, nur das.“

- **Gib ihm einen Grund zu existieren:** Kopien von Ausweis und Versichertenkarte, Quittungen und Garantiebelege, Screenshots von Buchungen, Geschenkideen.
- **Importiere ein paar Dutzend echte Objekte** in ein paar Alben.
- **Halte ihn aktuell.** Füge alle paar Wochen etwas hinzu, damit das neueste Objekt nicht Monate alt ist.

Velcrypt verlangt außerdem Inhalte, bevor ein Tresor ein Notfallmuster bekommen kann, weil das Notfallmuster genau diesen Tresor öffnet. [Was ist ein Köder-Tresor?](id:what-is-a-decoy-vault) liefert mehr Ideen und erklärt, was einen Köder verrät.

## Schritt 4: Richte das Notfallmuster ein

Mach das aus dem Köder-Tresor heraus. Das Notfallmuster öffnet immer den Tresor, in dem es eingerichtet wurde.

1. Geh bei geöffnetem Köder-Tresor zu **Einstellungen → Notfallmuster**.
2. Lies die drei kurzen Erklärungen und tippe dann auf **Notfallmuster einrichten**.
3. **Zeichne ein Notfallmuster.** Es muss ein neues Muster sein, das keinen Tresor öffnet; tut es das doch, bittet Velcrypt dich, ein anderes zu wählen.
4. **Zeichne es zur Bestätigung noch einmal.**
5. Lies die Warnung „Wenn du es auf dem Sperrbildschirm zeichnest, öffnet sich dieser Tresor und alle anderen Tresore auf diesem iPhone werden endgültig gelöscht.“ und tippe auf **Aktivieren**.

Ist der Köder der einzige Tresor auf dem iPhone, warnt dich Velcrypt, dass das Notfallmuster nichts löschen würde. Leg den Köder also zuerst mit einem anderen Muster als dem deines echten Tresors an.

### Das Notfallmuster wählen

- Es sollte sich **unter Stress leicht zeichnen lassen**, flüssig und ohne Zögern.
- Es darf sich **auf keinen Fall mit deinem echten Muster verwechseln lassen**. Zeichnest du das Notfallmuster aus Versehen, löschst du deinen echten Tresor.
- Überleg, ob es **ähnlich aufwendig** sein sollte wie dein echtes, damit das Zeichnen für jemanden, der zusieht, nicht anders aussieht.

## Schritt 5: Üben, ohne es auszulösen

Teste das Notfallmuster nie auf dem Sperrbildschirm. Das ist kein Test; es löscht deine anderen Tresore wirklich.

Übe es stattdessen im Kopf, fahr es mit dem Finger auf einer Oberfläche nach oder skizzier es auf Papier, das du danach vernichtest. Übe so lange, bis du Köder und Notfallmuster ohne Nachdenken zeichnen kannst, auch wenn dir jemand zusieht.

## Leben mit einem Notfallmuster

- **Nichts zeigt, dass es eingerichtet ist.** Velcrypt zeigt nie an, ob ein Notfallmuster existiert. Im Hintergrund liegt im iOS-Schlüsselbund immer ein verschlüsselter Eintrag fester Größe, der ohne Notfallmuster Zufallsbytes enthält.
- **Eines pro iPhone.** Ein neu eingerichtetes Notfallmuster ersetzt das alte.
- **Deaktivieren:** Geh zu **Einstellungen → Notfallmuster → Notfallmuster deaktivieren** und zeichne es. Dort gezeichnet schaltet es sich nur aus; es wird nichts gelöscht.
- **Läuft Premium aus,** funktioniert das Notfallmuster weiter. Nur das Einrichten braucht Premium.

## Falls das Notfallmuster jemals benutzt wird

Deine anderen Tresore sind dann von diesem iPhone verschwunden. So stellst du einen wieder her:

1. Zeichne dein echtes Muster. Es öffnet jetzt einen neuen, leeren Tresor.
2. Geh zu **Einstellungen → Backup → Aus Backup wiederherstellen**.
3. Wähle deine .velcrypt-Datei und gib ihr Backup-Passwort ein.

Tu das nur, wenn es sicher ist. Ist die Person, die dich zum Entsperren gezwungen hat, noch in der Nähe, macht ein sofortiges Wiederherstellen womöglich den Grund zunichte, aus dem du das Notfallmuster benutzt hast.

## Grenzen, die du kennen solltest

- **Kopien außerhalb von Velcrypt bleiben.** Lösch Originale nach dem Import aus Fotos und „Zuletzt gelöscht“; siehe [Originale nach dem Import löschen](id:delete-original-photos-after-import).
- **Flash-Speicher garantiert kein physisches Löschen.** Tresordaten sind mit AES-256-GCM verschlüsselt, und die Schlüssel werden mit den Tresorordnern gelöscht, sodass übrig gebliebene Daten unlesbar sind.
- **Es hilft nicht gegen jemanden, der dir beim Zeichnen deines echten Musters zugesehen hat.**
- **Es ist ein Werkzeug für die persönliche Sicherheit.** Benutze es nie, um Beweise zu vernichten oder dich einer rechtmäßigen Aufforderung von Polizei, Grenzbeamten oder einem Gericht zu widersetzen. Die Gesetze unterscheiden sich von Land zu Land, und Daten trotz einer rechtlichen Anordnung zu löschen, kann selbst eine Straftat sein; hol dir rechtlichen Rat, wenn das auf dich zutrifft.

Richtest du das wegen einer bestimmten Person ein, behandelt [Was tun, wenn dich jemand zwingt, dein Handy zu entsperren](id:forced-to-unlock-phone) das größere Bild deiner Sicherheit. Hast du Sorge, ein Muster zu vergessen, lies zuerst [Tresor-Muster vergessen](id:forgot-vault-pattern).
