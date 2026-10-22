---
pageId: duress-pattern
title: "Schéma de contrainte (prévu) : vos coffres sous pression"
description: "Le schéma de contrainte est une fonction prévue pour une prochaine mise à jour : un schéma ouvrira un coffre choisi et supprimera l’accès aux autres."
h1: "Schéma de contrainte (fonction prévue)"
navTitle: "Schéma de contrainte (prévu)"
answer: "Le schéma de contrainte est une fonction prévue pour une prochaine mise à jour de Velcrypt ; elle ne fait pas encore partie de l’app. Il s’agira de définir un schéma spécial qui ouvre le coffre de votre choix et supprime silencieusement l’accès à vos autres coffres, pour les moments où l’on vous force à déverrouiller l’app."
keyFacts:
  - "Statut : prévu pour une prochaine mise à jour, sans date. Pas encore dans l’app."
  - "Un schéma spécial ouvrira un coffre choisi à l’avance."
  - "En même temps, il supprimera silencieusement l’accès aux autres coffres."
  - "Il ne peut rien contre les copies qui existent en dehors de Velcrypt."
  - "C’est un outil de confidentialité, pas un conseil juridique ni un moyen de contourner une injonction légale."
primaryKeyword: "code de contrainte coffre-fort photo"
keywords: ["code de panique iphone", "mot de passe de contrainte", "schéma de panique coffre-fort photo", "déverrouillage sous contrainte", "coffre autodestructeur", "code de détresse app"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Prévu : un schéma spécial qui ouvrira un coffre choisi et supprimera en silence l’accès aux autres."
status: coming-soon
schemaType: WebPage
order: 3
related: [hidden-vaults, pattern-lock, what-is-a-decoy-vault, plausible-deniability-explained, phone-privacy-border-crossing]
faq:
  - q: "Le schéma de contrainte est-il déjà disponible dans Velcrypt ?"
    a: "Non. C’est une fonction prévue pour une prochaine mise à jour, sans date annoncée. En attendant, vous pouvez utiliser les coffres cachés et un coffre leurre, qui existent déjà avec Premium."
  - q: "Que se passera-t-il quand quelqu’un saisira le code de contrainte ?"
    a: "Le principe prévu : il ouvre un coffre que vous avez choisi à l’avance et, en même temps, supprime silencieusement l’accès à vos autres coffres. Rien à l’écran n’indiquera qu’il s’est passé autre chose."
  - q: "Le schéma de contrainte peut-il effacer des photos déjà partagées ?"
    a: "Non. Il n’agit que sur le contenu de Velcrypt sur ce téléphone. Les copies dans votre photothèque, dans iCloud, dans des conversations, des e-mails ou sur l’appareil d’une autre personne restent hors de sa portée."
  - q: "Est-il légal d’utiliser un code de contrainte ?"
    a: "Cela dépend du pays et de la situation. Supprimer des données pendant l’inspection légale d’un appareil par les autorités peut constituer une infraction dans certains pays. Velcrypt ne peut pas donner de conseil juridique ; si c’est important pour vous, consultez un avocat."
---

Parfois, le risque n’est pas un téléphone volé, mais une personne en face de vous qui exige que vous ouvriez l’app. Le schéma de contrainte est la réponse prévue par Velcrypt pour ce moment-là. Il n’est pas encore disponible : c’est une **fonction prévue** pour une prochaine mise à jour, et cette page décrit ce qu’elle est conçue pour faire.

## Ce que fera le schéma de contrainte

Un schéma de contrainte est un schéma de déverrouillage spécial, destiné à être utilisé quand on vous met sous pression ou qu’on vous y oblige. Dans Velcrypt, il est prévu de fonctionner ainsi :

1. À l’avance, vous définissez un schéma de contrainte et choisissez le coffre qu’il doit ouvrir, en général un [coffre leurre](id:what-is-a-decoy-vault) au contenu ordinaire.
2. Si l’on vous force un jour à déverrouiller l’app, vous tracez le schéma de contrainte au lieu du vrai.
3. Velcrypt ouvre le coffre choisi, normalement.
4. En arrière-plan, l’app supprime silencieusement l’accès à vos autres coffres sur cet appareil.

Vu de l’extérieur, rien d’inhabituel ne se produit. Pas d’alerte, pas d’animation, aucun message indiquant que quelque chose a été supprimé.

## Comment il complète les coffres cachés

Velcrypt vous offre déjà des [coffres cachés](id:hidden-vaults) (plusieurs coffres font partie de Premium) : chaque schéma ouvre son propre coffre, il n’y a pas de liste de coffres, et un schéma inconnu ouvre un coffre vide sans erreur. Il est donc déjà difficile pour quelqu’un de prouver que d’autres coffres existent.

Le schéma de contrainte ajoute une seconde couche. Un leurre suppose que l’autre personne vous croie. Le schéma de contrainte est pensé pour les situations où cela pourrait ne pas suffire, par exemple si vous vous attendez à être questionné à plusieurs reprises ou à devoir livrer votre vrai schéma plus tard. Une fois utilisé, les autres coffres ne sont plus accessibles sur ce téléphone. L’idée commune aux deux fonctions est expliquée dans [le déni plausible expliqué](id:plausible-deniability-explained).

## Quand cela peut compter

On anticipe rarement la contrainte, mais certaines situations la rendent plus probable :

- **Une relation abusive ou contrôlante**, où un partenaire exige de voir tout le contenu de votre téléphone.
- **Les journalistes et chercheurs** qui transportent des éléments susceptibles d’exposer leurs sources.
- **Les voyages dans des pays aux contrôles d’appareils intrusifs**, abordés dans [protéger son téléphone au passage de la frontière](id:phone-privacy-border-crossing).
- **Un vol ou une agression**, où quelqu’un vous force à tout déverrouiller sur-le-champ.

Dans chaque cas, l’objectif est le même : vous permettre d’obtempérer en apparence tout en gardant vos fichiers les plus sensibles hors d’atteinte.

## Des limites honnêtes

Un schéma de contrainte est un outil puissant, avec des limites tout aussi réelles. Mieux vaut les connaître maintenant que les découvrir plus tard.

**Il ne peut pas effacer les copies.** Il agit uniquement sur les coffres de Velcrypt sur cet appareil. Si une photo se trouve encore dans votre photothèque, dans « Suppressions récentes », dans Photos iCloud, dans une conversation ou sur le téléphone de quelqu’un d’autre, elle y reste. Faites le ménage dans les originaux après l’import ; le guide [supprimer les originaux après l’import](id:delete-original-photos-after-import) explique comment.

**Considérez-le comme définitif.** Les données des coffres ne sont incluses ni dans les sauvegardes iCloud ni dans les sauvegardes sur ordinateur : partez du principe qu’un accès supprimé sur le téléphone ne peut pas y être rétabli. Gardez aussi à l’esprit qu’une sauvegarde chiffrée que vous avez créée existe en dehors de l’app et n’est pas concernée. Ne l’utilisez que si vous acceptez réellement de perdre ces fichiers.

**Il n’empêche pas l’observation.** Si quelqu’un vous a vu tracer votre vrai schéma, ou a filmé l’écran, le schéma de contrainte ne change rien à ce qu’il a vu.

**La contrainte est imprévisible.** Certaines personnes peuvent mal réagir si elles soupçonnent que quelque chose a été caché ou supprimé. Votre sécurité physique compte plus que n’importe quel fichier. Un schéma de contrainte est une option, pas une obligation, et vous êtes le mieux placé pour juger s’il est sûr de l’utiliser.

**Ce n’est pas un conseil juridique.** Les lois sur la fouille des appareils, le déverrouillage forcé et la destruction de données varient selon les pays et les situations. Dans certains endroits, supprimer des données lors d’un contrôle officiel peut constituer en soi une infraction. Velcrypt ne peut pas vous dire ce qui est légal là où vous êtes ; si les enjeux sont importants, consultez un avocat avant de voyager ou d’agir.

## En attendant

Vous pouvez déjà vous préparer avec les fonctions existantes. Avec Premium, créez un coffre leurre crédible, choisissez un [schéma](id:pattern-lock) solide pour votre vrai coffre et gardez les originaux sensibles hors de votre pellicule. Le jour où le schéma de contrainte arrivera, il s’intégrera à cette configuration.
