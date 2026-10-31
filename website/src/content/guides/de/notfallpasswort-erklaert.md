---
pageId: duress-password-explained
title: "Notfallpasswort: Bedeutung, Codewörter, PINs und Handys"
description: "Was ein Notfallpasswort bedeutet, wie Codewörter und Alarm-PINs funktionieren, der Mythos der Rückwärts-PIN und was iPhone und Android bieten."
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
  - "Das iPhone hat keinen eingebauten Notfallcode, die meisten Android-Handys auch nicht; GrapheneOS bietet eine Notfall-PIN, die das Handy löscht."
primaryKeyword: "notfallpasswort"
keywords: ["panik passwort", "duress code", "was ist ein notfallpasswort", "notfallpasswort bedeutung", "duress password bedeutung", "codewort bei bedrohung", "codewort notfall beispiele", "bedrohungscode alarmanlage", "notfall pin", "pin rückwärts eingeben polizei", "duress fingerabdruck", "panik pin handy", "android duress pin", "grapheneos duress pin", "notfallmuster"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "Was Notfallpasswörter, Codewörter und Notfall-PINs sind, was iPhone und Android bieten und wie Velcrypts Notfallmuster funktioniert."
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
  - q: "Was ist ein Codewort für Notfälle?"
    a: "Ein Codewort ist ein unauffälliges Wort oder ein Satz, vorher vereinbart, das jemandem signalisiert, dass du in Schwierigkeiten bist, ohne dass die Person, die dich unter Druck setzt, es merkt. Arbeitsplätze, Lokale (etwa die britische Aktion „Ask for Angela“) und Familien nutzen sie, jeweils mit einer abgesprochenen Reaktion."
  - q: "Haben iPhone oder Android eine eingebaute Notfall-PIN?"
    a: "Das iPhone hat keinen Notfallcode. Seitentaste und eine Lautstärketaste gedrückt zu halten, schaltet nur Face ID ab, bis der Code eingegeben wird. Die meisten Android-Handys haben ebenfalls keinen, der Sperrmodus schaltet aber die Biometrie ab. GrapheneOS bietet eine Notfall-PIN, die das ganze Handy löscht."
  - q: "Was macht Velcrypts Notfallmuster?"
    a: "Zeichnest du es auf dem Sperrbildschirm, öffnet es den Köder-Tresor, in dem du es eingerichtet hast, und löscht gleichzeitig still und endgültig alle anderen Tresore auf diesem iPhone. Das Entsperren sieht genauso aus und dauert genauso lange wie sonst."
  - q: "Darf ich ein Notfallpasswort benutzen, wenn Polizei oder Grenzbeamte Zugriff verlangen?"
    a: "In dieser Situation solltest du damit keine Daten löschen. Die Gesetze unterscheiden sich von Land zu Land, und Daten auf eine rechtmäßige Aufforderung hin zu löschen, kann selbst eine Straftat sein, etwa Beweisvernichtung oder Behinderung von Ermittlungen. Hol dir stattdessen rechtlichen Rat."
---

Bei den meisten Sicherheitsmaßnahmen geht es darum, Fremde draußen zu halten. Bei einem Notfallpasswort geht es um einen anderen Moment: wenn jemand neben dir steht und dich zwingt, ihn hereinzulassen. Dieser Leitfaden erklärt, was Notfallpasswörter sind, woher die Idee stammt, wie Codewörter funktionieren, was iPhone und Android bieten, wie Handy-Apps sie nutzen und wie Velcrypts Notfallmuster funktioniert, einschließlich seiner Grenzen.

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

Bedrohungscodes bei Alarmanlagen funktionieren meist nur mit professioneller Aufschaltung auf eine Leitstelle, und die Eingabe löst einen echten Notfalleinsatz aus, auch zum Testen. Anbieter und Polizei warnen außerdem, dass ein Code, der dem normalen zu ähnlich ist, Fehlalarme verursacht. Wähle also einen, den du nicht verwechseln kannst.

### Banken und Sicherheitsbereiche

Bankangestellte haben seit Langem stille Alarme und Notsignale: einen Knopf, ein Codewort oder einen Code, der den Sicherheitsdienst alarmiert, ohne dass der Räuber es merkt. Das Ziel ist dasselbe wie bei Alarmanlagen: nach außen hin mitmachen, im Verborgenen Hilfe holen.

Vielleicht hast du gehört, dass die rückwärts eingetippte PIN am Geldautomaten die Polizei ruft. Das ist ein Mythos. Die Idee geht auf ein Patent für eine „Notfall-PIN“ aus den 1990er-Jahren zurück, doch ein Bericht der US-Handelsbehörde FTC von 2010 stellte fest, dass solche Systeme nie an Geldautomaten eingesetzt wurden, und Faktenchecker haben die Behauptung immer wieder widerlegt. Wirst du am Geldautomaten überfallen, gib heraus, was verlangt wird, wenn dich das schützt, und ruf danach die Polizei und deine Bank an.

### Verschlüsselungssoftware

Programme zur Festplattenverschlüsselung haben eine verwandte Idee eingeführt: ein zweites Passwort, das ein glaubwürdiges äußeres Volume öffnet, während ein verstecktes Volume unsichtbar bleibt. Im strengen Sinn ist das kein Notfallcode, weil nichts ausgelöst wird, aber das Ziel ist ähnlich: „teilweise nachgeben“ soll eine sichere Option sein. [Glaubhafte Abstreitbarkeit, erklärt](id:plausible-deniability-explained) beschreibt diese Geschichte.

## Codewörter: das Notfallpasswort zum Aussprechen

Ein **Codewort** für Bedrohungslagen (englisch *duress code word*) ist ein Notfallpasswort, das du sagst statt tippst: ein unauffälliges Wort oder ein Satz, vorher vereinbart, der bedeutet: „Mir geht es nicht gut, aber ich kann es nicht sagen.“ Wer zufällig mithört, hört Smalltalk. Wer den Code kennt, hört einen Hilferuf und weiß schon, was zu tun ist.

Wo Codewörter genutzt werden:

- **Arbeitsplätze und Sicherheitsdienste.** Banken, Geschäfte, Kliniken und Sicherheitspersonal vereinbaren oft einen Satz, den man am Telefon oder per Funk vor einem Angreifer sagen kann, damit Kollegen unbemerkt Hilfe holen.
- **Öffentliche Schutzprogramme.** In Großbritannien machen viele Bars und Lokale bei „Ask for Angela“ mit: Wer sich bei einem Date oder beim Ausgehen unsicher fühlt, fragt das Personal nach „Angela“, und geschultes Personal hilft diskret, etwa indem es ein Taxi ruft. Dieser Code ist absichtlich öffentlich, damit Lokale Plakate aufhängen können. In Deutschland, Österreich und der Schweiz gibt es nach diesem Vorbild die Aktion „Ist Luisa hier?“.
- **Familien und Freunde.** Manche Familien vereinbaren ein Wort, das ein Kind oder Angehöriger schreiben oder am Telefon sagen kann, um „hol mich ab“ oder „hol Hilfe“ zu sagen, ohne etwas zu erklären. Viele Familien nutzen inzwischen auch ein *Sicherheitswort*, um zu prüfen, ob ein panischer Anruf wirklich von Angehörigen kommt und nicht von Betrügern mit geklonter Stimme. Das ist eher ein Prüfwort als ein Notfallcode, aber es gelten dieselben Regeln.

Beispiele für die *Art* von Satz, die funktioniert (denk dir lieber eigene aus, statt diese zu übernehmen):

- nach einer Person fragen, die es nicht gibt, etwa „Arbeitet Angela heute?“;
- eine Frage nach einem Haustier, Verwandten oder einer Aufgabe, von der dein Gegenüber weiß, dass sie nicht stimmt;
- ein ungewöhnliches Detail in einem sonst normalen Satz, etwa eine Farbe oder ein Gericht, das du nie erwähnst.

Gute Codewörter klingen in dem Gespräch, in dem du sie benutzen würdest, natürlich, fallen nie zufällig, sind an eine abgesprochene Reaktion gekoppelt (wer ruft wen an, was passiert dann) und werden ab und zu geübt, damit niemand sie vergisst. Behalte sie für dich: Ein Code, der online steht oder der Person bekannt ist, vor der du Angst hast, funktioniert nicht mehr.

## Notfall-PIN auf dem Handy: was iPhone und Android bieten

Wer nach einem „Notfallcode fürs Handy“, einer „Duress-PIN“ oder einem „Duress-Fingerabdruck“ sucht, will meist wissen, ob das eigene Handy so etwas eingebaut hat. Die kurze Antwort: Das iPhone nicht, und die meisten Android-Handys auch nicht.

### iPhone

- **Kein Notfallcode.** iOS hat keinen zweiten Code, der einen Köder öffnet, einen Alarm auslöst oder das Handy löscht.
- **Notruf SOS schaltet Face ID ab.** Hältst du die Seitentaste und eine der Lautstärketasten etwa zwei Sekunden gedrückt, erscheint der Bildschirm zum Ausschalten und für Notruf SOS. <!-- TODO verify iOS label --> Danach bleiben Face ID und Touch ID aus, bis der Code eingegeben wird, sodass niemand das Handy entsperren kann, indem er es dir vors Gesicht hält. Tippe auf „Abbrechen“, wenn du nicht anrufen willst; je nach Einstellung kann längeres Halten einen Notruf starten. [Was tun, wenn dich jemand zwingt, dein Handy zu entsperren](id:forced-to-unlock-phone) erklärt das genauer.
- **„Daten löschen“ ist kein Notfallcode.** Die Option „Daten löschen“ unter Einstellungen → Face ID & Code <!-- TODO verify iOS label --> löscht das iPhone nach 10 falschen Code-Eingaben. Das hilft gegen Raten, nicht gegen jemanden, der neben dir steht und den Code verlangt.
- **Notfallfunktionen stecken in Apps.** Weil iOS keine systemweite Notfall-PIN hat, gehört jede Notfallfunktion auf dem iPhone zu einer einzelnen App und erreicht nur deren Daten. Velcrypts Notfallmuster weiter unten ist ein Beispiel.

### Android

- **Sperrmodus.** Ab Android 9 bieten viele Handys im Ein/Aus-Menü einen Sperrmodus („Lockdown“) an; bei manchen Marken musst du ihn erst in den Einstellungen aktivieren. <!-- TODO verify: Android label and Samsung One UI changes --> Er sperrt das Handy und schaltet Entsperren per Fingerabdruck und Gesicht ab, bis PIN, Muster oder Passwort eingegeben werden.
- **Keine Notfall-PIN in Standard-Android.** Android, wie es Google, Samsung und die meisten anderen Hersteller ausliefern, hat keine eingebaute Notfall-PIN. <!-- TODO verify -->
- **Duress-PIN von GrapheneOS.** GrapheneOS, ein sicherheitsorientiertes Betriebssystem für unterstützte Google-Pixel-Handys, hat eine Duress-PIN und ein Duress-Passwort. Gibst du eines davon an einer beliebigen Stelle ein, an der das Handy seine Zugangsdaten abfragt, wird das ganze Gerät samt eSIMs sofort und unwiderruflich gelöscht. Das schützt die Daten, aber danach ist offensichtlich, dass das Handy zurückgesetzt wurde.
- **Apps von Drittanbietern.** Einige Open-Source-Apps für Android, etwa Duress und Wasted auf F-Droid, achten auf ein Notfallpasswort auf dem Sperrbildschirm und sperren oder löschen dann das Handy. Dafür nutzen sie Bedienungshilfen- und Geräteadministrator-Rechte. Wie zuverlässig das klappt, hängt von Handy und Android-Version ab. <!-- TODO verify -->

### Was „Duress-Fingerabdruck“ bedeutet

Ein **Duress-Fingerabdruck** (Bedrohungsfinger) ist ein bestimmter Finger, der als stiller Alarm registriert ist. Manche biometrischen Zutrittssysteme unterstützen das: Du scannst diesen Finger, die Tür öffnet sich wie gewohnt, und ein Bedrohungsalarm geht an den Sicherheitsdienst. Gängige Handys bieten das nicht. <!-- TODO verify --> Auf dem Handy ist Biometrie unter Zwang eher die Schwachstelle, weil jemand dir das Handy vors Gesicht halten oder deinen Finger auf den Sensor drücken kann. Deshalb ist es wichtig, Face ID schnell abschalten zu können, und deshalb hat Velcrypt [bewusst kein Entsperren per Face ID](id:pattern-lock-vs-pin-vs-face-id).

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
