---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Muster, PIN oder Face ID: Was ist sicherer?"
description: "Muster, PIN, Passwort oder Face ID? Vergleiche Kombinationen, Mitlesen über die Schulter, Fingerspuren und erzwungenes Entsperren für private Daten."
h1: "Mustersperre, PIN, Passwort oder Face ID: Was ist sicherer?"
navTitle: "Muster vs. PIN vs. Face ID"
answer: "Keine Sperre gewinnt in jeder Hinsicht. Ein langes, zufälliges Passwort widersteht dem Erraten am besten; Face ID und Touch ID schützen am besten vor Mitlesen, lassen sich aber ohne deine Zustimmung nutzen; eine 6-stellige PIN schlägt eine 4-stellige um den Faktor 100; und ein Muster ist nur so stark wie die Form, die ein Mensch wirklich wählt – lange, unregelmäßige Muster sind gut, Buchstaben und Ecken nicht."
keyFacts:
  - "Eine 4-stellige PIN hat 10.000 Kombinationen, eine 6-stellige 1.000.000."
  - "Von Menschen gewählte Muster sind weit schwächer als das theoretische Maximum: Ecken, Buchstaben und kurze Formen sind beliebt."
  - "Biometrie ist bequem und schwer mitzulesen, aber Gesicht oder Finger lassen sich nutzen, während du schläfst, festgehalten oder gezwungen wirst."
  - "Fingerspuren auf dem Display verraten Muster leichter als PINs."
  - "Velcrypt nutzt ein Muster auf einem 5×5-Raster (mindestens 6 Punkte) und verzichtet bewusst auf Face ID und Touch ID."
primaryKeyword: "muster oder pin sicherer"
keywords: ["pin oder face id sicherheit", "ist eine mustersperre sicher", "muster vs passwort", "face id oder code", "sicherste handysperre", "erzwungene biometrie"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Kombinatorik, Mitlesen, Fingerspuren und erzwungene Biometrie: ein ehrlicher Vergleich der vier üblichen Wege, private Daten zu sperren."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Ist eine Mustersperre sicherer als eine PIN?"
    a: "Das hängt vom konkreten Muster und der PIN ab. Ein langes, unregelmäßiges Muster auf einem großen Raster kann eine 6-stellige PIN schlagen, aber ein kurzes Muster in Buchstabenform ist leichter zu erraten als eine zufällige 6-stellige PIN. Länge und Unvorhersehbarkeit zählen mehr als die Art der Sperre."
  - q: "Ist Face ID sicherer als ein Code?"
    a: "Face ID lässt sich mit einem Foto kaum täuschen und kann nicht mitgelesen werden – es schützt also gut vor neugierigen Blicken. Die Schwäche ist die Zustimmung: Jemand kann dir das Handy vors Gesicht halten. Ein Code funktioniert nur, wenn du ihn eingibst."
  - q: "Wie viele Kombinationen hat eine 6-stellige PIN?"
    a: "Eine 6-stellige PIN hat 1.000.000 mögliche Kombinationen (000000 bis 999999), eine 4-stellige 10.000. Beliebte Codes wie 123456 oder Geburtstage verkleinern die tatsächliche Zahl drastisch."
  - q: "Kann jemand mein Muster an Fingerspuren auf dem Display erkennen?"
    a: "Manchmal. Bei passendem Licht können Fingerspuren auf Glas den Verlauf eines Musters zeigen. Das Display abwischen, eine matte Schutzfolie und ein Muster, das sich selbst kreuzt, erschweren solche Angriffe."
  - q: "Warum bietet Velcrypt kein Face ID an?"
    a: "Mit Absicht. Ein Gesicht oder Fingerabdruck kann ein Gerät ohne deine Zustimmung entsperren, ein Muster existiert dagegen nur in deinem Gedächtnis. Velcrypt hat sich für ein Muster entschieden, damit das Öffnen eines Tresors immer deine eigene Entscheidung erfordert."
---

Jede Sperre ist ein Kompromiss zwischen drei Dingen: wie schwer sie zu erraten ist, wie leicht man sie beobachten kann und wie leicht dich jemand zwingen kann, sie zu öffnen. Die meisten Vergleiche betrachten nur das Erste. Diese Anleitung betrachtet alle drei – mit echten Zahlen, wo es sie gibt, und ehrlichen Vorbehalten, wo nicht.

## Die vier Kandidaten

- **PIN** ist eine kurze Ziffernfolge, auf dem iPhone meist 4 oder 6 Stellen.
- **Alphanumerisches Passwort** ist eine Zeichenkette aus Buchstaben, Ziffern und Symbolen beliebiger Länge.
- **Muster** ist ein Pfad, der durch ein Punkteraster gezogen wird. Android hat das 3×3-Raster bekannt gemacht; die [Mustersperre von Velcrypt](id:pattern-lock) nutzt ein 5×5-Raster.
- **Biometrie** (Face ID, Touch ID) entsperrt mit Gesicht oder Fingerabdruck, abgesichert durch einen Code.

## Suchraum: Wie viele Versuche wären nötig?

Der Suchraum ist die Zahl möglicher Geheimnisse, die ein Angreifer im schlimmsten Fall durchprobieren müsste. Das ist die klarste Zahl für einen Vergleich – solange du bedenkst, dass Menschen Geheimnisse nicht zufällig wählen.

### PINs

Eine 4-stellige PIN hat 10 × 10 × 10 × 10 = **10.000** Möglichkeiten. Eine 6-stellige PIN hat **1.000.000**. Dieser Sprung um den Faktor 100 ist das einfachste Sicherheits-Upgrade, das die meisten machen können.

Der Haken ist die Verteilung. Auswertungen geleakter PINs zeigen immer wieder, dass eine Handvoll Codes (1234, 0000, 1111, Geburtsjahre, 123456) einen großen Teil der echten Wahl abdeckt. Ein Angreifer probiert diese zuerst.

### Alphanumerische Passwörter

Mit rund 70 möglichen Zeichen pro Stelle bringt jedes Zeichen etwa 6 Bit. Ein wirklich zufälliges 10-stelliges Passwort hat mehr Kombinationen als jede PIN oder jedes praktikable Muster. Das Problem ist die Merkbarkeit: Menschen wählen Wörter, Namen und vorhersehbare Ersetzungen, und lange Passwörter mehrmals täglich auf dem Handy einzutippen ist mühsam.

### Muster: Theorie gegen Mensch

Hier ist Ehrlichkeit wichtig. Die theoretische Zahl möglicher Muster kann riesig klingen. Auf dem klassischen 3×3-Raster von Android (4 bis 9 Punkte, kein Punkt doppelt) gibt es 389.112 gültige Muster, mehr als bei einer 5-stelligen PIN. Auf einem 5×5-Raster mit 25 Punkten ist die theoretische Zahl um ein Vielfaches größer.

Echte Muster sind viel schwächer, als diese Zahlen vermuten lassen. Forschung zu Android-Mustern hat wiederholt gezeigt, dass Menschen:

- weit häufiger als zufällig oben links beginnen,
- kurze Muster nahe der Mindestlänge zeichnen,
- Buchstaben (L, Z, S, C, U, N) oder einfache Kästchen nachziehen,
- sich von links nach rechts und von oben nach unten bewegen, so wie sie lesen.

Deshalb liegt die tatsächliche Stärke eines typischen, von Menschen gewählten 3×3-Musters näher an einer kurzen PIN als an ihrem theoretischen Maximum. Ein größeres Raster hilft nur, wenn du es auch nutzt: Ein „L“ aus 6 Punkten auf einem 5×5-Raster ist immer noch leicht zu erraten.

Was ein Muster stark macht, ist dasselbe, was jedes Geheimnis stark macht: Länge und Unvorhersehbarkeit. Auf einem 5×5-Raster ist ein Muster mit 8–12 Punkten, das mehrmals die Richtung wechselt, nicht in einer Ecke beginnt, keinen Buchstaben bildet und idealerweise den eigenen Pfad kreuzt, wirklich schwer zu erraten. Eine ähnliche Form (niemals deine echte) kannst du mit dem [Muster-Stärketest](id:pattern-strength-checker) prüfen.

### Das Tempo der Versuche zählt genauso wie ihre Zahl

Die Zahl der Kombinationen ist nur die halbe Geschichte. Die andere Hälfte ist, wie schnell ein Angreifer sie durchprobieren kann. Auf dem iPhone erzwingt die Secure Enclave beim Gerätecode immer längere Wartezeiten. Innerhalb einer App ist die Verteidigung meist die Schlüsselableitung: Velcrypt schickt jedes Muster durch PBKDF2 mit mindestens 600.000 Iterationen, was jeden Versuch absichtlich verlangsamt. Die [Erklärung zu AES-256](id:aes-256-encryption-explained) zeigt, warum dieser Schritt wichtiger ist als die Chiffre selbst.

## Mitlesen und Fingerspuren

**Shoulder Surfing** heißt, dass dir jemand beim Entsperren über die Schulter schaut. Das ist der häufigste reale Angriff auf Handysperren, denn die Menschen, die am stärksten in dein Handy wollen, sitzen oft direkt neben dir.

- **Muster** sind am leichtesten zu beobachten. Eine Form prägt sich auf einen Blick ein, selbst über den Tisch hinweg.
- **PINs** sind mäßig leicht zu beobachten, besonders 4-stellige, die mit einem Daumen getippt werden.
- **Passwörter** sind bei einem einzigen Blick schwerer zu erfassen, weil sie länger sind und die Tastatur zwischen Layouts wechselt.
- **Biometrie** lässt sich gar nicht mitlesen.

**Schmierspur-Angriffe** lesen die fettige Spur, die dein Finger auf dem Glas hinterlässt. Muster sind hier stärker gefährdet als PINs, weil eine durchgehende Linie eine durchgehende Spur hinterlässt. Muster, die sich kreuzen, zurücklaufen oder Punkte in uneindeutiger Reihenfolge passieren, sind aus einer Spur viel schwerer zu rekonstruieren.

Praktische Abwehr: Display wegdrehen, mit der anderen Hand abdecken, gelegentlich abwischen und sensible Apps entsperren, wenn du allein bist.

## Erzwungenes Entsperren: die Frage, die die meisten Vergleiche auslassen

Biometrie hat eine Schwäche, die keine Technik beseitigt: Sie braucht deine Mitwirkung nicht. Jemand kann dir das Handy vors Gesicht halten, während du schläfst, deinen Finger auf den Sensor drücken oder dich körperlich zwingen. Im häuslichen Umfeld, auf Partys oder bei einem Überfall ist das ein realistisches Risiko.

In manchen Ländern können Behörden außerdem rechtlich verlangen, dass du Fingerabdruck oder Gesicht bereitstellst, während ein auswendig gelernter Code anders behandelt wird. Die Rechtslage unterscheidet sich stark zwischen Ländern und hat sich im Lauf der Zeit verändert, daher gibt diese Anleitung keine Rechtsberatung. Der technische Punkt ist einfach: Ein Geheimnis in deinem Kopf erfordert eine Entscheidung von dir, ein Körperteil nicht.

Verlässt du dich auf Face ID, kenne den Notausgang. Ab dem iPhone 8 deaktivierst du Face ID und Touch ID vorübergehend, bis der Code eingegeben wird, indem du die Seitentaste und eine Lautstärketaste gedrückt hältst, bis der Bildschirm zum Ausschalten bzw. für den Notruf erscheint, und dann abbrichst. Wann das wichtig ist, steht in [Privatsphäre bei der Grenzkontrolle](id:phone-privacy-border-crossing).

## Direkter Vergleich

| | 4-stellige PIN | 6-stellige PIN | Langes Passwort | Muster (5×5, 8+ Punkte) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Mögliche Kombinationen | 10.000 | 1.000.000 | Sehr viele, wenn zufällig | Theoretisch sehr viele; bei vorhersehbaren Formen viel weniger | Nicht anwendbar |
| Erratbarkeit in der Praxis | Hoch (beliebte Codes) | Mittel | Gering, wenn zufällig | Gering, wenn unregelmäßig; hoch bei Buchstabenform | Sehr gering |
| Mitlesen | Leicht | Mittel | Schwer | Leicht | Unmöglich |
| Fingerspuren | Etwas | Etwas | Gering | Hoch, außer der Pfad kreuzt sich | Keine |
| Ohne deine Zustimmung nutzbar | Nein | Nein | Nein | Nein | Ja |
| Tempo und Komfort | Schnell | Schnell | Langsam auf dem Handy | Schnell | Am schnellsten |

## Die richtige Sperre für jede Ebene

Du musst nicht eine Sperre für alles wählen. Ein sinnvolles Setup für die meisten:

1. **Gerät:** ein 6-stelliger (oder längerer) Code, mit Face ID oder Touch ID für die Bequemlichkeit, wenn deine Situation es erlaubt.
2. **Private Inhalte:** ein separates Geheimnis, das nicht dein Gerätecode ist – damit jemand, der deinen Code erfährt oder beobachtet, nicht automatisch alles bekommt.
3. **Wisse, wie du Biometrie schnell abschaltest,** wenn du irgendwo bist, wo du unter Druck geraten könntest.

## Wo Velcrypt ins Spiel kommt

Velcrypt trifft eine bewusste Entscheidung: Der einzige Weg in einen Tresor ist ein Muster auf einem 5×5-Punkteraster – eine durchgehende Linie durch mindestens 6 Punkte mit mindestens einem Richtungswechsel. Empfohlen sind längere Muster mit 8–12 Punkten. Face ID und Touch ID gibt es nicht, weil sich ein Muster nicht von deinem Körper abnehmen lässt.

Das Design verändert auch, was „Erraten“ bedeutet. Jedes Muster ist ein eigener Tresor, und ein Muster, das Velcrypt noch nie gesehen hat, öffnet einfach einen leeren Tresor – ohne Fehlermeldung. Ein falscher Versuch gibt sich also nicht als falsch zu erkennen, und du kannst unter einem zweiten Muster einen [Köder-Tresor](id:what-is-a-decoy-vault) führen. Die Seite zu [versteckten Tresoren](id:hidden-vaults) erklärt das Modell, und die [Sicherheitsübersicht](id:security) nennt, wogegen es nicht schützt – auch dagegen, dass dir jemand beim Zeichnen zusieht.
