---
pageId: pattern-lock
title: "Schéma de déverrouillage : votre coffre sur une grille 5×5"
description: "Velcrypt se déverrouille avec un schéma tracé sur une grille de 5×5 points. Les règles, comment créer un schéma solide et pourquoi il n’y a pas de Face ID."
h1: "Verrouillage par schéma : une grille 5×5 que seule votre mémoire peut ouvrir"
navTitle: "Schéma de déverrouillage"
answer: "Velcrypt s’ouvre avec un schéma que vous tracez sur une grille de 5×5 points : une ligne continue passant par au moins 6 points, avec au moins un changement de direction. Un schéma de 8 à 12 points est recommandé, et il n’y a volontairement ni Face ID ni Touch ID."
keyFacts:
  - "Déverrouillage par une ligne continue tracée sur une grille de 25 points (5×5)."
  - "Règles minimales : au moins 6 points et au moins un changement de direction."
  - "Longueur recommandée : 8 à 12 points."
  - "Pas de Face ID ni de Touch ID, par choix : la biométrie peut être obtenue sous la contrainte."
  - "Votre schéma sert aussi à dériver la clé de chiffrement du coffre."
primaryKeyword: "app verrouillage par schéma iphone"
keywords: ["schéma de déverrouillage iphone", "coffre-fort photo avec schéma", "verrouillage schéma 5x5", "coffre-fort photo sans face id", "verrouiller une app iphone avec un schéma", "créer un schéma de déverrouillage sûr"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Déverrouillez en traçant un schéma sur une grille 5×5. Au moins 6 points et un virage ; 8 à 12 points conseillés. Pas de Face ID, par choix."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Combien de points faut-il pour un schéma Velcrypt ?"
    a: "Au moins 6 points, tracés en une seule ligne continue avec au moins un changement de direction. Pour une meilleure protection, utilisez 8 à 12 points avec plusieurs virages."
  - q: "Pourquoi Velcrypt n’utilise-t-il pas Face ID ou Touch ID ?"
    a: "Un visage ou une empreinte peuvent être utilisés sans votre accord, par exemple pendant votre sommeil ou si l’on vous retient. Un schéma n’existe que dans votre mémoire : personne ne peut vous le prendre physiquement. Velcrypt écarte donc la biométrie volontairement."
  - q: "Que se passe-t-il si j’oublie mon schéma de déverrouillage ?"
    a: "Le coffre ne peut plus être ouvert, ni par vous ni par Velcrypt. Le schéma intervient dans la dérivation de la clé de chiffrement, et il n’existe ni phrase de récupération ni compte pour le réinitialiser. Choisissez un schéma dont vous vous souviendrez à coup sûr."
  - q: "Un schéma 5×5 est-il plus sûr qu’un schéma 3×3 de téléphone ?"
    a: "Il peut l’être. Une grille 5×5 compte 25 points au lieu de 9, ce qui multiplie le nombre de schémas possibles. La sécurité du vôtre dépend toujours de sa longueur, de son nombre de virages et de la prévisibilité de sa forme."
  - q: "Puis-je tester mon schéma avant de l’utiliser ?"
    a: "Vous pouvez essayer des schémas similaires dans le testeur de solidité de schéma Velcrypt, qui fonctionne localement dans votre navigateur. Ne saisissez jamais votre vrai schéma sur un site web : testez plutôt un schéma ressemblant."
---

La plupart des apps vous demandent un code. Velcrypt vous demande de dessiner. Le schéma de déverrouillage est la porte d’entrée de chaque coffre, et c’est aussi le secret dont est dérivée la clé de chiffrement du coffre : il mérite donc quelques minutes de réflexion.

## Comment fonctionne le schéma 5×5

Un verrouillage par schéma est une méthode de déverrouillage où vous reliez des points par un tracé au lieu de taper un code. Dans Velcrypt, la grille compte 25 points disposés en cinq lignes et cinq colonnes. Vous posez le doigt, vous le faites glisser sur les points de votre choix, puis vous le relevez pour terminer.

Deux règles s’appliquent à chaque schéma :

1. **Au moins 6 points.** Les tracés plus courts sont refusés.
2. **Au moins un changement de direction.** Une simple ligne droite n’est pas acceptée.

Ce sont des minimums. Velcrypt recommande des schémas de **8 à 12 points**, car chaque point supplémentaire multiplie le nombre de schémas qu’il faudrait essayer.

Chaque schéma fait aussi plus que déverrouiller : il détermine quel coffre s’ouvre. Ce principe est expliqué sur la page consacrée aux [coffres cachés](id:hidden-vaults).

## Ce qui rend un schéma solide

Un schéma solide est long, change souvent de direction et ne ressemble à rien. La grille est grande, mais on a tendance à reproduire les mêmes habitudes : partir du coin supérieur gauche, dessiner des lettres ou tracer des carrés bien nets. Ce sont précisément ces habitudes qu’un observateur ou quelqu’un qui devine essaiera en premier.

| Habitude | Pourquoi c’est faible | Meilleure option |
| --- | --- | --- |
| Commencer dans un coin | Les coins sont les points de départ les plus courants | Partir d’un point intérieur ou d’un bord |
| Lettres et formes (L, Z, S, U, carré) | Faciles à deviner et à reconnaître par-dessus votre épaule | Un tracé irrégulier sans forme évidente |
| Longues lignes droites | Peu de décisions, peu d’incertitude | Changer de direction tous les deux ou trois points |
| Rester dans une seule zone | N’utilise qu’une petite partie de la grille | Traverser plusieurs lignes et colonnes |
| Schémas très courts | Moins de combinaisons à tester | Viser 8 à 12 points |

Quelques conseils pratiques :

- **Croisez votre propre tracé.** Les lignes qui repassent sur des segments précédents sont plus difficiles à lire sur une trace de doigt ou d’un coup d’œil.
- **Trouvez un rythme qui vous parle, à vous seul.** Un tracé que vous dessinez « à la sensation » se retient mieux qu’un tracé aléatoire auquel il faut réfléchir.
- **Tracez-le plusieurs fois avant de vous y fier.** C’est la répétition qui transforme un nouveau schéma en mémoire musculaire.
- **Protégez l’écran.** Aucun schéma ne sert à rien si quelqu’un vous regarde le tracer. En public, inclinez le téléphone ou couvrez la grille.

Pour un second avis, le [testeur de solidité de schéma](id:pattern-strength-checker) donne une note approximative et une estimation en bits selon la longueur, les virages, les croisements et la couverture de la grille. C’est une heuristique, pas une garantie, et vous devriez tester un schéma proche du vôtre plutôt que le vrai.

## Pourquoi il n’y a ni Face ID ni Touch ID

Velcrypt n’a pas de déverrouillage biométrique, et c’est une décision délibérée. La biométrie est pratique justement parce qu’elle vous accompagne toujours, et c’est aussi sa faiblesse : on peut placer un téléphone devant votre visage ou appuyer votre doigt sur un capteur sans votre accord.

Un schéma n’existe que dans votre tête. Personne ne peut le prélever sur votre main ni pointer votre téléphone vers votre visage pour l’obtenir. Pour un coffre censé protéger vos fichiers les plus privés, cette différence compte plus que la seconde gagnée au déverrouillage. Les compromis sont comparés plus en détail dans [schéma, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Votre schéma et la clé de chiffrement

Le schéma n’est pas simplement vérifié puis oublié. Velcrypt le fait passer par une fonction de dérivation de clé volontairement lente pour produire la clé qui déverrouille la clé maîtresse du coffre, laquelle protège à son tour chaque fichier. La chaîne complète est décrite sur la page [chiffrement](id:encryption).

Cela a une conséquence honnête. Comme le schéma fait partie de la clé, il n’existe aucun lien « réinitialiser le schéma » ni aucun compte de secours. Si vous l’oubliez, le coffre reste verrouillé pour de bon. Lisez [que faire si vous oubliez le schéma de votre coffre](id:forgot-vault-pattern) avant d’en choisir un, et optez pour un tracé dont vous vous souviendrez encore dans six mois.

## Ce qu’un schéma ne peut pas empêcher

Un schéma solide place la barre plus haut, mais ce n’est qu’une couche de protection. Il ne peut rien contre quelqu’un qui vous filme ou vous regarde le tracer, contre une personne à qui vous tendez le téléphone pendant qu’un coffre est ouvert, ni contre un logiciel malveillant sur un appareil jailbreaké. La [page sécurité](id:security#what-velcrypt-does-not-protect-against) détaille toutes ces limites. Associer votre schéma au [verrouillage automatique](id:auto-lock) comble la faille la plus fréquente : un coffre resté ouvert quand vous posez le téléphone.
