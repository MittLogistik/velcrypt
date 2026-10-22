---
pageId: plausible-deniability-explained
title: "Le déni plausible en chiffrement, expliqué simplement"
description: "Ce que signifie le déni plausible en chiffrement, comment les volumes cachés l’ont inventé, comment Velcrypt l’applique et ses limites honnêtes."
h1: "Le déni plausible en chiffrement, expliqué"
navTitle: "Le déni plausible expliqué"
answer: "En chiffrement, le déni plausible signifie que, même après avoir déverrouillé quelque chose, personne ne peut prouver qu’il existe d’autres données cachées. Velcrypt l’applique en laissant chaque schéma ouvrir son propre coffre et en affichant un coffre vide, et non une erreur, pour les schémas inconnus. Il ne cache pas l’existence de données chiffrées sur l’appareil."
keyFacts:
  - "Le déni plausible porte sur ce qui peut être prouvé, pas sur le fait de cacher l’existence d’une app ou de données chiffrées."
  - "Les outils de chiffrement de disque ont lancé l’idée avec des volumes cachés à l’intérieur de volumes chiffrés ordinaires."
  - "Dans Velcrypt, tout schéma inconnu ouvre un coffre vide, sans erreur ni liste de coffres."
  - "La taille du stockage et l’analyse forensique peuvent montrer que des données chiffrées existent, même illisibles."
  - "Le déni plausible protège contre la curiosité et les pressions informelles ; ce n’est pas un bouclier juridique."
primaryKeyword: "déni plausible chiffrement"
keywords: ["qu’est-ce que le déni plausible", "chiffrement niable", "volume caché expliqué", "déni plausible coffre-fort photo", "coffre niable iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Le concept derrière les volumes cachés et les coffres leurres, comment Velcrypt l’utilise avec les schémas inconnus, et ce qu’il ne peut pas faire."
category: security
order: 42
related: [what-is-a-decoy-vault, hidden-vaults, duress-pattern, aes-256-encryption-explained, phone-privacy-border-crossing, security]
faq:
  - q: "Que veut dire déni plausible, en termes simples ?"
    a: "Cela signifie que vous pouvez dire de façon crédible « c’est tout » et que personne ne peut prouver le contraire. En chiffrement, on y parvient avec des conceptions où les données cachées sont impossibles à distinguer d’un espace vide ou de données inexistantes."
  - q: "Velcrypt cache-t-il que j’utilise une app de coffre-fort ?"
    a: "Non. L’app est visible sur votre écran d’accueil, sauf si vous utilisez l’option d’iOS pour masquer les apps, et son espace de stockage apparaît dans les Réglages de l’iPhone. Le déni plausible de Velcrypt concerne le nombre de coffres et leur contenu, pas la présence de données chiffrées sur l’appareil."
  - q: "Les outils forensiques peuvent-ils détecter des coffres cachés ?"
    a: "Ils peuvent éventuellement montrer que l’app stocke plus de données chiffrées que n’en explique un coffre ouvert. Sans le bon schéma, les données restent chiffrées en AES-256-GCM, mais leur existence peut ne pas être niable face à un expert."
  - q: "Le déni plausible est-il légal ?"
    a: "Utiliser le chiffrement est légal dans la plupart des pays, mais les lois sur la remise des clés et sur le fait de tromper des agents publics varient beaucoup. Ce guide n’est pas un conseil juridique ; si vous êtes face à une situation légale, consultez un avocat."
  - q: "Qu’est-ce qu’un volume caché ?"
    a: "Un volume caché est un second volume chiffré stocké dans l’espace libre d’un volume chiffré ordinaire. Un mot de passe ouvre le volume extérieur, un autre ouvre le volume caché, et les données cachées ressemblent à de l’espace libre aléatoire."
---

Le chiffrement répond très bien à une question : quelqu’un peut-il lire ceci sans la clé ? Le déni plausible répond à une question plus difficile, plus humaine : que se passe-t-il quand quelqu’un exige la clé ? Ce guide explique le concept, ses origines, la façon dont Velcrypt l’utilise et le point où il cesse de fonctionner.

## Ce que signifie le déni plausible

Le déni plausible est la propriété selon laquelle, même après avoir ouvert quelque chose sous la pression, personne ne peut prouver que vous cachez autre chose. Vous pouvez dire « c’est tout ce qu’il y a », et le système ne donne à l’autre personne aucune preuve pour vous contredire.

C’est important parce qu’un chiffrement solide déplace le point faible des mathématiques vers la personne. Si un fichier est protégé par l’AES-256, personne ne va casser l’algorithme. On va vous demander, insister ou menacer. Les conceptions niables cherchent à faire d’une concession partielle une option sûre.

## Un peu d’histoire : les volumes cachés

L’idée s’est popularisée avec les logiciels de chiffrement de disque. Les outils de la famille TrueCrypt et VeraCrypt ont introduit le **volume caché** : un second conteneur chiffré logé dans l’espace inutilisé d’un conteneur chiffré normal.

L’astuce fonctionne parce qu’une bonne sortie de chiffrement ressemble à du bruit aléatoire, tout comme l’espace libre d’un volume chiffré rempli de données aléatoires. Un mot de passe ouvre le volume extérieur, qui contient des fichiers leurres crédibles. Un autre mot de passe ouvre le volume caché. Sans ce second mot de passe, la partie cachée est impossible à distinguer d’un espace vide.

Des chercheurs ont aussi exploré plus formellement le « chiffrement niable », où un même texte chiffré peut être déchiffré en différents textes clairs selon la clé. Les volumes cachés en ont été la version pratique et largement utilisée.

Au fil des années, ces mêmes chercheurs et praticiens ont aussi documenté les limites : les systèmes d’exploitation laissent des traces (listes de fichiers récents, vignettes, journaux), les gens se comportent de façon incohérente, et un adversaire qui sait que le logiciel gère les volumes cachés peut tout simplement supposer qu’il en existe un.

## Comment Velcrypt applique l’idée

Velcrypt adapte le principe à un coffre-fort de photos et de documents sur iPhone. Pas de volume extérieur et intérieur ; à la place :

- **Chaque schéma est son propre coffre.** Chaque coffre a sa propre clé maîtresse aléatoire de 256 bits, déverrouillée par une clé dérivée de ce schéma.
- **Il n’y a pas de liste de coffres.** L’app ne conserve rien qui énumère combien de coffres existent.
- **Les schémas inconnus ouvrent un coffre vide.** Tracez un schéma que Velcrypt n’a jamais vu et vous arrivez dans un nouveau coffre vide. Aucun message « mauvais schéma ».

Conséquence : un mauvais schéma et un coffre valide mais vide sont identiques. Si vous ouvrez un coffre devant quelqu’un, rien dans l’interface ne montre que d’autres coffres existent. Le [coffre leurre](id:what-is-a-decoy-vault) devient ainsi un usage naturel plutôt qu’un mode spécial. La page de la fonction [coffres cachés](id:hidden-vaults) montre comment cela fonctionne en pratique.

Une fonction Premium prévue, le [schéma de contrainte](id:duress-pattern) (bientôt disponible), prolonge cette logique : un schéma spécial ouvrirait un coffre choisi et retirerait discrètement l’accès aux autres.

## Les limites, en toute honnêteté

Il est facile de survendre le déni plausible. Voici ce que Velcrypt ne prétend **pas** faire.

### Il ne cache pas l’existence de l’app

Velcrypt est sur votre écran d’accueil comme n’importe quelle app. iOS 18 et versions ultérieures permettent de masquer des apps dans un dossier caché verrouillé par Face ID, mais c’est une fonction d’iOS, et quiconque connaît le code de votre appareil peut quand même regarder. Voir une app de coffre-fort apprend aux gens que vous tenez à votre vie privée ; cela ne leur dit pas ce que vous gardez.

### Il ne cache pas l’existence de données chiffrées

Velcrypt ne prétend pas cacher que des données chiffrées sont stockées sur l’appareil. Les fichiers chiffrés prennent de la place, et les Réglages de l’iPhone indiquent l’espace utilisé par chaque app. Un examen forensique d’un appareil pourrait montrer que l’app contient plus de données chiffrées que le coffre ouvert. Il ne peut pas les déchiffrer sans le schéma, mais un expert peut voir qu’« il y a autre chose ».

### Il ne peut rien contre les copies ailleurs

Si une photo existe encore dans votre photothèque, dans Suppressions récentes, dans iCloud ou dans une conversation, le déni plausible du coffre n’a aucune importance. [Supprimez les originaux](id:delete-original-photos-after-import) après l’import.

### Il ne peut pas empêcher l’observation

Si quelqu’un vous a vu tracer votre vrai schéma, ou a filmé l’écran, le déni plausible disparaît. Tracez-le à l’abri des regards et protégez l’écran.

### Ce n’est pas une stratégie juridique

Dans certains pays, refuser de remettre des clés ou tromper des agents publics peut entraîner des sanctions. Le déni plausible est surtout utile face aux pressions informelles : un partenaire jaloux, un voleur, un proche indiscret. Pour tout ce qui implique les autorités, lisez le [guide sur le passage des frontières](id:phone-privacy-border-crossing) et demandez un vrai conseil juridique.

## Déni plausible et secret : deux promesses différentes

Il est utile de distinguer les deux idées, souvent mélangées dans le discours marketing.

| | Secret (chiffrement) | Déni plausible |
|---|---|---|
| La question à laquelle il répond | Quelqu’un peut-il lire ceci sans la clé ? | Quelqu’un peut-il prouver qu’il existe plus que ce que vous avez montré ? |
| Ce sur quoi il repose | Les mathématiques et la gestion des clés | Une conception indiscernable et un comportement crédible |
| Sa solidité | Très solide avec l’AES-256 et une bonne dérivation de clé | Variable ; dépend de l’observateur et du contexte |
| Ce qui le brise | Secrets faibles, clés divulguées, copies ailleurs | Taille du stockage, traces forensiques, hésitation, observation |

Le chiffrement rend votre contenu illisible dans presque tous les scénarios. Le déni plausible est une couche plus souple, sociale, posée par-dessus : précieuse sur le moment, mais jamais quelque chose sur quoi tout miser.

## Rendre le déni plausible crédible

La technologie fournit la possibilité ; votre comportement fournit la plausibilité.

1. **Faites vivre le coffre que vous ouvririez.** De vrais albums, des éléments récents, une raison d’être crédible.
2. **Accordez l’histoire au stockage.** Un leurre de quelques documents détonne à côté de plusieurs gigaoctets de stockage occupés par l’app.
3. **N’hésitez pas.** Entraînez-vous au schéma que vous ouvririez jusqu’à ce qu’il devienne automatique.
4. **Évitez les traces.** Ne nommez pas ailleurs des albums d’après ce que vous cachez, et ne laissez pas d’originaux dans d’autres apps.

## La place de Velcrypt

Velcrypt associe une structure niable à un chiffrement solide : AES-256-GCM via Apple CryptoKit, clés dérivées de votre schéma par PBKDF2-HMAC-SHA512 (au moins 600 000 itérations) et clés par fichier dérivées avec HKDF. Tout reste sur l’appareil, sans compte ni serveur susceptible de révéler combien de coffres vous avez. La [page sur le chiffrement](id:encryption) donne les détails, et la [présentation de la sécurité](id:security) liste les menaces qu’il n’est pas conçu pour arrêter.
