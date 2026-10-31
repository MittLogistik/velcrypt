---
pageId: duress-password-explained
title: "Mot de passe de contrainte : sens, mots codes et code PIN"
description: "Ce que signifie un mot de passe de contrainte, les mots codes, les codes d’alarme, le mythe du code inversé et ce qu’offrent iPhone et Android."
h1: "Mot de passe de contrainte, code panique et schéma de contrainte : le guide"
navTitle: "Mot de passe de contrainte"
answer: "Un mot de passe de contrainte (ou code panique, code de détresse) est un second secret que vous n’utilisez que si l’on vous force à déverrouiller quelque chose. Il ressemble à un déverrouillage normal, mais déclenche discrètement une protection, comme une alarme silencieuse ou la suppression de données. Dans Velcrypt, le schéma de contrainte ouvre un coffre leurre et supprime définitivement les autres coffres."
keyFacts:
  - "Un mot de passe de contrainte ressemble à un déverrouillage normal mais déclenche une action de protection cachée."
  - "L’idée vient des alarmes et des banques, où un code de contrainte déclenche une alarme silencieuse."
  - "Sur téléphone, un code de contrainte ouvre en général un contenu anodin et supprime ou verrouille le reste."
  - "Dans Velcrypt, le schéma de contrainte ouvre un coffre leurre et supprime définitivement tous les autres coffres."
  - "La suppression est irréversible ; seul un fichier de sauvegarde créé auparavant permet de récupérer les données."
  - "C’est un outil de sécurité personnelle, jamais un moyen de détruire des preuves ou de contourner une injonction légale."
  - "L’iPhone n’a pas de code de contrainte intégré, la plupart des Android non plus ; GrapheneOS propose un code PIN de contrainte qui efface le téléphone."
primaryKeyword: "mot de passe de contrainte"
keywords: ["code panique", "code de contrainte", "code de détresse", "mot de passe panique", "mot de passe de contrainte définition", "mot code de détresse", "exemples de mots codes de détresse", "code de contrainte alarme", "code pin à l’envers distributeur", "empreinte de contrainte", "code pin de contrainte téléphone", "code de contrainte android", "grapheneos code de contrainte", "schéma de contrainte"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "Mots de passe, mots codes et codes PIN de contrainte : ce qu’offrent iPhone et Android, et le fonctionnement du schéma de contrainte de Velcrypt."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "Qu’est-ce qu’un mot de passe de contrainte ?"
    a: "C’est un secret que vous n’utilisez que sous la contrainte. Pour la personne qui regarde, le saisir ressemble à un déverrouillage normal, mais cela déclenche aussi une action de protection en arrière-plan : une alarme silencieuse, l’ouverture d’un contenu leurre ou la suppression de données sensibles."
  - q: "Un code panique, est-ce la même chose qu’un code de contrainte ?"
    a: "Oui, dans l’usage courant, les termes désignent la même chose. On parle plutôt de « code de contrainte » pour les alarmes, et de « code panique » ou de « code PIN de contrainte » pour les apps et les appareils. Velcrypt utilise un schéma plutôt qu’un code PIN : sa version s’appelle donc le schéma de contrainte."
  - q: "Taper son code de carte bancaire à l’envers au distributeur prévient-il la police ?"
    a: "Non. Cette histoire de « code inversé » est une légende tenace. Des banques ont étudié et même breveté des idées de ce genre, mais les distributeurs ne fonctionnent généralement pas ainsi. N’y comptez pas."
  - q: "Qu’est-ce qu’un mot code de détresse ?"
    a: "C’est un mot ou une phrase d’apparence banale, convenu à l’avance, qui signale à quelqu’un que vous êtes en difficulté sans que la personne qui vous met la pression le remarque. Des lieux de travail, des bars (comme le dispositif britannique « Ask for Angela ») et des familles en utilisent, chacun avec une réaction convenue."
  - q: "L’iPhone ou Android ont-ils un code PIN de contrainte intégré ?"
    a: "L’iPhone n’a pas de code de contrainte. Maintenir le bouton latéral et un bouton de volume désactive seulement Face ID jusqu’à la saisie du code. La plupart des Android n’en ont pas non plus, même si le mode verrouillage désactive la biométrie. GrapheneOS propose un code PIN de contrainte qui efface tout le téléphone."
  - q: "Que fait le schéma de contrainte de Velcrypt ?"
    a: "Le tracer sur l’écran de verrouillage ouvre le coffre leurre dans lequel vous l’avez configuré et, au même moment, supprime en silence et définitivement tous les autres coffres de cet iPhone. Le déverrouillage a la même apparence et la même durée que d’habitude."
  - q: "Puis-je utiliser un mot de passe de contrainte quand la police ou les douanes demandent l’accès ?"
    a: "Vous ne devriez pas l’utiliser pour supprimer des données dans cette situation. Les lois varient d’un pays à l’autre, et supprimer des données en réponse à une demande légale peut constituer en soi une infraction, par exemple une destruction de preuves ou une entrave à la justice. Consultez plutôt un avocat."
---

La plupart des mesures de sécurité servent à tenir les inconnus à distance. Un mot de passe de contrainte vise un autre moment : quand quelqu’un se tient à côté de vous et vous oblige à le laisser entrer. Ce guide explique ce que sont les mots de passe de contrainte, d’où vient l’idée, comment fonctionnent les mots codes de détresse, ce qu’offrent l’iPhone et Android, comment les apps pour téléphone l’utilisent et comment fonctionne le schéma de contrainte de Velcrypt, limites comprises.

## Qu’est-ce qu’un mot de passe de contrainte ?

Un **mot de passe de contrainte** est un second secret que vous n’utilisez que lorsqu’on vous force la main. Pour la personne qui regarde, le saisir ressemble exactement à un déverrouillage normal. En coulisses, il fait quelque chose de plus pour vous protéger, vous ou vos données.

La même idée porte plusieurs noms :

- **Code de contrainte**, le terme habituel pour les systèmes d’alarme et les sites sécurisés.
- **Code panique** ou **mot de passe panique**, fréquent dans les apps.
- **Code PIN de contrainte**, **code de détresse** ou **schéma de contrainte**, selon la façon dont l’appareil se déverrouille.

Sa caractéristique essentielle : la réaction est **silencieuse**. Si la saisie du code déclenchait une sirène, un message d’avertissement ou un changement visible, elle vous mettrait davantage en danger, car la personne qui vous contraint saurait que vous avez résisté.

## D’où vient l’idée

### Les systèmes d’alarme

De nombreuses centrales d’alarme, pour la maison comme pour les entreprises, acceptent un code de contrainte. Vous le saisissez sur le clavier et l’alarme se désactive comme d’habitude : un intrus qui vous a forcé à la couper ne remarque rien. Au même moment, la centrale prévient discrètement le centre de télésurveillance que vous êtes en difficulté.

Les codes de contrainte des alarmes ne fonctionnent en général qu’avec une télésurveillance professionnelle, et en saisir un déclenche une vraie intervention d’urgence, même pour un test. Les fournisseurs d’alarmes et la police préviennent aussi qu’un code trop proche du code habituel provoque de fausses alertes : choisissez-en un que vous ne pouvez pas confondre.

### Les banques et les sites sécurisés

Le personnel des banques dispose depuis longtemps d’alarmes silencieuses et de signaux de contrainte : un bouton, un mot convenu ou un code qui alerte la sécurité sans alerter le braqueur. Le but est le même qu’avec les alarmes : obéir en apparence, appeler à l’aide en dessous.

Vous avez peut-être entendu dire que taper son code de carte bancaire à l’envers au distributeur prévient la police. C’est une légende. L’idée remonte à un brevet des années 1990 pour un « code PIN d’urgence », mais un rapport de 2010 des services de la Federal Trade Commission américaine (FTC) a constaté qu’aucun système de ce type n’avait jamais été déployé dans les distributeurs, et les vérificateurs de faits ont démenti la rumeur à maintes reprises. Si l’on vous agresse au distributeur, donnez ce qu’on vous demande si cela vous protège, puis appelez la police et votre banque.

### Les logiciels de chiffrement

Les outils de chiffrement de disque ont introduit une idée voisine : un second mot de passe qui ouvre un volume extérieur crédible, tandis qu’un volume caché reste hors de vue. Ce n’est pas un code de contrainte au sens strict, puisque rien n’est déclenché, mais l’objectif est le même : faire de la « concession partielle » une option sûre. [Le déni plausible expliqué](id:plausible-deniability-explained) retrace cette histoire.

## Mots codes de détresse : la version parlée

Un **mot code de détresse** est un mot de passe de contrainte que l’on prononce au lieu de le taper : un mot ou une phrase d’apparence banale, convenu à l’avance, qui veut dire « ça ne va pas, mais je ne peux pas le dire ». Quiconque l’entend par hasard n’entend qu’une conversation ordinaire. La personne qui connaît le code entend un appel à l’aide, et sait déjà quoi faire.

Où on les utilise :

- **Lieux de travail et équipes de sécurité.** Banques, commerces, hôpitaux et agents de sécurité conviennent souvent d’une phrase qu’on peut dire au téléphone ou à la radio devant un agresseur, pour qu’un collègue appelle à l’aide sans que personne ne le remarque.
- **Dispositifs de sécurité publique.** Au Royaume-Uni, de nombreux bars et lieux de sortie participent à « Ask for Angela » : une personne qui ne se sent pas en sécurité pendant un rendez-vous ou une soirée demande « Angela » au personnel, et un personnel formé l’aide discrètement, par exemple en appelant un taxi. Ce code est public à dessein, pour que les établissements puissent l’afficher. Des dispositifs inspirés de celui-ci existent dans d’autres pays.
- **Familles et amis.** Certaines familles conviennent d’un mot qu’un enfant ou un proche peut écrire ou dire au téléphone pour signifier « viens me chercher » ou « appelle à l’aide » sans avoir à s’expliquer. Beaucoup de familles utilisent aussi désormais un *mot de sécurité* pour vérifier qu’un appel affolé vient vraiment d’un proche et non d’un escroc qui clone les voix. C’est un mot de vérification plutôt qu’un code de contrainte, mais les mêmes règles s’appliquent.

Exemples du *type* de phrase qui fonctionne (inventez la vôtre plutôt que de les copier) :

- demander une personne qui n’existe pas, comme « Angela travaille ce soir ? » ;
- une question sur un animal, un proche ou une corvée dont votre interlocuteur sait qu’elle est fausse ;
- un détail inhabituel dans une phrase normale, comme une couleur ou un plat que vous ne mentionnez jamais.

Un bon mot code de détresse sonne naturel dans la conversation où vous l’utiliseriez, ne surgit jamais par hasard, s’accompagne d’une réaction convenue (qui appelle qui, et ce qui se passe ensuite) et se répète de temps en temps pour que personne ne l’oublie. Gardez-le pour vous : un code publié en ligne, ou connu de la personne qui vous fait peur, ne fonctionne plus.

## Codes PIN de contrainte sur téléphone : ce qu’offrent l’iPhone et Android

Les personnes qui cherchent un « code de contrainte pour téléphone », un « code PIN de contrainte » ou une « empreinte de contrainte » veulent en général savoir si leur téléphone en intègre un. La réponse courte : l’iPhone non, et la plupart des Android non plus.

### iPhone

- **Pas de code de contrainte.** iOS n’a pas de second code qui ouvre un leurre, envoie une alerte ou efface le téléphone.
- **SOS d’urgence désactive Face ID.** Maintenir enfoncés le bouton latéral et l’un des boutons de volume pendant environ deux secondes ouvre l’écran d’extinction et de SOS d’urgence. <!-- TODO verify iOS label --> Dès lors, Face ID et Touch ID restent désactivés jusqu’à la saisie du code : personne ne peut déverrouiller le téléphone en le tenant devant votre visage. Touchez Annuler si vous ne voulez pas appeler ; selon vos réglages, maintenir plus longtemps peut lancer un appel d’urgence. [Que faire si l’on vous force à déverrouiller votre téléphone](id:forced-to-unlock-phone) détaille ce geste.
- **Effacer les données n’est pas un code de contrainte.** L’option Effacer les données, dans Réglages → Face ID et code <!-- TODO verify iOS label -->, efface l’iPhone après 10 saisies de code erronées. Elle protège contre les tentatives au hasard, pas contre quelqu’un qui se tient à côté de vous et exige le code.
- **Les fonctions de contrainte vivent dans les apps.** Comme iOS n’a pas de code PIN de contrainte à l’échelle du système, toute fonction de contrainte sur iPhone appartient à une seule app et n’atteint que ses données. Le schéma de contrainte de Velcrypt, plus bas, en est un exemple.

### Android

- **Mode verrouillage.** Depuis Android 9, de nombreux téléphones proposent un mode verrouillage (« Lockdown ») dans le menu de mise hors tension ; sur certaines marques, il faut d’abord l’activer dans les réglages. <!-- TODO verify: Android label and Samsung One UI changes --> Il verrouille le téléphone et désactive le déverrouillage par empreinte et par visage jusqu’à la saisie du code PIN, du schéma ou du mot de passe.
- **Pas de code PIN de contrainte dans Android standard.** Android tel que livré par Google, Samsung et la plupart des autres fabricants n’intègre pas de code PIN de contrainte. <!-- TODO verify -->
- **Code PIN de contrainte de GrapheneOS.** GrapheneOS, un système d’exploitation axé sur la sécurité pour les Google Pixel compatibles, propose un code PIN et un mot de passe de contrainte. Saisir l’un ou l’autre à n’importe quel endroit où le téléphone demande ses identifiants efface tout l’appareil, eSIM comprises, immédiatement et de façon irréversible. Les données sont protégées, mais il est évident ensuite que le téléphone a été réinitialisé.
- **Apps tierces.** Quelques apps Android open source, comme Duress et Wasted sur F-Droid, surveillent la saisie d’un mot de passe de contrainte sur l’écran de verrouillage, puis verrouillent ou effacent le téléphone grâce aux autorisations d’accessibilité et d’administrateur de l’appareil. Leur fiabilité dépend du téléphone et de la version d’Android. <!-- TODO verify -->

### Ce que signifie « empreinte de contrainte »

Une **empreinte de contrainte** est un doigt précis enregistré comme alarme silencieuse. Certains systèmes biométriques de contrôle d’accès le permettent : vous scannez ce doigt, la porte s’ouvre normalement et une alarme de contrainte part vers la sécurité. Les téléphones grand public ne proposent pas cette option. <!-- TODO verify --> Sur un téléphone, la biométrie est plutôt le point faible sous la contrainte, car quelqu’un peut tenir le téléphone devant votre visage ou presser votre doigt sur le capteur. D’où l’intérêt de pouvoir désactiver Face ID rapidement, et la raison pour laquelle Velcrypt [n’a pas de déverrouillage par Face ID, à dessein](id:pattern-lock-vs-pin-vs-face-id).

## Comment les apps pour téléphone mettent en œuvre les codes de contrainte

Sur un téléphone, il n’y a en général pas de centre de télésurveillance à prévenir : les codes de contrainte protègent donc plutôt les données. Les approches courantes sont les suivantes :

1. **Ouvrir un contenu anodin.** Le code de contrainte ouvre un leurre : un second espace d’apparence ordinaire. C’est proche d’un [coffre leurre](id:what-is-a-decoy-vault), et à lui seul, il ne supprime rien.
2. **Ouvrir un contenu anodin et supprimer le reste.** Le code de contrainte ouvre le leurre et, au même moment, efface les données sensibles. C’est la forme la plus forte, et elle est irréversible.
3. **Tout effacer.** Certains systèmes axés sur la sécurité proposent un code PIN de contrainte qui efface tout l’appareil ou toute l’app. Les données sont protégées, mais il devient évident qu’il s’est passé quelque chose.

Ce qui distingue une bonne mise en œuvre d’une mauvaise tient surtout à **ce qui est observable** :

- Le déverrouillage a-t-il la même apparence et la même durée qu’un déverrouillage normal ?
- Un réglage, un badge ou un fichier révèle-t-il qu’un code de contrainte est configuré ?
- Quelque chose change-t-il à l’écran ensuite ?

Si l’une de ces réponses trahit le code, une situation déjà tendue peut s’aggraver.

## Comment fonctionne le schéma de contrainte de Velcrypt

Velcrypt se déverrouille avec un schéma tracé sur une grille 5×5, et chaque schéma ouvre son propre coffre. Son [schéma de contrainte](id:duress-pattern) est une fonction Premium fondée sur ce modèle :

- **Vous le configurez depuis un coffre leurre**, dans Réglages → Schéma de contrainte. Un leurre est un deuxième coffre au contenu anodin et crédible. Les coffres au-delà du premier nécessitent Premium.
- **Vous tracez deux fois un schéma distinct et vous confirmez.** Ce ne peut pas être un schéma qui ouvre déjà un coffre.
- **Sur l’écran de verrouillage, tracer le schéma de contrainte ouvre le leurre** et supprime en silence, définitivement, tous les autres coffres de cet iPhone.
- **Rien à l’écran ne montre ce qui s’est passé.** Le déverrouillage a la même apparence et la même durée que d’habitude.
- **L’app n’indique jamais si un schéma de contrainte est configuré.** Un enregistrement chiffré de taille fixe existe toujours dans le trousseau iOS ; sans schéma de contrainte, il contient des octets aléatoires.
- **Un seul par iPhone.** Configurer un nouveau schéma de contrainte remplace l’ancien. Pour le désactiver, il faut le tracer, et le désactiver ne supprime rien.
- **Il continue de fonctionner si Premium expire.** Seule sa configuration nécessite Premium.

Si vous le configurez dans le seul coffre du téléphone, il n’y a rien d’autre à supprimer, et Velcrypt vous en avertit.

## Les limites, en toute honnêteté

### La suppression est définitive

Les coffres supprimés ne peuvent pas être récupérés depuis le téléphone. Les données des coffres sont exclues des sauvegardes iCloud et sur ordinateur ; le seul moyen de les retrouver est donc un fichier de sauvegarde chiffré créé auparavant dans Réglages → Sauvegarde. La sauvegarde est gratuite, et le schéma de contrainte ne touche pas aux fichiers de sauvegarde stockés en dehors de l’app. La [page sécurité](id:security#encrypted-backup) explique comment les sauvegardes sont protégées.

### Supprimé ne veut pas dire physiquement effacé

La mémoire flash ne garantit pas que les octets supprimés sont physiquement effacés sur-le-champ. Velcrypt s’appuie sur le fait que les données des coffres sont chiffrées en AES-256-GCM et que les clés sont supprimées avec les dossiers des coffres : ce qui reste n’est que du texte chiffré sans clé.

### Il n’atteint que les coffres de Velcrypt

Les copies dans votre photothèque, dans Suppressions récentes, dans iCloud, dans des conversations ou sur le téléphone de quelqu’un d’autre ne sont pas touchées. [Supprimez les originaux après l’import](id:delete-original-photos-after-import).

### Il ne peut pas effacer ce qui a été vu

Si quelqu’un vous a vu tracer votre vrai schéma, ou vous a filmé, un schéma de contrainte ne change rien à ce que cette personne sait.

## Responsabilité : ce à quoi un mot de passe de contrainte ne sert pas

Un mot de passe de contrainte est un outil de sécurité personnelle. Il est conçu pour des moments comme un vol, une menace ou un partenaire contrôlant qui exige de voir votre téléphone.

Ce n’est **pas** un moyen de détruire des preuves ni de contourner une demande légale de la police, des douanes ou d’un tribunal. Les lois varient d’un pays à l’autre, et supprimer des données en réponse à une demande légale peut constituer en soi une infraction, par exemple une destruction de preuves ou une entrave à une enquête. Si vous faites face à une demande légale, ou si vous vous y attendez, demandez conseil à un avocat. Le [guide sur le passage des frontières](id:phone-privacy-border-crossing) traite spécifiquement des voyages.

## Faut-il en utiliser un ?

Un schéma de contrainte a du sens si vous pouvez imaginer qu’on vous presse de déverrouiller vos coffres et si vous préférez perdre ces fichiers plutôt que de les voir exposés. Il en a moins si les fichiers sont irremplaçables et que vous n’avez pas de sauvegarde, ou si vous risquez, sous le stress, de ne plus savoir quel schéma fait quoi.

Si vous décidez d’en utiliser un, commencez par une sauvegarde, construisez un leurre crédible et lisez [comment configurer un coffre leurre et un schéma de contrainte](id:set-up-decoy-vault-and-duress-pattern). Si vous y pensez à cause d’une personne en particulier, [que faire si l’on vous force à déverrouiller votre téléphone](id:forced-to-unlock-phone) aborde la sécurité de façon plus large. Les formules Premium figurent sur la [page des tarifs](id:pricing).
