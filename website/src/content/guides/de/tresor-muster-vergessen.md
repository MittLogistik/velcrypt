---
pageId: forgot-vault-pattern
title: "Foto-Tresor-Passwort oder Muster vergessen?"
description: "Passwort oder Muster für deinen Foto-Tresor vergessen? Was du zuerst probierst, warum Velcrypt kein Zurücksetzen hat und wie du dich nicht aussperrst."
h1: "Foto-Tresor-Passwort oder Muster vergessen? Was geht und was nicht"
navTitle: "Tresor-Muster vergessen"
answer: "In Velcrypt lässt sich ein vergessenes Muster weder zurücksetzen noch wiederherstellen – weder von dir noch von Velcrypt –, weil der Schlüssel nur in deinem Gedächtnis existiert und kein Server eine Kopie hat. Was du tun kannst: ruhig ähnliche Varianten des Musters ausprobieren. Andere Tresor-Apps bieten vielleicht eine Wiederherstellung per E-Mail oder Konto; prüfe, was deine nutzt."
keyFacts:
  - "Velcrypt hat kein Zurücksetzen, keine Wiederherstellungs-E-Mail und keine Wiederherstellungsphrase: Schlüssel werden auf dem Gerät aus deinem Muster abgeleitet."
  - "Ein falsches Muster öffnet in Velcrypt einen leeren Tresor statt einer Fehlermeldung – ein leerer Tresor bedeutet also oft ein leicht anderes Muster."
  - "Tresordaten sind in der ersten Version von iCloud- und Computer-Backups ausgeschlossen."
  - "Eine verschlüsselte Backup- bzw. Wiederherstellungsoption ist geplant, ohne zugesagtes Datum."
  - "Wäre ein Verlust unerträglich, bewahre eine Kopie an einem anderen vertrauenswürdigen Ort auf."
primaryKeyword: "foto tresor passwort vergessen"
keywords: ["tresor muster vergessen", "foto tresor wiederherstellen", "foto tresor app pin vergessen", "tresor muster zurücksetzen", "aus foto tresor ausgesperrt"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Was du zuerst probierst, warum Velcrypt ein vergessenes Muster nicht zurücksetzen kann, wie andere Apps das lösen und wie du dich nicht aussperrst."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "Kann der Velcrypt-Support mein Muster zurücksetzen?"
    a: "Nein. Velcrypt hat kein Konto und keinen Server, und deine Schlüssel werden auf deinem iPhone aus dem Muster abgeleitet. Das Team hat nichts, was es zurücksetzen oder nachschlagen könnte – genau deshalb kommt auch sonst niemand hinein."
  - q: "Mein Tresor sieht plötzlich leer aus. Sind meine Daten weg?"
    a: "Wahrscheinlich nicht. In Velcrypt öffnet ein Muster, das die App nicht kennt, einen neuen, leeren Tresor – ein leerer Tresor bedeutet also meist, dass du ein leicht anderes Muster gezeichnet hast. Schließe die App, versuche es sorgfältig noch einmal und füge dem leeren Tresor nichts hinzu."
  - q: "Kann ich Velcrypt neu installieren, neu anfangen und meine Fotos behalten?"
    a: "Nein. Wenn du die App löschst, werden ihre verschlüsselten Daten vom Gerät gelöscht. Eine Neuinstallation liefert eine leere App, keinen Zugriff auf die alten Tresore. Lösche sie nur, wenn du akzeptiert hast, dass die Inhalte weg sind."
  - q: "Wie gehen andere Foto-Tresor-Apps mit einer vergessenen PIN um?"
    a: "Viele kontobasierte Apps lassen dich die PIN per E-Mail oder über ein Cloud-Konto zurücksetzen – es gibt also einen Weg zurück außerhalb deines Gedächtnisses. Lies die Hilfeseiten deiner App, bevor du sie brauchst, und bedenke, dass ein Wiederherstellungsweg auch ein Einfallstor für andere sein kann."
  - q: "Bekommt Velcrypt eine Wiederherstellungsoption?"
    a: "Eine verschlüsselte Backup- und Wiederherstellungsoption ist geplant, aber es gibt kein Veröffentlichungsdatum. Bis es sie gibt, betrachte dein Muster als einzigen Schlüssel."
---

Das flaue Gefühl, wenn die Form, die du hundertmal gezeichnet hast, plötzlich nicht funktioniert, ist echt. Vor allem anderen: Lösche die App nicht und installiere sie nicht neu. Die meisten „vergessenen“ Muster stellen sich als leicht falsch erinnerte heraus, und es gibt sinnvolle Dinge, die du zuerst probieren kannst.

## Probier zuerst das (in Velcrypt)

Velcrypt verhält sich bei einem falschen Muster anders als die meisten Apps. Es zeigt keinen Fehler. Jedes Muster, das es noch nicht kennt, öffnet einfach einen neuen, leeren Tresor. Sieht dein Tresor leer aus, ist die wahrscheinlichste Erklärung also, dass du ein leicht anderes Muster gezeichnet hast – nicht, dass deine Daten verschwunden sind.

Geh diese Punkte in Ruhe durch:

1. **Füge dem leeren Tresor nichts hinzu.** Importierst du Objekte hinein, entsteht unter dem falschen Muster ein neuer Tresor, der später für Verwirrung sorgt.
2. **Schließe die App und fang neu an.** Velcrypt sperrt sich, wenn es in den Hintergrund geht (nach der von dir eingestellten Verzögerung), und du bekommst einen frischen Entsperrbildschirm.
3. **Prüfe den Startpunkt.** Ein Muster ist eine Folge von Punkten – beginnst du am anderen Ende derselben Form, ist das in der Regel ein anderes Muster.
4. **Prüfe auf ausgelassene oder zusätzliche Punkte.** Auf einem 5×5-Raster führt eine gerade Linie leicht durch einen Punkt mehr oder weniger als gedacht.
5. **Denk daran, wo du normalerweise bist.** Das Muskelgedächtnis hängt an der Haltung. Zeichne in der Position, in der du sonst entsperrst: einhändig, beidhändig, im Sitzen.
6. **Skizziere es auf Papier.** Zeichne das 5×5-Raster und skizziere das Muster aus dem Gedächtnis, dann vergleiche Varianten. Vernichte das Papier danach.
7. **Mach eine Pause.** Unter Stress erinnert man sich schlechter. Später und ausgeruht klappt es oft.

## Wenn es wirklich weg ist

Funktioniert nichts davon, lautet die ehrliche Antwort: Die Inhalte lassen sich nicht wiederherstellen. Nicht von dir, nicht von Velcrypt, von niemandem.

Das ist keine Richtlinie, die sich aushebeln ließe. So funktioniert die Verschlüsselung:

- Velcrypt hat kein Konto, keine E-Mail und keinen Server. Siehe [offline, ohne Konto](id:offline-no-account).
- Deine Tresorschlüssel werden mit einem Schlüssel entsperrt, der auf dem Gerät aus deinem Muster abgeleitet wird – per PBKDF2 und einem Salt, das im iOS-Schlüsselbund liegt. Ohne das Muster lässt sich dieser Schlüssel nicht erzeugen.
- Die Tresordaten sind mit AES-256-GCM verschlüsselt, das sich nicht per Brute Force knacken lässt. Warum, erklärt [AES-256-Verschlüsselung erklärt](id:aes-256-encryption-explained).
- In der ersten Version sind Tresordaten von iCloud- und Finder-/iTunes-Backups ausgeschlossen, es gibt also keine ältere Kopie zum Wiederherstellen.

Dieselben Eigenschaften, die deinen Tresor privat machen, machen ein vergessenes Muster endgültig. Ein System mit einem Knopf „Muster vergessen?“ behält zwangsläufig einen Zugang, der nicht allein von dir abhängt.

### Was ist mit anderen Tresoren?

Weil jedes Muster ein eigener Tresor ist, betrifft ein vergessenes Muster die anderen nicht. Erinnerst du dich an das Muster deines [Köder-Tresors](id:what-is-a-decoy-vault), öffnet sich dieser ganz normal.

## Warum „kein Zurücksetzen“ ein bewusster Kompromiss ist

Wiederherstellungsmechanismen schaffen immer einen zweiten Schlüssel. Zurücksetzungen per E-Mail kann jeder mit Zugang zu deinem Postfach auslösen. Cloud-Backups kann jeder wiederherstellen, der ins Konto kommt. Sicherheitsfragen lassen sich oft aus sozialen Medien erraten.

Velcrypt hat sich gegen einen zweiten Schlüssel entschieden. Das schließt eine ganze Kategorie von Angriffen aus und bedeutet, dass es nichts gibt, was behördlich angefordert, geleakt oder abgefischt werden könnte. Der Preis: Du trägst allein die Verantwortung, dich an das Muster zu erinnern. Für viele ist dieser Kompromiss es wert, für manche Inhalte nicht. Entscheide, welche Art von Inhalten du speicherst.

## Einer Aussperrung vorbeugen

### Wähle ein starkes, aber einprägsames Muster

Stärke und Merkbarkeit sind keine Gegensätze. Ein gutes Muster auf dem 5×5-Raster:

- nutzt 8–12 Punkte und wechselt mehrmals die Richtung,
- beginnt nicht in einer Ecke und zeichnet keinen Buchstaben nach,
- folgt einer persönlichen Logik, die nur du kennst – etwa einer Form, die mit einem Ort verbunden ist, oder einer Geste, die sich für dich natürlich anfühlt.

Teste eine ähnliche Form (nicht deine echte) mit dem [Muster-Stärketest](id:pattern-strength-checker) und lies in [Muster vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id), was Muster schwach macht.

### Übe es

- Öffne den Tresor in den ersten Wochen regelmäßig, damit die Bewegung ins Muskelgedächtnis übergeht.
- Ändere dein Muster nicht kurz vor einer stressigen Zeit wie einer Reise.
- Hast du mehrere Tresore, mach ihre Muster deutlich unterschiedlich, damit du sie nicht vermischst.

### Bewahre Originale auf, wo ein Verlust weh tun würde

Wäre der Verlust eines Fotos oder Dokuments wirklich unerträglich, sollte ein Tresor nicht der einzige Ort sein, an dem es existiert. Bewahre von Unersetzlichem eine zusätzliche Kopie an einem vertrauenswürdigen Ort auf, etwa auf einem verschlüsselten Laufwerk an einem sicheren Ort. Das ist ein bewusster Kompromiss: Jede weitere Kopie ist ein weiterer Ort, den du schützen musst.

### Schreib das Muster nicht in der Nähe des Handys auf

Brauchst du unbedingt eine schriftliche Erinnerung, mach sie so, dass nur du sie deuten kannst, und bewahre sie weit weg vom Gerät auf.

## Wenn du eine andere Tresor-App nutzt

Die Wiederherstellung unterscheidet sich stark zwischen Apps. Prüfe, bevor du sie brauchst:

- **Gibt es ein Konto?** Apps mit E-Mail-Login erlauben oft ein Zurücksetzen der PIN über diese E-Mail.
- **Gibt es ein Cloud-Backup?** Manche Apps können Inhalte nach einer Neuinstallation wiederherstellen, wenn sie mit ihren Servern synchronisiert waren.
- **Gibt es einen Wiederherstellungscode?** Manche Apps erzeugen einen bei der Einrichtung. Hast du ihn nicht gespeichert, hilft er nicht.
- **Was steht auf der Hilfeseite?** Such nach den offiziellen Wiederherstellungsanleitungen des Anbieters. Sei vorsichtig bei „Entsperr-Tools“ von Drittanbietern; sie funktionieren selten und können Betrug sein.

Der [Ratgeber zu Foto-Tresoren ohne Konto](id:photo-vault-without-account) erklärt die Abwägungen zwischen kontobasierten Apps und Apps nur auf dem Gerät.

## Wo Velcrypt ins Spiel kommt

Velcrypt ist bewusst ein Tresor nur auf dem Gerät: kein Konto, kein Server, keine Wiederherstellungsphrase, nirgendwo sonst eine Kopie deiner Schlüssel. Eine verschlüsselte Backup- und Wiederherstellungsoption ist als Teil eines optionalen Premium-Upgrades geplant, ohne zugesagtes Datum. Bist du unsicher, kann dir der [Support](id:support) erklären, wie sich die App verhält – aber niemand dort kann einen Tresor für dich öffnen.
