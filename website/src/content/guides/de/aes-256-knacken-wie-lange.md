---
pageId: can-aes-256-be-cracked
title: "Kann man AES-256 knacken? Dauer, Quanten und GCM"
description: "Wie lange das Knacken einer 256-Bit-Verschlüsselung dauern würde, ob AES-256 quantensicher ist, was GCM ergänzt und wo Angriffe wirklich ansetzen."
h1: "Kann man AES-256 knacken? Rechnung, Angriffe und die Quantenfrage"
navTitle: "Kann man AES-256 knacken?"
answer: "Nicht durch Ausprobieren: Selbst eine Milliarde Rechner, die jeweils eine Trillion Schlüssel pro Sekunde testen, bräuchten im Schnitt etwa 10⁴² Jahre. Die besten bekannten Angriffe sparen nur ein paar Bit, und ein Quantencomputer mit Grovers Algorithmus stünde immer noch vor rund 2¹²⁸ Schritten. Echte Angriffe zielen auf Passwort oder Muster, das Gerät oder die Implementierung."
keyFacts:
  - "Ein 256-Bit-Schlüssel hat etwa 1,2 × 10⁷⁷ mögliche Werte; Brute Force ist unter jeder realistischen Annahme unerreichbar."
  - "Der beste bekannte Angriff auf volles AES-256 ohne verwandte Schlüssel (Biclique, 2011) kostet etwa 2²⁵⁴·⁴ Operationen statt 2²⁵⁶."
  - "Grovers Algorithmus ließe AES-256 rund 128 Bit Sicherheit; NIST, BSI und das britische NCSC halten AES für quantentauglich."
  - "Shors Algorithmus bedroht RSA und elliptische Kurven, nicht AES."
  - "Bei einem Tresor mit Muster ist die Schwachstelle die Entropie des Musters und die Schlüsselableitung, nicht die Chiffre."
primaryKeyword: "256 bit verschlüsselung knacken dauer"
keywords: ["kann man aes 256 knacken", "ist aes 256 quantensicher", "datenverschlüsselung aes", "aes-256-gcm", "rijndael 256", "aes 256 brute force dauer"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Brute-Force-Rechnung für einen 256-Bit-Schlüssel, bekannte Angriffe, Grover vs. Shor, was GCM bringt – und warum das Muster das eigentliche Ziel ist."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Wie lange dauert es, AES-256 per Brute Force zu knacken?"
    a: "Angenommen, eine Milliarde Rechner testet jeweils 10¹⁸ Schlüssel pro Sekunde: Dann dauert es im Schnitt etwa 1,8 × 10⁴² Jahre, rund das 10³²-Fache des Alters des Universums. Die Annahmen sind maßlos großzügig; echte Hardware ist weit langsamer."
  - q: "Ist AES-256 quantensicher?"
    a: "Es gilt als quantenresistent. Grovers Algorithmus würde die effektive Stärke auf etwa 128 Bit senken, was weiterhin als sicher gilt. NIST sieht keinen Grund, von AES abzurücken, und das BSI empfiehlt 256-Bit-Schlüssel für langfristigen Schutz gegen Quantenangriffe."
  - q: "Wurde AES schon einmal geknackt?"
    a: "In der Praxis nein. Es gibt akademische Angriffe, etwa Biclique-Angriffe, die AES-256 von 2²⁵⁶ auf etwa 2²⁵⁴·⁴ Operationen drücken, und Angriffe mit verwandten Schlüsseln, die ein unrealistisches Szenario voraussetzen. Keiner davon entschlüsselt echte AES-256-Daten."
  - q: "Ist Rijndael 256 dasselbe wie AES-256?"
    a: "Nicht ganz. Rijndael ist das Design, aus dem AES wurde, und erlaubt Blockgrößen von 128, 192 oder 256 Bit. AES legt den Block auf 128 Bit fest; AES-256 bezeichnet einen 256-Bit-Schlüssel. Eine Rijndael-Variante mit 256-Bit-Block ist kein AES."
  - q: "Was bringt AES-256-GCM gegenüber einfachem AES-256?"
    a: "GCM macht aus AES eine authentifizierte Verschlüsselung. Neben der Geheimhaltung hängt es ein Authentifizierungs-Tag an, sodass jede Änderung an der verschlüsselten Datei die Entschlüsselung scheitern lässt. Dafür darf sich eine Nonce unter demselben Schlüssel nie wiederholen."
  - q: "Kann man also einen Tresor mit AES-256 knacken?"
    a: "Nicht über die Chiffre. Wer die verschlüsselten Daten kopiert, rät stattdessen dein Muster oder Passwort, und eine langsame Schlüsselableitung begrenzt nur, wie viele Versuche pro Sekunde möglich sind. Ein langes, unregelmäßiges Geheimnis hält den Tresor zu."
---

„Kann man AES-256 knacken?“ ist eine berechtigte Frage, und die ehrliche Antwort hat zwei Hälften. Die Chiffre selbst wird nach jeder ernsthaften Einschätzung weder durch Ausprobieren von Schlüsseln noch durch die beste bekannte Kryptoanalyse noch durch Quantencomputer in absehbarer Zeit gebrochen. Mit AES-256 geschützte Daten können trotzdem offengelegt werden, denn Angreifer suchen sich das schwächere Glied. Diese Anleitung rechnet nach und folgt dann dem Angreifer dorthin, wo er wirklich ansetzt. Wie AES grundsätzlich funktioniert, erklärt [AES-256-Verschlüsselung erklärt](id:aes-256-encryption-explained).

## Wie lange würde Brute Force dauern?

Brute Force heißt: jeden möglichen Schlüssel ausprobieren, bis einer passt. Ein 256-Bit-Schlüssel hat 2²⁵⁶ mögliche Werte, etwa 1,16 × 10⁷⁷. Im Schnitt findet man den richtigen nach der Hälfte, also nach etwa 5,8 × 10⁷⁶ Versuchen.

Geben wir dem Angreifer absurd großzügige Mittel:

- **Tempo pro Rechner:** 10¹⁸ Schlüssel pro Sekunde (eine Trillion). Das liegt weit jenseits jeder echten Hardware zum Knacken von AES.
- **Anzahl Rechner:** eine Milliarde, alle parallel.
- **Zusammen:** 10²⁷ Schlüssel pro Sekunde.

Ergebnis: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ Sekunden, also etwa **1,8 × 10⁴² Jahre**. Das Universum ist rund 1,38 × 10¹⁰ Jahre alt; das ist also ungefähr das 10³²-Fache seines Alters. Die Hardware ein paar Dutzend Mal zu verdoppeln ändert daran nichts: Jedes zusätzliche Bit verdoppelt den Aufwand, und 256 Bit lassen der Technik keinen Spielraum zum Aufholen.

Deshalb spricht in der Kryptografie niemand über Brute Force gegen AES-256. Die Frage ist nur, ob es eine Abkürzung gibt.

## Bekannte Angriffe: winzige theoretische Gewinne

AES ist seit 2001 öffentlich, steckt heute hinter fast jeder Datenverschlüsselung von HTTPS bis zum iPhone und gehört zu den am gründlichsten untersuchten Algorithmen überhaupt. Kryptoanalytiker haben Angriffe gefunden, die streng genommen schneller sind als Brute Force – aber mit Abständen, die nur auf dem Papier zählen.

- **Biclique-Angriffe (2011).** Bogdanov, Khovratovich und Rechberger zeigten eine Schlüsselrückgewinnung für volles AES-256 mit etwa 2²⁵⁴·⁴ statt 2²⁵⁶ Operationen. Das ist rund dreimal weniger Arbeit als Brute Force – immer noch etwa 10⁷⁶ Operationen. Die Autoren betonten selbst, dass der Angriff den praktischen Einsatz von AES nicht gefährdet.
- **Angriffe mit verwandten Schlüsseln (2009).** Biryukov und Khovratovich fanden einen Angriff auf AES-256 mit etwa 2⁹⁹·⁵ Zeitaufwand, allerdings nur in einem Modell, in dem der Angreifer Daten erhält, die mit mehreren geheimen Schlüsseln in einer bestimmten mathematischen Beziehung verschlüsselt wurden. Gut entworfene Systeme erzeugen unabhängige Zufallsschlüssel; für sie gilt dieses Modell nicht.

Keines der Ergebnisse gewinnt einen Schlüssel aus echten AES-256-Daten zurück. Beide sind vor allem ein Beleg dafür, dass zwei Jahrzehnte Prüfung keinen nennenswerten Riss gefunden haben.

### Was „Rijndael 256“ bedeutet

Rijndael ist das Design von Joan Daemen und Vincent Rijmen, das NIST als AES auswählte. Rijndael unterstützt Block- und Schlüsselgrößen von 128, 192 und 256 Bit. AES hat nur den 128-Bit-Block standardisiert. AES-256 bedeutet also Rijndael mit 128-Bit-Block und 256-Bit-Schlüssel. Ein „Rijndael-256“ mit 256-Bit-Block ist eine andere, nicht standardisierte Chiffre – und nicht das, was Apps oder Browser mit AES-256 meinen.

## Ist AES-256 quantensicher?

Quantencomputer treffen zwei Familien der Kryptografie sehr unterschiedlich.

- **Shors Algorithmus** löst Faktorisierung und diskrete Logarithmen effizient. Ein ausreichend großer Quantencomputer würde RSA und elliptische Kurven brechen, also die Public-Key-Verfahren für Schlüsselaustausch und Signaturen. Deshalb wird Post-Quanten-Schlüsselaustausch eingeführt.
- **Grovers Algorithmus** beschleunigt die Brute-Force-Suche quadratisch: 2²⁵⁶ Schlüssel zu durchsuchen kostet etwa 2¹²⁸ Quantenschritte. Faktisch bietet AES-256 gegen einen Quantenangreifer rund 128 Bit Sicherheit.

Wie groß sind 2¹²⁸ Schritte? Angenommen, ein Quantencomputer schafft eine Milliarde Grover-Iterationen pro Sekunde, jede mit einer kompletten AES-Schaltung – sehr optimistisch. Er bräuchte trotzdem etwa 10²² Jahre. Zudem lässt sich Grover schlecht parallelisieren: Auf viele Maschinen verteilt, wird die Suche deutlich weniger schneller als proportional.

Die offiziellen Positionen sind sich einig:

- **NIST** (USA) schreibt in seinen FAQ zur Post-Quanten-Kryptografie, Grovers Algorithmus werde beim Angriff auf AES wenig oder keinen Vorteil bringen; bestehende Anwendungen können AES mit 128, 192 oder 256 Bit weiter nutzen.
- **BSI** (Deutschland): Symmetrische Verfahren wie AES gelten nach aktuellem Forschungsstand als grundsätzlich resistent gegen Quantencomputer-Angriffe, solange die Schlüssellängen angepasst werden. Bei Neuentwicklungen mit langfristigem Schutzbedarf sollen 256-Bit-Schlüssel vorgesehen werden; bei AES wird davon ausgegangen, dass 256 Bit langfristig hinreichend schützen.
- **NCSC** (Großbritannien) hält fest, dass Quantencomputer die Sicherheit symmetrischer Kryptografie nicht wesentlich beeinträchtigen und AES mit geeigneten Schlüssellängen weiter genutzt werden kann.

Also ja: AES-256 ist die Variante, die für Daten empfohlen wird, die lange vertraulich bleiben müssen – Quantencomputer eingeschlossen.

## Was GCM in AES-256-GCM ergänzt

AES allein verschlüsselt einen 16-Byte-Block. Ein Betriebsmodus legt fest, wie ganze Dateien verschlüsselt werden. **GCM (Galois/Counter Mode)**, von NIST in SP 800-38D standardisiert, ist ein authentifizierter Modus: Neben dem Geheimtext erzeugt er ein Authentifizierungs-Tag. Beim Entschlüsseln wird das Tag geprüft; wurde auch nur ein Bit der Datei verändert, schlägt die Entschlüsselung fehl, statt veränderte Daten zu liefern.

GCM hat eine harte Regel: Eine Nonce darf sich unter demselben Schlüssel nie wiederholen. Eine Wiederverwendung kann Informationen über den Klartext preisgeben und gefälschte Tags ermöglichen. Das ist keine Schwäche von AES, sondern genau die Art Implementierungsfehler, die echte Angriffe ausnutzen. Ein eigener Schlüssel pro Datei, wie bei Velcrypt, macht die Regel leicht einzuhalten.

## Wo Angriffe wirklich ansetzen

Ist die Chiffre unerreichbar, gehen Angreifer um sie herum. In der Praxis zielen sie auf drei Dinge.

1. **Das Geheimnis, das du dir merkst.** Der 256-Bit-Schlüssel wird meist aus Passwort, PIN oder Muster abgeleitet. Das Geheimnis zu erraten ist ungleich billiger, als den Schlüssel zu erraten.
2. **Das Gerät.** Schadsoftware, ein gejailbreaktes Handy, ein offen gelassener Tresor oder jemand, der beim Entsperren zusieht, umgehen die Verschlüsselung komplett.
3. **Die Implementierung.** Wiederverwendete Nonces, Schlüssel neben den Daten, schlechte Zufallszahlen oder Seitenkanäle wie Zeitmessungen. Deshalb sind geprüfte Systembibliotheken wie Apple CryptoKit selbstgebautem Krypto-Code vorzuziehen.

## Das ehrliche Fazit für einen Tresor mit Muster

In einem Tresor wie Velcrypt ist der Schlüssel, der deine Dateien verschlüsselt, ein zufälliger 256-Bit-Hauptschlüssel – so stark, wie AES nur sein kann. Dieser Hauptschlüssel ist aber mit einem Schlüssel versiegelt, der aus deinem Muster abgeleitet wird. Wer die verschlüsselten Daten und das Salt des Geräts kopiert hat, kann offline raten. Die Stärke der Chiffre spielt dann keine Rolle mehr; entscheidend ist, wie viele Mustervarianten er pro Sekunde testen kann und wie viele er braucht.

Velcrypt bremst jeden Versuch mit PBKDF2-HMAC-SHA512 und mindestens 600.000 Iterationen. Hochgerechnet aus öffentlichen Benchmarks zum Passwortknacken schafft eine starke Gaming-Grafikkarte damit größenordnungsmäßig 5.000 Versuche pro Sekunde. Das ist eine grobe Schätzung, keine Messung an Velcrypt selbst. Das bedeutet:

| Muster, die der Angreifer testen muss | ca. Bit | eine GPU | 100 GPUs |
|---|---|---|---|
| 10.000 (gängige Formen) | ~13 | Sekunden | sofort |
| 1 Million | ~20 | Minuten | Sekunden |
| 1 Milliarde | ~30 | etwa 2 Tage | etwa 30 Minuten |
| 1 Billion | ~40 | etwa 6 Jahre | etwa 3 Wochen |

Zur Einordnung: Selbst wenn man ein Muster als beliebige geordnete Auswahl von 10 verschiedenen Punkten aus 25 betrachtet, ergeben sich nur etwa 1,2 × 10¹³ Möglichkeiten (rund 43 Bit) – eine großzügige Obergrenze, denn eine durchgehende Linie schränkt die Züge ein, und Menschen bevorzugen Ecken, Buchstaben und kurze Formen. Ein Muster bewegt sich im Bereich weniger Dutzend Bit; der Schlüssel bei 256.

Auf einem iPhone passiert das alles nicht nebenbei: Der Angreifer muss die verschlüsselten Dateien und das Salt erst am iOS-Datenschutz vorbei vom Gerät holen. Es zeigt aber, wo deine Sorgfalt hingehört:

- **Nutze 8–12 Punkte**, mit mehreren Richtungswechseln und idealerweise einer Kreuzung.
- **Vermeide Starts in der Ecke, Buchstaben und einfache Formen** wie L, Z oder ein Quadrat.
- **Zeichne es unbeobachtet**, denn gegen jemanden, der zugesehen hat, hilft keine Entropie.

Teste eine ähnliche Form, niemals deine echte, mit dem [Muster-Stärketest](id:pattern-strength-checker), und lies im [Vergleich Muster vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id), wie selbst gewählte Geheimnisse abschneiden. Die [Seite zur Verschlüsselung](id:encryption) beschreibt Velcrypts vollständige Schlüsselkette, und die [Sicherheitsübersicht](id:security#what-velcrypt-does-not-protect-against) nennt, wogegen Verschlüsselung nicht schützen kann.
