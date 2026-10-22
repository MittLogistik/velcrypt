---
pageId: remove-photo-metadata-iphone
title: "Supprimer les données EXIF et la position des photos iPhone"
description: "Retirez les métadonnées EXIF et la position de vos photos iPhone : Options du partage, Aucune position, réglages de l’appareil photo et outil gratuit."
h1: "Comment supprimer les métadonnées EXIF et la position des photos iPhone"
navTitle: "Supprimer les métadonnées photo"
answer: "Pour retirer la position avant de partager sur iPhone, touchez Options en haut de la feuille de partage et désactivez Position. Pour la retirer de la photo elle-même, ouvrez-la, balayez vers le haut ou touchez Infos, choisissez Ajuster à côté du lieu et sélectionnez Aucune position. Pour qu’elle ne soit plus enregistrée, réglez Appareil photo sur Jamais dans le Service de localisation."
keyFacts:
  - "Les métadonnées EXIF peuvent inclure les coordonnées GPS, la date et l’heure, le modèle d’appareil, l’objectif et le logiciel."
  - "Le menu Options de la feuille de partage permet de retirer la position (et d’autres données) à chaque partage."
  - "Dans Photos, le panneau Infos permet de définir Aucune position sur une photo."
  - "Réglages › Confidentialité et sécurité › Service de localisation › Appareil photo › Jamais empêche les nouvelles photos d’enregistrer la position."
  - "Une fois une photo partagée avec ses métadonnées, les retirer de votre copie ne change rien à la copie envoyée."
primaryKeyword: "supprimer données exif iphone"
keywords: ["supprimer la localisation des photos iphone", "supprimer métadonnées photo iphone", "retirer le gps d’une photo", "localisation photo iphone confidentialité", "supprimer exif"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Ce que révèlent les EXIF, quatre façons de retirer la position et d’autres métadonnées des photos iPhone, et un outil gratuit dans le navigateur."
category: practical
order: 31
related: [photo-metadata-remover, which-apps-can-see-your-photos-iphone, store-intimate-photos-safely-iphone, phone-privacy-border-crossing, hide-photos-iphone]
howTo:
  name: "Supprimer la position d’une photo iPhone"
  steps:
    - name: "Retirer la position au partage"
      text: "Sélectionnez la photo dans Photos, touchez Partager, touchez Options en haut de la feuille de partage, désactivez Position, touchez OK, puis partagez."
    - name: "Retirer la position de la photo elle-même"
      text: "Ouvrez la photo, balayez vers le haut ou touchez le bouton Infos, touchez Ajuster à côté du lieu ou de la carte, et choisissez Aucune position."
    - name: "Empêcher les nouvelles photos d’enregistrer la position"
      text: "Allez dans Réglages › Confidentialité et sécurité › Service de localisation › Appareil photo et choisissez Jamais."
    - name: "Supprimer toutes les métadonnées si besoin"
      text: "Ouvrez l’outil de suppression des métadonnées photo dans Safari, choisissez la photo, vérifiez les métadonnées détectées et enregistrez une copie propre."
faq:
  - q: "Les photos iPhone contiennent-elles des données de localisation ?"
    a: "Oui, si le Service de localisation est autorisé pour l’app Appareil photo, ce qui est le cas par défaut pour la plupart des gens. Les coordonnées GPS sont stockées dans les métadonnées de la photo et voyagent avec le fichier quand vous partagez l’original."
  - q: "Envoyer une photo par message supprime-t-il ses métadonnées ?"
    a: "Pas de façon fiable. Certaines messageries et réseaux sociaux suppriment les métadonnées à l’envoi, d’autres les conservent, et AirDrop, l’e-mail et le partage de fichiers envoient généralement l’original. Retirez vous-même la position avant de partager plutôt que de compter sur l’app."
  - q: "Faire une capture d’écran supprime-t-il les données EXIF ?"
    a: "Une capture d’écran est une nouvelle image et ne contient généralement pas la position GPS de l’original, mais elle a ses propres métadonnées, une résolution plus faible, et peut capturer d’autres éléments affichés. C’est un contournement grossier, pas une solution propre."
  - q: "Peut-on supprimer la date et le modèle d’appareil, pas seulement la position ?"
    a: "La feuille de partage de l’iPhone gère surtout la position et, selon les versions, d’autres données incluses comme les légendes. Pour retirer les détails de l’appareil et les dates, utilisez un outil dédié comme notre outil de suppression des métadonnées dans le navigateur, qui enregistre une nouvelle copie sans métadonnées intégrées."
  - q: "Supprimer les métadonnées rend-il une photo anonyme ?"
    a: "Non. Des visages, des panneaux, des monuments, des reflets et même la vue depuis une fenêtre peuvent révéler où une photo a été prise. Supprimer les métadonnées retire les données cachées, pas ce qui est visible sur l’image."
---

Chaque photo prise avec un iPhone transporte un petit lot d’informations cachées. La plupart du temps, c’est utile : Photos peut trier vos images par lieu et par date. Mais quand vous partagez une photo avec un inconnu, un acheteur ou sur internet, elle peut révéler bien plus que prévu, y compris l’endroit exact où vous habitez.

## Ce que contiennent les métadonnées EXIF

EXIF (Exchangeable Image File Format) est une norme qui permet de stocker des informations dans un fichier image, à côté des pixels. Sur une photo d’iPhone, elles peuvent inclure :

| Champ | Exemple | Pourquoi c’est important |
|---|---|---|
| Coordonnées GPS | Latitude et longitude, souvent précises à quelques mètres près | Peuvent révéler votre domicile, votre lieu de travail ou l’école d’un enfant |
| Date et heure | L’instant du déclenchement | Montrent vos habitudes et quand vous étiez quelque part |
| Appareil | Marque et modèle | Aide à identifier qui l’a prise |
| Objectif et réglages | Caméra avant ou arrière, focale, exposition | Secondaire, mais complète une empreinte |
| Logiciel | Version d’iOS ou app de retouche | Indique quel appareil ou quelle app l’a traitée |
| Orientation | Indicateur de rotation | Sans danger, mais nécessaire à un affichage correct |

Les photos peuvent aussi contenir des données XMP et IPTC (légendes, historique de retouche, mots-clés). Le HEIC, format par défaut de l’iPhone, stocke des informations similaires.

## Quatre façons de maîtriser les métadonnées sur iPhone

### 1. Retirer la position au moment du partage

C’est l’habitude la plus rapide à prendre, et elle s’applique à chaque partage.

1. Dans Photos, sélectionnez une ou plusieurs photos et touchez **Partager**.
2. En haut de la feuille de partage, sous le résumé de la sélection, touchez **Options**.
3. Désactivez **Position**. Selon votre version d’iOS, vous verrez peut-être aussi des options pour d’autres données de la photo, comme les légendes, ou pour l’envoyer en fichier original.
4. Touchez **OK**, puis partagez comme d’habitude.

<!-- TODO verify iOS label -->

Le réglage ne vaut que pour ce partage ; votre original garde sa position. Il fonctionne avec Messages, Mail, AirDrop et la plupart des apps qui reçoivent des photos via la feuille de partage.

### 2. Retirer la position de la photo elle-même

Si vous voulez que la position disparaisse de la photo dans votre photothèque :

1. Ouvrez la photo dans Photos.
2. Balayez vers le haut, ou touchez le bouton **Infos** (ⓘ).
3. Touchez **Ajuster** à côté du lieu ou de la carte.
4. Choisissez **Aucune position**.

<!-- TODO verify iOS label -->

Sur les versions récentes d’iOS, vous pouvez sélectionner plusieurs photos et ajuster leur position en une fois. Les libellés peuvent varier légèrement entre iOS 18 et iOS 26 ; cherchez le champ de lieu dans le panneau Infos.

### 3. Empêcher l’appareil photo d’enregistrer la position

Pour que les nouvelles photos n’enregistrent plus du tout de GPS :

1. Ouvrez **Réglages › Confidentialité et sécurité › Service de localisation**.
2. Touchez **Appareil photo**.
3. Choisissez **Jamais**.

Vous perdrez, pour les nouvelles photos, les fonctions de Photos liées au lieu, comme la vue carte et les Souvenirs par lieu. Certaines personnes ne le désactivent qu’en voyage ou à la maison.

### 4. Utiliser un outil de suppression pour tout le reste

La feuille de partage se concentre sur la position. Si vous voulez aussi retirer la date, le modèle d’appareil et les autres données intégrées, utilisez un outil dédié. Notre [outil de suppression des métadonnées photo](id:photo-metadata-remover) fonctionne entièrement dans votre navigateur : rien n’est envoyé. Il montre ce que contient un JPEG (appareil, objectif, date, logiciel, orientation et coordonnées GPS), puis redessine les pixels dans un nouveau JPEG qui abandonne les EXIF, le GPS, les XMP, les IPTC et les autres métadonnées intégrées.

Quelques points à savoir : le réencodage peut légèrement modifier la taille du fichier ; le HEIC ne fonctionne que si le navigateur sait l’ouvrir (comme Safari) ; et quand vous choisissez une photo dans Safari sur iPhone, iOS peut déjà convertir le HEIC en JPEG.

## L’astuce de la capture d’écran, et pourquoi elle reste grossière

Un conseil répandu consiste à faire une capture d’écran d’une photo et à partager la capture. Une capture d’écran est une toute nouvelle image : elle ne porte donc pas les coordonnées GPS de l’original. Mais :

- sa résolution est plus faible que l’original et le cadrage peut être maladroit,
- elle peut capturer la barre d’état, des notifications ou d’autres parties de l’écran,
- elle a ses propres métadonnées (comme sa date de création et l’appareil),
- il est facile d’oublier et de partager l’original à la place.

Cela dépanne. Pour tout ce qui compte, utilisez l’option de la feuille de partage ou un outil de suppression des métadonnées.

## Les métadonnées ne se rattrapent pas

Supprimer les métadonnées ne modifie que la copie que vous éditez. Si vous avez déjà publié, envoyé ou téléversé l’original, la copie du destinataire garde ce qu’elle contenait. Certaines plateformes suppriment les métadonnées à l’envoi ; beaucoup de messageries et de modes de partage de fichiers, non. Partez du principe que tout ce que vous avez partagé par le passé porte encore ses données d’origine.

Souvenez-vous aussi de ce que les métadonnées ne sont pas. Des visages, des numéros de rue, des plaques d’immatriculation, des enseignes, une vue caractéristique ou un reflet dans une vitre peuvent identifier un lieu aussi bien que le GPS.

## Quelles apps peuvent lire les métadonnées ?

Toute app à qui vous accordez un accès complet aux photos peut lire les métadonnées de chaque photo de votre photothèque, position comprise. Limiter les apps à certaines photos réduit cette exposition. Voir [quelles apps peuvent voir vos photos](id:which-apps-can-see-your-photos-iphone) pour comprendre les autorisations photos sur iOS.

## La place de Velcrypt

Velcrypt ne retouche pas les photos et ne supprime pas les métadonnées ; il les protège. Les photos importées dans un coffre sont chiffrées sur votre iPhone en AES-256-GCM : leur contenu, métadonnées intégrées comprises, ne peut être lu ni par d’autres apps ni par quelqu’un qui parcourt votre photothèque. Si vous gardez des photos privées, combiner les deux habitudes fonctionne bien : retirez la position avant de partager, et gardez les originaux dans un coffre chiffré. Voir [cacher des photos sur iPhone](id:hide-photos-iphone) et [protéger ses photos intimes](id:store-intimate-photos-safely-iphone).
