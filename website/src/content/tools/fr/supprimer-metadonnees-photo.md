---
pageId: photo-metadata-remover
title: "Supprimer les métadonnées d’une photo : EXIF gratuit"
description: "Voyez ce que révèlent les données EXIF d’une photo (position GPS, appareil, date), puis enregistrez une copie nettoyée. Dans le navigateur, sans envoi."
h1: "Supprimer les métadonnées EXIF d’une photo"
navTitle: "Suppression des métadonnées photo"
answer: "Choisissez une photo pour voir ses données EXIF cachées : appareil, objectif, date de prise de vue, logiciel, orientation et coordonnées GPS. Touchez « Supprimer les métadonnées » pour enregistrer une copie JPEG nettoyée, sans données EXIF, GPS, XMP ni IPTC. Tout se passe dans votre navigateur ; la photo n’est jamais envoyée."
keyFacts:
  - "Fonctionne entièrement dans votre navigateur ; votre photo n’est jamais envoyée nulle part."
  - "Affiche la marque et le modèle de l’appareil, l’objectif, la date de prise de vue, le logiciel, l’orientation et les coordonnées GPS."
  - "Supprimer les métadonnées redessine l’image et enregistre un nouveau JPEG sans EXIF, GPS, XMP ni IPTC."
  - "Fonctionne avec JPEG, PNG et WebP ; HEIC uniquement si le navigateur le prend en charge, comme Safari."
  - "L’outil ne peut pas nettoyer une copie déjà partagée, et des détails visibles peuvent encore révéler un lieu."
primaryKeyword: "supprimer métadonnées photo"
keywords: ["supprimer données exif", "lire exif en ligne", "supprimer gps d’une photo", "effacer métadonnées photo", "supprimer localisation photo iphone", "supprimer exif"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Affichez les données EXIF d’une photo, dont la position GPS, et enregistrez une copie nettoyée. Gratuit, privé, entièrement dans le navigateur."
toolName: "Suppression des métadonnées photo"
schemaType: WebPage
order: 1
related: [remove-photo-metadata-iphone, which-apps-can-see-your-photos-iphone, store-intimate-photos-safely-iphone, pattern-strength-checker, offline-no-account]
howTo:
  name: "Supprimer les métadonnées d’une photo"
  steps:
    - name: "Choisissez une photo"
      text: "Touchez ou cliquez sur le sélecteur et choisissez une image. Sur iPhone, prenez-la dans votre photothèque ou dans l’app Fichiers."
    - name: "Examinez les métadonnées"
      text: "Lisez les champs appareil, objectif, date, logiciel, orientation et GPS pour voir ce que contient le fichier."
    - name: "Supprimez les métadonnées"
      text: "Touchez « Supprimer les métadonnées ». L’outil redessine l’image et crée un nouveau JPEG sans métadonnées intégrées."
    - name: "Enregistrez la copie nettoyée"
      text: "Enregistrez ou téléchargez le nouveau fichier, et partagez cette copie plutôt que l’original."
faq:
  - q: "Ma photo est-elle envoyée quand j’utilise cet outil ?"
    a: "Non. La photo est lue et traitée par votre navigateur, sur votre propre appareil. Rien n’est envoyé à un serveur, et rien n’est conservé après la fermeture de la page."
  - q: "Quelles métadonnées l’outil supprime-t-il ?"
    a: "L’enregistrement d’une copie nettoyée supprime les données EXIF, dont la position GPS, les informations sur l’appareil et les horodatages, ainsi que les données XMP, IPTC et autres métadonnées intégrées, car le nouveau fichier est construit uniquement à partir des pixels."
  - q: "La photo nettoyée sera-t-elle différente ?"
    a: "Elle devrait être identique, avec l’orientation déjà appliquée. Comme l’image est réencodée en JPEG, la taille du fichier peut légèrement changer."
  - q: "Puis-je l’utiliser avec des photos HEIC de mon iPhone ?"
    a: "Uniquement si votre navigateur sait ouvrir le HEIC, comme Safari. Quand vous choisissez une photo dans Safari sur iPhone, iOS peut la convertir automatiquement en JPEG avant que l’outil ne la reçoive."
  - q: "Comment supprimer la localisation d’une photo directement sur iPhone ?"
    a: "Lorsque vous partagez depuis Photos, la feuille de partage propose des options qui permettent de désactiver la localisation pour ce partage. Le guide sur la suppression des métadonnées photo sur iPhone détaille la marche à suivre."
  - q: "Supprimer les métadonnées rend-il une photo anonyme ?"
    a: "Pas entièrement. Les visages, panneaux de rue, monuments, reflets et autres détails visibles peuvent encore identifier une personne ou un lieu. Supprimer les métadonnées retire seulement les données cachées dans le fichier."
---

## Comment ça fonctionne

Quand vous choisissez une photo, votre navigateur lit le fichier directement sur votre appareil. L’outil recherche le bloc EXIF des fichiers JPEG et affiche en langage clair les champs les plus révélateurs : marque et modèle de l’appareil, objectif, date et heure de prise de vue, logiciel qui l’a enregistrée en dernier, orientation, et coordonnées GPS sous forme de simple latitude et longitude, sans carte.

Quand vous touchez **Supprimer les métadonnées**, l’outil dessine les pixels de l’image sur un canevas et les enregistre dans un tout nouveau JPEG, avec l’orientation déjà appliquée. Un nouveau fichier construit uniquement à partir des pixels ne contient aucune des données intégrées à l’original : EXIF, GPS, XMP, IPTC et autres métadonnées disparaissent.

Tout cela se passe dans la page elle-même. La photo n’est jamais envoyée, et rien n’est conservé une fois la page quittée.

## Que sont les données EXIF ?

EXIF (Exchangeable Image File Format) est un standard qui permet de stocker des informations sur une photo à l’intérieur même du fichier image. Votre app Appareil photo les écrit automatiquement à chaque prise de vue. C’est utile pour trier votre photothèque par date ou par lieu, mais ces données voyagent avec le fichier quand vous le partagez en tant que fichier.

Sur un iPhone, une seule photo peut contenir :

- **La position :** des coordonnées GPS précises, si le service de localisation est activé pour l’Appareil photo.
- **La date et l’heure :** le moment de la prise de vue, à la seconde près.
- **L’appareil :** le modèle de téléphone et l’objectif utilisé.
- **Le logiciel :** la version d’iOS ou l’app de retouche qui l’a enregistrée en dernier.
- **L’orientation :** la façon dont l’image doit être pivotée à l’affichage.

## Ce qu’elles peuvent révéler

La position est la donnée la plus sensible. Une photo prise chez vous, partagée en fichier original, peut indiquer votre adresse. Une série de photos dans le temps peut révéler vos habitudes. Même sans GPS, un modèle d’appareil et des horodatages peuvent aider à relier des photos à une même personne.

De nombreux réseaux sociaux et messageries suppriment une partie des métadonnées à l’envoi, mais les pratiques varient, et l’envoi d’un fichier en tant que document, par e-mail ou via un lien cloud les conserve souvent intactes. Le plus prudent est de partir du principe que le fichier original contient tout. [Quelles apps peuvent voir vos photos](id:which-apps-can-see-your-photos-iphone) explique qui y a accès au départ.

## Utiliser l’outil sur iPhone

1. Ouvrez cette page dans Safari.
2. Touchez le sélecteur et choisissez une photo dans votre photothèque ou dans Fichiers.
3. Examinez les champs. Si le GPS affiche des coordonnées, la photo contient votre position.
4. Touchez **Supprimer les métadonnées** et enregistrez la copie nettoyée.
5. Partagez la copie nettoyée, pas l’original.

Notez qu’iOS peut convertir une photo HEIC en JPEG quand vous la choisissez dans Safari : le fichier reçu par l’outil peut donc légèrement différer de celui de votre photothèque. Pour les options intégrées, comme la désactivation de la localisation dans la feuille de partage, lisez [comment supprimer les métadonnées d’une photo sur iPhone](id:remove-photo-metadata-iphone).

## Confidentialité

L’outil fonctionne localement dans votre navigateur. Pas d’étape d’envoi, pas de compte, pas de serveur qui reçoit votre image. C’est le même principe que Velcrypt lui-même : les données privées doivent rester sur votre appareil. Voir [hors ligne, sans compte](id:offline-no-account).

## Limites

- **Copies déjà partagées :** l’outil ne peut nettoyer que le fichier que vous lui donnez. Les copies déjà envoyées, publiées ou sauvegardées conservent leurs métadonnées.
- **Contenu visible :** visages, numéros de maison, panneaux de rue, vue depuis une fenêtre et reflets peuvent encore révéler qui ou où.
- **Formats :** JPEG, PNG et WebP fonctionnent dans tout navigateur récent. Le HEIC ne fonctionne que si le navigateur sait l’ouvrir, comme Safari.
- **Réencodage :** la copie nettoyée est un nouveau JPEG ; la taille du fichier et la compression peuvent donc légèrement changer.
- **Affichage :** la vue détaillée des champs porte sur les données EXIF des fichiers JPEG ; les autres formats peuvent afficher moins de détails, même si la copie nettoyée supprime tout de même leurs métadonnées.

Si les photos sont sensibles en elles-mêmes, supprimer les métadonnées n’est qu’une partie de la solution. [Stocker des photos intimes en sécurité](id:store-intimate-photos-safely-iphone) couvre le reste, et le [testeur de robustesse de motif](id:pattern-strength-checker) peut vous aider à réfléchir à la façon de les mettre sous clé.
