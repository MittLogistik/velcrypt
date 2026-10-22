---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Padrão vs. PIN vs. Face ID: qual é mais seguro?"
description: "Padrão, PIN, senha ou Face ID? Compare combinações, olhares por cima do ombro, marcas na tela e desbloqueio forçado para proteger dados privados."
h1: "Padrão vs. PIN vs. senha vs. Face ID: qual bloqueio é mais seguro?"
navTitle: "Padrão vs. PIN vs. Face ID"
answer: "Nenhum bloqueio vence em tudo. Uma senha longa e aleatória resiste melhor a palpites; Face ID e Touch ID resistem melhor a olhares por cima do ombro, mas podem ser usados sem o seu consentimento; um PIN de 6 dígitos supera um de 4 por um fator de 100; e um padrão é tão forte quanto o desenho que a pessoa escolhe de fato — padrões longos e irregulares são bons, letras simples e cantos não."
keyFacts:
  - "Um PIN de 4 dígitos tem 10.000 combinações; um de 6 dígitos tem 1.000.000."
  - "Padrões escolhidos por pessoas são muito mais fracos que o máximo teórico: as pessoas preferem cantos, letras e formas curtas."
  - "A biometria é prática e difícil de espiar, mas um rosto ou um dedo pode ser usado enquanto você dorme, está contido ou sob coação."
  - "Marcas de dedo na tela vazam padrões com mais facilidade que PINs."
  - "O Velcrypt usa um padrão numa grade de 5×5 (pelo menos 6 pontos) e, de propósito, não tem Face ID nem Touch ID."
primaryKeyword: "padrão vs pin"
keywords: ["pin ou face id segurança", "bloqueio por padrão é seguro", "padrão ou senha", "face id ou código", "bloqueio de celular mais seguro", "desbloqueio biométrico forçado"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Cálculo de combinações, olhares por cima do ombro, marcas na tela e biometria forçada: uma comparação honesta das quatro formas comuns de bloqueio."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Bloqueio por padrão é mais seguro que PIN?"
    a: "Depende do padrão e do PIN específicos. Um padrão longo e irregular numa grade grande pode superar um PIN de 6 dígitos, mas um padrão curto em forma de letra é mais fácil de adivinhar que um PIN aleatório de 6 dígitos. Comprimento e imprevisibilidade importam mais que o tipo de bloqueio."
  - q: "Face ID é mais seguro que o código?"
    a: "O Face ID é muito difícil de enganar com uma foto e impossível de espiar por cima do ombro, então protege bem contra bisbilhoteiros. A fraqueza dele é o consentimento: alguém pode apontar o celular para o seu rosto. Um código só funciona se você o digitar."
  - q: "Quantas combinações tem um PIN de 6 dígitos?"
    a: "Um PIN de 6 dígitos tem 1.000.000 de combinações possíveis (de 000000 a 999999), contra 10.000 de um PIN de 4 dígitos. Escolhas comuns como 123456 ou datas de aniversário reduzem drasticamente o número real."
  - q: "Alguém consegue descobrir meu padrão pelas marcas na tela?"
    a: "Às vezes. Com a luz certa, os rastros do dedo numa tela de vidro podem revelar o caminho de um padrão. Limpar a tela, usar uma película fosca e escolher um padrão que cruze a si mesmo dificultam esse tipo de ataque."
  - q: "Por que o Velcrypt não oferece Face ID?"
    a: "De propósito. Um rosto ou uma digital podem ser usados para desbloquear um aparelho sem a sua concordância, enquanto um padrão existe só na sua memória. O Velcrypt escolheu o padrão para que abrir um cofre sempre exija que você decida abri-lo."
---

Todo bloqueio é um equilíbrio entre o quanto é difícil adivinhar, o quanto é fácil de observar e o quanto é fácil alguém obrigar você a abrir. A maioria das comparações olha só para o primeiro ponto. Este guia olha para os três, com números reais onde eles existem e ressalvas honestas onde não existem.

## Os quatro concorrentes

- **PIN** é uma sequência curta de dígitos, normalmente 4 ou 6 no iPhone.
- **Senha alfanumérica** é uma sequência de letras, números e símbolos de qualquer tamanho.
- **Padrão** é um caminho desenhado por uma grade de pontos. O Android popularizou a grade de 3×3; o [bloqueio por padrão do Velcrypt](id:pattern-lock) usa uma grade de 5×5.
- **Biometria** (Face ID, Touch ID) desbloqueia com o rosto ou a digital, com um código como apoio.

## Espaço de busca: quantos palpites seriam necessários?

O espaço de busca é o número de segredos possíveis que um atacante teria de testar no pior caso. É o número mais claro para comparar bloqueios, desde que você lembre que as pessoas não escolhem segredos ao acaso.

### PINs

Um PIN de 4 dígitos tem 10 × 10 × 10 × 10 = **10.000** possibilidades. Um PIN de 6 dígitos tem **1.000.000**. Esse salto de 100 vezes é a melhoria de segurança mais fácil que a maioria das pessoas pode fazer.

O problema é a distribuição. Análises de PINs vazados mostram, de forma consistente, que um punhado de códigos (1234, 0000, 1111, anos de nascimento, 123456) cobre uma grande parte das escolhas reais. Um atacante testa esses primeiro.

### Senhas alfanuméricas

Com cerca de 70 caracteres possíveis por posição, cada caractere acrescenta uns 6 bits. Uma senha realmente aleatória de 10 caracteres tem mais combinações que qualquer PIN ou padrão prático. O problema é memorizar: as pessoas escolhem palavras, nomes e substituições previsíveis, e senhas longas são cansativas de digitar no celular várias vezes por dia.

### Padrões: teoria versus pessoas

É aqui que a honestidade importa. O número teórico de padrões pode parecer enorme. Na clássica grade de 3×3 do Android (de 4 a 9 pontos, sem repetir ponto), existem 389.112 padrões válidos, mais que um PIN de 5 dígitos. Numa grade de 5×5 com 25 pontos, a contagem teórica é muitíssimo maior.

Padrões reais são bem mais fracos do que esses números sugerem. Pesquisas sobre padrões do Android descobriram repetidamente que as pessoas:

- começam no canto superior esquerdo muito mais vezes do que o acaso preveria,
- desenham padrões curtos, perto do tamanho mínimo,
- traçam letras (L, Z, S, C, U, N) ou quadrados simples,
- vão da esquerda para a direita e de cima para baixo, do jeito que leem.

Por isso, a força efetiva de um padrão típico de 3×3 escolhido por uma pessoa está mais perto da de um PIN curto do que do máximo teórico. Uma grade maior só ajuda se você a usar de verdade: um “L” de 6 pontos numa grade de 5×5 continua fácil de adivinhar.

O que torna um padrão forte é o mesmo que torna qualquer segredo forte: comprimento e imprevisibilidade. Numa grade de 5×5, um padrão de 8 a 12 pontos que muda de direção várias vezes, não começa num canto, não forma uma letra e, de preferência, cruza o próprio caminho é realmente difícil de adivinhar. Você pode testar uma forma parecida (nunca a sua real) no [verificador de força de padrão](id:pattern-strength-checker).

### A velocidade dos palpites importa tanto quanto a quantidade

O número de combinações é só metade da história. A outra metade é a rapidez com que um atacante consegue testá-las. No iPhone, o Secure Enclave impõe atrasos crescentes para o código do aparelho. Dentro de um app, a defesa normalmente é a derivação de chave: o Velcrypt passa cada padrão pelo PBKDF2 com pelo menos 600.000 iterações, o que torna cada palpite deliberadamente lento. O [explicador sobre AES-256](id:aes-256-encryption-explained) mostra por que essa etapa importa mais que a própria cifra.

## Olhares e marcas na tela

**Olhar por cima do ombro** significa alguém observando você desbloquear. É o ataque real mais comum contra bloqueios de celular, porque as pessoas mais motivadas a entrar no seu celular muitas vezes estão sentadas ao seu lado.

- **Padrões** são os mais fáceis de observar. Uma forma fica na memória com uma olhada, mesmo do outro lado da mesa.
- **PINs** são moderadamente fáceis de observar, principalmente os de 4 dígitos digitados com um polegar.
- **Senhas** são mais difíceis de pegar numa única olhada, porque são mais longas e o teclado alterna entre layouts.
- **Biometria** não pode ser espiada de jeito nenhum.

**Ataques por marcas na tela** leem o rastro de gordura que o dedo deixa no vidro. Padrões ficam mais expostos aqui que PINs, porque uma linha contínua deixa um rastro contínuo. Padrões que se cruzam, voltam atrás ou passam por pontos numa ordem ambígua são muito mais difíceis de reconstruir a partir de um rastro.

Defesas práticas: incline a tela para longe dos outros, cubra-a com a outra mão, limpe a tela de vez em quando e desbloqueie apps sensíveis quando estiver sozinho.

## Desbloqueio forçado: a pergunta que a maioria das comparações pula

A biometria tem uma fraqueza que nenhuma engenharia elimina: ela não exige a sua participação. Alguém pode apontar o seu celular para o seu rosto enquanto você dorme, pressionar o seu dedo no sensor ou forçar você fisicamente. Em situações domésticas, em festas ou num assalto, esse é um risco realista.

Em alguns lugares, autoridades também podem legalmente exigir que você forneça a digital ou o rosto, enquanto tratam de forma diferente um código memorizado. O quadro jurídico varia muito entre países e mudou ao longo do tempo, então este guia não dá orientação jurídica. O ponto técnico é simples: um segredo na sua memória exige uma decisão sua; uma parte do corpo, não.

Se você usa o Face ID, conheça a saída de emergência. No iPhone 8 e posteriores, manter pressionados o botão lateral e qualquer um dos botões de volume até aparecer a tela de desligar/SOS (e depois cancelar) desativa temporariamente o Face ID e o Touch ID até que o código seja digitado. Veja [privacidade do celular na fronteira](id:phone-privacy-border-crossing) para saber quando isso importa.

## Comparação lado a lado

| | PIN de 4 dígitos | PIN de 6 dígitos | Senha longa | Padrão (5×5, 8+ pontos) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Combinações possíveis | 10.000 | 1.000.000 | Enorme, se aleatória | Enorme em teoria; bem menor para formas previsíveis | Não se aplica |
| Facilidade de adivinhar na prática | Alta (códigos comuns) | Moderada | Baixa, se aleatória | Baixa se irregular, alta se for uma letra | Muito baixa |
| Olhar por cima do ombro | Fácil | Moderado | Difícil | Fácil | Impossível |
| Vazamento por marcas na tela | Algum | Algum | Baixo | Alto, a menos que o caminho se cruze | Nenhum |
| Pode ser usado sem o seu consentimento | Não | Não | Não | Não | Sim |
| Rapidez e conforto | Rápido | Rápido | Lento no celular | Rápido | O mais rápido |

## Escolher o bloqueio certo para cada camada

Você não precisa escolher um único bloqueio para tudo. Uma configuração sensata para a maioria das pessoas:

1. **Aparelho:** um código de 6 dígitos (ou mais), com Face ID ou Touch ID por praticidade, se a sua situação permitir.
2. **Conteúdo privado:** um segredo separado, que não seja o código do aparelho, para que quem descobrir ou observar o seu código não tenha acesso automático a tudo.
3. **Saiba desativar a biometria rapidamente** quando estiver num lugar onde possa ser pressionado.

## Onde o Velcrypt se encaixa

O Velcrypt faz uma escolha deliberada: o único jeito de entrar num cofre é um padrão numa grade de 5×5 pontos, uma linha contínua por pelo menos 6 pontos com pelo menos uma mudança de direção. Padrões mais longos, de 8 a 12 pontos, são recomendados. Não há Face ID nem Touch ID, porque um padrão não pode ser tirado do seu corpo.

O design também muda o que significa “adivinhar”. Cada padrão é um cofre próprio, e um padrão que o Velcrypt nunca viu simplesmente abre um cofre vazio, sem mensagem de erro. Ou seja, um palpite errado não se anuncia como errado, e você pode manter um [cofre falso](id:what-is-a-decoy-vault) com um segundo padrão. A página de [cofres ocultos](id:hidden-vaults) explica o modelo, e a [visão geral de segurança](id:security) lista contra o que ele não protege, incluindo alguém observando você desenhar.
