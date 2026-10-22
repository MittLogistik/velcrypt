---
pageId: self-destruct-photo-vault
title: "Coffre-fort photo à autodestruction sur iPhone"
description: "Comment fonctionne un coffre-fort photo qui s’autodétruit sur iPhone : effacement après échecs ou schéma de contrainte, risques et sauvegardes."
h1: "Coffre-fort photo à autodestruction sur iPhone : fonctionnement et contreparties"
navTitle: "Coffre-fort à autodestruction"
answer: "Un coffre-fort photo à autodestruction supprime son contenu quand un déclencheur est atteint : trop de tentatives erronées ou un code de contrainte. Le premier peut être déclenché par n’importe qui, le second par vous seul. Velcrypt utilise un schéma de contrainte qui ouvre un coffre leurre et supprime définitivement tous les autres coffres. C’est irréversible : gardez une sauvegarde."
keyFacts:
  - "Les fonctions d’autodestruction suppriment le contenu du coffre quand un déclencheur est atteint ; c’est irréversible."
  - "L’effacement après échecs peut être déclenché par quiconque se trompe, y compris un enfant ou un agresseur."
  - "Un code de contrainte n’est déclenché que volontairement, par vous, et peut rester silencieux."
  - "L’iPhone lui-même peut tout effacer après 10 échecs de saisie du code, si vous activez l’option."
  - "Le schéma de contrainte de Velcrypt ouvre un coffre leurre et supprime définitivement tous les autres coffres (Premium)."
  - "Un fichier de sauvegarde chiffré créé auparavant est le seul moyen de récupérer les données après une autodestruction."
primaryKeyword: "coffre-fort photo autodestruction iphone"
keywords: ["coffre-fort photo qui s’autodétruit", "app coffre autodestruction", "coffre-fort photo effacement après tentatives", "suppression automatique coffre-fort photo", "effacer photos en urgence iphone", "code panique coffre-fort"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Effacement après échecs ou schéma de contrainte, le vrai coût d’une suppression irréversible, et comment garder une sauvegarde sûre avant tout."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Existe-t-il un coffre-fort photo pour iPhone qui s’autodétruit ?"
    a: "Oui. Certaines apps de coffre-fort effacent leur contenu après un certain nombre de tentatives erronées, et d’autres proposent un code de contrainte ou code panique. Velcrypt a un schéma de contrainte (Premium) qui ouvre un coffre leurre et supprime définitivement tous les autres coffres de l’iPhone."
  - q: "Velcrypt supprime-t-il les coffres après trop de schémas erronés ?"
    a: "Non. Dans Velcrypt, un schéma inconnu ouvre simplement un nouveau coffre vide : il n’y a donc aucune « tentative erronée » à compter. La suppression n’a lieu que lorsque quelqu’un trace le schéma de contrainte que vous avez configuré."
  - q: "Puis-je récupérer mes photos après l’autodestruction d’un coffre ?"
    a: "Pas depuis le téléphone. Dans Velcrypt, le seul moyen est un fichier de sauvegarde chiffré créé auparavant dans Réglages → Sauvegarde et stocké en dehors de l’app. Le schéma de contrainte ne touche pas aux fichiers de sauvegarde enregistrés ailleurs."
  - q: "Une fonction d’autodestruction équivaut-elle à un effacement sécurisé ?"
    a: "Pas exactement. La mémoire flash ne garantit pas que les octets supprimés sont physiquement effacés. Dans Velcrypt, les données des coffres sont chiffrées en AES-256-GCM et les clés sont supprimées avec les coffres : ce qui reste n’est que du texte chiffré illisible."
  - q: "Puis-je utiliser un coffre à autodestruction si la police demande à voir mon téléphone ?"
    a: "Non. N’utilisez aucune fonction de suppression pour détruire des preuves ou vous opposer à une demande légale. Les lois varient d’un pays à l’autre, et supprimer des données face à une demande légale peut constituer en soi une infraction. Consultez plutôt un avocat."
---

« Un coffre qui s’autodétruit » : cela ressemble à la protection ultime. Parfois, c’en est une. Mais une fonction d’autodestruction est aussi la seule fonction d’une app de coffre-fort qui peut tout vous faire perdre en une seconde. Ce guide explique comment fonctionnent les approches courantes, ce que chacune fait bien ou mal, et comment en utiliser une sans perdre des fichiers que vous vouliez garder.

## Ce que signifie « autodestruction » pour un coffre-fort photo

Une fonction d’autodestruction supprime tout ou partie du contenu d’un coffre quand un déclencheur est atteint. Sur iPhone, on en rencontre surtout trois types :

1. **Effacement après échecs :** après un nombre donné de codes PIN ou de mots de passe erronés, l’app supprime son contenu.
2. **Code de contrainte ou code panique :** un code spécial qui, une fois saisi, ouvre un contenu anodin et supprime le reste. [Le mot de passe de contrainte expliqué](id:duress-password-explained) donne le contexte.
3. **Effacement de l’appareil :** iOS peut effacer tout l’iPhone après 10 échecs de saisie du code (Réglages › Face ID et code › Effacer les données), et Localiser peut effacer à distance un téléphone perdu.

Ces approches répondent à des problèmes différents, et elles échouent de manières différentes.

## L’effacement après échecs

L’idée est simple : si quelqu’un continue de deviner, tout supprimer avant qu’il ne tombe juste.

**Ce qu’il fait bien**

- Il fonctionne même en votre absence, par exemple si votre téléphone est volé.
- Il impose une limite stricte aux tentatives sur les codes PIN courts.

**Ses faiblesses**

- **N’importe qui peut le déclencher.** Un enfant qui joue avec votre téléphone, un ami qui veut faire une blague ou un agresseur qui préfère détruire vos fichiers plutôt que d’abandonner peuvent le déclencher, exprès ou par accident.
- **Il se voit.** Après un effacement, le coffre est manifestement vide ou réinitialisé, ce qui indique à la personne qu’il s’est passé quelque chose.
- **Il protège contre les tentatives, pas contre la contrainte.** Si quelqu’un vous force à saisir le bon code, le compteur d’échecs n’entre jamais en jeu.

Il vaut aussi la peine de vérifier comment l’app compte les tentatives : le compteur survit-il à un redémarrage de l’app, et supprime-t-elle vraiment les données ou se contente-t-elle de vous bloquer ?

## Codes de contrainte et schémas de contrainte

Un code de contrainte est déclenché volontairement, par vous, en général quand quelqu’un vous force à déverrouiller l’app. Les meilleures mises en œuvre ouvrent un leurre crédible et suppriment en silence le contenu sensible qui se trouve derrière.

**Ce qu’il fait bien**

- **Vous seul pouvez le déclencher.** Personne ne le déclenche en devinant.
- **Il peut rester silencieux.** Bien conçu, rien à l’écran ne montre qu’une suppression a eu lieu.
- **Il est conçu pour la contrainte**, précisément la situation qu’un compteur d’échecs ne sait pas gérer.

**Ses faiblesses**

- **Encore faut-il pouvoir l’utiliser.** Si quelqu’un prend le téléphone alors qu’il est déjà déverrouillé, ou vous regarde tracer votre vrai secret, il n’aide pas.
- **Il faut s’en souvenir sous le stress**, sans le confondre avec votre vrai secret.
- **Il est tout aussi irréversible** que n’importe quel autre effacement.

## Comment fait Velcrypt

Velcrypt n’a volontairement **aucun effacement après échecs**. Chaque schéma tracé sur la grille 5×5 ouvre son propre coffre, et un schéma inconnu de l’app ouvre simplement un nouveau coffre vide, sans message d’erreur. Il n’y a pas de « mauvais schéma » à compter : c’est ce qui rend les [coffres cachés](id:hidden-vaults) niables, et cela signifie aussi que personne ne peut effacer vos coffres simplement en se trompant.

À la place, Velcrypt propose un [schéma de contrainte](id:duress-pattern), inclus dans Premium :

- Vous le configurez dans Réglages → Schéma de contrainte, depuis un [coffre leurre](id:what-is-a-decoy-vault) au contenu anodin.
- Vous tracez deux fois un schéma distinct et vous confirmez. Ce ne peut pas être un schéma qui ouvre déjà un coffre.
- Sur l’écran de verrouillage, le tracer ouvre le coffre leurre et supprime en silence, définitivement, tous les autres coffres de cet iPhone. Le déverrouillage a la même apparence et la même durée que d’habitude.
- L’app n’indique jamais si un schéma de contrainte est configuré. Il n’y en a qu’un par iPhone ; un nouveau remplace l’ancien. Pour le désactiver, il faut le tracer, et cela ne supprime rien.
- Il continue de fonctionner si Premium expire ; seule sa configuration nécessite Premium.
- Si vous le configurez dans le seul coffre du téléphone, il n’y a rien d’autre à supprimer, et l’app vous en avertit.

## Les approches comparées

| | Effacement après échecs | Code ou schéma de contrainte | « Effacer les données » de l’iPhone |
|---|---|---|---|
| Qui peut le déclencher | Quiconque se trompe assez de fois | Seulement quelqu’un qui connaît le secret de contrainte | Quiconque se trompe 10 fois de code |
| Conçu pour | Les tentatives, le vol | Le déverrouillage sous la contrainte | Les tentatives, le vol |
| Visible ensuite | En général | Peut rester silencieux | Oui, le téléphone est réinitialisé |
| Ce qui est supprimé | Le contenu de l’app | Selon l’app ; dans Velcrypt, tous les coffres sauf le leurre | Tout le contenu de l’iPhone |
| Réversible | Seulement depuis une sauvegarde | Seulement depuis une sauvegarde | Seulement depuis une sauvegarde |

## La contrepartie inévitable : c’est définitif

Toute fonction d’autodestruction échange la possibilité de récupérer vos données contre de la protection. Avant d’en activer une, soyez honnête avec vous-même sur trois points.

### Il vous faut une sauvegarde ailleurs

Les coffres Velcrypt sont exclus des sauvegardes iCloud et sur ordinateur : un coffre supprimé disparaît du téléphone. Le seul moyen de le retrouver est un **fichier de sauvegarde chiffré créé auparavant**. Dans Velcrypt, Réglages → Sauvegarde crée un fichier .velcrypt pour le coffre ouvert, protégé par un mot de passe de sauvegarde que vous choisissez. C’est gratuit. Enregistrez-le en dehors de l’app, par exemple dans Fichiers, sur iCloud Drive ou sur un ordinateur, et le schéma de contrainte n’y touchera pas. Gardez aussi le mot de passe de sauvegarde en lieu sûr : un mot de passe de sauvegarde oublié ne peut pas être récupéré. La [page sécurité](id:security#encrypted-backup) explique comment les sauvegardes sont protégées.

### Supprimé ne veut pas toujours dire physiquement effacé

La mémoire flash ne garantit pas que les octets supprimés sont physiquement effacés sur-le-champ. Ce qui vous protège, c’est le chiffrement : les données des coffres Velcrypt sont chiffrées en AES-256-GCM, et les clés sont supprimées avec les dossiers des coffres, si bien que ce qui reste n’est que du texte chiffré sans clé. Méfiez-vous de toute app qui promet davantage.

### Il ne supprime que ce qui est dans l’app

Les originaux encore présents dans Photos, dans Suppressions récentes, dans iCloud, dans des conversations ou sur un autre appareil ne sont pas concernés. [Supprimez les originaux après l’import](id:delete-original-photos-after-import).

## À utiliser de façon responsable

Une fonction d’autodestruction est un outil de sécurité personnelle et de confidentialité. Ne l’utilisez jamais pour détruire des preuves ni pour contourner une demande légale de la police, des douanes ou d’un tribunal. Les lois varient d’un pays à l’autre, et supprimer des données face à une demande légale peut constituer en soi une infraction. Si vous êtes dans cette situation, ou si vous vous y attendez, consultez un avocat.

## Faut-il choisir un coffre à autodestruction ?

Choisissez-en un si être forcé à déverrouiller votre coffre est un risque réaliste pour vous et si vous préférez perdre les fichiers plutôt que de les voir exposés. Passez votre chemin, ou attendez d’avoir une sauvegarde, si les fichiers sont irremplaçables.

Quelle que soit l’app choisie, vérifiez comment sa fonction d’autodestruction se déclenche, si elle est visible et ce qu’elle supprime vraiment. Notre [liste de vérification pour les coffres-forts photo](id:are-photo-vault-apps-safe) vous y aide. Si vous choisissez Velcrypt, [configurer un coffre leurre et un schéma de contrainte](id:set-up-decoy-vault-and-duress-pattern) détaille la configuration, sauvegarde en premier, et les [tarifs](id:pricing) présentent les formules Premium.
