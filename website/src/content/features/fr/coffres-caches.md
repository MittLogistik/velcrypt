---
pageId: hidden-vaults
title: "Coffres cachés : chaque schéma ouvre son propre coffre"
description: "Dans Velcrypt, chaque schéma est un coffre distinct. Aucune liste de coffres, et un schéma inconnu ouvre un coffre vide sans erreur. Explications."
h1: "Coffres cachés : un schéma, un coffre, aucune liste"
navTitle: "Coffres cachés"
answer: "Dans Velcrypt, chaque schéma ouvre son propre coffre chiffré. Il n’existe aucune liste de coffres, et un schéma que l’app n’a jamais vu ouvre simplement un coffre vide, sans message d’erreur : rien à l’écran ne prouve que d’autres coffres existent."
keyFacts:
  - "Chaque schéma correspond à un coffre distinct, avec sa propre clé de chiffrement."
  - "Velcrypt n’affiche jamais de liste de coffres."
  - "Un schéma inconnu ouvre un coffre vide, sans message d’erreur."
  - "Vous pouvez garder un coffre leurre au contenu ordinaire."
  - "La version gratuite comprend un coffre ; les coffres supplémentaires font partie de Premium."
primaryKeyword: "coffre-fort caché iphone"
keywords: ["app coffre-fort photo plusieurs coffres", "coffre leurre iphone", "app coffre secret", "déni plausible coffre-fort photo", "deuxième coffre caché", "cacher un coffre-fort photo"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Chaque schéma est un coffre à part. Pas de liste, pas d’erreur pour un schéma inconnu, et la possibilité d’un coffre leurre crédible."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "Comment voir tous mes coffres dans Velcrypt ?"
    a: "C’est impossible, et c’est voulu. Velcrypt n’a pas de liste de coffres. Le seul moyen d’ouvrir un coffre est de tracer son schéma : notez donc vous-même mentalement quels schémas vous utilisez."
  - q: "Que se passe-t-il si je trace un mauvais schéma ?"
    a: "Velcrypt ouvre un coffre vide pour ce schéma au lieu d’afficher une erreur. Si vous y ajoutiez des fichiers, ce schéma deviendrait un nouveau coffre. Si vous attendiez vos photos et ne voyez rien, vous avez probablement tracé un schéma légèrement différent."
  - q: "Peut-on savoir que j’ai plusieurs coffres cachés ?"
    a: "Pas à partir de l’interface de l’app. Aucune liste, aucun compteur, aucun message d’erreur ne révèle d’autres coffres. Velcrypt ne peut toutefois pas cacher que l’app elle-même est installée, ni empêcher quelqu’un de vous regarder tracer un schéma."
  - q: "Qu’est-ce qu’un coffre leurre ?"
    a: "Un coffre leurre est un coffre au contenu ordinaire et crédible, que vous pouvez ouvrir si l’on vous presse de montrer ce que contient l’app. Votre vrai coffre reste derrière un autre schéma."
howTo:
  name: "Créer un deuxième coffre caché dans Velcrypt"
  steps:
    - name: "Verrouillez Velcrypt"
      text: "Quittez le coffre dans lequel vous êtes pour faire apparaître la grille de schéma."
    - name: "Tracez un nouveau schéma"
      text: "Tracez un schéma jamais utilisé, avec au moins 6 points et au moins un changement de direction. Un coffre vide s’ouvre."
    - name: "Ajoutez du contenu"
      text: "Importez une photo, une vidéo ou un document dans le coffre vide pour commencer à l’utiliser."
    - name: "Entraînez-vous"
      text: "Verrouillez et déverrouillez plusieurs fois pour retenir quel schéma correspond à quel coffre."
---

La plupart des apps coffre-fort n’ont qu’un mot de passe et une seule zone verrouillée : il suffit de demander « quel est le mot de passe ? » pour tout révéler. Velcrypt fonctionne autrement : le schéma que vous tracez ne se contente pas de déverrouiller l’app, il détermine quel coffre apparaît. C’est cette idée simple qui rend les coffres cachés possibles.

## Chaque schéma est un coffre à part entière

Un coffre caché est un coffre dont l’existence ne peut pas être confirmée de l’extérieur. Dans Velcrypt, chaque schéma valide sur la [grille 5×5](id:pattern-lock) correspond à un coffre distinct, avec sa propre clé maîtresse aléatoire et ses propres fichiers. Le schéma A affiche les photos rangées derrière le schéma A. Le schéma B affiche un ensemble totalement différent.

Aucun écran de réglages ne les énumère, aucun menu « changer de coffre » n’existe et aucun chiffre n’indique combien il y en a. De l’intérieur de l’app, chaque coffre semble être le seul.

## Aucune erreur pour un schéma inconnu

Quand vous tracez un schéma que Velcrypt n’a jamais vu, l’app n’affiche pas « schéma incorrect ». Elle ouvre un coffre vide. Ce comportement est le cœur de la fonctionnalité :

- **Rien à compter.** Aucun compteur de tentatives ni message d’échec ne confirme qu’un « vrai » schéma existe ailleurs.
- **Rien à comparer.** Un coffre vide ressemble exactement à un coffre que vous venez de créer.
- **Rien à prouver.** Quelqu’un qui regarde l’app ne peut pas savoir si vous avez un coffre ou plusieurs.

C’est une forme de [déni plausible](id:plausible-deniability-explained) : la possibilité d’affirmer de façon crédible que ce que vous avez montré est tout ce qu’il y a, parce que le logiciel ne fournit aucune preuve du contraire.

Il y a aussi une conséquence pratique. Si vous vous trompez de schéma, vous arriverez dans un coffre vide au lieu de voir une erreur. Si vos photos semblent avoir disparu, verrouillez l’app et retracez votre schéma, calmement.

## Comment créer un deuxième coffre

La version gratuite comprend un coffre. Pour donner à d’autres schémas leurs propres coffres, il faut Premium.

1. **Verrouillez Velcrypt.** Quittez le coffre dans lequel vous êtes pour faire apparaître la grille.
2. **Tracez un nouveau schéma.** Choisissez-en un jamais utilisé, en respectant les règles habituelles : au moins 6 points et au moins un changement de direction.
3. **Ajoutez quelque chose.** Un coffre vide s’ouvre. Importez une photo, une vidéo ou un document pour commencer à l’utiliser.
4. **Entraînez-vous.** Verrouillez et déverrouillez plusieurs fois pour retenir précisément quel schéma correspond à quel coffre.

## Utiliser un coffre leurre

Un coffre leurre est un coffre rempli de contenu anodin mais crédible, par exemple des tickets de caisse, des captures d’écran ou des photos de vacances. Si quelqu’un insiste pour voir ce que contient Velcrypt, vous pouvez ouvrir le leurre, qui se comporte comme n’importe quel autre coffre.

Un leurre fonctionne mieux quand il a l’air utilisé. Un coffre vide appelle la question « pourquoi installer une app coffre-fort pour rien ? », alors qu’un coffre contenant quelques dizaines d’éléments ordinaires la suscite rarement. Le guide [qu’est-ce qu’un coffre leurre](id:what-is-a-decoy-vault) explique comment le rendre convaincant.

Avec Premium, vous pouvez aussi configurer un [schéma de contrainte](id:duress-pattern) dans le leurre. Il va un cran plus loin : le tracer ouvre le leurre et supprime en silence, définitivement, tous les autres coffres de l’iPhone. Le guide [configurer un coffre leurre et un schéma de contrainte](id:set-up-decoy-vault-and-duress-pattern) vous accompagne pas à pas.

## Comment chaque coffre reste séparé

La séparation ne consiste pas seulement à cacher des dossiers. Chaque coffre possède sa propre clé maîtresse aléatoire de 256 bits, déverrouillée par une clé dérivée du schéma de ce coffre. Les fichiers d’un coffre sont chiffrés avec des clés qui n’appartiennent qu’à lui : ouvrir un coffre ne donne donc aucun accès à un autre. La page [chiffrement](id:encryption) détaille toute la chaîne de clés.

## Ce que les coffres cachés peuvent faire, et ce qu’ils ne peuvent pas faire

Les coffres cachés rendent difficile de prouver qu’il existe davantage de contenu. Ils ne vous rendent pas invisible :

- L’icône Velcrypt est visible sur l’écran d’accueil. Depuis iOS 18, vous pouvez masquer des apps dans un dossier protégé par Face ID, mais c’est une fonction d’iOS, pas de Velcrypt.
- Quelqu’un qui vous regarde tracer votre vrai schéma peut ouvrir votre vrai coffre.
- Les copies d’un fichier qui existent encore ailleurs, par exemple dans Photos, dans « Suppressions récentes », dans iCloud ou dans une conversation, échappent à la protection du coffre.
- Le déni dépend du contexte. C’est une propriété technique de l’app, pas une garantie juridique.

Pour des situations comme un passage de frontière ou la remise de votre téléphone, lisez [protéger son téléphone au passage de la frontière](id:phone-privacy-border-crossing) avant de vous reposer sur une seule fonctionnalité.
