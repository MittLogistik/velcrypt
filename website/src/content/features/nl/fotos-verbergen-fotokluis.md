---
pageId: hide-photos
title: "Foto's verbergen op iPhone in een versleutelde fotokluis"
description: "Importeer foto's uit je iPhone-bibliotheek in een versleutelde Velcrypt-kluis, wis de originelen en Recent verwijderd, en orden ze in albums."
h1: "Foto's verbergen in een versleutelde kluis"
navTitle: "Foto's verbergen"
answer: "Velcrypt importeert foto's uit je fotobibliotheek als versleutelde kopieën in een kluis. De originelen blijven in Foto's staan tot je ze verwijdert, dus na het importeren wis je ze en leeg je Recent verwijderd. In de kluis orden je foto's in albums en bekijk je ze met zoomen en vegen."
keyFacts:
  - "Importeren kopieert een foto naar de kluis; het origineel blijft in Foto's."
  - "Verwijder daarna de originelen en leeg Recent verwijderd, waar items anders zo'n 30 dagen blijven staan."
  - "Elke geïmporteerde foto wordt op het toestel versleuteld met AES-256-GCM."
  - "Orden foto's in albums binnen elke kluis."
  - "Bekijk foto's met knijpen om te zoomen en veeg tussen foto's."
primaryKeyword: "foto's verbergen iphone app"
keywords: ["fotokluis iphone", "versleutelde fotokluis", "privé fotoalbum app", "foto's vergrendelen app", "geheime fotokluis"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importeer foto's als versleutelde kopieën, wis de originelen en Recent verwijderd, en blader door albums met zoomen en vegen."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Verwijdert Velcrypt de foto uit mijn filmrol?"
    a: "Niet automatisch. Importeren maakt een versleutelde kopie in de kluis en laat het origineel in Foto's staan. Verwijder het origineel zelf en haal het daarna ook weg uit Recent verwijderd."
  - q: "Hoe lang blijven verwijderde foto's in Recent verwijderd staan?"
    a: "Ongeveer 30 dagen, tenzij je ze eerder uit Recent verwijderd wist. Tot die tijd kan iedereen die dat album kan openen ze terugzetten."
  - q: "Is foto's verbergen in Velcrypt anders dan in het album Verborgen?"
    a: "Ja. Het album Verborgen hoort nog steeds bij je fotobibliotheek en kan via iCloud-foto's synchroniseren. Een foto in Velcrypt is versleuteld met sleutels die van je patroon zijn afgeleid en zit niet in iCloud- of computerbackups."
  - q: "Uploadt Velcrypt mijn foto's ergens naartoe?"
    a: "Nee. Velcrypt heeft geen servers en geen account. Geïmporteerde foto's worden versleuteld en alleen op je iPhone bewaard."
---

Je filmrol is de meest bezochte plek op je telefoon. Wie hem leent om naar één foto te kijken, kan zo doorscrollen naar al het andere. Door privéfoto's naar Velcrypt te verplaatsen, haal je ze uit die scroll en zet je ze achter een patroon en versleuteling.

## Zo werkt foto's importeren

Importeren is het overbrengen van een foto uit de fotobibliotheek van je iPhone naar een Velcrypt-kluis. Je kiest een of meer foto's met de standaard fotokiezer van iOS, en Velcrypt bewaart een versleutelde kopie in de kluis die je op dat moment open hebt.

Het belangrijke woord is **kopie**. Velcrypt verplaatst of verwijdert niets in je fotobibliotheek. Het origineel blijft precies waar het was, tot jij het weghaalt. Dat is een veiligheidsmaatregel, want zo kun je controleren of het importeren gelukt is voordat er iets wordt verwijderd. Het betekent wel dat er nog één stap voor jou overblijft.

Elke geïmporteerde foto wordt op het toestel versleuteld met AES-256-GCM, met een sleutel die is afgeleid van de hoofdsleutel van die kluis. Hoe die sleutels worden opgebouwd, lees je op de pagina over [versleuteling](id:encryption).

## De originelen verwijderen

Een foto is pas privé als de andere kopieën weg zijn. Na het importeren:

1. **Open Foto's en selecteer de originelen** die je net hebt geïmporteerd.
2. **Verwijder ze.** Ze gaan naar het album Recent verwijderd.
3. **Open Recent verwijderd.** In iOS 18 en later staat het onder „Hulpmiddelen” in de Foto's-app; in oudere versies staat het onderaan het tabblad Albums.
4. **Verwijder ze daar nogmaals.** Anders blijven ze ongeveer 30 dagen te herstellen.

<!-- TODO verify iOS label -->

Sinds iOS 16 zijn Recent verwijderd en Verborgen standaard vergrendeld met Face ID, Touch ID of je toegangscode, maar iedereen die de toegangscode van je toestel kent, kan ze nog steeds openen. Gebruik je iCloud-foto's, dan verdwijnt een foto die je op één toestel verwijdert ook van je andere toestellen. De volledige uitleg staat in [originelen verwijderen na het importeren](id:delete-original-photos-after-import).

Denk ook aan kopieën op andere plekken: foto's die je in chats hebt gestuurd, gedeelde albums, e-mailbijlagen of een computer waarmee je ooit hebt gesynchroniseerd. Velcrypt kan alleen beschermen wat in de kluis staat.

## Foto's ordenen in albums

In elke kluis kun je albums maken, bijvoorbeeld „Documenten”, „Persoonlijk” of „Reis”, en daar foto's in onderbrengen. Met meervoudige selectie verplaats je veel foto's tegelijk, en je kunt items tussen albums verschuiven wanneer je indeling verandert. Meer details vind je bij de functie [albums](id:albums).

Albums horen bij de kluis waarin ze staan. Een ander patroon opent een andere kluis met eigen albums. Zo houden [verborgen kluizen](id:hidden-vaults) aparte verzamelingen volledig gescheiden.

## Foto's bekijken in de kluis

Foto's openen in de ingebouwde viewer van Velcrypt. Knijp om in te zoomen op details en veeg naar links of rechts om door een album te bladeren. Foto's worden voor weergave ontsleuteld zolang de kluis open is, en de app vergrendelt zichzelf weer als je hem verlaat, volgens je instelling voor [automatisch vergrendelen](id:auto-lock).

## Velcrypt vs het album Verborgen

| | Album Verborgen op iPhone | Velcrypt-kluis |
| --- | --- | --- |
| Waar de foto staat | In je fotobibliotheek | In een versleutelde kluis in de app |
| Hoe je ontgrendelt | Face ID, Touch ID of toegangscode van je toestel | Je Velcrypt-patroon |
| iCloud | Synchroniseert met iCloud-foto's als dat aanstaat | Niet in iCloud- of computerbackups |
| Aparte verzamelingen | Eén album Verborgen | Een aparte kluis per patroon |

Het album Verborgen is handig en voor veel mensen goed genoeg. De beperkingen ervan staan in [is het album Verborgen op de iPhone privé?](id:is-iphone-hidden-album-private), en een breder overzicht van alle opties vind je in [foto's verbergen op je iPhone](id:hide-photos-iphone).

## Goed om te weten

- Velcrypt heeft geen ingebouwde camera. Maak de foto met de Camera-app, importeer hem en verwijder dan het origineel.
- Foto's kunnen locatie- en toestelgegevens bevatten. Wil je ze later delen, [verwijder dan eerst de metadata](id:remove-photo-metadata-iphone).
- Kluisgegevens worden in de eerste versie niet geback-upt. Is een foto onvervangbaar, bewaar dan een tweede kopie op een plek die je vertrouwt.
