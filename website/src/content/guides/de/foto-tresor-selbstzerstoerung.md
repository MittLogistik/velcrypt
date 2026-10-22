---
pageId: self-destruct-photo-vault
title: "Foto-Tresor mit Selbstzerstörung fürs iPhone erklärt"
description: "Wie ein Foto-Tresor funktioniert, der sich selbst löscht: Löschen nach Fehlversuchen vs. Notfallmuster, die Folgen endgültigen Löschens und Backups."
h1: "Foto-Tresore mit Selbstzerstörung auf dem iPhone: wie sie funktionieren und was sie kosten"
navTitle: "Foto-Tresor mit Selbstzerstörung"
answer: "Ein Foto-Tresor mit Selbstzerstörung löscht seinen Inhalt, sobald ein Auslöser eintritt. Die zwei üblichen Auslöser sind zu viele Fehlversuche und ein spezieller Notfallcode. Fehlversuche kann jeder auslösen, einen Notfallcode nur du. Velcrypt nutzt ein Notfallmuster, das einen Köder-Tresor öffnet und alle anderen Tresore endgültig löscht. Das ist unumkehrbar, also halte ein Backup bereit."
keyFacts:
  - "Selbstzerstörungsfunktionen löschen Tresorinhalte, sobald ein Auslöser eintritt; das lässt sich nicht rückgängig machen."
  - "Löschen nach Fehlversuchen kann jeder auslösen, der falsch rät, auch ein Kind oder ein Angreifer."
  - "Einen Notfallcode löst nur du bewusst aus, und er kann still wirken."
  - "Das iPhone selbst kann nach 10 falschen Code-Eingaben alle Daten löschen, wenn du das einschaltest."
  - "Velcrypts Notfallmuster öffnet einen Köder-Tresor und löscht alle anderen Tresore endgültig (Premium)."
  - "Nach einer Selbstzerstörung führt nur eine vorher erstellte verschlüsselte Backup-Datei zurück."
primaryKeyword: "foto tresor selbstzerstörung iphone"
keywords: ["foto tresor der sich selbst löscht", "tresor app selbstzerstörung", "foto tresor löschen nach fehlversuchen", "foto tresor automatisch löschen", "fotos im notfall löschen iphone"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Löschen nach Fehlversuchen vs. Notfallmuster, der echte Preis endgültigen Löschens und wie du vorher ein sicheres Backup anlegst."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Gibt es einen Foto-Tresor fürs iPhone, der sich selbst löscht?"
    a: "Ja. Manche Tresor-Apps löschen ihren Inhalt nach einer bestimmten Zahl von Fehlversuchen, andere bieten einen Notfall- oder Panik-Code. Velcrypt hat ein Notfallmuster (Premium), das einen Köder-Tresor öffnet und alle anderen Tresore auf dem iPhone endgültig löscht."
  - q: "Löscht Velcrypt Tresore nach zu vielen falschen Mustern?"
    a: "Nein. In Velcrypt öffnet ein Muster, das die App noch nicht kennt, einfach einen neuen, leeren Tresor. Es gibt also keinen „Fehlversuch“, der gezählt wird. Gelöscht wird nur, wenn jemand das von dir eingerichtete Notfallmuster zeichnet."
  - q: "Kann ich Fotos wiederherstellen, nachdem sich ein Tresor selbst gelöscht hat?"
    a: "Nicht vom Handy. In Velcrypt führt der einzige Weg zurück über eine verschlüsselte Backup-Datei, die du vorher unter Einstellungen → Backup erstellt und außerhalb der App gespeichert hast. Backup-Dateien an anderen Orten rührt das Notfallmuster nicht an."
  - q: "Ist eine Selbstzerstörungsfunktion dasselbe wie sicheres Löschen?"
    a: "Nicht ganz. Flash-Speicher garantiert nicht, dass gelöschte Bytes physisch entfernt werden. Velcrypts Tresordaten sind mit AES-256-GCM verschlüsselt, und die Schlüssel werden mit den Tresoren gelöscht. Was übrig bleibt, ist unlesbarer Chiffretext."
  - q: "Darf ich einen Tresor mit Selbstzerstörung nutzen, wenn die Polizei mein Handy sehen will?"
    a: "Nein. Nutze keine Löschfunktion, um Beweise zu vernichten oder dich einer rechtmäßigen Aufforderung zu widersetzen. Die Gesetze unterscheiden sich von Land zu Land, und Daten trotz einer rechtlichen Anordnung zu löschen, kann selbst eine Straftat sein. Hol dir stattdessen rechtlichen Rat."
---

„Ein Tresor, der sich selbst löscht“ klingt nach dem ultimativen Schutz. Manchmal ist er das auch. Eine Selbstzerstörungsfunktion ist aber zugleich die eine Funktion in einer Tresor-App, die dich in einer Sekunde alles kosten kann. Dieser Leitfaden erklärt, wie die üblichen Ansätze funktionieren, was sie jeweils gut und schlecht können und wie du sie nutzt, ohne Dateien zu verlieren, die du behalten wolltest.

## Was „Selbstzerstörung“ bei einem Foto-Tresor bedeutet

Eine Selbstzerstörungsfunktion löscht einen Teil oder den gesamten Inhalt eines Tresors, sobald ein Auslöser eintritt. Auf dem iPhone begegnen dir vor allem drei Arten:

1. **Löschen nach Fehlversuchen:** Nach einer festgelegten Zahl falscher PINs oder Passwörter löscht die App ihren Inhalt.
2. **Notfall- oder Panik-Code:** Ein spezieller Code, der bei Eingabe harmlose Inhalte öffnet und den Rest löscht. Den Hintergrund erklärt [Notfallpasswort erklärt](id:duress-password-explained).
3. **Löschen auf Geräteebene:** iOS kann das gesamte iPhone nach 10 falschen Code-Eingaben löschen (Einstellungen › Face ID & Code › Daten löschen), und „Wo ist?“ kann ein verlorenes Handy aus der Ferne löschen.

Sie lösen verschiedene Probleme und versagen auf verschiedene Weise.

## Löschen nach Fehlversuchen

Die Idee ist einfach: Rät jemand immer weiter, wird alles gelöscht, bevor er Glück hat.

**Was es gut kann**

- Es wirkt auch, wenn du nicht dabei bist, zum Beispiel wenn dein Handy gestohlen wird.
- Es setzt dem Erraten kurzer PINs eine harte Grenze.

**Wo es an Grenzen stößt**

- **Jeder kann es auslösen.** Ein Kind, das mit deinem Handy spielt, ein Freund, der witzig sein will, oder ein Angreifer, der deine Dateien lieber zerstört als aufzugeben, kann es absichtlich oder versehentlich auslösen.
- **Es ist sichtbar.** Nach dem Löschen ist der Tresor offensichtlich leer oder zurückgesetzt, und die Person weiß, dass etwas passiert ist.
- **Es schützt vor Raten, nicht vor Zwang.** Zwingt dich jemand, den richtigen Code einzugeben, kommt ein Fehlversuchszähler nie zum Zug.

Es lohnt sich auch zu prüfen, wie die App Versuche zählt: ob der Zähler einen Neustart der App übersteht und ob sie die Daten wirklich löscht oder dich nur aussperrt.

## Notfallcodes und Notfallmuster

Einen Notfallcode löst du bewusst aus, meist wenn dich jemand zwingt, die App zu entsperren. Die besten Umsetzungen öffnen einen glaubwürdigen Köder und löschen still die sensiblen Inhalte dahinter.

**Was es gut kann**

- **Nur du kannst es auslösen.** Durch Raten löst es niemand aus.
- **Es kann still wirken.** Gut umgesetzt, zeigt nichts auf dem Bildschirm, dass etwas gelöscht wurde.
- **Es ist für Zwang gemacht,** also genau die Situation, mit der ein Fehlversuchszähler nichts anfangen kann.

**Wo es an Grenzen stößt**

- **Du musst es benutzen können.** Nimmt dir jemand das Handy ab, während es bereits entsperrt ist, oder sieht zu, wie du dein echtes Geheimnis zeichnest, hilft es nicht.
- **Du musst es dir unter Stress merken** und darfst es nicht mit deinem echten Geheimnis verwechseln.
- **Es ist genauso unumkehrbar** wie jedes andere Löschen.

## So macht es Velcrypt

Velcrypt hat bewusst **kein Löschen nach Fehlversuchen**. Jedes Muster auf dem 5×5-Raster öffnet seinen eigenen Tresor, und ein Muster, das die App noch nicht kennt, öffnet einfach ohne Fehlermeldung einen neuen, leeren Tresor. Es gibt kein „falsches Muster“, das gezählt wird. Genau das macht [versteckte Tresore](id:hidden-vaults) abstreitbar, und es bedeutet auch, dass niemand deine Tresore löschen kann, nur weil er schlecht rät.

Stattdessen hat Velcrypt ein [Notfallmuster](id:duress-pattern) als Teil von Premium:

- Du richtest es unter Einstellungen → Notfallmuster ein, aus einem [Köder-Tresor](id:what-is-a-decoy-vault) mit harmlosen Inhalten heraus.
- Du zeichnest zweimal ein eigenes Muster und bestätigst. Es darf kein Muster sein, das bereits einen Tresor öffnet.
- Zeichnest du es auf dem Sperrbildschirm, öffnet sich der Köder-Tresor, und alle anderen Tresore auf diesem iPhone werden still und endgültig gelöscht. Das Entsperren sieht genauso aus und dauert genauso lange wie sonst.
- Die App zeigt nie an, ob ein Notfallmuster eingerichtet ist. Es gibt eines pro iPhone; ein neues ersetzt das alte. Zum Deaktivieren musst du es zeichnen, und das löscht nichts.
- Es funktioniert weiter, wenn Premium ausläuft; nur das Einrichten braucht Premium.
- Richtest du es im einzigen Tresor auf dem Handy ein, gibt es nichts anderes zu löschen, und die App weist dich darauf hin.

## Die Ansätze im Vergleich

| | Löschen nach Fehlversuchen | Notfallcode oder -muster | iPhone „Daten löschen“ |
|---|---|---|---|
| Wer es auslösen kann | Jeder, der oft genug falsch rät | Nur wer das Notfallgeheimnis kennt | Jeder, der den Code 10-mal falsch eingibt |
| Gedacht für | Raten, Diebstahl | Erzwungenes Entsperren | Raten, Diebstahl |
| Danach sichtbar | Meistens | Kann still wirken | Ja, das Handy ist zurückgesetzt |
| Was gelöscht wird | Der Inhalt der App | Je nach App; in Velcrypt jeder Tresor außer dem Köder | Alles auf dem iPhone |
| Umkehrbar | Nur aus einem Backup | Nur aus einem Backup | Nur aus einem Backup |

## Der Kompromiss, um den du nicht herumkommst: Es ist endgültig

Jede Selbstzerstörungsfunktion tauscht Wiederherstellbarkeit gegen Schutz. Bevor du eine einschaltest, sei in drei Punkten ehrlich zu dir.

### Du brauchst ein Backup an einem anderen Ort

Velcrypt-Tresore sind von iCloud- und Computer-Backups ausgeschlossen, ein gelöschter Tresor ist also vom Handy verschwunden. Der einzige Weg zurück ist eine **verschlüsselte Backup-Datei, die du vorher erstellt hast**. In Velcrypt erstellst du unter Einstellungen → Backup eine .velcrypt-Datei für den geöffneten Tresor, geschützt durch ein Backup-Passwort deiner Wahl. Das ist kostenlos. Speichere die Datei außerhalb der App, etwa in Dateien, in iCloud Drive oder auf einem Computer, dann rührt das Notfallmuster sie nicht an. Bewahre auch das Backup-Passwort sicher auf: Ein vergessenes Backup-Passwort lässt sich nicht wiederherstellen. Wie Backups geschützt sind, steht auf der [Sicherheitsseite](id:security#encrypted-backup).

### Gelöscht heißt nicht immer physisch entfernt

Flash-Speicher garantiert nicht, dass gelöschte Bytes sofort physisch entfernt werden. Was dich schützt, ist die Verschlüsselung: Velcrypts Tresordaten sind mit AES-256-GCM verschlüsselt, und die Schlüssel werden zusammen mit den Tresorordnern gelöscht. Was übrig bleibt, ist Chiffretext ohne Schlüssel. Sei vorsichtig bei Apps, die mehr versprechen.

### Es löscht nur, was in der App liegt

Originale, die noch in Fotos, „Zuletzt gelöscht“, iCloud, Chats oder auf einem anderen Gerät liegen, sind nicht betroffen. [Lösche Originale nach dem Import](id:delete-original-photos-after-import).

## Verantwortungsvoll nutzen

Eine Selbstzerstörungsfunktion ist ein Werkzeug für persönliche Sicherheit und Privatsphäre. Benutze sie nie, um Beweise zu vernichten oder eine rechtmäßige Aufforderung von Polizei, Grenzbeamten oder einem Gericht zu umgehen. Die Gesetze unterscheiden sich von Land zu Land, und Daten trotz einer rechtlichen Anordnung zu löschen, kann selbst eine Straftat sein. Bist du in dieser Situation oder rechnest damit, hol dir rechtlichen Rat.

## Solltest du einen Tresor mit Selbstzerstörung wählen?

Wähle einen, wenn es für dich ein realistisches Risiko ist, zum Entsperren deines Tresors gezwungen zu werden, und du die Dateien lieber verlierst, als dass jemand sie sieht. Verzichte darauf oder warte, bis du ein Backup hast, wenn die Dateien unersetzlich sind.

Egal, welche App du wählst: Prüfe, wie ihre Selbstzerstörung ausgelöst wird, ob sie sichtbar ist und was sie wirklich löscht. Unsere [Checkliste zur Sicherheit von Foto-Tresoren](id:are-photo-vault-apps-safe) hilft dabei. Entscheidest du dich für Velcrypt, führt [Köder-Tresor und Notfallmuster einrichten](id:set-up-decoy-vault-and-duress-pattern) durch die Einrichtung, mit dem Backup als erstem Schritt, und unter [Preise](id:pricing) findest du die Premium-Tarife.
