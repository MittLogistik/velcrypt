---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Configurer un coffre leurre et un schéma de contrainte"
description: "Pas à pas : sauvegardez votre vrai coffre, créez un coffre leurre crédible et un schéma de contrainte dans Velcrypt, puis changez-le ou désactivez-le."
h1: "Configurer un coffre leurre et un schéma de contrainte dans Velcrypt"
navTitle: "Configurer leurre et contrainte"
answer: "Commencez par sauvegarder votre vrai coffre dans Réglages → Sauvegarde. Ensuite, avec Premium, tracez un nouveau schéma pour créer un coffre leurre et remplissez-le de contenu anodin. Depuis le leurre, ouvrez Réglages → Schéma de contrainte, tracez deux fois un schéma distinct et confirmez. Tracer ce schéma sur l’écran de verrouillage ouvrira le leurre et supprimera définitivement tous les autres coffres."
keyFacts:
  - "Commencez par une sauvegarde chiffrée de votre vrai coffre ; c’est le seul moyen de le récupérer après l’utilisation du schéma de contrainte."
  - "Un coffre leurre est un deuxième schéma au contenu anodin et crédible ; il nécessite Premium."
  - "Configurez le schéma de contrainte depuis le leurre, dans Réglages → Schéma de contrainte."
  - "Le schéma de contrainte doit être nouveau : ce ne peut pas être un schéma qui ouvre un coffre."
  - "Ne le testez jamais sur l’écran de verrouillage ; entraînez-vous de tête."
  - "Un seul schéma de contrainte par iPhone ; un nouveau remplace l’ancien, et le désactiver ne supprime rien."
primaryKeyword: "créer un coffre leurre"
keywords: ["configurer schéma de contrainte", "schéma de contrainte velcrypt", "coffre leurre iphone", "faux coffre-fort photo", "configurer code panique coffre-fort"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Sauvegardez d’abord, créez un leurre crédible, puis configurez un schéma de contrainte, avec des conseils pour s’entraîner, le changer et le désactiver."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Configurer un coffre leurre et un schéma de contrainte dans Velcrypt"
  steps:
    - name: "Sauvegardez votre vrai coffre"
      text: "Ouvrez votre vrai coffre, allez dans Réglages → Sauvegarde → Sauvegarder ce coffre, choisissez un mot de passe de sauvegarde d’au moins 8 caractères et enregistrez le fichier .velcrypt en dehors de l’app, par exemple sur iCloud Drive ou sur un ordinateur."
    - name: "Créez un coffre leurre"
      text: "Avec Premium, verrouillez l’app et tracez un nouveau schéma que vous n’avez jamais utilisé. Velcrypt ouvre pour lui un nouveau coffre vide."
    - name: "Rendez le leurre crédible"
      text: "Importez quelques dizaines d’éléments anodins du quotidien, comme des tickets de caisse, des copies de papiers d’identité ou des idées de cadeaux, dans deux ou trois albums."
    - name: "Ouvrez Réglages → Schéma de contrainte dans le leurre"
      text: "Pendant que le coffre leurre est ouvert, allez dans Réglages → Schéma de contrainte et touchez Configurer le schéma de contrainte."
    - name: "Tracez deux fois le schéma de contrainte et confirmez"
      text: "Tracez un schéma distinct qui n’ouvre aucun coffre, tracez-le de nouveau pour confirmer, puis lisez l’avertissement et touchez Activer."
    - name: "Entraînez-vous sans le déclencher"
      text: "Répétez le schéma de contrainte de tête ou sur un papier que vous détruisez ensuite, jamais sur l’écran de verrouillage."
faq:
  - q: "Faut-il Premium pour configurer un coffre leurre et un schéma de contrainte ?"
    a: "Oui. La version gratuite comprend un coffre, et un leurre est un deuxième coffre. Le schéma de contrainte fait lui aussi partie de Premium. Une fois configuré, il continue de fonctionner même si Premium expire."
  - q: "Pourquoi faut-il d’abord une sauvegarde ?"
    a: "Parce que le schéma de contrainte supprime définitivement tous les coffres sauf le leurre, et que les données des coffres ne figurent pas dans les sauvegardes iCloud ou sur ordinateur. Un fichier de sauvegarde chiffré enregistré en dehors de l’app est le seul moyen de récupérer un coffre supprimé."
  - q: "Puis-je tester le schéma de contrainte ?"
    a: "Pas sur l’écran de verrouillage : l’y tracer supprime réellement vos autres coffres. Entraînez-vous plutôt de tête. Vous pouvez vérifier que vous vous en souvenez dans Réglages → Schéma de contrainte → Désactiver le schéma de contrainte, mais le tracer à cet endroit le désactive : il faudrait alors le configurer de nouveau."
  - q: "Puis-je avoir plusieurs schémas de contrainte ?"
    a: "Non. Il n’y a qu’un schéma de contrainte par iPhone. En configurer un nouveau, depuis n’importe quel coffre leurre, remplace l’ancien."
  - q: "Comment récupérer mon vrai coffre après l’utilisation du schéma de contrainte ?"
    a: "Tracez votre vrai schéma, qui ouvre désormais un nouveau coffre vide. Allez ensuite dans Réglages → Sauvegarde → Restaurer à partir d’une sauvegarde, choisissez votre fichier .velcrypt et saisissez son mot de passe de sauvegarde."
---

Ce guide détaille toute la configuration dans Velcrypt : une sauvegarde de votre vrai coffre, un coffre leurre crédible et un [schéma de contrainte](id:duress-pattern) qui ouvre le leurre et supprime en silence tous les autres coffres de l’iPhone. Comptez environ 15 minutes, dont l’essentiel pour rendre le leurre réaliste.

Avant de commencer, un bref rappel de ce que fait le schéma de contrainte. Quand quelqu’un le trace sur l’écran de verrouillage, Velcrypt ouvre le coffre leurre et, au même moment, **supprime définitivement tous les autres coffres de cet iPhone**. Le déverrouillage a la même apparence et la même durée que d’habitude, et rien à l’écran ne montre ce qui s’est passé. C’est tout l’intérêt, et c’est aussi pourquoi la première étape est une sauvegarde.

## Ce qu’il vous faut

- **Velcrypt Premium.** La version gratuite comprend un coffre avec jusqu’à 50 éléments. Un leurre est un deuxième coffre, et le schéma de contrainte est une fonction Premium. Voir les [tarifs](id:pricing).
- **Un endroit sûr pour un fichier de sauvegarde**, en dehors de l’app : iCloud Drive, Fichiers sur un autre appareil, ou un ordinateur.
- **Trois schémas que vous distinguez sans peine :** le vrai, celui du leurre et le schéma de contrainte.

## Étape 1 : sauvegardez votre vrai coffre

Les données des coffres ne figurent pas dans les sauvegardes iCloud ou sur ordinateur. Si le schéma de contrainte est un jour utilisé, le seul moyen de récupérer votre vrai coffre est un fichier de sauvegarde chiffré créé à l’avance.

1. Tracez votre vrai schéma pour ouvrir votre vrai coffre.
2. Allez dans **Réglages → Sauvegarde → Sauvegarder ce coffre**.
3. Choisissez un mot de passe de sauvegarde d’au moins 8 caractères, saisissez-le deux fois et touchez **Créer la sauvegarde**.
4. Touchez **Enregistrer la sauvegarde…** et enregistrez le fichier .velcrypt ailleurs que sur cet iPhone.

Quelques points à savoir :

- **La sauvegarde est gratuite** et concerne le coffre ouvert. Si vous avez plusieurs coffres privés, sauvegardez-les un par un.
- **Le schéma de contrainte ne touche pas aux fichiers de sauvegarde** stockés en dehors de l’app.
- **Gardez le mot de passe de sauvegarde en lieu sûr.** Un mot de passe de sauvegarde oublié ne peut être récupéré ni par vous ni par Velcrypt.
- **Pensez à qui peut accéder au fichier.** Si la personne qui vous inquiète peut ouvrir votre iCloud Drive ou votre ordinateur, choisissez un autre endroit. Le fichier est chiffré, mais son existence montre qu’il y a un coffre à restaurer.

Refaites la sauvegarde de temps en temps : elle ne contient que ce qui se trouvait dans le coffre au moment où vous l’avez créée.

## Étape 2 : créez le coffre leurre

Dans Velcrypt, chaque schéma est son propre coffre, et un schéma que l’app n’a jamais vu ouvre un nouveau coffre vide. Créer un leurre revient donc simplement à tracer un nouveau schéma.

1. Verrouillez l’app.
2. Tracez un nouveau schéma : une ligne continue passant par au moins 6 points de la grille 5×5, avec au moins un changement de direction. Rendez-le nettement différent de votre vrai schéma, par sa forme comme par son point de départ.
3. Velcrypt ouvre un nouveau coffre vide. C’est votre leurre.

La page [déverrouillage par schéma](id:pattern-lock) explique ce qui fait un schéma solide, et le [testeur de robustesse de schéma](id:pattern-strength-checker) gratuit vous aide à comparer des idées. Ne testez jamais vos vrais schémas sur un site web.

## Étape 3 : rendez le leurre crédible

Un coffre vide éveille les soupçons. Un leurre fonctionne quand la personne qui le regarde se dit : « Ah, ce n’est que ça. »

- **Donnez-lui une raison d’exister :** copies de papiers d’identité et de cartes d’assurance, tickets de caisse et garanties, captures de réservations, idées de cadeaux.
- **Importez quelques dizaines de vrais éléments** dans deux ou trois albums.
- **Faites-le vivre.** Ajoutez quelque chose toutes les quelques semaines, pour que l’élément le plus récent ne date pas de plusieurs mois.

Velcrypt vous demande aussi d’ajouter du contenu avant qu’un coffre puisse recevoir un schéma de contrainte, car c’est ce coffre que le schéma de contrainte ouvrira. [Qu’est-ce qu’un coffre leurre ?](id:what-is-a-decoy-vault) donne d’autres idées et explique ce qui trahit un leurre.

## Étape 4 : configurez le schéma de contrainte

Faites-le depuis le coffre leurre. Le schéma de contrainte ouvre toujours le coffre dans lequel il a été configuré.

1. Le coffre leurre ouvert, allez dans **Réglages → Schéma de contrainte**.
2. Lisez les trois courtes explications, puis touchez **Configurer le schéma de contrainte**.
3. **Tracez un schéma de contrainte.** Ce doit être un nouveau schéma qui n’ouvre aucun coffre ; si c’est le cas, Velcrypt vous demande d’en choisir un autre.
4. **Tracez-le de nouveau pour confirmer.**
5. Lisez l’avertissement, « Le tracer sur l’écran de verrouillage ouvre ce coffre et supprime définitivement tous les autres coffres de cet iPhone », et touchez **Activer**.

Si le leurre est le seul coffre de l’iPhone, Velcrypt vous prévient que le schéma de contrainte ne supprimerait rien. Créez d’abord le leurre avec un schéma différent de celui de votre vrai coffre.

### Choisir le schéma de contrainte

- Choisissez-le **facile à tracer sous le stress**, d’un geste fluide et sans hésitation.
- Rendez-le **impossible à confondre avec votre vrai schéma**. Tracer le schéma de contrainte par erreur supprime votre vrai coffre.
- Pensez à lui donner **une difficulté comparable** à celle de votre vrai schéma, pour que le tracer ne paraisse pas différent à quelqu’un qui regarde.

## Étape 5 : entraînez-vous, sans le déclencher

Ne testez jamais le schéma de contrainte sur l’écran de verrouillage. Ce ne serait pas un test : cela supprime réellement vos autres coffres.

Répétez-le plutôt de tête, tracez-le du doigt sur une surface, ou dessinez-le sur un papier que vous détruisez ensuite. Entraînez-vous jusqu’à pouvoir tracer le leurre comme le schéma de contrainte sans réfléchir, même sous le regard de quelqu’un.

## Vivre avec un schéma de contrainte

- **Rien ne montre qu’il est configuré.** Velcrypt n’indique jamais si un schéma de contrainte existe. En coulisses, un enregistrement chiffré de taille fixe existe toujours dans le trousseau iOS, rempli d’octets aléatoires quand aucun n’est configuré.
- **Un seul par iPhone.** Configurer un nouveau schéma de contrainte remplace l’ancien.
- **Pour le désactiver :** allez dans **Réglages → Schéma de contrainte → Désactiver le schéma de contrainte** et tracez-le. Le tracer à cet endroit ne fait que le désactiver ; rien n’est supprimé.
- **Si Premium expire,** le schéma de contrainte continue de fonctionner. Seule sa configuration nécessite Premium.

## Si le schéma de contrainte est un jour utilisé

Vos autres coffres ont disparu de cet iPhone. Pour en restaurer un :

1. Tracez votre vrai schéma. Il ouvre désormais un nouveau coffre vide.
2. Allez dans **Réglages → Sauvegarde → Restaurer à partir d’une sauvegarde**.
3. Choisissez votre fichier .velcrypt et saisissez son mot de passe de sauvegarde.

Ne le faites que lorsque vous êtes en sécurité. Si la personne qui vous a forcé à déverrouiller le téléphone est encore là, restaurer le coffre tout de suite pourrait annuler la raison pour laquelle vous avez utilisé le schéma de contrainte.

## Les limites à garder en tête

- **Les copies hors de Velcrypt restent.** Supprimez les originaux de Photos et de Suppressions récentes après l’import ; voir [supprimer les originaux après l’import](id:delete-original-photos-after-import).
- **La mémoire flash ne garantit pas d’effacement physique.** Les données des coffres sont chiffrées en AES-256-GCM et les clés sont supprimées avec les dossiers des coffres : ce qui reste est illisible.
- **Il n’arrête pas quelqu’un qui vous a vu tracer votre vrai schéma.**
- **C’est un outil de sécurité personnelle.** Ne l’utilisez jamais pour détruire des preuves ni pour vous opposer à une demande légale de la police, des douanes ou d’un tribunal. Les lois varient d’un pays à l’autre, et supprimer des données face à une demande légale peut constituer en soi une infraction ; si cela vous concerne, consultez un avocat.

Si vous configurez tout cela à cause d’une personne en particulier, [que faire si l’on vous force à déverrouiller votre téléphone](id:forced-to-unlock-phone) aborde la sécurité de façon plus large. Si vous craignez d’oublier un schéma, lisez d’abord [schéma de coffre oublié](id:forgot-vault-pattern).
