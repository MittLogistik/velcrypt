---
pageId: private-documents
title: "Documents privés sur iPhone : chiffrer PDF, scans et papiers"
description: "Importez PDF, scans et pièces d’identité depuis l’app Fichiers dans un coffre Velcrypt chiffré, consultez-les hors ligne et n’exportez qu’en cas de besoin."
h1: "Protéger vos documents privés dans un coffre chiffré"
navTitle: "Documents privés"
answer: "Velcrypt importe des documents comme des PDF, des scans ou des copies de pièces d’identité depuis l’app Fichiers d’iOS dans un coffre chiffré. Vous les consultez dans l’app, les rangez en albums et en exportez une copie quand vous devez l’envoyer ou l’imprimer. L’original dans Fichiers reste tant que vous ne le supprimez pas."
keyFacts:
  - "Import depuis l’app Fichiers, y compris PDF et pages scannées."
  - "Chaque document est chiffré sur l’appareil en AES-256-GCM."
  - "Consultation dans le coffre, entièrement hors ligne."
  - "L’export crée une copie hors du coffre : à manipuler avec précaution."
  - "L’original dans Fichiers reste tant que vous ne le supprimez pas."
primaryKeyword: "protéger ses documents sur iphone"
keywords: ["chiffrer un pdf iphone", "stocker ses papiers d’identité iphone", "coffre-fort documents iphone", "cacher des documents iphone", "scan passeport chiffré iphone", "app documents privés iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importez PDF, scans et pièces d’identité depuis Fichiers dans un coffre chiffré, consultez-les hors ligne et n’exportez qu’au besoin."
status: available
schemaType: WebPage
order: 8
related: [scan-documents-privately-iphone, medical-and-id-documents, password-protect-folder-iphone, encryption, albums]
faq:
  - q: "Quels documents puis-je stocker dans Velcrypt ?"
    a: "Les documents accessibles dans l’app Fichiers d’iOS, comme les PDF et les pages scannées, ainsi que des images de documents. Exemples typiques : copies de passeport et de carte d’identité, courriers médicaux, contrats et papiers fiscaux."
  - q: "Puis-je scanner un document directement dans Velcrypt ?"
    a: "Velcrypt n’a ni scanner ni appareil photo intégré. Scannez avec une app qui enregistre dans Fichiers, importez le scan dans Velcrypt, puis supprimez le fichier créé."
  - q: "Puis-je envoyer un document de mon coffre à quelqu’un ?"
    a: "Oui, en l’exportant. L’export place une copie déchiffrée hors du coffre, par exemple dans Fichiers ou vers une destination de la feuille de partage. Cette copie n’est plus protégée par Velcrypt : supprimez-la une fois terminé."
  - q: "Mes documents sont-ils envoyés ou synchronisés ?"
    a: "Non. Velcrypt n’a ni serveurs, ni compte, ni synchronisation cloud. Les documents restent chiffrés sur votre iPhone et, dans la première version, sont exclus des sauvegardes iCloud et sur ordinateur."
---

Passeports, cartes de mutuelle, courriers médicaux et contrats signés finissent souvent en fichiers épars dans les Téléchargements ou en photos dans la pellicule. Velcrypt leur réserve un espace dédié et chiffré sur votre iPhone, à l’écart de tout ce que vous consultez au quotidien.

## Importer depuis l’app Fichiers

Velcrypt importe les documents via le sélecteur de documents d’iOS, le même navigateur que dans l’app Fichiers. Vous pouvez choisir des fichiers dans « Sur mon iPhone », dans iCloud Drive ou dans les autres emplacements affichés par Fichiers, et Velcrypt enregistre une copie chiffrée dans le coffre ouvert.

Ce que l’on y range le plus souvent :

- **Des PDF** : contrats, fiches de paie, avis d’imposition, courriers bancaires.
- **Des scans** de documents papier.
- **Des copies de pièces d’identité** : passeport, permis de conduire, titre de séjour, carte d’assurance maladie.
- **Des papiers médicaux** : résultats d’analyses, ordonnances, lettres d’orientation.

Chaque document est chiffré sur l’appareil en AES-256-GCM, avec sa propre clé dérivée de la clé maîtresse du coffre. La page [chiffrement](id:encryption) explique comment.

## Scanner en toute confidentialité

Velcrypt n’inclut ni appareil photo ni scanner. La méthode la plus sûre consiste à scanner avec un outil qui enregistre dans Fichiers, à importer le résultat dans Velcrypt, puis à supprimer le scan de son emplacement d’origine. Si l’outil a aussi enregistré une copie dans Photos ou dans un dossier cloud, supprimez-la également.

Le guide [scanner des documents en privé sur iPhone](id:scan-documents-privately-iphone) compare les options de numérisation intégrées à iOS et l’endroit où chacune enregistre ses fichiers.

## Consulter ses documents dans le coffre

Les documents s’ouvrent dans Velcrypt : vous pouvez vérifier un numéro de passeport ou relire un courrier sans rien exporter. Tout se passe hors ligne, et rien n’est envoyé nulle part pour afficher le fichier.

Vous pouvez regrouper vos documents dans des [albums](id:albums), par exemple « Identité », « Santé » et « Logement », et les déplacer d’un album à l’autre grâce à la sélection multiple. Quand vous quittez l’app, le [verrouillage automatique](id:auto-lock) ferme le coffre et le sélecteur d’apps n’affiche aucun aperçu du document ouvert.

## Exporter un document

L’export permet de ressortir un document du coffre, par exemple pour l’envoyer par e-mail à une administration, le joindre à un formulaire en ligne ou l’imprimer. À l’export, Velcrypt écrit une **copie déchiffrée** hors du coffre.

Cette copie n’est plus protégée par Velcrypt. Traitez-la comme n’importe quel autre fichier :

1. **N’exportez que ce dont vous avez besoin**, et seulement au moment où vous en avez besoin.
2. **Envoyez-le ou imprimez-le.**
3. **Supprimez la copie exportée** de Fichiers, des Téléchargements ou de l’endroit où elle a atterri.
4. **Pensez à la copie du destinataire.** Une fois envoyé, le document vit sur son appareil et dans sa messagerie, hors de votre contrôle.

L’original reste dans votre coffre pendant tout ce temps.

## Supprimer les originaux dans Fichiers

L’import copie un fichier, il ne le déplace pas. Après avoir vérifié que le document s’ouvre dans Velcrypt, supprimez l’original dans l’app Fichiers. Les fichiers supprimés d’iCloud Drive ou de « Sur mon iPhone » passent dans un emplacement de fichiers supprimés récemment, dans Fichiers, d’où ils peuvent généralement être restaurés pendant 30 jours au maximum : supprimez-les aussi de là.

## Velcrypt, un dossier ou une note verrouillée

| Option | Protection | Remarques |
| --- | --- | --- |
| Dossier dans l’app Fichiers | Code de l’appareil uniquement | Toute personne qui utilise votre téléphone déverrouillé peut l’ouvrir |
| Note verrouillée dans Notes | Code de l’appareil ou mot de passe dédié aux notes | Chiffrée, mais limitée aux notes |
| Coffre Velcrypt | Votre schéma, distinct du code de l’appareil | Chiffrement par fichier, coffres séparés par schéma |

Si vous hésitez entre ces options, [comment protéger un dossier par mot de passe sur iPhone](id:password-protect-folder-iphone) les passe en revue, et le cas d’usage [documents médicaux et d’identité](id:medical-and-id-documents) présente une configuration complète.

## Bon à savoir

- Dans la première version, les données des coffres ne sont incluses ni dans les sauvegardes iCloud ni dans celles sur ordinateur. Gardez une seconde copie des originaux irremplaçables, comme le scan de votre passeport, dans un endroit de confiance.
- Un coffre ne peut pas protéger un document que quelqu’un photographie pendant qu’il est affiché à l’écran.
