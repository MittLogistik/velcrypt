---
pageId: aes-256-encryption-explained
title: "Criptografia AES-256: o que é (GCM, PBKDF2, quântica)"
description: "O que é AES-256, por que o modo GCM importa, por que a derivação de chave pesa mais que a cifra e o que muda com os computadores quânticos."
h1: "Criptografia AES-256 explicada, sem exageros"
navTitle: "Criptografia AES-256 explicada"
answer: "AES-256 é uma cifra simétrica que criptografa dados com uma chave de 256 bits; ninguém consegue quebrá-la testando chaves. Para dados protegidos por padrão ou senha, a força real depende da derivação de chave: com que lentidão e cuidado esse segredo curto é transformado na chave. O modo GCM acrescenta detecção de adulteração ao sigilo."
keyFacts:
  - "AES é uma cifra de bloco padronizada pelo NIST em 2001; o AES-256 usa chave de 256 bits e 14 rodadas."
  - "GCM é um modo autenticado: ele criptografa e também detecta qualquer alteração no texto cifrado."
  - "Um padrão ou uma senha fraca compromete o AES-256, porque os atacantes adivinham o segredo, não a chave."
  - "Uma derivação de chave lenta, como o PBKDF2 com muitas iterações, torna cada palpite caro."
  - "O algoritmo de Grover reduziria o AES-256 a cerca de 128 bits de segurança contra um atacante quântico, o que ainda é considerado forte."
primaryKeyword: "criptografia aes-256"
keywords: ["o que é aes 256", "aes-256-gcm", "pbkdf2 explicado", "aes 256 é seguro contra computação quântica", "aes 256 vs aes 128", "criptografia autenticada"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, tamanhos de chave, criptografia autenticada GCM, por que o PBKDF2 importa mais que a cifra e a questão quântica, em linguagem simples."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "O AES-256 pode ser quebrado?"
    a: "Não se conhece nenhum ataque prático que recupere uma chave AES-256 mais rápido que a força bruta, e testar todas as chaves de 256 bits está muito além de qualquer computador concebível. Os vazamentos reais vêm de senhas fracas, chaves roubadas ou falhas em volta da cifra, não do AES em si."
  - q: "Qual a diferença entre AES-128 e AES-256?"
    a: "Os dois usam o mesmo algoritmo com tamanhos de chave e números de rodadas diferentes: chaves de 128 bits com 10 rodadas contra chaves de 256 bits com 14 rodadas. O AES-128 já é considerado seguro; o AES-256 acrescenta uma grande margem, inclusive contra futuros ataques quânticos."
  - q: "O que significa GCM em AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) é um modo de operação que criptografa os dados e também gera uma etiqueta de autenticação. Se um único bit do arquivo criptografado for alterado, a descriptografia falha em vez de devolver dados corrompidos ou manipulados."
  - q: "O AES-256 é seguro contra computadores quânticos?"
    a: "Em geral ele é considerado resistente. O algoritmo de Grover, em teoria, reduziria pela metade a força efetiva da chave, para cerca de 128 bits, o que ainda é visto como seguro. Computadores quânticos são uma ameaça maior para algoritmos de chave pública como o RSA do que para o AES."
  - q: "Por que um app que usa AES-256 ainda precisa de senha ou padrão fortes?"
    a: "Porque os atacantes não adivinham a chave de 256 bits; eles adivinham o segredo curto do qual ela é derivada. Se o seu segredo está entre alguns milhares de escolhas comuns, nem uma derivação de chave lenta compra muito tempo."
---

“Criptografia AES-256” aparece na lista de recursos de quase todo app de privacidade. É uma afirmação real e significativa, mas também é a parte do sistema com menor chance de falhar. Este guia explica o que o AES-256 faz, o que significam as letras extras como GCM e por que a etapa que transforma o seu padrão ou a sua senha numa chave merece mais atenção.

## O que é o AES

AES (Advanced Encryption Standard) é uma cifra de bloco simétrica: a mesma chave secreta criptografa e descriptografa, e os dados são processados em blocos de 128 bits. Ele foi escolhido pelo Instituto Nacional de Padrões e Tecnologia dos EUA (NIST) em 2001, depois de uma competição pública e aberta de vários anos, e o projeto vencedor, o Rijndael, veio de dois criptógrafos belgas.

Hoje o AES está em toda parte: em conexões HTTPS, no Wi-Fi, na criptografia de disco e no hardware de todo iPhone moderno. Essa onipresença é uma vantagem. Ele vem sendo estudado por criptógrafos há mais de duas décadas, e muitos processadores o aceleram em hardware.

### Tamanhos de chave

O AES tem três tamanhos de chave:

| Variante | Tamanho da chave | Rodadas | Chaves possíveis |
|---|---|---|---|
| AES-128 | 128 bits | 10 | cerca de 3,4 × 10³⁸ |
| AES-192 | 192 bits | 12 | cerca de 6,3 × 10⁵⁷ |
| AES-256 | 256 bits | 14 | cerca de 1,2 × 10⁷⁷ |

Para dar uma ideia do número do AES-256: ele não está longe das estimativas comuns de quantos átomos existem no universo observável. Testar todas as chaves não é questão de computadores mais rápidos; está fisicamente fora de alcance.

## Modos: por que o “GCM” importa

Sozinha, uma cifra de bloco só embaralha um único bloco de 16 bytes. Um **modo de operação** define como criptografar arquivos inteiros com segurança. Modos mais antigos ofereciam apenas sigilo, o que significava que um atacante às vezes conseguia inverter bits no texto cifrado e causar mudanças previsíveis nos dados descriptografados.

**O GCM (Galois/Counter Mode) é um modo de criptografia autenticada.** Ele criptografa os dados e também calcula uma etiqueta de autenticação sobre eles. Na descriptografia, a etiqueta é verificada primeiro. Se o arquivo foi adulterado ou corrompido, a descriptografia falha de forma limpa, em vez de devolver conteúdo alterado.

O GCM tem uma regra rígida: um nonce (um número usado uma única vez) nunca pode se repetir com a mesma chave. Sistemas bem projetados evitam esse risco pela própria estrutura, por exemplo dando a cada arquivo uma chave própria.

## A parte que realmente decide a sua segurança: a derivação de chave

Eis a verdade incômoda sobre o “AES-256” num app protegido por bloqueio. Ninguém ataca a chave de 256 bits diretamente. Atacam aquilo de que você se lembra.

Um padrão, PIN ou senha é curto. Uma **função de derivação de chave (KDF)** é o processo que transforma esse segredo curto numa chave de tamanho completo. Se a KDF é rápida, um atacante que copiou os dados criptografados consegue testar bilhões de palpites. Se ela é deliberadamente lenta, cada palpite custa tempo e poder de processamento de verdade.

### Como o PBKDF2 atrasa os atacantes

O **PBKDF2** (Password-Based Key Derivation Function 2) é uma KDF padronizada e amplamente usada. Ele passa o seu segredo por uma função de hash com chave (HMAC) muitos milhares de vezes e mistura um **salt**, um valor aleatório que torna a sua chave derivada única mesmo que outra pessoa tenha escolhido o mesmo segredo.

- **As iterações** multiplicam o custo de cada palpite. Com centenas de milhares de iterações, um palpite que levaria um microssegundo passa a levar uma fração perceptível de segundo.
- **O salt** derrota tabelas pré-calculadas. Um atacante não consegue montar uma lista gigante de “padrão → chave” e reutilizá-la entre aparelhos.

Mesmo assim, nenhuma KDF salva um segredo que esteja entre os primeiros milhares que um atacante testaria. Por isso as orientações para escolher um segredo forte, no [guia padrão vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id), importam tanto quanto a cifra. Teste uma forma parecida (nunca a sua real) no [verificador de força de padrão](id:pattern-strength-checker).

## A questão quântica

Computadores quânticos ameaçam muito parte da criptografia e só um pouco outra parte.

- **Algoritmos de chave pública** como RSA e criptografia de curvas elípticas poderiam ser quebrados pelo algoritmo de Shor num computador quântico grande o bastante. É por isso que a troca de chaves pós-quântica está sendo adotada em todo o setor.
- **Cifras simétricas** como o AES enfrentam o algoritmo de Grover, que oferece um ganho quadrático na busca por força bruta. Na prática, isso reduz mais ou menos pela metade o tamanho efetivo da chave: o AES-256 ofereceria cerca de 128 bits de segurança contra um atacante quântico.

128 bits de segurança ainda são considerados fortes. Esse é um dos motivos pelos quais o AES-256 é recomendado para dados que precisam continuar confidenciais por muito tempo.

## Equívocos comuns

- **Superlativos na lista de recursos significam alguma coisa.** Não significam. O AES é um padrão público usado igualmente por bancos, navegadores e apps de mensagens; adjetivos dramáticos na frente dele são marketing.
- **AES-256 torna um app seguro.** Ele torna seguros os bytes criptografados. O tratamento das chaves, a KDF, o design do desbloqueio, os backups e as cópias deixadas em outros lugares decidem se o sistema inteiro é seguro.
- **Chaves mais longas consertam senhas fracas.** Não consertam. Uma chave de 256 bits derivada de “1234” é tão forte quanto “1234”.

## Como o Velcrypt usa o AES-256

O design do Velcrypt segue o princípio acima: cifra forte, tratamento cuidadoso das chaves, derivação lenta.

- **Cifra:** AES-256-GCM via Apple CryptoKit, então cada arquivo é criptografado e autenticado.
- **Derivação de chave:** o seu padrão é processado com PBKDF2-HMAC-SHA512 usando pelo menos 600.000 iterações e um salt aleatório por aparelho, guardado no Keychain do iOS.
- **Hierarquia de chaves:** cada cofre tem a própria chave mestra aleatória de 256 bits, e as chaves por arquivo são derivadas dela com HKDF. Chaves separadas por arquivo também facilitam respeitar a regra do nonce do GCM.
- **Camada extra:** a Proteção de Dados do iOS (classe de proteção completa) é aplicada aos arquivos por cima da criptografia do próprio Velcrypt.
- **Só no aparelho:** sem conta e sem servidores, então não existe cópia das suas chaves em nenhum outro lugar.

A [página do recurso de criptografia](id:encryption) resume isso, e a [visão geral de segurança](id:security) deixa claro contra o que a criptografia não protege, como alguém observando você desenhar o padrão ou um celular entregue com o cofre aberto.
