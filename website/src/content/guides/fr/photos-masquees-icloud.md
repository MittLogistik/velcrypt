---
pageId: are-hidden-photos-saved-to-icloud
title: "Photos masquées et iCloud : sont-elles synchronisées ?"
description: "Avec Photos iCloud activé, les photos masquées se synchronisent comme les autres. Chiffrement selon le réglage, sauvegarde iCloud et solutions."
h1: "Les photos masquées sont-elles enregistrées dans iCloud ?"
navTitle: "Photos masquées et iCloud"
answer: "Oui. Si Photos iCloud est activé, les photos et vidéos masquées sont envoyées dans iCloud et synchronisées sur tous vos appareils, comme le reste de votre photothèque. Avec Photos iCloud désactivé, elles peuvent encore se retrouver dans la sauvegarde iCloud. Elles ne sont chiffrées de bout en bout dans iCloud que si la Protection avancée des données est activée."
keyFacts:
  - "Masquer une photo ne l’exclut pas de Photos iCloud : les éléments masqués se synchronisent sur chaque appareil du même compte Apple."
  - "Si Photos iCloud est désactivé mais la sauvegarde iCloud activée, votre photothèque, éléments masqués compris, fait partie de la sauvegarde."
  - "Avec la Protection standard des données, Apple détient les clés de chiffrement de Photos et de la sauvegarde iCloud."
  - "Avec la Protection avancée des données, Photos et la sauvegarde iCloud sont chiffrés de bout en bout."
  - "Le seul moyen de garder une photo totalement hors d’iCloud est de la stocker dans un endroit ni synchronisé ni sauvegardé."
primaryKeyword: "photos masquées icloud"
keywords:
  - "les photos masquées vont-elles dans icloud"
  - "album masqué icloud"
  - "photos masquées sauvegarde icloud"
  - "garder des photos hors d’icloud"
  - "photos masquées sur icloud.com"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Les photos masquées passent par Photos iCloud et peuvent finir dans la sauvegarde iCloud. Chiffrement et solutions pour garder une photo hors d’iCloud."
category: apple
order: 11
related:
  - is-iphone-hidden-album-private
  - icloud-advanced-data-protection-explained
  - offline-no-account
  - delete-original-photos-after-import
  - family-shared-icloud
faq:
  - q: "Si je masque une photo, est-elle quand même envoyée dans iCloud ?"
    a: "Oui. Masquer change uniquement l’endroit où la photo apparaît dans l’app Photos. Avec Photos iCloud activé, une photo masquée est envoyée et synchronisée sur vos autres appareils exactement comme une photo non masquée."
  - q: "Peut-on voir les photos masquées sur iCloud.com ?"
    a: "Elles font partie de votre photothèque iCloud : on peut donc y accéder depuis un navigateur connecté à votre compte Apple, dans la section Masqués de Photos. Si la Protection avancée des données est activée, l’accès web à vos données iCloud est désactivé, sauf si vous choisissez de l’autoriser."
  - q: "Les photos masquées sont-elles incluses dans la sauvegarde iCloud ?"
    a: "Seulement si Photos iCloud est désactivé. Dans ce cas, la photothèque est stockée sur l’appareil et incluse dans la sauvegarde iCloud. Quand Photos iCloud est activé, la photothèque est synchronisée à part et n’est pas dupliquée dans la sauvegarde."
  - q: "Apple peut-elle voir mes photos masquées dans iCloud ?"
    a: "Avec la Protection standard des données, réglage par défaut, Photos est chiffré mais Apple détient les clés : elle est donc techniquement capable de le déchiffrer. Avec la Protection avancée des données activée, Photos est chiffré de bout en bout et Apple ne peut pas le lire."
  - q: "Comment garder une photo hors d’iCloud sans désactiver Photos iCloud ?"
    a: "Photos iCloud ne permet pas d’exclure une photo en particulier. Il faut la déplacer vers un endroit ni synchronisé ni sauvegardé, comme un coffre-fort chiffré sur l’appareil, puis la supprimer de Photos et de Suppressions récentes."
---

Beaucoup de gens masquent une photo en pensant qu’elle reste aussi sur le téléphone. Ce n’est pas le cas. Sur iPhone, « masqué » décrit la façon dont l’app Photos affiche un élément, pas l’endroit où il est stocké. Ce guide explique comment les photos masquées circulent dans iCloud, ce qui les y protège, et ce que vous pouvez faire si vous voulez qu’une photo reste strictement sur votre appareil.

## En bref : masquer ne change rien à la synchronisation

Photos iCloud est la fonction qui maintient une seule photothèque synchronisée entre votre iPhone, votre iPad, votre Mac et le web. Elle traite de la même façon les éléments masqués et non masqués. Quand vous masquez une photo sur votre iPhone :

- elle est quand même envoyée dans iCloud si Photos iCloud est activé ;
- elle apparaît dans l’album Masqués de vos autres appareils connectés au même compte Apple ;
- elle reste masquée partout, car l’indicateur « masqué » se synchronise aussi ;
- si vous la supprimez, elle passe dans Suppressions récentes sur tous les appareils et disparaît d’iCloud au bout d’environ 30 jours.

Pour vérifier si Photos iCloud est activé, allez dans Réglages › [votre nom] › iCloud › Photos et cherchez l’interrupteur **Synchroniser cet iPhone** (les versions plus anciennes l’appellent **Photos iCloud**).

<!-- TODO verify iOS label -->

## Comment les photos masquées sont protégées dans iCloud

Apple propose deux niveaux de sécurité iCloud. Celui que vous utilisez change réellement qui pourrait techniquement lire vos photos masquées.

| | Protection standard des données (par défaut) | Protection avancée des données (à activer) |
| --- | --- | --- |
| Photos chiffrées en transit et sur les serveurs | Oui | Oui |
| Qui détient les clés de Photos | Apple | Uniquement vos appareils de confiance |
| Apple peut déchiffrer Photos | Techniquement oui | Non |
| Sauvegarde iCloud chiffrée de bout en bout | Non | Oui |
| Récupération en cas de perte d’accès | Apple peut aider | Uniquement votre contact de récupération ou votre clé de secours |
| Accès web sur iCloud.com | Activé par défaut | Désactivé sauf si vous l’autorisez |

Le chiffrement de bout en bout signifie que les données sont chiffrées sur votre appareil avec des clés que seuls vos appareils détiennent, si bien que le service qui les stocke ne peut pas les lire. Avec la Protection standard des données, Photos est chiffré mais pas de bout en bout, car Apple conserve les clés pour vous aider à récupérer votre compte. Pour une vue complète, lisez [la Protection avancée des données iCloud expliquée](id:icloud-advanced-data-protection-explained).

## Les photos masquées sur iCloud.com

Comme les éléments masqués font partie de votre photothèque iCloud, on peut y accéder depuis un navigateur connecté à votre compte Apple. Ils se trouvent dans une section Masqués de Photos plutôt que dans la vue principale. Apple a ajouté des étapes supplémentaires pour révéler le contenu masqué à divers endroits, mais l’hypothèse la plus prudente est simple : toute personne capable de se connecter à votre compte Apple peut potentiellement voir votre album Masqués.

La sécurité du compte fait donc partie de la confidentialité de vos photos. Utilisez un mot de passe de compte Apple unique, gardez l’identification à deux facteurs activée, et passez en revue les appareils connectés à votre compte dans Réglages › [votre nom], en retirant ceux que vous ne reconnaissez pas.

## Ce qui se passe quand Photos iCloud est désactivé

Désactiver Photos iCloud ne signifie pas automatiquement que rien n’arrive dans iCloud. Si la **sauvegarde iCloud** est activée, votre iPhone sauvegarde sa photothèque dans le cadre de la sauvegarde nocturne, éléments masqués compris. La sauvegarde est stockée sur les serveurs d’Apple, chiffrée, et avec la Protection standard des données, Apple détient aussi ces clés.

Vous pouvez voir ce qui se passe dans Réglages › [votre nom] › iCloud › Sauvegarde iCloud. Si vous voulez exclure les photos de la sauvegarde tout en gardant la sauvegarde iCloud, cherchez la liste des apps sauvegardées et désactivez Photos. La disposition exacte de cet écran a changé selon les versions d’iOS : cherchez une liste par app dans les réglages de sauvegarde.

<!-- TODO verify iOS label -->

Les sauvegardes sur ordinateur sont une troisième voie. Une sauvegarde faite avec le Finder sur Mac, ou avec Appareils Apple/iTunes sous Windows, contient aussi votre photothèque, sauf si Photos iCloud est activé. Chiffrer ces sauvegardes locales avec un mot de passe est de toute façon une bonne idée.

## Photothèques partagées et albums partagés

Deux fonctions peuvent faire sortir une photo de votre espace personnel sans que vous y pensiez comme à un « envoi » :

- **La Photothèque partagée iCloud** place les photos choisies dans une photothèque que jusqu’à cinq autres personnes peuvent voir et modifier. Si une photo se trouve dans la Photothèque partagée, les autres participants la voient. Ne masquez des photos privées qu’après vous être assuré qu’elles sont dans votre Photothèque personnelle. Notre [guide iCloud en famille](id:family-shared-icloud) aborde ce point.
- **Les albums partagés** sont une fonction distincte et, selon Apple, ne sont pas couverts par la Protection avancée des données. Considérez que tout ce que vous y ajoutez est visible par tous les membres de l’album.

## Comment garder une photo hors d’iCloud

Photos iCloud fonctionne en tout ou rien pour chaque appareil : aucun interrupteur ne permet d’exclure une seule image. Si vous voulez garder Photos iCloud pour vos photos du quotidien tout en tenant quelques photos totalement à l’écart des serveurs d’Apple, vous avez trois options réalistes.

### Option 1 : désactiver Photos iCloud sur cet iPhone

Cela arrête les nouveaux envois, mais aussi la synchronisation de tout le reste, et les éléments existants restent dans iCloud jusqu’à ce que vous les y supprimiez. Il faut aussi vérifier la sauvegarde iCloud comme décrit plus haut. Pour la plupart des gens, c’est trop radical.

### Option 2 : garder la photo dans une app qui ne synchronise pas

Certaines apps stockent les fichiers uniquement dans leur propre espace sur l’appareil et les excluent des sauvegardes. Velcrypt est conçu ainsi : les photos, vidéos et documents importés sont chiffrés sur l’iPhone et, dans la première version, exclus des sauvegardes iCloud et sur ordinateur. Pas de compte, rien n’est envoyé ([sur l’appareil, sans compte](id:offline-no-account)).

La contrepartie, en toute honnêteté : si la photo n’existe que dans un tel coffre et que vous perdez le téléphone ou oubliez votre schéma, il n’existe aucune copie à restaurer. Une option de sauvegarde chiffrée est prévue pour Velcrypt, mais elle ne fait pas partie de la première version.

### Option 3 : supprimer correctement la copie iCloud

Quelle que soit l’app dans laquelle vous déplacez une photo, l’original reste dans Photos tant que vous ne le retirez pas et, avec Photos iCloud activé, il est toujours dans iCloud. Pour faire le ménage :

1. Supprimez la photo d’origine dans l’app Photos (elle disparaît de tous les appareils synchronisés).
2. Ouvrez **Suppressions récentes** dans Utilitaires et supprimez-la aussi, sinon elle y reste environ 30 jours.
3. Si vous aviez partagé la photo dans Messages, une messagerie ou un album partagé, supprimez-la là aussi ; ces copies sont distinctes.

Notre guide pas à pas pour [supprimer les originaux après l’import dans un coffre](id:delete-original-photos-after-import) détaille tout cela, y compris ce qu’il faut vérifier sur un Mac.

## Guide de décision rapide

- **Vous voulez seulement sortir des photos de la grille de la pellicule :** l’album Masqués convient. Voir [l’album Masqués est-il privé ?](id:is-iphone-hidden-album-private)
- **iCloud vous convient, mais vous voulez qu’Apple ne puisse pas lire vos données :** activez la Protection avancée des données, si elle est disponible dans votre région.
- **Vous voulez qu’une photo ne touche jamais iCloud :** placez-la dans un espace chiffré sur l’appareil, supprimez l’original, videz Suppressions récentes et acceptez d’être responsable de ne pas la perdre.
