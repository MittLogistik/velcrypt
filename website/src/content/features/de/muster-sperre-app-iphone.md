---
pageId: pattern-lock
title: "Muster-Sperre fürs iPhone: Tresor per 5×5-Raster öffnen"
description: "Velcrypt entsperrst du mit einem Muster auf einem 5×5-Punkteraster. Die Regeln, Tipps für ein starkes Muster und wie optionales Face ID funktioniert."
h1: "Muster-Sperre: ein 5×5-Raster, das nur dein Gedächtnis öffnet"
navTitle: "Muster-Sperre"
answer: "Velcrypt öffnest du mit einem Muster, das du auf ein 5×5-Punkteraster zeichnest: eine durchgehende Linie über mindestens 6 Punkte mit mindestens einem Richtungswechsel. Empfohlen sind 8–12 Punkte. Face ID oder Touch ID ist optional und standardmäßig aus; du kannst es pro Tresor einschalten, und das Muster öffnet weiterhin jeden Tresor."
keyFacts:
  - "Entsperren durch eine durchgehende Linie auf einem 5×5-Raster mit 25 Punkten."
  - "Mindestregeln: mindestens 6 Punkte und mindestens ein Richtungswechsel."
  - "Empfohlene Länge: 8–12 Punkte."
  - "Face ID oder Touch ID ist optional, standardmäßig aus und wird pro Tresor eingeschaltet, weil Biometrie erzwungen werden kann."
  - "Dein Muster fließt auch in den Verschlüsselungsschlüssel des Tresors ein."
primaryKeyword: "muster sperre app iphone"
keywords: ["foto tresor mit muster", "5x5 muster sperre", "foto tresor ohne face id", "app mit muster entsperren iphone", "sicheres entsperrmuster"]
datePublished: 2026-10-21
dateModified: 2026-11-21
summary: "Entsperren per Muster auf einem 5×5-Raster. Mindestens 6 Punkte und ein Knick; 8–12 Punkte empfohlen. Face ID ist optional und standardmäßig aus."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Wie viele Punkte braucht ein Velcrypt-Muster?"
    a: "Mindestens 6 Punkte, gezeichnet als eine durchgehende Linie mit mindestens einem Richtungswechsel. Besser geschützt bist du mit 8–12 Punkten und mehreren Knicks."
  - q: "Kann ich Velcrypt mit Face ID oder Touch ID öffnen?"
    a: "Ja, wenn du es willst. Es ist standardmäßig aus, und du schaltest es pro Tresor in dessen Einstellungen › Face ID ein. Gesicht und Finger lassen sich aber ohne deine Zustimmung nutzen: Wer dich zwingt, aufs Handy zu schauen, kann jeden Tresor in der Face-ID-Liste öffnen. Deinen privatesten Tresor lässt du daher nur beim Muster."
  - q: "Was passiert, wenn ich mein Muster vergesse?"
    a: "Dann lässt sich der Tresor nicht mehr öffnen, weder von dir noch von Velcrypt. Das Muster ist Teil der Schlüsselableitung, und es gibt weder Wiederherstellungsphrase noch Konto zum Zurücksetzen. Wähle ein Muster, das du dir zuverlässig merken kannst."
  - q: "Ist ein 5×5-Muster sicherer als das bekannte 3×3-Handymuster?"
    a: "Es kann sicherer sein. Ein 5×5-Raster hat 25 statt 9 Punkte, dadurch sind weit mehr Muster möglich. Wie sicher deins ist, hängt trotzdem von Länge, Anzahl der Knicks und Vorhersehbarkeit der Form ab."
  - q: "Kann ich mein Muster vorher irgendwo testen?"
    a: "Ähnliche Muster kannst du im Velcrypt-Musterstärke-Test ausprobieren, der lokal in deinem Browser läuft. Gib dein echtes Muster nie auf einer Website ein, teste lieber ein ähnliches."
---

Die meisten Apps wollen eine Zahl. Velcrypt will, dass du zeichnest. Die Muster-Sperre ist die Eingangstür zu jedem Tresor und zugleich das Geheimnis, aus dem der Verschlüsselungsschlüssel des Tresors abgeleitet wird. Ein paar Minuten Nachdenken lohnen sich also.

## So funktioniert die 5×5-Muster-Sperre

Eine Muster-Sperre ist eine Entsperrmethode, bei der du einen Pfad zwischen Punkten nachziehst, statt einen Code zu tippen. In Velcrypt hat das Raster 25 Punkte in fünf Reihen und fünf Spalten. Du setzt den Finger auf, ziehst ihn durch die Punkte deiner Wahl und hebst ihn zum Abschluss an.

Für jedes Muster gelten zwei Regeln:

1. **Mindestens 6 Punkte.** Kürzere Linien werden abgelehnt.
2. **Mindestens ein Richtungswechsel.** Eine einzige gerade Linie ist nicht erlaubt.

Das sind die Mindestanforderungen. Velcrypt empfiehlt Muster mit **8–12 Punkten**, denn jeder zusätzliche Punkt vervielfacht die Zahl der Muster, die jemand durchprobieren müsste.

Jedes Muster kann außerdem mehr als nur entsperren: Es bestimmt, welcher Tresor sich öffnet. Diese Idee erklärt die Seite über [versteckte Tresore](id:hidden-vaults).

## Was ein Muster stark macht

Ein starkes Muster ist lang, knickt oft ab und sieht nach nichts aus. Das Raster ist groß, doch Menschen greifen gern zu denselben Gewohnheiten: oben links beginnen, Buchstaben nachzeichnen oder ordentliche Kästchen malen. Genau diese Gewohnheiten probiert jemand, der zuschaut oder rät, als Erstes aus.

| Gewohnheit | Warum sie schwach ist | Bessere Alternative |
| --- | --- | --- |
| In einer Ecke beginnen | Ecken sind die häufigsten Startpunkte | Auf einem inneren oder Randpunkt starten |
| Buchstaben und Formen (L, Z, S, U, Quadrat) | Leicht zu erraten und über die Schulter leicht zu erkennen | Einen unregelmäßigen Pfad ohne erkennbare Form wählen |
| Lange gerade Strecken | Wenige Entscheidungen, wenig Unsicherheit | Alle zwei, drei Punkte die Richtung wechseln |
| In einem Bereich bleiben | Nutzt nur einen kleinen Teil des Rasters | Mehrere Reihen und Spalten kreuzen |
| Sehr kurze Muster | Weniger Kombinationen zum Ausprobieren | 8–12 Punkte anpeilen |

Ein paar praktische Tipps:

- **Kreuze deinen eigenen Pfad.** Linien, die über frühere Abschnitte laufen, sind aus Fingerspuren oder bei einem kurzen Blick schwerer abzulesen.
- **Mach es rhythmisch für dich, nicht für andere.** Einen Pfad, den du nach Gefühl zeichnen kannst, merkst du dir leichter als einen zufälligen, über den du nachdenken musst.
- **Zeichne es ein paarmal, bevor du dich darauf verlässt.** Erst Wiederholung macht ein neues Muster zum Muskelgedächtnis.
- **Schirm den Bildschirm ab.** Kein Muster hilft, wenn dir jemand beim Zeichnen zusieht. Kipp das Handy oder verdeck das Raster in der Öffentlichkeit.

Wenn du eine zweite Meinung willst, liefert der [Musterstärke-Test](id:pattern-strength-checker) eine grobe Bewertung und eine Bit-Schätzung anhand von Länge, Knicks, Kreuzungen und Rasterabdeckung. Das ist eine Heuristik, keine Garantie, und du solltest ein Muster testen, das deinem ähnelt, nicht das echte.

## Optionales Face ID, standardmäßig aus

Face ID oder Touch ID kannst du pro Tresor einschalten: Öffne den Tresor mit seinem Muster, geh zu Einstellungen › Face ID und gib dem Tresor einen Namen für die Face-ID-Liste. Das ist kostenlos, kein Premium. Sobald mindestens ein Tresor Face ID nutzt, erscheint auf dem Sperrbildschirm „Mit Face ID entsperren“. Nach erfolgreichem Face ID wählst du einen der Tresore, die du hinzugefügt hast; ist es nur einer, öffnet er sich direkt. Tresore ohne Face ID erscheinen nie in dieser Liste, und das Muster öffnet weiterhin jeden Tresor, auch die mit Face ID.

Einen Ausweich-Code gibt es nicht: Dein iPhone-Code kann Face ID in Velcrypt nicht ersetzen. Die Face-ID-Kopie des Tresorschlüssels bleibt nur auf diesem Gerät im Schlüsselbund, nicht in iCloud und nicht in Backups, und sie ist an die Gesichter und Fingerabdrücke gebunden, die beim Einschalten registriert waren. Fügst du ein Gesicht oder einen Finger hinzu oder setzt Face ID zurück, schaltet sich Face ID für diese Tresore aus; du schaltest es wieder ein, nachdem du den Tresor mit seinem Muster geöffnet hast.

Warum standardmäßig aus? Biometrie ist bequem, weil sie immer dabei ist – und genau das ist ihre Schwäche: Ein Gesicht lässt sich vor ein Handy halten und ein Finger ohne dein Einverständnis auf einen Sensor drücken. Wer dich dazu bringt, aufs Handy zu schauen, kann jeden Tresor in der Face-ID-Liste sehen und öffnen. Ein Muster existiert dagegen nur in deinem Kopf. Nutze Face ID also gern für Alltagstresore und lass deinen privatesten Tresor nur beim Muster. Das [Notfallmuster](id:duress-pattern) funktioniert nur über Muster; die Face-ID-Liste löst es nicht aus. Die Vor- und Nachteile vergleicht [Muster vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id) ausführlicher.

## Dein Muster und der Verschlüsselungsschlüssel

Das Muster wird nicht einfach geprüft und vergessen. Velcrypt schickt es durch eine absichtlich langsame Schlüsselableitungsfunktion und erzeugt daraus den Schlüssel, der den Hauptschlüssel des Tresors entsperrt – und der schützt wiederum jede Datei. Die ganze Kette beschreibt die Seite zur [Verschlüsselung](id:encryption).

Das hat eine ehrliche Konsequenz. Weil das Muster Teil des Schlüssels ist, gibt es keinen „Muster zurücksetzen“-Link und kein Konto als Rückfallebene. Vergisst du es, bleibt der Tresor für immer verschlossen. Lies [was tun, wenn du dein Tresor-Muster vergessen hast](id:forgot-vault-pattern), bevor du eins wählst, und nimm etwas, das du auch in sechs Monaten noch weißt.

## Wovor ein Muster nicht schützt

Ein starkes Muster legt die Messlatte höher, ist aber nur eine Schutzschicht. Es hilft nicht gegen jemanden, der dich beim Zeichnen filmt oder beobachtet, gegen jemanden, dem du das Handy mit geöffnetem Tresor gibst, oder gegen Schadsoftware auf einem gejailbreakten Gerät. Die [Sicherheitsseite](id:security#what-velcrypt-does-not-protect-against) führt diese Grenzen vollständig auf. Zusammen mit der [automatischen Sperre](id:auto-lock) schließt dein Muster die häufigste Lücke: einen Tresor, der offen bleibt, wenn du das Handy weglegst.
