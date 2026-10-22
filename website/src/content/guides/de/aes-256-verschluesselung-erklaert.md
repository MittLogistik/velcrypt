---
pageId: aes-256-encryption-explained
title: "AES-256-Verschlüsselung erklärt (GCM, PBKDF2, Quanten)"
description: "Was AES-256 ist, warum der GCM-Modus zählt, warum die Schlüsselableitung bei Muster-Schutz wichtiger ist als die Chiffre und was Quantencomputer ändern."
h1: "AES-256-Verschlüsselung erklärt – ohne Hype"
navTitle: "AES-256-Verschlüsselung erklärt"
answer: "AES-256 ist eine symmetrische Chiffre, die Daten mit einem 256-Bit-Schlüssel verschlüsselt; durch Ausprobieren von Schlüsseln kann sie niemand realistisch knacken. Bei Daten, die mit einem Muster oder Passwort geschützt sind, hängt die echte Stärke von der Schlüsselableitung ab: wie langsam und sorgfältig aus dem kurzen Geheimnis der Schlüssel wird. Der GCM-Modus ergänzt die Geheimhaltung um Manipulationserkennung."
keyFacts:
  - "AES ist eine Blockchiffre, 2001 von NIST standardisiert; AES-256 nutzt einen 256-Bit-Schlüssel und 14 Runden."
  - "GCM ist ein authentifizierter Modus: Er verschlüsselt und erkennt zusätzlich jede Änderung am Geheimtext."
  - "Ein schwaches Muster oder Passwort untergräbt AES-256, weil Angreifer das Geheimnis erraten, nicht den Schlüssel."
  - "Langsame Schlüsselableitung wie PBKDF2 mit vielen Iterationen macht jeden Rateversuch teuer."
  - "Grovers Algorithmus würde AES-256 gegenüber einem Quantenangreifer auf etwa 128-Bit-Sicherheit senken – das gilt weiterhin als stark."
primaryKeyword: "aes-256 verschlüsselung erklärt"
keywords: ["was ist aes 256", "aes-256-gcm", "pbkdf2 erklärt", "ist aes 256 quantensicher", "aes 256 vs aes 128", "authentifizierte verschlüsselung"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, Schlüssellängen, authentifizierte Verschlüsselung mit GCM, warum PBKDF2 wichtiger ist als die Chiffre – und die Quantenfrage, verständlich erklärt."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "Kann man AES-256 knacken?"
    a: "Es ist kein praktischer Angriff bekannt, der einen AES-256-Schlüssel schneller als durch Ausprobieren findet, und das Ausprobieren eines 256-Bit-Schlüssels übersteigt jeden denkbaren Computer. Echte Datenlecks entstehen durch schwache Passwörter, gestohlene Schlüssel oder Fehler rund um die Chiffre, nicht durch AES selbst."
  - q: "Was ist der Unterschied zwischen AES-128 und AES-256?"
    a: "Beide nutzen denselben Algorithmus mit unterschiedlicher Schlüssellänge und Rundenzahl: 128-Bit-Schlüssel mit 10 Runden gegenüber 256-Bit-Schlüsseln mit 14 Runden. AES-128 gilt bereits als sicher; AES-256 bietet eine große Reserve, auch gegen künftige Quantenangriffe."
  - q: "Was bedeutet GCM in AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) ist ein Betriebsmodus, der Daten verschlüsselt und zugleich ein Authentifizierungs-Tag erzeugt. Wird auch nur ein Bit der verschlüsselten Datei verändert, schlägt die Entschlüsselung fehl, statt beschädigte oder manipulierte Daten zurückzugeben."
  - q: "Ist AES-256 quantensicher?"
    a: "Es gilt allgemein als quantenresistent. Grovers Algorithmus würde die effektive Schlüsselstärke theoretisch auf etwa 128 Bit halbieren, was weiterhin als sicher gilt. Für Public-Key-Verfahren wie RSA sind Quantencomputer eine größere Bedrohung als für AES."
  - q: "Warum braucht eine App mit AES-256 trotzdem ein starkes Passwort oder Muster?"
    a: "Weil Angreifer nicht den 256-Bit-Schlüssel erraten, sondern das kurze Geheimnis, aus dem er abgeleitet wird. Gehört dein Geheimnis zu ein paar tausend gängigen Varianten, verschafft selbst eine langsame Schlüsselableitung nur begrenzt Zeit."
---

„AES-256-Verschlüsselung“ steht auf fast jeder Funktionsliste von Datenschutz-Apps. Das ist eine echte, aussagekräftige Angabe – aber auch der Teil eines Systems, der am wenigsten wahrscheinlich versagt. Diese Anleitung erklärt, was AES-256 tut, was Zusätze wie GCM bedeuten und warum der Schritt, der dein Muster oder Passwort in einen Schlüssel verwandelt, mehr Aufmerksamkeit verdient.

## Was AES ist

AES (Advanced Encryption Standard) ist eine symmetrische Blockchiffre: Derselbe geheime Schlüssel ver- und entschlüsselt, und Daten werden in Blöcken von 128 Bit verarbeitet. Das US-amerikanische National Institute of Standards and Technology (NIST) wählte sie 2001 nach einem offenen, mehrjährigen öffentlichen Wettbewerb aus; das Siegerdesign Rijndael stammt von zwei belgischen Kryptografen.

Heute ist AES überall: in HTTPS-Verbindungen, im WLAN, in der Festplattenverschlüsselung und in der Hardware jedes modernen iPhones. Diese Verbreitung ist ein Vorteil. Kryptografen untersuchen AES seit über zwei Jahrzehnten, und viele Prozessoren beschleunigen es in Hardware.

### Schlüssellängen

AES gibt es mit drei Schlüssellängen:

| Variante | Schlüssellänge | Runden | Mögliche Schlüssel |
|---|---|---|---|
| AES-128 | 128 Bit | 10 | etwa 3,4 × 10³⁸ |
| AES-192 | 192 Bit | 12 | etwa 6,3 × 10⁵⁷ |
| AES-256 | 256 Bit | 14 | etwa 1,2 × 10⁷⁷ |

Zur Einordnung der AES-256-Zahl: Sie liegt nicht weit von gängigen Schätzungen der Anzahl der Atome im beobachtbaren Universum entfernt. Jeden Schlüssel auszuprobieren ist keine Frage schnellerer Computer; es ist physikalisch außer Reichweite.

## Modi: warum „GCM“ wichtig ist

Eine Blockchiffre allein verwürfelt nur einen einzelnen 16-Byte-Block. Ein **Betriebsmodus** legt fest, wie ganze Dateien sicher verschlüsselt werden. Ältere Modi boten nur Geheimhaltung – ein Angreifer konnte manchmal Bits im Geheimtext umkippen und so vorhersehbare Änderungen in den entschlüsselten Daten bewirken.

**GCM (Galois/Counter Mode) ist ein authentifizierter Verschlüsselungsmodus.** Er verschlüsselt die Daten und berechnet zusätzlich ein Authentifizierungs-Tag darüber. Beim Entschlüsseln wird zuerst das Tag geprüft. Wurde die Datei manipuliert oder beschädigt, schlägt die Entschlüsselung sauber fehl, statt veränderte Inhalte zurückzugeben.

GCM hat eine strenge Regel: Eine Nonce (eine nur einmal verwendete Zahl) darf sich unter demselben Schlüssel nie wiederholen. Gut entworfene Systeme vermeiden dieses Risiko strukturell, etwa indem jede Datei einen eigenen Schlüssel bekommt.

## Der Teil, der wirklich über deine Sicherheit entscheidet: Schlüsselableitung

Hier ist die unbequeme Wahrheit über „AES-256“ in einer gesperrten App: Niemand greift den 256-Bit-Schlüssel direkt an. Angegriffen wird das, was du dir merkst.

Ein Muster, eine PIN oder ein Passwort ist kurz. Eine **Schlüsselableitungsfunktion (KDF)** verwandelt dieses kurze Geheimnis in einen Schlüssel voller Länge. Ist die KDF schnell, kann ein Angreifer, der die verschlüsselten Daten kopiert hat, Milliarden Versuche testen. Ist sie absichtlich langsam, kostet jeder Versuch echte Zeit und Rechenleistung.

### Wie PBKDF2 Angreifer ausbremst

**PBKDF2** (Password-Based Key Derivation Function 2) ist eine weit verbreitete, standardisierte KDF. Sie schickt dein Geheimnis viele tausend Mal durch eine verschlüsselte Hashfunktion (HMAC) und mischt ein **Salt** hinein – einen Zufallswert, der deinen abgeleiteten Schlüssel einzigartig macht, selbst wenn jemand anderes dasselbe Geheimnis gewählt hat.

- **Iterationen** vervielfachen die Kosten jedes Versuchs. Bei Hunderttausenden Iterationen dauert ein Versuch, der sonst eine Mikrosekunde bräuchte, einen spürbaren Bruchteil einer Sekunde.
- **Das Salt** macht vorberechnete Tabellen nutzlos. Ein Angreifer kann keine riesige Liste „Muster → Schlüssel“ erstellen und auf verschiedenen Geräten wiederverwenden.

Trotzdem kann keine KDF ein Geheimnis retten, das zu den ersten paar tausend gehört, die ein Angreifer ausprobieren würde. Deshalb sind die Tipps zur Wahl eines starken Geheimnisses im [Vergleich Muster vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id) genauso wichtig wie die Chiffre. Teste eine ähnliche Form (niemals deine echte) mit dem [Muster-Stärketest](id:pattern-strength-checker).

## Die Quantenfrage

Quantencomputer bedrohen manche Kryptografie stark, andere nur wenig.

- **Public-Key-Verfahren** wie RSA und elliptische Kurven könnten mit Shors Algorithmus auf einem ausreichend großen Quantencomputer gebrochen werden. Deshalb wird branchenweit Post-Quanten-Schlüsselaustausch eingeführt.
- **Symmetrische Chiffren** wie AES haben es mit Grovers Algorithmus zu tun, der die Brute-Force-Suche quadratisch beschleunigt. Praktisch halbiert das ungefähr die effektive Schlüssellänge: AES-256 böte gegen einen Quantenangreifer etwa 128-Bit-Sicherheit.

128-Bit-Sicherheit gilt weiterhin als stark. Das ist ein Grund, warum AES-256 für Daten empfohlen wird, die lange vertraulich bleiben müssen.

## Verbreitete Irrtümer

- **Superlative auf einer Funktionsliste bedeuten etwas.** Tun sie nicht. AES ist ein öffentlicher Standard, den Banken, Browser und Messenger gleichermaßen nutzen; dramatische Adjektive davor sind Marketing.
- **AES-256 macht eine App sicher.** Es macht die verschlüsselten Bytes sicher. Ob das ganze System sicher ist, entscheiden Schlüsselverwaltung, KDF, Entsperrdesign, Backups und anderswo verbliebene Kopien.
- **Längere Schlüssel gleichen schwache Passwörter aus.** Nein. Ein 256-Bit-Schlüssel, abgeleitet aus „1234“, ist nur so stark wie „1234“.

## Wie Velcrypt AES-256 nutzt

Velcrypts Design folgt dem obigen Prinzip: starke Chiffre, sorgfältiger Umgang mit Schlüsseln, langsame Ableitung.

- **Chiffre:** AES-256-GCM über Apple CryptoKit – jede Datei wird verschlüsselt und authentifiziert.
- **Schlüsselableitung:** Dein Muster wird mit PBKDF2-HMAC-SHA512 verarbeitet, mit mindestens 600.000 Iterationen und einem zufälligen Salt pro Gerät, das im iOS-Schlüsselbund gespeichert ist.
- **Schlüsselhierarchie:** Jeder Tresor hat einen eigenen zufälligen 256-Bit-Hauptschlüssel, aus dem per HKDF Schlüssel pro Datei abgeleitet werden. Getrennte Schlüssel pro Datei machen es auch leicht, die Nonce-Regel von GCM einzuhalten.
- **Zusätzliche Schicht:** Der iOS-Datenschutz (vollständige Schutzklasse) wird zusätzlich zu Velcrypts eigener Verschlüsselung auf die Dateien angewendet.
- **Nur auf dem Gerät:** kein Konto und keine Server – es gibt also nirgendwo sonst eine Kopie deiner Schlüssel.

Die [Seite zur Verschlüsselung](id:encryption) fasst das zusammen, und die [Sicherheitsübersicht](id:security) sagt klar, wogegen Verschlüsselung nicht schützen kann – etwa wenn dir jemand beim Zeichnen deines Musters zusieht oder ein Handy mit geöffnetem Tresor weitergegeben wird.
