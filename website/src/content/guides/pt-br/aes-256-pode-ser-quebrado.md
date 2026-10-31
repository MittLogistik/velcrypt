---
pageId: can-aes-256-be-cracked
title: "O AES-256 pode ser quebrado? Força bruta, quântica e GCM"
description: "Quanto tempo levaria quebrar uma chave de 256 bits por força bruta, o que a computação quântica e o GCM mudam e para onde os ataques reais apontam."
h1: "O AES-256 pode ser quebrado? As contas, os ataques e a questão quântica"
navTitle: "O AES-256 pode ser quebrado?"
answer: "Não testando chaves: mesmo um bilhão de máquinas, cada uma testando um quintilhão de chaves por segundo, levariam em média cerca de 10⁴² anos. Os melhores ataques conhecidos tiram só alguns bits, e um computador quântico com o algoritmo de Grover ainda enfrentaria cerca de 2¹²⁸ passos. Ataques reais miram a senha ou o padrão, o aparelho ou a implementação."
keyFacts:
  - "Uma chave de 256 bits tem cerca de 1,2 × 10⁷⁷ valores possíveis; a força bruta fica fora de alcance em qualquer hipótese realista."
  - "O melhor ataque conhecido contra o AES-256 completo sem chaves relacionadas (biclique, 2011) custa cerca de 2²⁵⁴·⁴ operações, não 2²⁵⁶."
  - "O algoritmo de Grover deixaria o AES-256 com cerca de 128 bits de segurança; NIST, BSI e o NCSC britânico consideram o AES adequado à era quântica."
  - "O algoritmo de Shor ameaça o RSA e as curvas elípticas, não o AES."
  - "Num cofre protegido por padrão, o ponto fraco é a entropia do padrão e a derivação de chave, não a cifra."
primaryKeyword: "aes 256 pode ser quebrado"
keywords: ["quanto tempo para quebrar aes 256", "aes 256 é seguro contra computação quântica", "criptografia aes 256", "aes-256-gcm", "rijndael 256", "o aes já foi quebrado"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "As contas da força bruta numa chave de 256 bits, ataques conhecidos, Grover vs. Shor, o que o GCM acrescenta e por que o padrão é o alvo real."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Quanto tempo levaria para quebrar o AES-256 por força bruta?"
    a: "Supondo um bilhão de máquinas testando cada uma 10¹⁸ chaves por segundo, achar uma chave de 256 bits levaria em média cerca de 1,8 × 10⁴² anos, algo como 10³² vezes a idade do universo. As hipóteses são absurdamente generosas; o hardware real é muito mais lento."
  - q: "O AES-256 é seguro contra computadores quânticos?"
    a: "Ele é considerado resistente. O algoritmo de Grover reduziria sua força efetiva para cerca de 128 bits, o que ainda é visto como seguro. O NIST diz que as aplicações atuais podem continuar usando o AES, e o BSI alemão recomenda chaves de 256 bits para proteção de longo prazo."
  - q: "O AES já foi quebrado?"
    a: "Na prática, não. Existem ataques acadêmicos, como os ataques biclique, que reduzem o AES-256 de 2²⁵⁶ para cerca de 2²⁵⁴·⁴ operações, e ataques de chaves relacionadas, que exigem um cenário irreal. Nenhum deles permite descriptografar dados reais protegidos com AES-256."
  - q: "Rijndael 256 é a mesma coisa que AES-256?"
    a: "Não exatamente. O Rijndael é o projeto que virou o AES e aceita blocos de 128, 192 ou 256 bits. O AES fixa o bloco em 128 bits, e AES-256 significa uma chave de 256 bits. Uma variante do Rijndael com bloco de 256 bits não é AES."
  - q: "O que o AES-256-GCM acrescenta em relação ao AES-256 puro?"
    a: "O GCM transforma o AES em criptografia autenticada. Além de manter o sigilo, ele anexa uma tag de autenticação, de modo que qualquer alteração no arquivo criptografado faz a descriptografia falhar. Ele exige que um nonce nunca seja reutilizado com a mesma chave."
  - q: "Então um cofre que usa AES-256 pode ser quebrado?"
    a: "Não pela cifra. Quem copia os dados criptografados tenta adivinhar o seu padrão ou a sua senha, e uma derivação de chave lenta só limita quantas tentativas por segundo ele consegue. O que mantém o cofre fechado é um segredo longo e irregular."
---

“O AES-256 pode ser quebrado?” é uma pergunta justa, e a resposta honesta tem duas metades. A cifra em si, segundo qualquer estimativa séria, não vai ser quebrada testando chaves, nem pela melhor criptoanálise conhecida, nem por computadores quânticos em qualquer horizonte visível. Mas dados protegidos com AES-256 ainda podem ser expostos, porque os atacantes miram o elo mais fraco. Este guia faz as contas e depois segue o atacante até onde ele realmente vai. Para o básico de como o AES funciona, comece pela [criptografia AES-256 explicada](id:aes-256-encryption-explained).

## Quanto tempo levaria a força bruta?

Força bruta significa testar todas as chaves possíveis até achar a certa. Uma chave de 256 bits tem 2²⁵⁶ valores possíveis, cerca de 1,16 × 10⁷⁷. Em média, a certa aparece na metade do caminho, ou seja, depois de cerca de 5,8 × 10⁷⁶ tentativas.

Vamos dar ao atacante recursos absurdamente generosos:

- **Velocidade por máquina:** 10¹⁸ chaves por segundo (um quintilhão), muito além de qualquer hardware real para atacar o AES.
- **Número de máquinas:** um bilhão, todas em paralelo.
- **Total:** 10²⁷ chaves por segundo.

O resultado: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ segundos, cerca de **1,8 × 10⁴² anos**. O universo tem cerca de 1,38 × 10¹⁰ anos, então isso é algo como 10³² vezes a idade dele. Dobrar o hardware algumas dezenas de vezes não muda a conclusão: cada bit extra de chave dobra o trabalho, e 256 bits não deixam espaço para a engenharia alcançar.

Por isso ninguém em criptografia fala em força bruta contra o AES-256. A única pergunta é se existe um atalho.

## Ataques conhecidos: ganhos teóricos minúsculos

O AES é público desde 2001 e é um dos algoritmos mais estudados que existem. Criptoanalistas encontraram ataques que, a rigor, são mais rápidos que a força bruta, mas por margens que só importam no papel.

- **Ataques biclique (2011).** Bogdanov, Khovratovich e Rechberger mostraram uma recuperação de chave contra o AES-256 completo com custo de cerca de 2²⁵⁴·⁴ operações em vez de 2²⁵⁶. É mais ou menos três vezes menos trabalho que a força bruta, ainda cerca de 10⁷⁶ operações. Os próprios autores afirmaram que o ataque não ameaça o uso prático do AES.
- **Ataques de chaves relacionadas (2009).** Biryukov e Khovratovich encontraram um ataque contra o AES-256 de cerca de 2⁹⁹·⁵ em tempo, mas só num modelo em que o atacante recebe dados criptografados com várias chaves secretas ligadas por uma relação matemática específica. Sistemas bem projetados geram chaves aleatórias independentes, então esse modelo não se aplica a eles.

Nenhum desses resultados recupera uma chave a partir de dados reais em AES-256. Eles servem principalmente como prova de que duas décadas de escrutínio não encontraram nenhuma rachadura relevante.

### O que significa “Rijndael 256”

O Rijndael é o projeto de Joan Daemen e Vincent Rijmen que o NIST escolheu como AES. O Rijndael aceita tamanhos de bloco e de chave de 128, 192 e 256 bits. O AES padronizou só o bloco de 128 bits. Então AES-256 significa Rijndael com bloco de 128 bits e chave de 256 bits. Um “Rijndael-256” com bloco de 256 bits é outra cifra, não padronizada, e não é o que apps e navegadores querem dizer com AES-256.

## O AES-256 é seguro contra computação quântica?

Computadores quânticos afetam duas famílias de criptografia de formas muito diferentes.

- **O algoritmo de Shor** resolve com eficiência a fatoração e o logaritmo discreto. Um computador quântico grande o bastante quebraria o RSA e a criptografia de curvas elípticas, os métodos de chave pública usados para trocar chaves e assinar dados. É por isso que a troca de chaves pós-quântica está sendo adotada.
- **O algoritmo de Grover** acelera quadraticamente a busca por força bruta: percorrer 2²⁵⁶ chaves custa cerca de 2¹²⁸ passos quânticos. Na prática, o AES-256 oferece cerca de 128 bits de segurança contra um atacante quântico.

Quanto são 2¹²⁸ passos? Suponha um computador quântico capaz de rodar um bilhão de iterações de Grover por segundo, cada uma avaliando um circuito AES completo, o que é muito otimista. Ainda assim ele precisaria de cerca de 10²² anos. Além disso, o Grover se paraleliza mal: dividir a busca entre muitas máquinas rende bem menos que uma aceleração proporcional.

As posições oficiais estão alinhadas:

- **O NIST** (EUA) diz no FAQ de criptografia pós-quântica que o algoritmo de Grover provavelmente trará pouca ou nenhuma vantagem para atacar o AES, e que as aplicações atuais podem continuar usando o AES com chaves de 128, 192 ou 256 bits.
- **O BSI** (Alemanha) considera que cifras simétricas como o AES são essencialmente resistentes a ataques quânticos quando o tamanho da chave é ajustado, e recomenda chaves de 256 bits em sistemas novos que precisam proteger dados a longo prazo.
- **O NCSC** (Reino Unido) afirma que a segurança da criptografia simétrica não é afetada de forma significativa por computadores quânticos e que o AES pode continuar sendo usado com tamanhos de chave adequados.

Então, sim: o AES-256 é a variante recomendada para dados que precisam continuar confidenciais por muito tempo, computadores quânticos incluídos.

## O que o GCM acrescenta no AES-256-GCM

O AES sozinho criptografa um bloco de 16 bytes. Um modo de operação define como arquivos inteiros são criptografados. O **GCM (Galois/Counter Mode)**, padronizado pelo NIST na SP 800-38D, é um modo autenticado: junto com o texto cifrado, ele gera uma tag de autenticação. Na descriptografia a tag é conferida, e se um único bit do arquivo mudou, a descriptografia falha em vez de devolver dados alterados.

O GCM tem uma regra rígida: um nonce nunca pode se repetir com a mesma chave. Reutilizá-lo pode vazar informações sobre o texto original e permitir falsificar tags. Isso não é uma fraqueza do AES, e sim exatamente o tipo de erro de implementação que ataques reais exploram. Dar a cada arquivo a própria chave, como o Velcrypt faz, torna a regra fácil de cumprir.

## Para onde os ataques realmente vão

Se a cifra está fora de alcance, os atacantes dão a volta nela. Na prática, eles miram três coisas.

1. **O segredo que você lembra.** A chave de 256 bits normalmente é derivada de uma senha, um PIN ou um padrão. Adivinhar o segredo é imensamente mais barato que adivinhar a chave.
2. **O aparelho.** Malware, um iPhone com jailbreak, um cofre deixado aberto ou alguém que vê você desbloquear contornam a criptografia por completo.
3. **A implementação.** Nonces reutilizados, chaves guardadas junto aos dados, números aleatórios fracos ou canais laterais como vazamentos de tempo. É por isso que bibliotecas de sistema testadas, como o Apple CryptoKit, são preferíveis a código criptográfico caseiro.

## A conclusão honesta para um cofre com padrão

Num cofre como o Velcrypt, a chave que criptografa seus arquivos é uma chave mestra aleatória de 256 bits, tão forte quanto o AES pode ser. Mas essa chave mestra é selada com uma chave derivada do padrão que você desenha. Quem copiou os dados criptografados e o salt do aparelho pode testar tentativas offline. A força da cifra deixa de importar; o que conta é quantos padrões ele consegue testar por segundo e quantos precisa testar.

O Velcrypt desacelera cada tentativa com PBKDF2-HMAC-SHA512 e pelo menos 600.000 iterações. Extrapolando a partir de benchmarks públicos de quebra de senhas, uma placa de vídeo gamer de ponta faz algo na ordem de 5.000 tentativas por segundo com essa configuração. É uma estimativa grosseira, não uma medição do próprio Velcrypt. Na prática:

| Padrões que o atacante precisa testar | Bits aprox. | Uma GPU | 100 GPUs |
|---|---|---|---|
| 10.000 (formas comuns) | ~13 | segundos | na hora |
| 1 milhão | ~20 | minutos | segundos |
| 1 bilhão | ~30 | cerca de 2 dias | cerca de 30 minutos |
| 1 trilhão | ~40 | cerca de 6 anos | cerca de 3 semanas |

Para ter uma noção: mesmo tratando um padrão como qualquer sequência ordenada de 10 pontos diferentes entre 25, o total fica em cerca de 1,2 × 10¹³ possibilidades (uns 43 bits), e esse é um limite superior generoso, porque uma linha contínua restringe os movimentos e as pessoas preferem cantos, letras e formas curtas. Um padrão fica na casa de algumas dezenas de bits; a chave, em 256.

Nada disso é fácil num iPhone: o atacante primeiro precisa tirar do aparelho os arquivos criptografados e o salt, passando pela Proteção de Dados do iOS. Mas mostra onde vale a pena caprichar:

- **Use de 8 a 12 pontos**, com várias mudanças de direção e, de preferência, um cruzamento.
- **Evite começar num canto, letras e formas simples** como L, Z ou um quadrado.
- **Desenhe longe de olhares**, porque nenhuma entropia protege contra quem viu.

Teste uma forma parecida, nunca o seu padrão real, no [verificador de força de padrão](id:pattern-strength-checker), e leia o [guia padrão vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id) para comparar segredos escolhidos por pessoas. A [página de criptografia](id:encryption) detalha toda a cadeia de chaves do Velcrypt, e a [visão geral de segurança](id:security#what-velcrypt-does-not-protect-against) lista aquilo contra o que a criptografia não protege.
