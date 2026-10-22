---
pageId: pattern-strength-checker
title: "Musterstärke prüfen: 5×5-Entsperrmuster testen"
description: "Zeichne ein Testmuster auf ein 5×5-Raster und erhalte eine grobe Stärkebewertung samt Bit-Schätzung. Läuft lokal. Gib nie dein echtes Muster ein."
h1: "Musterstärke-Prüfer"
navTitle: "Musterstärke-Prüfer"
answer: "Zeichne ein Muster auf das 5×5-Raster, um zu sehen, ob es die Mindestregeln von Velcrypt erfüllt, und erhalte eine grobe Bewertung von „Zu kurz“ bis „Sehr stark“ sowie eine Schätzung in Bit. Das ist eine Faustregel, keine Garantie. Gib dein echtes Muster nie auf einer Website ein – teste stattdessen ein ähnliches."
keyFacts:
  - "Prüft die Mindestregeln von Velcrypt: mindestens 6 Punkte und mindestens ein Richtungswechsel."
  - "Bewertet Muster als „Zu kurz“, „Schwach“, „Mittel“, „Stark“ oder „Sehr stark“, mit grober Bit-Schätzung."
  - "Belohnt mehr Punkte, Richtungswechsel, Selbstkreuzungen und eine breitere Abdeckung des Rasters."
  - "Zieht ab für Starts in einer Ecke, lange gerade Strecken und einfache Buchstabenformen wie L, Z, S und U."
  - "Läuft lokal; nichts wird gespeichert oder gesendet. Teste ein ähnliches Muster, nie dein echtes."
primaryKeyword: "musterstärke prüfen"
keywords: ["entsperrmuster sicherheit", "wie sicher ist mein muster", "mustersperre sicherheit", "5x5 mustersperre", "sicheres entsperrmuster ideen", "muster passwort stärke"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Zeichne ein Testmuster auf ein 5×5-Raster und sieh eine grobe Stärkebewertung. Läuft lokal. Nutze nie dein echtes Muster."
toolName: "Musterstärke-Prüfer"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Die Stärke eines Testmusters prüfen"
  steps:
    - name: "Ein ähnliches Muster zeichnen"
      text: "Tippe oder zieh über das 5×5-Raster, um ein Muster im Stil des gewünschten zu zeichnen – nicht dein echtes."
    - name: "Die Mindestregeln prüfen"
      text: "Vergewissere dich, dass das Muster mindestens 6 Punkte nutzt und mindestens einmal die Richtung wechselt."
    - name: "Die Bewertung lesen"
      text: "Sieh dir die Bewertung von „Zu kurz“ bis „Sehr stark“ und die grobe Bit-Schätzung an."
    - name: "Anpassen und neu versuchen"
      text: "Füge Punkte, Richtungswechsel oder eine Kreuzung hinzu, vermeide Starts in Ecken und einfache Buchstabenformen und beobachte, wie sich die Bewertung ändert."
faq:
  - q: "Ist es sicher, hier mein echtes Muster einzugeben?"
    a: "Lass es. Der Prüfer läuft lokal und speichert nichts, aber gute Praxis ist, ein echtes Geheimnis nie auf einer Website einzugeben. Zeichne stattdessen ein Muster in ähnlichem Stil und übertrage, was du daraus lernst."
  - q: "Wie wird die Stärke berechnet?"
    a: "Mit einer Faustregel. Der Prüfer zählt Punkte und Richtungswechsel, erkennt, wenn sich die Linie selbst kreuzt, misst, wie viele Zeilen und Spalten sie abdeckt, und senkt die Bewertung bei Starts in Ecken, langen geraden Strecken und Formen, die wie einfache Buchstaben aussehen."
  - q: "Was bedeuten die Bits?"
    a: "Bits sind ein grobes Maß dafür, wie viele Versuche ein Angreifer bräuchte; jedes zusätzliche Bit verdoppelt das ungefähr. Die Schätzung hier ist näherungsweise und geht von jemandem aus, der gängige Gewohnheiten kennt, nicht von rein zufälligem Raten."
  - q: "Wie lang sollte ein Velcrypt-Muster sein?"
    a: "Das Minimum sind 6 Punkte mit mindestens einem Richtungswechsel. Velcrypt empfiehlt 8 bis 12 Punkte für ein stärkeres Muster, das du dir trotzdem zuverlässig merken kannst."
  - q: "Schützt ein starkes Muster davor, dass mir jemand zusieht?"
    a: "Nein. Sieht dir jemand beim Zeichnen zu, spielt die Stärke keine Rolle. Schirm den Bildschirm ab und zeichne das Muster dort, wo du nicht beobachtet oder gefilmt werden kannst."
  - q: "Was, wenn ich ein kompliziertes Muster vergesse?"
    a: "In Velcrypt lässt sich ein vergessenes Muster weder von dir noch von Velcrypt wiederherstellen. Nur ein vorher erstelltes verschlüsseltes Backup bringt die Inhalte zurück. Wähle etwas Komplexes, aber Einprägsames, und übe es, bevor du dich darauf verlässt."
---

## So funktioniert es

Tippe oder zieh über das 5×5-Raster, um ein Testmuster zu zeichnen. Während du zeichnest, prüft der Prüfer zuerst die Mindestregeln von Velcrypt: eine durchgehende Linie durch mindestens sechs Punkte mit mindestens einem Richtungswechsel. Erfüllt das Muster sie nicht, wird es als **Zu kurz** bewertet.

Besteht es, gibt der Prüfer eine grobe Bewertung – **Schwach**, **Mittel**, **Stark** oder **Sehr stark** – plus eine ungefähre Stärke in Bit. Alles läuft in deinem Browser. Nichts wird gespeichert, und nichts wird irgendwohin gesendet.

## Worauf der Prüfer achtet

Die Stärke eines Musters ist grob gesagt, wie schwer es für jemanden zu erraten wäre – vor dem Hintergrund dessen, was Menschen üblicherweise zeichnen. Der Prüfer kombiniert mehrere Signale:

- **Anzahl der Punkte.** Mehr Punkte bedeuten mehr mögliche Muster.
- **Richtungswechsel.** Jede Wendung macht das Muster unvorhersehbarer als eine gerade Linie.
- **Selbstkreuzungen.** Eine Linie, die ihren eigenen Weg kreuzt, ist seltener und schwerer zu erraten.
- **Abdeckung des Rasters.** Muster über mehrere Zeilen und Spalten schneiden besser ab als solche, die sich auf einen Bereich drängen.
- **Start in einer Ecke.** In einer Ecke zu beginnen ist sehr verbreitet und senkt die Bewertung leicht.
- **Lange gerade Strecken.** Eine ganze Zeile oder Spalte entlangzufahren ist leicht zu erraten und leicht über die Schulter zu erkennen.
- **Einfache Formen.** Muster, die wie ein L, Z, S, U oder ein Quadrat aussehen, gehören zu den ersten, die jemand ausprobieren würde.

Die Bit-Zahl ist eine Schätzung, keine Messung. Sie ist eine Faustregel, die dich von verbreiteten Gewohnheiten wegbringen soll – keine Garantie dafür, wie lange ein Muster einem entschlossenen Angreifer standhält.

## Warum menschliche Muster vorhersehbar sind

Auf dem Papier bietet ein 5×5-Raster eine enorme Zahl möglicher Linien. In der Praxis wählen Menschen aber nicht zufällig. Untersuchungen zum klassischen 3×3-Handymuster haben immer wieder starke Vorlieben gefunden: oben links beginnen, von links nach rechts und von oben nach unten ziehen, wenige Richtungswechsel, vertraute Buchstaben. Diese Gewohnheiten verkleinern den Raum, den ein Angreifer realistisch durchsuchen muss.

Ein starkes Muster vermeidet diese Gewohnheiten und bleibt trotzdem für dich einprägsam. Einen breiteren Vergleich der Entsperrmethoden findest du unter [Mustersperre vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Tipps für ein stärkeres Muster

1. **Ziel auf 8–12 Punkte.** Das empfiehlt Velcrypt: lang genug, um schwer zu erraten zu sein, kurz genug, um es sich zu merken.
2. **Bau zwei oder mehr Richtungswechsel ein.** Kombiniere waagerechte, senkrechte und diagonale Züge.
3. **Kreuze deine eigene Linie einmal.** Das erhöht die Komplexität, ohne viel schwerer zu merken zu sein.
4. **Beginne nicht in einer Ecke.** Punkte in der Mitte oder am Rand sind weniger erwartbar.
5. **Nutze das ganze Raster.** Berühre mindestens drei Zeilen und drei Spalten.
6. **Vermeide Buchstaben und Formen.** Initialen, L, Z, S, U und Quadrate werden früh ausprobiert.
7. **Übe, bevor du dich darauf verlässt.** Zeichne es mehrmals, bis das Muskelgedächtnis übernimmt.

## Gib nie dein echtes Muster ein

Dieser Prüfer speichert oder überträgt nichts, aber die Gewohnheit ist wichtiger als diese eine Seite. Tippe oder zeichne nie ein echtes Passwort, eine echte PIN oder ein echtes Muster auf irgendeiner Website. Zeichne stattdessen ein Muster in ähnlichem Stil (ähnliche Länge, ähnlich viele Richtungswechsel, ähnlicher Startbereich) und nutze das Ergebnis als Orientierung.

## Stärke ist nur ein Teil des Ganzen

In Velcrypt ist dein Muster der Schlüssel: Die Verschlüsselungsschlüssel werden daraus mit PBKDF2-HMAC-SHA512 und mindestens 600.000 Iterationen abgeleitet, was jeden Rateversuch verlangsamt. Siehe [Verschlüsselung](id:encryption). Außerdem öffnet jedes Muster einen eigenen Tresor, wie unter [versteckte Tresore](id:hidden-vaults) und [Mustersperre](id:pattern-lock) erklärt.

Ein starkes Muster schützt nicht vor jemandem, der dir beim Zeichnen zusieht, vor einem iPhone, das mit offenem Tresor übergeben wird, oder vor einem vergessenen Muster. Ein vergessenes Muster lässt sich nicht wiederherstellen – lies also [Tresormuster vergessen](id:forgot-vault-pattern), bevor du etwas wählst, das du womöglich vergisst.
