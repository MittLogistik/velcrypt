---
pageId: what-is-a-decoy-vault
title: "Coffre-fort leurre : définition et mode d’emploi crédible"
description: "Un coffre leurre est un second coffre anodin à ouvrir sous la pression. Son fonctionnement, comment le rendre crédible dans Velcrypt et ses limites."
h1: "Qu’est-ce qu’un coffre leurre, et comment le rendre crédible ?"
navTitle: "Qu’est-ce qu’un coffre leurre ?"
answer: "Un coffre leurre est un second coffre, ouvert avec un autre secret, qui contient un contenu anodin mais plausible. Si quelqu’un vous pousse à ouvrir votre coffre, vous pouvez ouvrir le leurre à la place. Dans Velcrypt, chaque nouveau schéma ouvre son propre coffre : un leurre est donc simplement un second schéma que vous remplissez de photos et de documents ordinaires."
keyFacts:
  - "Un coffre leurre est un vrai coffre fonctionnel, rempli d’un contenu sans enjeu que vous acceptez de montrer."
  - "Dans Velcrypt, chaque schéma est son propre coffre et aucune liste de coffres ne trahit les autres."
  - "Un leurre vide éveille les soupçons ; un leurre vivant, avec des albums et des éléments récents, convainc."
  - "Un leurre protège contre la curiosité et une pression ponctuelle, pas contre une analyse forensique ou quelqu’un qui vous a vu tracer le schéma."
  - "Un leurre nécessite un deuxième coffre, donc Premium ; avec Premium, un schéma de contrainte peut aussi supprimer tous les autres coffres."
primaryKeyword: "coffre-fort leurre"
keywords: ["qu’est-ce qu’un coffre leurre", "mot de passe leurre coffre-fort photo", "faux coffre-fort app", "schéma leurre", "second coffre iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Ce qu’est un coffre leurre, comment en créer un qui semble vivant avec un second schéma Velcrypt, et les limites à connaître."
category: security
order: 41
related: [hidden-vaults, plausible-deniability-explained, duress-pattern, set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, pattern-lock-vs-pin-vs-face-id, partner-scrolling-camera-roll, phone-privacy-border-crossing]
howTo:
  name: "Créer un coffre leurre dans Velcrypt"
  steps:
    - name: "Choisir un second schéma"
      text: "Choisissez un nouveau schéma d’au moins 6 points avec au moins un changement de direction, nettement différent de votre vrai schéma par sa forme et son point de départ."
    - name: "Le tracer sur l’écran de déverrouillage"
      text: "Velcrypt ouvre un nouveau coffre vide pour tout schéma qu’il n’a jamais vu. Aucun réglage supplémentaire n’est nécessaire."
    - name: "Lui trouver une raison crédible"
      text: "Choisissez une raison du quotidien pour ce coffre : copies de pièces d’identité, tickets de caisse, captures de réservations ou idées de cadeaux."
    - name: "Ajouter un contenu réel et sans enjeu"
      text: "Importez quelques dizaines d’éléments ordinaires dans deux ou trois albums pour que le coffre ait l’air vivant."
    - name: "L’entretenir et s’entraîner"
      text: "Ajoutez quelque chose toutes les quelques semaines et entraînez-vous à tracer le schéma leurre avec aisance, sans hésiter."
faq:
  - q: "Qu’est-ce qu’un mot de passe leurre dans une app coffre-fort photo ?"
    a: "Un mot de passe leurre (ou code PIN, ou schéma leurre) est un second secret qui ouvre un ensemble de contenus distinct et anodin. Il vous permet de sembler obtempérer à une demande d’ouvrir l’app sans révéler ce que vous gardez réellement privé."
  - q: "Comment créer un coffre leurre dans Velcrypt ?"
    a: "Tracez un second schéma que vous n’avez jamais utilisé. Velcrypt ouvre un nouveau coffre vide pour lui. Ajoutez un contenu crédible du quotidien, comme des tickets, des captures d’écran et des photos ordinaires : ce schéma ouvre désormais votre leurre."
  - q: "Peut-on savoir qu’un coffre est un leurre ?"
    a: "Pas depuis l’app : Velcrypt ne tient aucune liste de coffres et ne laisse rien deviner de l’existence d’autres coffres. Ce qui peut trahir un leurre, c’est son contenu, par exemple s’il est vide, figé ou visiblement mis en scène."
  - q: "Un coffre leurre est-il la même chose qu’un schéma de contrainte ?"
    a: "Non. Un leurre ouvre simplement un autre coffre et laisse les autres intacts. Un schéma de contrainte, disponible avec Velcrypt Premium, ouvre le coffre leurre et supprime en même temps, en silence et définitivement, tous les autres coffres de l’iPhone."
  - q: "Faut-il utiliser un coffre leurre face à la police ou aux douaniers ?"
    a: "Ce guide ne peut pas donner de conseil juridique. Tromper des agents publics peut constituer une infraction dans de nombreux pays. Un leurre sert surtout contre la curiosité du quotidien et les pressions informelles ; dans un cadre officiel, renseignez-vous sur vos droits et consultez un avocat."
---

Imaginez que quelqu’un s’empare de votre téléphone, repère une app de coffre-fort et vous dise : « Ouvre-la. » Refuser peut aggraver les choses, et répondre « il n’y a rien dedans » clôt rarement la discussion. Un coffre leurre vous offre une troisième option : ouvrir quelque chose de bien réel qui n’est simplement pas ce que vous protégez.

## Qu’est-ce qu’un coffre leurre

Un coffre leurre est un coffre pleinement fonctionnel, protégé par son propre secret, que vous remplissez d’un contenu que cela ne vous dérange pas de montrer. Il cohabite avec votre vrai coffre, et rien à l’écran n’indique à la personne lequel elle regarde.

L’idée est ancienne. Les coffres-forts ont des compartiments de « diversion » depuis des générations, et les outils de chiffrement proposent des volumes cachés depuis des années (voir [le déni plausible expliqué](id:plausible-deniability-explained)). Sur téléphone, la forme la plus courante est un code PIN leurre dans une app de coffre-fort photo.

Ce qui fait fonctionner un leurre, ce n’est pas la technologie mais l’histoire. Un leurre réussit quand la personne qui le regarde conclut : « Ah, ce n’est que ça », et passe à autre chose.

## Comment fonctionnent les leurres dans Velcrypt

La plupart des apps traitent le leurre comme un réglage spécial : un vrai code PIN, un faux. Velcrypt adopte une approche plus simple. Chaque schéma est son propre coffre :

- Il n’existe aucune liste de coffres dans l’app.
- Un schéma que Velcrypt n’a jamais vu ouvre un nouveau coffre vide.
- Il n’y a pas de message d’erreur « mauvais schéma », et rien ne prouve que d’autres coffres existent.

Dans Velcrypt, un coffre leurre n’est donc pas une fonction à activer. C’est simplement un second schéma que vous décidez d’utiliser comme leurre. Votre vrai coffre et votre leurre ont exactement la même apparence et le même comportement, car ils sont de même nature. La page sur les [coffres cachés](id:hidden-vaults) détaille le modèle.

## Créer un leurre crédible, étape par étape

1. **Choisissez un second schéma.** Il doit respecter les règles habituelles (une ligne continue passant par au moins 6 points de la grille de 5×5, au moins un changement de direction). Rendez-le facile à retrouver sous le stress, mais différent de votre vrai schéma par sa forme et son point de départ.
2. **Tracez-le sur l’écran de déverrouillage.** Velcrypt ouvre un coffre vide pour lui. Rien d’autre à configurer.
3. **Donnez-lui une raison d’exister.** Demandez-vous pourquoi une personne comme vous utiliserait plausiblement un coffre. Réponses courantes et crédibles : copies de pièces d’identité et de documents d’assurance, tickets et garanties, captures de réservations, idées de cadeaux, une surprise que vous préparez.
4. **Remplissez-le d’un vrai contenu.** Importez quelques dizaines d’éléments répartis dans deux ou trois [albums](id:albums), par exemple « Documents », « Tickets » et « Idées cadeaux ». Utilisez de vrais éléments sans enjeu plutôt que des images de banque d’images au hasard.
5. **Faites-le vivre.** Ajoutez quelque chose toutes les quelques semaines. Un leurre dont l’élément le plus récent date d’un an a l’air abandonné, ce qui appelle la question : « Et les trucs récents, tu les mets où ? »
6. **Entraînez-vous aux deux schémas.** Vous devez pouvoir tracer le leurre sans hésiter, sous le regard de quelqu’un, sans commencer par erreur votre vrai schéma.

### Ce qui rend un leurre peu convaincant

- **Il est vide.** Un coffre vide laisse penser que vous avez ouvert le mauvais exprès.
- **Il est trop innocent.** Dix photos de couchers de soleil dans une app de coffre-fort, c’est étrange. Un contenu modérément privé, comme des scans de pièces d’identité, paraît plus naturel.
- **La taille ne colle pas à l’histoire.** Si vous dites que le coffre contient « quelques documents » alors que l’app occupe manifestement beaucoup d’espace dans les Réglages de l’iPhone, une personne attentive peut le remarquer. Velcrypt ne cache pas qu’il stocke des données chiffrées sur l’appareil.
- **Vous hésitez.** Une longue pause avant de tracer éveille davantage les soupçons que n’importe quel détail de l’app.

## Les limites d’un leurre

Un coffre leurre est un outil social appuyé sur une bonne cryptographie. Ce n’est pas de la magie, et il vaut mieux savoir où il s’arrête.

- **Quelqu’un qui vous a vu tracer votre vrai schéma** peut ouvrir votre vrai coffre. Le leurre n’y peut alors plus rien.
- **Une analyse forensique** d’un appareil saisi peut montrer que l’app contient plus de données chiffrées que le leurre n’en explique. Elle ne peut pas lire ces données sans le schéma, mais peut en conclure qu’il en existe davantage.
- **Vos originaux ailleurs.** Si les photos privées sont encore dans votre photothèque, dans iCloud ou dans une conversation, le leurre ne protège rien. Voir [supprimer les originaux après l’import](id:delete-original-photos-after-import).
- **Une contrainte persistante.** Un leurre désamorce un moment. Ce n’est pas une solution face à une situation de violence qui dure ; si c’est votre cas, n’hésitez pas à contacter les services d’aide locaux.
- **Le cadre légal.** Tromper des agents publics peut constituer une infraction dans de nombreux pays. Réfléchissez bien avant d’utiliser un leurre face aux autorités, et consultez le [guide sur le passage des frontières](id:phone-privacy-border-crossing).

## Coffre leurre ou schéma de contrainte

Un leurre ouvre un autre coffre et laisse tout le reste intact. Un **schéma de contrainte** va un cran plus loin : il ouvre votre leurre et, au même moment, supprime en silence et définitivement tous les autres coffres de l’iPhone. Dans Velcrypt, le [schéma de contrainte](id:duress-pattern) fait partie de Premium et se configure depuis le coffre leurre. Il convient aux situations où vous vous attendez à être de nouveau mis sous pression plus tard ; face à la simple curiosité du quotidien — un partenaire, un ami qui fait défiler votre téléphone, un collègue indiscret — un leurre bien entretenu suffit généralement. Comme la suppression est définitive, faites d’abord une sauvegarde chiffrée de votre vrai coffre. [Configurer un coffre leurre et un schéma de contrainte](id:set-up-decoy-vault-and-duress-pattern) explique les deux.

## La place de Velcrypt

Velcrypt a été conçu pour que les leurres soient naturels et non ajoutés après coup : chaque schéma est son propre coffre, il n’y a pas de liste de coffres, un schéma inconnu n’affiche aucune erreur, et il n’y a pas de Face ID qui permettrait d’éluder complètement la question. Chaque coffre est chiffré sur votre iPhone en AES-256-GCM avec sa propre clé : le leurre et le vrai coffre sont donc protégés de la même façon, la seule différence étant ce que vous y mettez. La version gratuite comprend un seul coffre : un coffre leurre nécessite donc Premium. Pour en savoir plus, consultez la [présentation de la sécurité](id:security).
