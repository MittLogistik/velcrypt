---
pageId: duress-password-explained
title: "Notfallpasswort erklärt: Was ein Panik-Code bewirkt"
description: "Was ein Notfallpasswort, Panik-Passwort oder Duress-Code ist, woher die Idee stammt, wie Apps sie umsetzen und wie Velcrypts Notfallmuster funktioniert."
h1: "Notfallpasswort, Panik-Code und Notfallmuster einfach erklärt"
navTitle: "Notfallpasswort erklärt"
answer: "Ein Notfallpasswort (auch Panik-Passwort oder Duress-Code) ist ein zweites Geheimnis, das du nur benutzt, wenn dich jemand zwingt, etwas zu entsperren. Es sieht aus wie ein normales Entsperren, löst aber still eine Schutzmaßnahme aus, etwa einen stillen Alarm oder das Löschen sensibler Daten. In Velcrypt öffnet das Notfallmuster einen Köder-Tresor und löscht endgültig alle anderen Tresore auf dem iPhone."
keyFacts:
  - "Ein Notfallpasswort sieht aus wie ein normales Entsperren, löst aber eine verborgene Schutzmaßnahme aus."
  - "Die Idee stammt aus Alarmanlagen und Banken, wo ein Notfallcode einen stillen Alarm auslöst."
  - "Auf Handys öffnen Notfallcodes meist harmlose Inhalte und löschen oder sperren den Rest."
  - "In Velcrypt öffnet das Notfallmuster einen Köder-Tresor und löscht alle anderen Tresore endgültig."
  - "Das Löschen ist unumkehrbar; nur eine vorher erstellte Backup-Datei bringt die Daten zurück."
  - "Es ist ein Werkzeug für die persönliche Sicherheit, nie ein Weg, Beweise zu vernichten oder rechtmäßige Anordnungen zu umgehen."
primaryKeyword: "notfallpasswort"
keywords: ["panik passwort", "duress code", "was ist ein notfallpasswort", "panik pin handy", "notfallmuster"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Was Notfallpasswörter und Panik-Codes sind, woher sie kommen, wie Handy-Apps sie nutzen und wie Velcrypts Notfallmuster funktioniert."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "Was ist ein Notfallpasswort?"
    a: "Ein Notfallpasswort ist ein Geheimnis, das du nur unter Zwang benutzt. Für alle, die zusehen, sieht die Eingabe aus wie ein normales Entsperren, im Hintergrund löst sie aber eine Schutzmaßnahme aus, etwa einen stillen Alarm, das Öffnen von Köder-Inhalten oder das Löschen sensibler Daten."
  - q: "Ist ein Panik-Passwort dasselbe wie ein Duress-Code?"
    a: "Ja, im Alltag meinen die Begriffe dasselbe. „Notfallcode“ oder „Bedrohungscode“ ist bei Alarmanlagen üblich, „Panik-Passwort“ oder „Panik-PIN“ bei Apps und Geräten. Velcrypt nutzt statt einer PIN ein Muster und nennt seine Variante deshalb Notfallmuster."
  - q: "Ruft die rückwärts eingegebene PIN am Geldautomaten die Polizei?"
    a: "Nein. Die Geschichte von der „umgekehrten PIN“ ist ein hartnäckiger Mythos. Banken haben solche Ideen untersucht und patentiert, aber Geldautomaten funktionieren im Allgemeinen nicht so. Verlass dich nicht darauf."
  - q: "Was macht Velcrypts Notfallmuster?"
    a: "Zeichnest du es auf dem Sperrbildschirm, öffnet es den Köder-Tresor, in dem du es eingerichtet hast, und löscht gleichzeitig still und endgültig alle anderen Tresore auf diesem iPhone. Das Entsperren sieht genauso aus und dauert genauso lange wie sonst."
  - q: "Darf ich ein Notfallpasswort benutzen, wenn Polizei oder Grenzbeamte Zugriff verlangen?"
    a: "In dieser Situation solltest du damit keine Daten löschen. Die Gesetze unterscheiden sich von Land zu Land, und Daten auf eine rechtmäßige Aufforderung hin zu löschen, kann selbst eine Straftat sein, etwa Beweisvernichtung oder Behinderung von Ermittlungen. Hol dir stattdessen rechtlichen Rat."
---

Bei den meisten Sicherheitsmaßnahmen geht es darum, Fremde draußen zu halten. Bei einem Notfallpasswort geht es um einen anderen Moment: wenn jemand neben dir steht und dich zwingt, ihn hereinzulassen. Dieser Leitfaden erklärt, was Notfallpasswörter sind, woher die Idee stammt, wie Handy-Apps sie nutzen und wie Velcrypts Notfallmuster funktioniert, einschließlich seiner Grenzen.

## Was ein Notfallpasswort ist

Ein **Notfallpasswort** ist ein zweites Geheimnis, das du nur benutzt, wenn du unter Zwang stehst. Für die Person, die zusieht, sieht die Eingabe genauso aus wie ein normales Entsperren. Im Hintergrund passiert aber etwas zusätzlich, das dich oder deine Daten schützt.

Für dieselbe Idee gibt es mehrere Namen:

- **Notfallcode**, **Bedrohungscode** oder englisch **Duress-Code**, die üblichen Begriffe bei Alarmanlagen und Sicherheitsbereichen.
- **Panik-Passwort** oder **Panik-PIN**, verbreitet bei Apps.
- **Notfall-PIN** oder **Notfallmuster**, je nachdem, wie das Gerät entsperrt wird.

Entscheidend ist, dass die Reaktion **still** abläuft. Würde die Eingabe eine Sirene, eine Warnmeldung oder eine sichtbare Veränderung auslösen, brächte sie dich in größere Gefahr, weil die Person, die dich zwingt, wüsste, dass du dich widersetzt hast.

## Woher die Idee stammt

### Alarmanlagen

Viele Alarmanlagen für Wohnung und Geschäft unterstützen einen Notfallcode. Du gibst ihn am Bedienfeld ein, und die Anlage schaltet sich wie gewohnt ab. Ein Einbrecher, der dich zum Entschärfen gezwungen hat, bemerkt also nichts Ungewöhnliches. Gleichzeitig meldet die Anlage der Notrufzentrale still, dass du in Schwierigkeiten bist.

### Banken und Sicherheitsbereiche

Bankangestellte haben seit Langem stille Alarme und Notsignale: einen Knopf, ein Codewort oder einen Code, der den Sicherheitsdienst alarmiert, ohne dass der Räuber es merkt. Das Ziel ist dasselbe wie bei Alarmanlagen: nach außen hin mitmachen, im Verborgenen Hilfe holen.

Vielleicht hast du gehört, dass die rückwärts eingetippte PIN am Geldautomaten die Polizei ruft. Das ist ein Mythos. Die Idee wurde diskutiert und sogar patentiert, aber Geldautomaten funktionieren im Allgemeinen nicht so. Verlass dich also nicht darauf.

### Verschlüsselungssoftware

Programme zur Festplattenverschlüsselung haben eine verwandte Idee eingeführt: ein zweites Passwort, das ein glaubwürdiges äußeres Volume öffnet, während ein verstecktes Volume unsichtbar bleibt. Im strengen Sinn ist das kein Notfallcode, weil nichts ausgelöst wird, aber das Ziel ist ähnlich: „teilweise nachgeben“ soll eine sichere Option sein. [Glaubhafte Abstreitbarkeit, erklärt](id:plausible-deniability-explained) beschreibt diese Geschichte.

## Wie Handy-Apps Notfallcodes umsetzen

Auf dem Handy gibt es meist keine Notrufzentrale, die man alarmieren könnte, also schützen Notfallcodes stattdessen die Daten. Die üblichen Ansätze sind:

1. **Harmlose Inhalte öffnen.** Der Notfallcode öffnet einen Köder: einen zweiten, gewöhnlich wirkenden Bereich. Das entspricht weitgehend einem [Köder-Tresor](id:what-is-a-decoy-vault) und löscht für sich genommen nichts.
2. **Harmlose Inhalte öffnen und den Rest löschen.** Der Notfallcode öffnet den Köder und löscht gleichzeitig die sensiblen Daten. Das ist die stärkste Form, und sie lässt sich nicht rückgängig machen.
3. **Alles löschen.** Manche sicherheitsorientierte Systeme bieten eine Notfall-PIN, die das ganze Gerät oder die ganze App löscht. Das schützt die Daten, macht aber offensichtlich, dass etwas passiert ist.

Was eine gute von einer schlechten Umsetzung unterscheidet, ist vor allem, **was sich beobachten lässt**:

- Sieht das Entsperren genauso aus und dauert es genauso lange wie ein normales?
- Gibt es eine Einstellung, ein Abzeichen oder eine Datei, die verrät, dass ein Notfallcode eingerichtet ist?
- Verändert sich danach irgendetwas auf dem Bildschirm?

Verrät eine dieser Antworten den Code, kann er eine angespannte Situation verschlimmern.

## Wie Velcrypts Notfallmuster funktioniert

Velcrypt entsperrt mit einem Muster auf einem 5×5-Raster, und jedes Muster öffnet seinen eigenen Tresor. Das [Notfallmuster](id:duress-pattern) ist eine Premium-Funktion, die auf diesem Modell aufbaut:

- **Du richtest es aus einem Köder-Tresor heraus ein**, unter Einstellungen → Notfallmuster. Ein Köder ist ein zweiter Tresor mit harmlosen, glaubwürdigen Inhalten. Jeder Tresor nach dem ersten braucht Premium.
- **Du zeichnest zweimal ein eigenes Muster und bestätigst.** Es darf kein Muster sein, das bereits einen Tresor öffnet.
- **Auf dem Sperrbildschirm öffnet das Notfallmuster den Köder** und löscht still und endgültig alle anderen Tresore auf diesem iPhone.
- **Nichts auf dem Bildschirm zeigt, dass es passiert ist.** Das Entsperren sieht genauso aus und dauert genauso lange wie sonst.
- **Die App zeigt nie an, ob ein Notfallmuster eingerichtet ist.** Im iOS-Schlüsselbund liegt immer ein verschlüsselter Eintrag fester Größe; ohne Notfallmuster enthält er Zufallsbytes.
- **Eines pro iPhone.** Ein neues Notfallmuster ersetzt das alte. Zum Deaktivieren musst du es zeichnen, und das Deaktivieren löscht nichts.
- **Es funktioniert weiter, wenn Premium ausläuft.** Nur das Einrichten braucht Premium.

Richtest du es im einzigen Tresor auf dem Handy ein, gibt es nichts anderes zu löschen, und Velcrypt weist dich darauf hin.

## Die ehrlichen Grenzen

### Das Löschen ist endgültig

Gelöschte Tresore lassen sich vom Handy nicht wiederherstellen. Tresordaten sind von iCloud- und Computer-Backups ausgeschlossen, daher führt der einzige Weg zurück über eine verschlüsselte Backup-Datei, die du vorher unter Einstellungen → Backup erstellt hast. Das Backup ist kostenlos, und Backup-Dateien außerhalb der App rührt das Notfallmuster nicht an. Wie Backups geschützt sind, erklärt die [Sicherheitsseite](id:security#encrypted-backup).

### Gelöscht heißt nicht physisch überschrieben

Flash-Speicher garantiert nicht, dass gelöschte Bytes sofort physisch entfernt werden. Velcrypt setzt darauf, dass Tresordaten mit AES-256-GCM verschlüsselt sind und die Schlüssel zusammen mit den Tresorordnern gelöscht werden. Was übrig bleibt, ist Chiffretext ohne Schlüssel.

### Es erreicht nur Velcrypts Tresore

Kopien in deiner Fotomediathek, in „Zuletzt gelöscht“, in iCloud, in Chats oder auf dem Handy einer anderen Person bleiben unberührt. [Lösche Originale nach dem Import](id:delete-original-photos-after-import).

### Es macht Beobachtung nicht rückgängig

Hat jemand gesehen oder gefilmt, wie du dein echtes Muster zeichnest, ändert ein Notfallmuster nichts an dem, was diese Person weiß.

## Verantwortung: Wofür ein Notfallpasswort nicht gedacht ist

Ein Notfallpasswort ist ein Werkzeug für die persönliche Sicherheit. Es ist für Momente gedacht wie einen Überfall, eine Drohung oder einen kontrollierenden Partner, der dein Handy sehen will.

Es ist **kein** Weg, Beweise zu vernichten oder eine rechtmäßige Aufforderung von Polizei, Grenzbeamten oder einem Gericht zu umgehen. Die Gesetze unterscheiden sich von Land zu Land, und Daten auf eine rechtliche Anordnung hin zu löschen, kann selbst eine Straftat sein, zum Beispiel Beweisvernichtung oder Behinderung von Ermittlungen. Stehst du vor einer rechtlichen Anordnung oder rechnest damit, hol dir rechtlichen Rat. Speziell um Reisen geht es im [Leitfaden zur Handykontrolle an der Grenze](id:phone-privacy-border-crossing).

## Solltest du eines nutzen?

Ein Notfallmuster ist sinnvoll, wenn du dir vorstellen kannst, zum Entsperren deiner Tresore gedrängt zu werden, und du diese Dateien lieber verlierst, als dass jemand sie sieht. Weniger sinnvoll ist es, wenn die Dateien unersetzlich sind und du kein Backup hast oder wenn du dir unter Stress schwer merken kannst, welches Muster was bewirkt.

Entscheidest du dich dafür, fang mit einem Backup an, bau einen glaubwürdigen Köder auf und lies [Köder-Tresor und Notfallmuster einrichten](id:set-up-decoy-vault-and-duress-pattern). Denkst du wegen einer bestimmten Person darüber nach, behandelt [Was tun, wenn dich jemand zwingt, dein Handy zu entsperren](id:forced-to-unlock-phone) das größere Bild deiner Sicherheit. Die Premium-Tarife stehen auf der Seite [Preise](id:pricing).
