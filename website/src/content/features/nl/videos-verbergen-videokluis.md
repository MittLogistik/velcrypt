---
pageId: hide-videos
title: "Video's verbergen op iPhone in een versleutelde kluis"
description: "Importeer video's in een versleutelde Velcrypt-kluis, speel ze af in de app, wis de originelen uit Foto's en houd rekening met je opslagruimte."
h1: "Video's verbergen in een versleutelde kluis"
navTitle: "Video's verbergen"
answer: "Velcrypt importeert video's uit je fotobibliotheek als versleutelde kopieën en speelt ze af in de kluis. De originelen blijven in Foto's tot je ze verwijdert en Recent verwijderd leegt. Video's zijn groot, dus controleer je vrije opslag voordat je er veel tegelijk importeert."
keyFacts:
  - "Importeren kopieert een video naar de kluis; het origineel blijft in Foto's."
  - "Video's spelen af in Velcrypt, zonder de kluis te verlaten."
  - "Elke video wordt op het toestel versleuteld met AES-256-GCM."
  - "Tot je het origineel verwijdert, neemt de video tijdelijk twee keer ruimte in."
  - "Recent verwijderd bewaart verwijderde video's zo'n 30 dagen, tenzij je het leegmaakt."
primaryKeyword: "video's verbergen iphone app"
keywords: ["versleutelde videokluis iphone", "privé video app iphone", "video's vergrendelen iphone", "geheime videokluis", "video's verbergen uit filmrol"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importeer video's als versleutelde kopieën, speel ze af in de kluis en wis de originelen zonder dat je opslag volloopt."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Kan ik video's bekijken zonder ze uit Velcrypt te exporteren?"
    a: "Ja. Video's spelen af in de eigen viewer van Velcrypt zolang de kluis open is. Je hoeft ze niet naar de Foto's-app te exporteren om ze te bekijken."
  - q: "Waarom is mijn vrije opslag kleiner na het importeren van video's?"
    a: "Importeren maakt een kopie. Tot je het origineel uit Foto's verwijdert en Recent verwijderd leegt, bestaat de video dus twee keer. Zodra het origineel weg is, komt de ruimte vrij."
  - q: "Zitten mijn verborgen video's in de iCloud-reservekopie?"
    a: "Nee. In de eerste versie zitten kluisgegevens niet in iCloud- en computerbackups. Video's in de kluis staan alleen op je iPhone."
  - q: "Synchroniseren video's in Velcrypt met mijn andere apparaten?"
    a: "Nee. Velcrypt heeft geen cloudsynchronisatie en werkt alleen op iPhone. Een video in je kluis blijft op de ene telefoon waarop je hem hebt geïmporteerd."
---

Video's zijn vaak nog persoonlijker dan foto's, en je komt ze net zo makkelijk tegen in een filmrol. Met Velcrypt zet je ze in een versleutelde kluis en bekijk je ze daar, zonder dat de Foto's-app er nog aan te pas komt.

## Zo werkt video's importeren

Een video importeren werkt hetzelfde als [foto's importeren](id:hide-photos). Je kiest een of meer video's met de kiezer van iOS, en Velcrypt bewaart een versleutelde kopie in de kluis die je open hebt. Grotere bestanden duren iets langer, omdat de hele video op het toestel wordt versleuteld voordat hij wordt opgeslagen.

Net als bij foto's is het importeren een **kopie**. Je originele video blijft in de fotobibliotheek tot je hem verwijdert. Zo kun je eerst controleren of de video goed afspeelt in de kluis voordat je iets weghaalt.

Elke video wordt versleuteld met AES-256-GCM, met een eigen sleutel die is afgeleid van de hoofdsleutel van de kluis. De volledige sleutelketen staat op de pagina over [versleuteling](id:encryption).

## Afspelen in de kluis

Velcrypt heeft een ingebouwde speler, dus je kunt video's bekijken zonder ze te exporteren. Afspelen gebeurt terwijl de kluis open is. Schakel je naar een andere app, dan vergrendelt Velcrypt volgens je instelling voor [automatisch vergrendelen](id:auto-lock) en toont de appkiezer geen voorbeeld van wat er speelde.

Je kunt video's samen met bijbehorende foto's in hetzelfde [album](id:albums) bewaren en er in de viewer doorheen vegen.

## De originelen verwijderen

Een verborgen video is pas privé als het origineel weg is:

1. **Open Foto's en selecteer de video's** die je net hebt geïmporteerd.
2. **Verwijder ze.** Ze gaan naar Recent verwijderd.
3. **Open Recent verwijderd.** In iOS 18 en later staat het onder „Hulpmiddelen” in de Foto's-app; in eerdere versies staat het onderaan het tabblad Albums.
4. **Verwijder ze daar ook.** Anders blijven ze ongeveer 30 dagen te herstellen.

<!-- TODO verify iOS label -->

Gebruik je iCloud-foto's, dan verdwijnt een video die je op je iPhone verwijdert ook van je andere apparaten met dezelfde bibliotheek. De gids over [originelen verwijderen na het importeren](id:delete-original-photos-after-import) behandelt de details, inclusief gedeelde albums en andere plekken waar kopieën vaak blijven hangen.

## Even over opslagruimte

Videobestanden zijn groot. Een paar minuten beeld in hoge resolutie kan gigabytes innemen, en de kluis bewaart ongeveer evenveel gegevens als het origineel.

Houd rekening met drie dingen:

- **Tijdelijk dubbele opslag.** Tussen het importeren en het verwijderen van het origineel bestaat de video twee keer. Importeer in porties als je telefoon bijna vol is.
- **Recent verwijderd telt ook mee.** Verwijderde video's nemen ruimte in tot Recent verwijderd is geleegd of de periode van ongeveer 30 dagen voorbij is.
- **Controleer voor grote imports.** Via Instellingen › Algemeen › iPhone-opslag zie je hoeveel ruimte vrij is en hoeveel Velcrypt gebruikt.

| Stap | Gebruikte ruimte |
| --- | --- |
| Voor het importeren | Alleen het origineel |
| Na het importeren | Origineel + versleutelde kopie |
| Na het verwijderen van het origineel | Versleutelde kopie + item in Recent verwijderd |
| Na het legen van Recent verwijderd | Alleen de versleutelde kopie |

## Goed om te weten

- Velcrypt heeft geen ingebouwde camera. Film met de Camera-app, importeer de video en verwijder dan het origineel.
- Verschillende patronen openen verschillende [verborgen kluizen](id:hidden-vaults). Moeten sommige video's nooit naast andere staan, geef ze dan een eigen kluis in plaats van alleen een apart album.
- Kluisgegevens worden in de eerste versie niet geback-upt. Bewaar van onvervangbare video's een tweede kopie op een plek die je vertrouwt.
- Is een video ooit in een chat verstuurd of in een gedeeld album gezet, dan staan die kopieën buiten de kluis. De gids over [intieme foto's veilig bewaren](id:store-intimate-photos-safely-iphone) gaat dieper in op dat risico.

Voor een breder overzicht van alle ingebouwde opties en apps van derden, zie [video's verbergen op je iPhone](id:hide-videos-iphone).
