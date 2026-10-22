---
pageId: hide-videos
title: "Cacher des vidéos sur iPhone dans un coffre chiffré"
description: "Importez vos vidéos dans un coffre Velcrypt chiffré, lisez-les dans l’app, supprimez les originaux de Photos et anticipez l’espace de stockage utilisé."
h1: "Cacher des vidéos dans un coffre-fort chiffré"
navTitle: "Cacher des vidéos"
answer: "Velcrypt importe les vidéos de votre photothèque sous forme de copies chiffrées et les lit directement dans le coffre. Les originaux restent dans Photos tant que vous ne les supprimez pas et ne videz pas « Suppressions récentes ». Les vidéos sont volumineuses : vérifiez l’espace libre avant d’en importer beaucoup."
keyFacts:
  - "L’import copie la vidéo dans le coffre ; l’original reste dans Photos."
  - "Les vidéos se lisent dans Velcrypt, sans quitter le coffre."
  - "Chaque vidéo est chiffrée sur l’appareil en AES-256-GCM."
  - "Tant que l’original n’est pas supprimé, la vidéo occupe temporairement deux fois l’espace."
  - "« Suppressions récentes » conserve les vidéos supprimées environ 30 jours si vous ne le videz pas."
primaryKeyword: "cacher des vidéos iphone"
keywords: ["app pour cacher des vidéos iphone", "coffre-fort vidéo chiffré iphone", "masquer des vidéos iphone", "verrouiller des vidéos iphone", "vidéos privées iphone", "cacher des vidéos de la pellicule"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importez vos vidéos en copies chiffrées, lisez-les dans le coffre et effacez les originaux sans saturer votre stockage."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Puis-je regarder mes vidéos sans les exporter de Velcrypt ?"
    a: "Oui. Les vidéos se lisent dans la visionneuse de Velcrypt tant que le coffre est ouvert. Inutile de les exporter vers l’app Photos pour les regarder."
  - q: "Pourquoi mon espace libre a-t-il baissé après l’import de vidéos ?"
    a: "L’import crée une copie : tant que vous n’avez pas supprimé l’original dans Photos et vidé « Suppressions récentes », la vidéo existe en double. Une fois l’original effacé, l’espace est libéré."
  - q: "Les vidéos de mon coffre sont-elles incluses dans la sauvegarde iCloud ?"
    a: "Non. Dans la première version, les données des coffres sont exclues des sauvegardes iCloud et sur ordinateur. Les vidéos du coffre n’existent que sur votre iPhone."
  - q: "Les vidéos cachées dans Velcrypt se synchronisent-elles sur mes autres appareils ?"
    a: "Non. Velcrypt n’a pas de synchronisation cloud et fonctionne uniquement sur iPhone. Une vidéo de votre coffre reste sur le téléphone où vous l’avez importée."
---

Les vidéos sont souvent plus personnelles que les photos, et on tombe dessus tout aussi facilement dans une pellicule. Velcrypt vous permet de les placer dans un coffre chiffré et de les y regarder, sans que l’app Photos n’intervienne plus jamais.

## Comment fonctionne l’import de vidéos

Importer une vidéo fonctionne comme [importer des photos](id:hide-photos). Vous choisissez une ou plusieurs vidéos avec le sélecteur d’iOS, et Velcrypt enregistre une copie chiffrée dans le coffre ouvert. Les gros fichiers prennent un peu plus de temps, car la vidéo entière est chiffrée sur l’appareil avant d’être enregistrée.

Comme pour les photos, l’import est une **copie**. Votre vidéo originale reste dans la photothèque tant que vous ne la supprimez pas. Vous avez ainsi le temps de vérifier qu’elle se lit correctement dans le coffre avant d’effacer quoi que ce soit.

Chaque vidéo est chiffrée en AES-256-GCM avec sa propre clé, dérivée de la clé maîtresse du coffre. La chaîne de clés complète est décrite sur la page [chiffrement](id:encryption).

## La lecture dans le coffre

Velcrypt intègre un lecteur : vous regardez vos vidéos sans les exporter. La lecture a lieu tant que le coffre est ouvert ; quand vous passez à une autre app, Velcrypt se verrouille selon votre réglage de [verrouillage automatique](id:auto-lock), et le sélecteur d’apps n’affiche aucun aperçu de ce qui était en cours de lecture.

Vous pouvez regrouper des vidéos avec les photos qui s’y rapportent dans un même [album](id:albums) et les faire défiler dans la visionneuse.

## Supprimer les originaux

Une vidéo cachée n’est vraiment privée qu’une fois l’original effacé :

1. **Ouvrez Photos et sélectionnez les vidéos** que vous venez d’importer.
2. **Supprimez-les.** Elles passent dans « Suppressions récentes ».
3. **Ouvrez « Suppressions récentes ».** Depuis iOS 18, l’album se trouve dans la section « Utilitaires » de l’app Photos ; dans les versions précédentes, il est en bas de l’onglet Albums.
4. **Supprimez-les aussi depuis cet album.** Sinon, elles restent récupérables pendant environ 30 jours.

<!-- TODO verify iOS label -->

Si vous utilisez Photos iCloud, supprimer une vidéo sur votre iPhone la supprime aussi de vos autres appareils qui partagent la même photothèque. Le guide [supprimer les originaux après l’import](id:delete-original-photos-after-import) entre dans les détails, y compris les albums partagés et les autres endroits où des copies se cachent souvent.

## Un mot sur l’espace de stockage

Les fichiers vidéo sont volumineux. Quelques minutes en haute résolution peuvent occuper plusieurs gigaoctets, et le coffre stocke à peu près la même quantité de données que l’original.

Gardez trois points en tête :

- **Double stockage temporaire.** Entre l’import et la suppression de l’original, la vidéo existe deux fois. Importez par lots si votre téléphone est presque plein.
- **« Suppressions récentes » compte aussi.** Les vidéos supprimées occupent de l’espace jusqu’à ce que l’album soit vidé ou que les 30 jours environ soient écoulés.
- **Vérifiez avant un gros import.** Réglages › Général › Stockage iPhone indique l’espace libre et la place occupée par Velcrypt.

| Étape | Espace occupé |
| --- | --- |
| Avant l’import | L’original seul |
| Après l’import | Original + copie chiffrée |
| Après suppression de l’original | Copie chiffrée + élément dans « Suppressions récentes » |
| Après avoir vidé « Suppressions récentes » | La copie chiffrée seule |

## Bon à savoir

- Velcrypt n’a pas d’appareil photo intégré. Filmez avec l’app Appareil photo, importez la vidéo, puis supprimez l’original.
- Des schémas différents ouvrent des [coffres cachés](id:hidden-vaults) différents. Si certaines vidéos ne doivent jamais côtoyer d’autres fichiers, donnez-leur un coffre à part plutôt qu’un simple album séparé.
- Dans la première version, les coffres ne sont pas sauvegardés. Pour les vidéos irremplaçables, gardez une seconde copie dans un endroit de confiance.
- Si une vidéo a été envoyée dans une conversation ou publiée dans un album partagé, ces copies sont hors du coffre. Le guide [conserver ses photos intimes en sécurité](id:store-intimate-photos-safely-iphone) aborde ce risque plus en détail.

Pour un panorama de toutes les options, intégrées ou non, consultez [comment cacher des vidéos sur iPhone](id:hide-videos-iphone).
