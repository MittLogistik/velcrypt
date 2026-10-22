---
pageId: duress-pattern
title: "Schéma de contrainte : ouvrir un leurre, effacer le reste"
description: "Le schéma de contrainte de Velcrypt ouvre votre coffre leurre et supprime en silence, définitivement, tous les autres coffres. Fonctionnement et limites."
h1: "Schéma de contrainte"
navTitle: "Schéma de contrainte"
answer: "Le schéma de contrainte est une fonction Premium de Velcrypt 1.0. Vous le configurez depuis un coffre leurre. Si vous le tracez un jour sur l’écran de verrouillage, Velcrypt ouvre ce coffre leurre et supprime en silence, définitivement, tous les autres coffres de l’iPhone. Rien à l’écran ne montre ce qui s’est passé."
keyFacts:
  - "Disponible dès maintenant dans Velcrypt 1.0, avec Premium."
  - "Se configure dans Réglages → Schéma de contrainte, depuis un coffre leurre."
  - "Le tracer ouvre le leurre et supprime définitivement tous les autres coffres de cet iPhone."
  - "Le déverrouillage a la même apparence et la même durée qu’un déverrouillage normal."
  - "L’app n’indique jamais si un schéma de contrainte est configuré."
  - "Les coffres supprimés ne se restaurent qu’à partir d’un fichier de sauvegarde chiffré créé avant."
  - "C’est un outil de sécurité personnelle, pas un conseil juridique ni un moyen de contourner une injonction légale."
primaryKeyword: "code de contrainte coffre-fort photo"
keywords: ["code de panique iphone", "mot de passe de contrainte", "schéma de panique coffre-fort photo", "déverrouillage sous contrainte", "coffre autodestructeur", "code de détresse app"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Un schéma distinct qui ouvre votre coffre leurre et supprime en silence, définitivement, tous les autres coffres de l’iPhone. Premium."
status: available
schemaType: WebPage
order: 3
related: [set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, self-destruct-photo-vault, hidden-vaults, what-is-a-decoy-vault, plausible-deniability-explained]
howTo:
  name: "Configurer un schéma de contrainte dans Velcrypt"
  steps:
    - name: "Sauvegardez votre vrai coffre"
      text: "Ouvrez votre vrai coffre, allez dans Réglages → Sauvegarde et enregistrez un fichier .velcrypt protégé par mot de passe en dehors de l’app, par exemple dans Fichiers ou sur un ordinateur."
    - name: "Ouvrez votre coffre leurre"
      text: "Tracez le schéma d’un deuxième coffre au contenu anodin et crédible. Les coffres au-delà du premier nécessitent Premium."
    - name: "Ouvrez Réglages → Schéma de contrainte"
      text: "Depuis le coffre leurre, ouvrez Réglages et choisissez Schéma de contrainte."
    - name: "Tracez deux fois un nouveau schéma de contrainte"
      text: "Tracez un schéma distinct qui n’ouvre aucun coffre, puis tracez-le une seconde fois pour le confirmer."
    - name: "Confirmez"
      text: "Lisez l’avertissement et confirmez. Désormais, tracer ce schéma sur l’écran de verrouillage ouvre ce leurre et supprime tous les autres coffres de l’iPhone."
faq:
  - q: "Le schéma de contrainte est-il disponible dans Velcrypt ?"
    a: "Oui. Il est inclus dans Velcrypt 1.0, avec Premium. Vous le configurez dans Réglages → Schéma de contrainte, pendant qu’un coffre leurre est ouvert."
  - q: "Que se passe-t-il quand quelqu’un trace le schéma de contrainte ?"
    a: "Velcrypt ouvre le coffre leurre dans lequel il a été configuré et, au même moment, supprime en silence et définitivement tous les autres coffres de cet iPhone. Aucun message, aucune animation ni aucun délai ne le trahit."
  - q: "Quelqu’un peut-il savoir que j’ai un schéma de contrainte ?"
    a: "Pas à partir de l’app. Velcrypt n’indique jamais s’il en existe un. Un enregistrement chiffré de taille fixe existe toujours dans le trousseau ; sans schéma de contrainte, il est rempli d’octets aléatoires, si bien qu’il a la même apparence dans les deux cas."
  - q: "Puis-je récupérer les coffres supprimés ?"
    a: "Pas depuis le téléphone. Le seul moyen est un fichier de sauvegarde chiffré que vous avez créé auparavant dans Réglages → Sauvegarde et enregistré en dehors de l’app. Le schéma de contrainte ne touche pas aux fichiers de sauvegarde stockés ailleurs."
  - q: "Faut-il rester abonné à Premium pour qu’il fonctionne ?"
    a: "Non. Sa configuration nécessite Premium, mais un schéma de contrainte déjà configuré continue de fonctionner si Premium expire."
  - q: "Comment désactiver le schéma de contrainte ?"
    a: "Dans Réglages → Schéma de contrainte, touchez Désactiver le schéma de contrainte et tracez le schéma de contrainte. Le tracer à cet endroit ne fait que le désactiver ; rien n’est supprimé."
  - q: "Le schéma de contrainte peut-il effacer des photos déjà partagées ?"
    a: "Non. Il ne supprime que les coffres de Velcrypt sur ce téléphone. Les copies dans votre photothèque, dans iCloud, dans des conversations, des e-mails, un fichier de sauvegarde ou sur l’appareil d’une autre personne restent hors de sa portée."
  - q: "Est-il légal d’utiliser un schéma de contrainte ?"
    a: "Cela dépend du pays et de la situation. Supprimer des données alors que la police, les douanes ou un tribunal exigent légalement d’y accéder peut constituer en soi une infraction. Le schéma de contrainte est conçu pour des situations de sécurité personnelle, pas pour détruire des preuves. Si une demande légale est en jeu, consultez un avocat."
---

Parfois, le risque n’est pas un téléphone volé, mais une personne en face de vous qui exige que vous ouvriez l’app. Un [coffre leurre](id:what-is-a-decoy-vault) aide dans bien de ces moments. Le schéma de contrainte va plus loin : il ouvre le leurre **et** supprime définitivement tous les autres coffres de l’iPhone, si bien que vos coffres privés ne peuvent plus y être ouverts, même plus tard.

Il fait partie de Premium dans Velcrypt 1.0.

## Ce que fait le schéma de contrainte

Un schéma de contrainte est un schéma de déverrouillage distinct, que vous n’utilisez que sous la pression. Dans Velcrypt, il fonctionne ainsi :

1. Vous le configurez à l’avance, depuis un coffre leurre : un deuxième coffre rempli de contenu anodin et crédible.
2. Si l’on vous force un jour à déverrouiller l’app, vous tracez le schéma de contrainte au lieu du vrai.
3. Velcrypt ouvre le coffre leurre, exactement comme lors d’un déverrouillage normal.
4. Au même moment, il supprime en silence et définitivement tous les autres coffres de cet iPhone.

Rien à l’écran n’indique à l’autre personne ce qui s’est passé. Pas d’alerte, pas d’animation, pas de délai supplémentaire : le déverrouillage a la même apparence et prend le même temps que n’importe quel autre.

## Comment le configurer

Il vous faut Premium, car le schéma de contrainte se trouve dans un deuxième coffre, et les coffres au-delà du premier font partie de Premium.

1. **Sauvegardez d’abord votre vrai coffre.** Ouvrez-le, allez dans **Réglages → Sauvegarde** et enregistrez le fichier .velcrypt protégé par mot de passe en dehors de l’app, par exemple dans Fichiers, sur iCloud Drive ou sur un ordinateur. C’est le seul moyen de récupérer le coffre si le schéma de contrainte est un jour utilisé.
2. **Ouvrez votre coffre leurre.** Si vous n’en avez pas encore, tracez un nouveau schéma pour le créer et ajoutez-y du contenu ordinaire ; Velcrypt vous demande d’ajouter quelque chose avant qu’un coffre puisse recevoir un schéma de contrainte. Le [guide du coffre leurre](id:what-is-a-decoy-vault) explique comment le rendre crédible.
3. **Allez dans Réglages → Schéma de contrainte** pendant que le coffre leurre est ouvert.
4. **Tracez deux fois le schéma de contrainte.** Ce doit être un nouveau schéma, qui n’ouvre aucun coffre existant.
5. **Lisez l’avertissement et confirmez.** Ensuite, entraînez-vous à ce schéma de tête, pas sur l’écran de verrouillage : l’y tracer supprimerait vos autres coffres.

Le pas-à-pas complet, avec des conseils pour s’entraîner, se trouve dans [configurer un coffre leurre et un schéma de contrainte](id:set-up-decoy-vault-and-duress-pattern).

### Les règles à connaître

- **Un seul par iPhone.** Il n’y a qu’un schéma de contrainte par appareil. En configurer un nouveau remplace l’ancien.
- **Pour le désactiver**, il faut tracer le schéma de contrainte dans Réglages → Schéma de contrainte. Le tracer à cet endroit ne fait que le désactiver ; rien n’est supprimé.
- **Il continue de fonctionner si Premium expire.** Seule la configuration nécessite Premium.
- **Configurez-le dans un leurre, pas dans votre seul coffre.** Si le leurre est le seul coffre du téléphone, le schéma de contrainte n’a rien à supprimer. Velcrypt vous prévient dans ce cas.

## Rien ne révèle son existence

Un schéma de contrainte n’est utile que si personne ne peut savoir qu’il existe. Velcrypt n’indique jamais s’il en existe un, ni dans l’interface ni dans ses réglages. En coulisses, un enregistrement chiffré de taille fixe existe toujours dans le trousseau iOS ; sans schéma de contrainte, il contient des octets aléatoires. L’enregistrement a donc la même apparence, que vous utilisiez la fonction ou non.

Cela s’appuie sur les [coffres cachés](id:hidden-vaults) : chaque schéma ouvre son propre coffre, il n’existe aucune liste de coffres, et un schéma inconnu ouvre un coffre vide sans message d’erreur. L’idée derrière les deux est expliquée dans [le déni plausible expliqué](id:plausible-deniability-explained).

## Quand il peut aider

Le schéma de contrainte est conçu pour des situations de sécurité personnelle, par exemple :

- **Un partenaire contrôlant ou violent** qui exige de voir tout ce que contient votre téléphone.
- **Un vol ou une menace**, quand quelqu’un vous force à déverrouiller vos apps sur-le-champ.
- **Une surveillance insistante** de la part de quelqu’un qui ne se contentera pas du leurre et reviendra à la charge.

Si vous vivez l’une de ces situations, le guide [que faire si l’on vous force à déverrouiller votre téléphone](id:forced-to-unlock-phone) donne une vue d’ensemble, y compris sur le moment de contacter des services d’aide.

## Les limites, en toute honnêteté

**C’est définitif.** Les coffres supprimés ne peuvent pas être récupérés depuis le téléphone. Les données des coffres sont exclues des sauvegardes iCloud et sur ordinateur ; le seul moyen de les retrouver est donc un fichier de sauvegarde chiffré créé auparavant. Les fichiers de sauvegarde enregistrés en dehors de l’app ne sont pas touchés.

**La mémoire flash a ses limites.** Comme toute app, Velcrypt ne peut pas garantir que les octets supprimés sont physiquement effacés de la mémoire flash. Ce qu’il garantit, c’est que les données des coffres sont chiffrées en AES-256-GCM et que les clés sont supprimées avec les dossiers des coffres : ce qui reste n’est que du texte chiffré illisible.

**Il ne peut rien contre les copies.** Si une photo se trouve encore dans votre photothèque, dans Suppressions récentes, dans Photos iCloud, dans une conversation ou sur le téléphone de quelqu’un d’autre, elle y reste. [Supprimez les originaux après l’import](id:delete-original-photos-after-import).

**Il n’empêche pas l’observation.** Si quelqu’un vous a vu tracer votre vrai schéma ou a filmé l’écran, le schéma de contrainte n’y change rien. Tracez-le à l’abri des regards.

**Votre sécurité passe avant tout.** Certaines personnes peuvent mal réagir si elles soupçonnent que quelque chose a été caché ou supprimé. Un schéma de contrainte est une option, jamais une obligation. Vous êtes la personne la mieux placée pour juger s’il est sûr de l’utiliser.

**Ce n’est pas un moyen de contourner la loi.** Ne l’utilisez jamais pour détruire des preuves ni pour vous opposer à une demande légale de la police, des douanes ou d’un tribunal. Les lois sur la fouille des appareils et la suppression de données varient d’un pays à l’autre, et supprimer des données face à une demande légale peut constituer en soi une infraction. Si une demande légale est en jeu, consultez un avocat. Le [guide sur le passage des frontières](id:phone-privacy-border-crossing) traite des voyages.

## Tarifs

Le schéma de contrainte fait partie de Premium, avec les éléments illimités, des coffres supplémentaires et les icônes d’app alternatives. La sauvegarde chiffrée reste gratuite pour tout le monde. Consultez les [tarifs](id:pricing) pour les formules.
