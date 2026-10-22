---
pageId: hide-photos
title: "Cacher des photos sur iPhone dans un coffre chiffré"
description: "Importez des photos de votre iPhone dans un coffre Velcrypt chiffré, supprimez les originaux et les « Suppressions récentes », puis classez-les en albums."
h1: "Cacher des photos dans un coffre-fort chiffré"
navTitle: "Cacher des photos"
answer: "Velcrypt importe les photos de votre photothèque sous forme de copies chiffrées dans un coffre. Les originaux restent dans Photos tant que vous ne les supprimez pas : après l’import, effacez-les puis videz « Suppressions récentes ». Dans le coffre, vous classez les photos en albums et les parcourez avec zoom et balayage."
keyFacts:
  - "L’import copie la photo dans le coffre ; l’original reste dans Photos."
  - "Supprimez ensuite les originaux et videz « Suppressions récentes », où ils restent sinon environ 30 jours."
  - "Chaque photo importée est chiffrée en AES-256-GCM sur l’appareil."
  - "Classez vos photos en albums à l’intérieur de chaque coffre."
  - "Zoomez en pinçant et balayez pour passer d’une photo à l’autre."
primaryKeyword: "cacher des photos iphone"
keywords: ["app pour cacher des photos iphone", "coffre-fort photo chiffré iphone", "album photo privé app", "masquer des photos iphone", "verrouiller des photos app", "coffre-fort photo secret"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importez vos photos en copies chiffrées, effacez les originaux et les « Suppressions récentes », puis parcourez-les en albums."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Velcrypt supprime-t-il la photo de ma pellicule ?"
    a: "Pas automatiquement. L’import crée une copie chiffrée dans le coffre et laisse l’original dans Photos. Supprimez l’original vous-même, puis retirez-le aussi de « Suppressions récentes »."
  - q: "Combien de temps les photos restent-elles dans « Suppressions récentes » ?"
    a: "Environ 30 jours, sauf si vous les en supprimez plus tôt. D’ici là, elles peuvent être récupérées par toute personne capable d’ouvrir cet album."
  - q: "Cacher une photo dans Velcrypt, est-ce différent de l’album « Masqués » ?"
    a: "Oui. L’album « Masqués » fait toujours partie de votre photothèque et peut se synchroniser via Photos iCloud. Une photo dans Velcrypt est chiffrée avec des clés dérivées de votre schéma et n’est incluse ni dans les sauvegardes iCloud ni dans celles sur ordinateur."
  - q: "Velcrypt envoie-t-il mes photos quelque part ?"
    a: "Non. Velcrypt n’a ni serveurs ni compte. Les photos importées sont chiffrées et stockées uniquement sur votre iPhone."
---

La pellicule est l’endroit le plus consulté de votre téléphone. Quiconque l’emprunte pour regarder une photo peut faire défiler tout le reste. Placer vos photos privées dans Velcrypt les sort de ce défilement et les met derrière un schéma et un chiffrement.

## Comment fonctionne l’import de photos

L’import consiste à faire passer une photo de la photothèque de votre iPhone vers un coffre Velcrypt. Vous choisissez une ou plusieurs photos avec le sélecteur de photos standard d’iOS, et Velcrypt enregistre une copie chiffrée dans le coffre actuellement ouvert.

Le mot important est **copie**. Velcrypt ne déplace et ne supprime rien dans votre photothèque. L’original reste exactement où il était tant que vous ne le retirez pas. C’est une mesure de sécurité, car vous pouvez vérifier que l’import a fonctionné avant que quoi que ce soit ne soit effacé, mais cela signifie qu’une étape supplémentaire vous revient.

Chaque photo importée est chiffrée sur l’appareil en AES-256-GCM, avec une clé dérivée de la clé maîtresse du coffre. La construction de ces clés est expliquée sur la page [chiffrement](id:encryption).

## Supprimer les originaux

Une photo n’est vraiment privée que si les autres copies ont disparu. Après l’import :

1. **Ouvrez Photos et sélectionnez les originaux** que vous venez d’importer.
2. **Supprimez-les.** Ils passent dans l’album « Suppressions récentes ».
3. **Ouvrez « Suppressions récentes ».** Depuis iOS 18, l’album se trouve dans la section « Utilitaires » de l’app Photos ; dans les versions plus anciennes, il est en bas de l’onglet Albums.
4. **Supprimez-les à nouveau depuis cet album.** Sinon, ils restent récupérables pendant environ 30 jours.

<!-- TODO verify iOS label -->

Depuis iOS 16, les albums « Suppressions récentes » et « Masqués » sont verrouillés par défaut avec Face ID, Touch ID ou votre code, mais toute personne qui connaît le code de votre appareil peut quand même les ouvrir. Si vous utilisez Photos iCloud, une suppression sur un appareil retire aussi la photo de vos autres appareils. La marche à suivre complète se trouve dans [supprimer les originaux après l’import](id:delete-original-photos-after-import).

Pensez aussi aux copies ailleurs : photos envoyées dans des conversations, albums partagés, pièces jointes d’e-mails ou un ordinateur avec lequel vous avez synchronisé un jour. Velcrypt ne peut protéger que ce qui se trouve dans le coffre.

## Classer ses photos en albums

Dans chaque coffre, vous pouvez créer des albums, par exemple « Documents », « Perso » ou « Voyage », et y ranger vos photos. La sélection multiple permet de déplacer beaucoup de photos d’un coup, et vous pouvez déplacer des éléments d’un album à l’autre dès que votre organisation change. Voir la fonctionnalité [albums](id:albums) pour plus de détails.

Les albums appartiennent au coffre qui les contient. Un autre schéma ouvre un autre coffre avec ses propres albums : c’est ainsi que les [coffres cachés](id:hidden-vaults) gardent des collections totalement séparées.

## Regarder ses photos dans le coffre

Les photos s’ouvrent dans la visionneuse intégrée de Velcrypt. Pincez pour zoomer sur les détails et balayez vers la gauche ou la droite pour parcourir un album. Les photos sont déchiffrées pour l’affichage tant que le coffre est ouvert, et l’app se reverrouille d’elle-même quand vous la quittez, selon votre réglage de [verrouillage automatique](id:auto-lock).

## Velcrypt ou l’album « Masqués »

| | Album « Masqués » de l’iPhone | Coffre Velcrypt |
| --- | --- | --- |
| Où se trouve la photo | Dans votre photothèque | Dans un coffre chiffré de l’app |
| Comment on le déverrouille | Face ID, Touch ID ou code de l’appareil | Votre schéma Velcrypt |
| iCloud | Se synchronise avec Photos iCloud si activé | Exclu des sauvegardes iCloud et sur ordinateur |
| Collections séparées | Un seul album « Masqués » | Un coffre distinct par schéma |

L’album « Masqués » est pratique et suffit à beaucoup de gens. Ses limites sont détaillées dans [l’album « Masqués » de l’iPhone est-il privé ?](id:is-iphone-hidden-album-private), et un tour d’horizon de toutes les options se trouve dans [comment cacher des photos sur iPhone](id:hide-photos-iphone).

## Bon à savoir

- L’appareil photo intégré au coffre enregistre une nouvelle photo directement dans le coffre, sans jamais passer par votre photothèque. Il n’y a alors aucun original à supprimer.
- Les photos peuvent contenir des données de localisation et d’appareil. Si vous comptez les partager plus tard, [supprimez d’abord leurs métadonnées](id:remove-photo-metadata-iphone).
- Les coffres ne figurent pas dans les sauvegardes iCloud ou ordinateur. Si une photo est irremplaçable, créez une sauvegarde chiffrée dans Réglages → Sauvegarde et enregistrez le fichier hors de l’iPhone.
