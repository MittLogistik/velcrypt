---
pageId: can-aes-256-be-cracked
title: "Peut-on casser le chiffrement AES 256 ? Durée, quantique"
description: "Combien de temps prendrait une attaque par force brute sur une clé de 256 bits, ce que changent le quantique et GCM, et où visent les vraies attaques."
h1: "Peut-on casser l’AES-256 ? Le calcul, les attaques et la question quantique"
navTitle: "Peut-on casser l’AES-256 ?"
answer: "Pas en essayant les clés : même un milliard de machines testant chacune un milliard de milliards de clés par seconde mettraient environ 10⁴² ans en moyenne. Les meilleures attaques connues ne gagnent que quelques bits, et un ordinateur quantique utilisant l’algorithme de Grover ferait encore face à environ 2¹²⁸ étapes. Les vraies attaques visent le mot de passe ou le schéma, l’appareil ou l’implémentation."
keyFacts:
  - "Une clé de 256 bits a environ 1,2 × 10⁷⁷ valeurs possibles ; la force brute est hors de portée sous toute hypothèse réaliste."
  - "La meilleure attaque connue sur l’AES-256 complet sans clés liées (biclique, 2011) coûte environ 2²⁵⁴·⁴ opérations au lieu de 2²⁵⁶."
  - "L’algorithme de Grover laisserait à l’AES-256 environ 128 bits de sécurité ; le NIST, le BSI et le NCSC britannique jugent l’AES adapté à l’ère quantique."
  - "L’algorithme de Shor menace RSA et les courbes elliptiques, pas l’AES."
  - "Pour un coffre protégé par schéma, le point faible est l’entropie du schéma et la dérivation de clé, pas l’algorithme."
primaryKeyword: "peut-on casser l’aes 256"
keywords: ["chiffrement aes 256", "combien de temps pour casser aes 256", "aes 256 quantique", "aes-256-gcm", "rijndael 256", "aes a-t-il été cassé"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Le calcul de la force brute sur une clé de 256 bits, les attaques connues, Grover contre Shor, l’apport de GCM, et pourquoi le schéma est la vraie cible."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Combien de temps faudrait-il pour casser l’AES-256 par force brute ?"
    a: "En supposant un milliard de machines testant chacune 10¹⁸ clés par seconde, trouver une clé de 256 bits prendrait en moyenne environ 1,8 × 10⁴² ans, soit à peu près 10³² fois l’âge de l’Univers. Ces hypothèses sont démesurément généreuses ; le matériel réel est bien plus lent."
  - q: "L’AES-256 résiste-t-il aux ordinateurs quantiques ?"
    a: "Il est considéré comme résistant. L’algorithme de Grover réduirait sa force effective à environ 128 bits, ce qui reste jugé sûr. Le NIST indique que les applications actuelles peuvent continuer à utiliser l’AES, et le BSI allemand recommande des clés de 256 bits pour une protection à long terme."
  - q: "L’AES a-t-il déjà été cassé ?"
    a: "Pas en pratique. Il existe des attaques académiques, comme les attaques biclique qui ramènent l’AES-256 de 2²⁵⁶ à environ 2²⁵⁴·⁴ opérations, ou des attaques à clés liées qui exigent un scénario irréaliste. Aucune ne permet de déchiffrer de vraies données AES-256."
  - q: "Rijndael 256 et AES-256, est-ce la même chose ?"
    a: "Pas tout à fait. Rijndael est la conception devenue l’AES ; elle admet des blocs de 128, 192 ou 256 bits. L’AES fixe le bloc à 128 bits, et AES-256 désigne une clé de 256 bits. Une variante de Rijndael à bloc de 256 bits n’est pas l’AES."
  - q: "Qu’apporte l’AES-256-GCM par rapport à l’AES-256 seul ?"
    a: "GCM fait de l’AES un chiffrement authentifié. En plus du secret, il ajoute une étiquette d’authentification : toute modification du fichier chiffré fait échouer le déchiffrement. Il impose qu’un nonce ne soit jamais réutilisé avec la même clé."
  - q: "Un coffre qui utilise l’AES-256 peut-il donc être forcé ?"
    a: "Pas par l’algorithme. Celui qui copie les données chiffrées devine plutôt votre schéma ou votre mot de passe, et une dérivation de clé lente ne fait que limiter le nombre d’essais par seconde. C’est un secret long et irrégulier qui garde le coffre fermé."
---

« Peut-on casser l’AES-256 ? » est une question légitime, et la réponse honnête comporte deux volets. L’algorithme lui-même ne sera, selon toutes les estimations sérieuses, cassé ni en essayant les clés, ni par la meilleure cryptanalyse connue, ni par les ordinateurs quantiques à tout horizon visible. Mais des données protégées par le chiffrement AES 256 peuvent malgré tout être exposées, car les attaquants visent le maillon le plus faible. Ce guide fait le calcul, puis suit l’attaquant là où il va vraiment. Pour les bases du fonctionnement de l’AES, commencez par [le chiffrement AES-256 expliqué](id:aes-256-encryption-explained).

## Combien de temps prendrait la force brute ?

La force brute consiste à essayer toutes les clés possibles jusqu’à trouver la bonne. Une clé de 256 bits a 2²⁵⁶ valeurs possibles, soit environ 1,16 × 10⁷⁷. En moyenne, on tombe sur la bonne à mi-chemin, donc après environ 5,8 × 10⁷⁶ essais.

Accordons à l’attaquant des moyens absurdement généreux :

- **Vitesse par machine :** 10¹⁸ clés par seconde (un milliard de milliards), bien au-delà de tout matériel réel dédié à l’AES.
- **Nombre de machines :** un milliard, toutes en parallèle.
- **Total :** 10²⁷ clés par seconde.

Résultat : 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ secondes, soit environ **1,8 × 10⁴² ans**. L’Univers a environ 1,38 × 10¹⁰ ans : c’est à peu près 10³² fois son âge. Doubler le matériel quelques dizaines de fois n’y change rien : chaque bit de clé supplémentaire double le travail, et 256 bits ne laissent aucune marge de rattrapage à la technique.

C’est pourquoi personne en cryptographie ne parle de force brute contre l’AES-256. La seule question est de savoir s’il existe un raccourci.

## Les attaques connues : des gains théoriques infimes

L’AES est public depuis 2001 et compte parmi les algorithmes les plus étudiés au monde. Les cryptanalystes ont trouvé des attaques qui sont, à strictement parler, plus rapides que la force brute, mais avec des écarts qui ne comptent que sur le papier.

- **Attaques biclique (2011).** Bogdanov, Khovratovich et Rechberger ont présenté une récupération de clé sur l’AES-256 complet coûtant environ 2²⁵⁴·⁴ opérations au lieu de 2²⁵⁶. C’est à peu près trois fois moins de travail que la force brute, soit encore environ 10⁷⁶ opérations. Les auteurs eux-mêmes ont précisé que l’attaque ne menace pas l’usage pratique de l’AES.
- **Attaques à clés liées (2009).** Biryukov et Khovratovich ont trouvé une attaque sur l’AES-256 d’environ 2⁹⁹·⁵ en temps, mais seulement dans un modèle où l’attaquant obtient des données chiffrées sous plusieurs clés secrètes liées par une relation mathématique précise. Les systèmes bien conçus génèrent des clés aléatoires indépendantes ; ce modèle ne s’applique pas à eux.

Aucun de ces résultats ne récupère une clé à partir de vraies données AES-256. Ils montrent surtout que vingt ans d’examen n’ont trouvé aucune faille significative.

### Ce que signifie « Rijndael 256 »

Rijndael est la conception de Joan Daemen et Vincent Rijmen que le NIST a retenue comme AES. Rijndael accepte des tailles de bloc et de clé de 128, 192 et 256 bits. L’AES n’a normalisé que le bloc de 128 bits. AES-256 désigne donc Rijndael avec un bloc de 128 bits et une clé de 256 bits. Un « Rijndael-256 » à bloc de 256 bits est un autre algorithme, non normalisé, et ce n’est pas ce que les apps ou les navigateurs appellent AES-256.

## L’AES-256 résiste-t-il au quantique ?

Les ordinateurs quantiques touchent très différemment deux familles de cryptographie.

- **L’algorithme de Shor** résout efficacement la factorisation et le logarithme discret. Un ordinateur quantique assez puissant casserait RSA et les courbes elliptiques, c’est-à-dire les méthodes à clé publique qui servent à échanger des clés et à signer. D’où le déploiement de l’échange de clés post-quantique.
- **L’algorithme de Grover** accélère quadratiquement la recherche exhaustive : parcourir 2²⁵⁶ clés demande environ 2¹²⁸ étapes quantiques. En pratique, l’AES-256 offre environ 128 bits de sécurité face à un attaquant quantique.

Que représentent 2¹²⁸ étapes ? Supposons un ordinateur quantique capable d’un milliard d’itérations de Grover par seconde, chacune évaluant un circuit AES complet, ce qui est très optimiste. Il lui faudrait encore environ 10²² ans. Grover se parallélise en outre très mal : répartir la recherche sur de nombreuses machines apporte bien moins qu’une accélération proportionnelle.

Les positions officielles concordent :

- **Le NIST** (États-Unis) écrit dans sa FAQ post-quantique que l’algorithme de Grover n’apportera probablement que peu ou pas d’avantage contre l’AES, et que les applications actuelles peuvent continuer à utiliser l’AES avec des clés de 128, 192 ou 256 bits.
- **Le BSI** (Allemagne) considère que les algorithmes symétriques comme l’AES sont fondamentalement résistants aux attaques quantiques si la longueur des clés est adaptée, et recommande des clés de 256 bits pour les nouveaux systèmes devant protéger des données à long terme.
- **Le NCSC** (Royaume-Uni) estime que la sécurité de la cryptographie symétrique n’est pas significativement affectée par les ordinateurs quantiques et que l’AES peut continuer à être utilisé avec des tailles de clé adaptées.

Donc oui : l’AES-256 est la variante recommandée pour les données qui doivent rester confidentielles longtemps, ordinateurs quantiques compris.

## Ce que GCM ajoute à l’AES-256-GCM

L’AES seul chiffre un bloc de 16 octets. Un mode opératoire définit comment chiffrer des fichiers entiers. **GCM (Galois/Counter Mode)**, normalisé par le NIST dans le SP 800-38D, est un mode authentifié : en plus du texte chiffré, il produit une étiquette d’authentification. Au déchiffrement, l’étiquette est vérifiée ; si un seul bit du fichier a changé, le déchiffrement échoue au lieu de renvoyer des données altérées.

GCM a une règle stricte : un nonce ne doit jamais se répéter sous la même clé. Une réutilisation peut révéler des informations sur le texte clair et permettre de falsifier des étiquettes. Ce n’est pas une faiblesse de l’AES, mais précisément le genre d’erreur d’implémentation qu’exploitent les vraies attaques. Donner à chaque fichier sa propre clé, comme le fait Velcrypt, rend la règle facile à respecter.

## Où visent vraiment les attaques

Si l’algorithme est hors de portée, les attaquants le contournent. En pratique, ils ciblent trois choses.

1. **Le secret que vous retenez.** La clé de 256 bits est généralement dérivée d’un mot de passe, d’un code PIN ou d’un schéma. Deviner le secret coûte infiniment moins cher que deviner la clé.
2. **L’appareil.** Un logiciel malveillant, un téléphone jailbreaké, un coffre laissé ouvert ou quelqu’un qui vous regarde déverrouiller contournent entièrement le chiffrement.
3. **L’implémentation.** Nonces réutilisés, clés stockées à côté des données, nombres aléatoires faibles ou canaux auxiliaires comme les fuites temporelles. C’est pourquoi des bibliothèques système éprouvées comme Apple CryptoKit sont préférables à du code cryptographique fait maison.

## Le bilan honnête pour un coffre protégé par schéma

Dans un coffre comme Velcrypt, la clé qui chiffre vos fichiers est une clé maîtresse aléatoire de 256 bits, aussi solide que l’AES peut l’être. Mais cette clé maîtresse est scellée avec une clé dérivée du schéma que vous tracez. Quelqu’un qui a copié les données chiffrées et le sel propre à l’appareil peut tester des essais hors ligne. La force de l’algorithme n’entre alors plus en jeu : ce qui compte, c’est combien de schémas il peut essayer par seconde et combien il doit en essayer.

Velcrypt ralentit chaque essai avec PBKDF2-HMAC-SHA512 et au moins 600 000 itérations. Par extrapolation à partir de benchmarks publics de cassage de mots de passe, une carte graphique de jeu haut de gamme atteint de l’ordre de 5 000 essais par seconde avec ce réglage. C’est un ordre de grandeur, pas une mesure de Velcrypt lui-même. Concrètement :

| Schémas à essayer | Bits env. | Un GPU | 100 GPU |
|---|---|---|---|
| 10 000 (formes courantes) | ~13 | quelques secondes | instantané |
| 1 million | ~20 | quelques minutes | quelques secondes |
| 1 milliard | ~30 | environ 2 jours | environ 30 minutes |
| 1 000 milliards | ~40 | environ 6 ans | environ 3 semaines |

Pour situer : même en traitant un schéma comme n’importe quelle suite ordonnée de 10 points distincts parmi 25, on n’obtient qu’environ 1,2 × 10¹³ possibilités (environ 43 bits), et c’est une borne haute généreuse, car une ligne continue limite les déplacements et les gens privilégient les coins, les lettres et les formes courtes. Un schéma se situe à quelques dizaines de bits ; la clé, à 256.

Rien de tout cela n’est simple sur un iPhone : l’attaquant doit d’abord extraire de l’appareil les fichiers chiffrés et le sel, en passant la Protection des données d’iOS. Mais cela montre où porter vos efforts :

- **Utilisez 8 à 12 points**, avec plusieurs changements de direction et idéalement un croisement.
- **Évitez les départs en coin, les lettres et les formes simples** comme un L, un Z ou un carré.
- **Tracez-le à l’abri des regards**, car aucune entropie ne protège contre quelqu’un qui a regardé.

Testez une forme similaire, jamais votre vrai schéma, avec le [testeur de robustesse de schéma](id:pattern-strength-checker), et lisez le guide [schéma, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id) pour comparer les secrets choisis par des humains. La [page sur le chiffrement](id:encryption) détaille toute la chaîne de clés de Velcrypt, et la [présentation de la sécurité](id:security#what-velcrypt-does-not-protect-against) liste ce contre quoi le chiffrement ne peut rien.
