---
pageId: hidden-vaults
title: "Versteckte Tresore: ein Muster, ein eigener Tresor"
description: "In Velcrypt ist jedes Muster ein eigener Tresor. Es gibt keine Tresorliste, und ein unbekanntes Muster öffnet ohne Fehler einen leeren Tresor."
h1: "Versteckte Tresore: ein Muster, ein Tresor, keine Liste"
navTitle: "Versteckte Tresore"
answer: "In Velcrypt öffnet jedes Muster seinen eigenen verschlüsselten Tresor. Es gibt keine Liste der Tresore, und ein Muster, das die App noch nie gesehen hat, öffnet einfach einen leeren Tresor ohne Fehlermeldung. Nichts auf dem Bildschirm beweist, dass weitere Tresore existieren."
keyFacts:
  - "Jedes Muster ist ein eigener Tresor mit eigenem Verschlüsselungsschlüssel."
  - "Velcrypt zeigt nie eine Liste der Tresore."
  - "Ein unbekanntes Muster öffnet einen leeren Tresor, ohne Fehlermeldung."
  - "Mit Premium kannst du einen Köder-Tresor mit gewöhnlichen Inhalten anlegen."
  - "Die kostenlose Version hat einen Tresor; mehr Tresore gehören zu Premium."
primaryKeyword: "versteckter tresor app iphone"
keywords: ["mehrere tresore foto app", "köder tresor iphone", "geheimer tresor app", "glaubhafte abstreitbarkeit foto tresor", "zweiter versteckter tresor"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Jedes Muster ist ein eigener Tresor. Keine Tresorliste, kein Fehler bei unbekannten Mustern und Platz für einen glaubwürdigen Köder."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "Wie sehe ich alle meine Tresore in Velcrypt?"
    a: "Gar nicht, und das ist Absicht. Velcrypt hat keine Tresorliste. Einen Tresor öffnest du nur, indem du sein Muster zeichnest, also behalte deine Muster selbst im Blick."
  - q: "Was passiert, wenn ich ein falsches Muster zeichne?"
    a: "Velcrypt öffnet für dieses Muster einen leeren Tresor, statt einen Fehler anzuzeigen. Fügst du dort Dateien hinzu, wird daraus ein neuer Tresor. Siehst du statt deiner Fotos nichts, hast du wahrscheinlich ein leicht abweichendes Muster gezeichnet."
  - q: "Kann jemand erkennen, dass ich mehr als einen Tresor habe?"
    a: "Nicht über die Oberfläche der App. Es gibt keine Liste, keinen Zähler und keine Fehlermeldung, die andere Tresore verrät. Velcrypt kann aber nicht verbergen, dass die App installiert ist, und nicht verhindern, dass dir jemand beim Zeichnen zusieht."
  - q: "Was ist ein Köder-Tresor?"
    a: "Ein Köder-Tresor ist ein Tresor mit gewöhnlichen, glaubwürdigen Inhalten, den du öffnen kannst, wenn du unter Druck zeigen sollst, was in der App ist. Dein echter Tresor bleibt hinter einem anderen Muster. Weil dafür ein zweiter Tresor nötig ist, braucht ein Köder-Tresor Premium."
howTo:
  name: "Einen zweiten versteckten Tresor in Velcrypt anlegen"
  steps:
    - name: "Velcrypt sperren"
      text: "Verlasse den aktuellen Tresor, damit das Musterraster erscheint."
    - name: "Neues Muster zeichnen"
      text: "Zeichne ein Muster, das du noch nie benutzt hast, mit mindestens 6 Punkten und mindestens einem Richtungswechsel. Ein leerer Tresor öffnet sich."
    - name: "Inhalte hinzufügen"
      text: "Importiere ein Foto, Video oder Dokument in den leeren Tresor, um ihn zu nutzen."
    - name: "Muster üben"
      text: "Sperre und entsperre ein paarmal, damit du dir merkst, welches Muster zu welchem Tresor gehört."
---

Die meisten Tresor-Apps haben ein Passwort und einen geschützten Bereich. Die Frage „Wie lautet das Passwort?“ legt also alles offen. Velcrypt funktioniert anders: Das Muster, das du zeichnest, entsperrt nicht nur die App, es entscheidet, welcher Tresor erscheint. Diese einfache Idee macht versteckte Tresore möglich.

## Jedes Muster ist ein eigener Tresor

Ein versteckter Tresor ist ein Tresor, dessen Existenz sich von außen nicht bestätigen lässt. In Velcrypt gehört zu jedem gültigen Muster auf dem [5×5-Raster](id:pattern-lock) ein eigener Tresor mit eigenem zufälligem Hauptschlüssel und eigenen Dateien. Muster A zeigt die Fotos, die du hinter Muster A abgelegt hast. Muster B zeigt etwas völlig anderes.

Es gibt keinen Einstellungsbildschirm, der sie auflistet, kein „Tresor wechseln“-Menü und keine Zahl, die verrät, wie viele es gibt. Von innen wirkt jeder Tresor, als wäre er der einzige.

## Kein Fehler bei unbekanntem Muster

Zeichnest du ein Muster, das Velcrypt noch nie gesehen hat, kommt kein „Falsches Muster“. Es öffnet sich ein leerer Tresor. Dieses Verhalten ist der Kern der Funktion:

- **Nichts zu zählen.** Kein Versuchszähler und keine Fehlermeldung bestätigen, dass das „echte“ Muster noch irgendwo existiert.
- **Nichts zu vergleichen.** Ein leerer Tresor sieht genauso aus wie ein gerade neu angelegter.
- **Nichts zu beweisen.** Wer auf die App schaut, kann nicht sagen, ob du einen Tresor hast oder mehrere.

Das ist eine Form der [glaubhaften Abstreitbarkeit](id:plausible-deniability-explained): die Möglichkeit, glaubwürdig zu sagen, dass das Gezeigte alles ist, weil die Software keinen Gegenbeweis liefert.

Praktisch hat das eine Nebenwirkung. Vertust du dich beim Muster, landest du in einem leeren Tresor statt bei einer Fehlermeldung. Scheinen deine Fotos verschwunden, sperr die App und zeichne dein Muster noch einmal sorgfältig.

## So legst du einen zweiten Tresor an

Die kostenlose Version hat einen Tresor mit bis zu 50 Objekten. Für einen zweiten Tresor brauchst du [Premium](id:pricing).

1. **Velcrypt sperren.** Verlasse den aktuellen Tresor, damit das Musterraster erscheint.
2. **Neues Muster zeichnen.** Nimm eins, das du noch nie benutzt hast, nach den üblichen Regeln: mindestens 6 Punkte und mindestens ein Richtungswechsel.
3. **Etwas hinzufügen.** Ein leerer Tresor öffnet sich. Importiere ein Foto, Video oder Dokument, um ihn zu nutzen.
4. **Muster üben.** Sperre und entsperre ein paarmal, damit du genau weißt, welches Muster zu welchem Tresor gehört.

## Einen Köder-Tresor nutzen

Ein Köder-Tresor ist ein Tresor mit harmlosen, aber glaubwürdigen Inhalten, etwa gespeicherten Kassenbons, Screenshots oder Urlaubsfotos. Besteht jemand darauf, zu sehen, was in Velcrypt ist, öffnest du den Köder – er verhält sich wie jeder andere Tresor.

Ein Köder wirkt am besten, wenn er benutzt aussieht. Ein leerer Tresor provoziert die Frage „Warum installierst du eine Tresor-App für nichts?“, ein Tresor mit ein paar Dutzend gewöhnlichen Dateien kaum. Die Anleitung [Was ist ein Köder-Tresor?](id:what-is-a-decoy-vault) zeigt, wie du ihn überzeugend gestaltest.

Mit Premium kannst du im Köder außerdem ein [Notfallmuster](id:duress-pattern) einrichten. Es geht einen Schritt weiter: Zeichnest du es, öffnet sich der Köder, und alle anderen Tresore auf dem iPhone werden still und endgültig gelöscht. Die Anleitung [Köder-Tresor und Notfallmuster einrichten](id:set-up-decoy-vault-and-duress-pattern) führt dich durch die Schritte.

## Wie jeder Tresor getrennt bleibt

Trennung heißt hier mehr als versteckte Ordner. Jeder Tresor hat seinen eigenen zufälligen 256-Bit-Hauptschlüssel, entsperrt durch einen Schlüssel, der aus dem Muster dieses Tresors abgeleitet wird. Dateien in einem Tresor sind mit Schlüsseln verschlüsselt, die nur zu diesem Tresor gehören. Wer einen Tresor öffnet, erhält also keinen Zugriff auf einen anderen. Die ganze Schlüsselkette erklärt die Seite zur [Verschlüsselung](id:encryption).

## Was versteckte Tresore können – und was nicht

Versteckte Tresore machen es schwer, nachzuweisen, dass es weitere Inhalte gibt. Unsichtbar machen sie dich nicht:

- Das Velcrypt-Symbol ist auf dem Home-Bildschirm sichtbar. Ab iOS 18 kannst du Apps in einem ausgeblendeten, per Face ID geschützten Ordner verstecken – das ist aber eine iOS-Funktion, kein Teil von Velcrypt.
- Wer dich beim Zeichnen deines echten Musters beobachtet, kann den echten Tresor öffnen.
- Kopien einer Datei, die noch anderswo liegen, etwa in Fotos, „Zuletzt gelöscht“, iCloud oder einem Chat, schützt der Tresor nicht.
- Abstreitbarkeit hängt vom Kontext ab. Sie ist eine technische Eigenschaft der App, keine rechtliche Garantie.

Für Situationen wie Grenzkontrollen oder die Herausgabe des Handys lies [Handy-Privatsphäre an der Grenze](id:phone-privacy-border-crossing), bevor du dich auf eine einzelne Funktion verlässt.
