---
pageId: pattern-lock
title: "Bloqueio por padrão: desbloqueie o cofre em uma grade 5×5"
description: "O Velcrypt desbloqueia com um padrão desenhado em uma grade de 5×5 pontos. Conheça as regras, como criar um padrão forte e por que não há Face ID."
h1: "Bloqueio por padrão: uma grade 5×5 que só a sua memória abre"
navTitle: "Bloqueio por padrão"
answer: "O Velcrypt abre com um padrão que você desenha em uma grade de 5×5 pontos: uma linha contínua por pelo menos 6 pontos, com pelo menos uma mudança de direção. Padrões de 8 a 12 pontos são recomendados, e não há Face ID nem Touch ID, de propósito."
keyFacts:
  - "Desbloqueie desenhando uma linha contínua em uma grade 5×5 de 25 pontos."
  - "Regras mínimas: pelo menos 6 pontos e pelo menos uma mudança de direção."
  - "Tamanho recomendado: de 8 a 12 pontos."
  - "Sem Face ID ou Touch ID por design, porque a biometria pode ser forçada."
  - "Seu padrão também é a base da chave de criptografia do cofre."
primaryKeyword: "app com senha de padrão iphone"
keywords: ["bloqueio por padrão iphone", "cofre de fotos com padrão", "desenho de desbloqueio iphone", "padrão 5x5", "cofre de fotos sem face id", "padrão de desbloqueio forte"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Desbloqueie com um padrão desenhado em uma grade 5×5. Pelo menos 6 pontos e uma curva; 8 a 12 pontos recomendados. Sem Face ID, de propósito."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Quantos pontos um padrão do Velcrypt precisa ter?"
    a: "Pelo menos 6 pontos, desenhados como uma linha contínua com pelo menos uma mudança de direção. Para uma proteção melhor, use de 8 a 12 pontos e inclua várias curvas."
  - q: "Por que o Velcrypt não usa Face ID nem Touch ID?"
    a: "Um rosto ou uma digital podem ser usados sem o seu consentimento, por exemplo enquanto você dorme ou está sendo contido. Um padrão existe só na sua memória, então ninguém pode tirá-lo de você fisicamente. O Velcrypt deixa a biometria de fora de propósito."
  - q: "O que acontece se eu esquecer o meu padrão?"
    a: "O cofre não pode mais ser aberto, nem por você nem pelo Velcrypt. O padrão faz parte de como a chave de criptografia é derivada, e não há frase de recuperação nem conta para redefini-lo. Escolha um padrão de que você consiga se lembrar com segurança."
  - q: "Uma senha de padrão 5×5 é mais segura que o padrão 3×3 de celular?"
    a: "Pode ser. Uma grade 5×5 tem 25 pontos em vez de 9, então há muito mais padrões possíveis. O quanto o seu é seguro ainda depende do tamanho, do número de curvas e de quão previsível é o formato."
  - q: "Posso testar meu padrão em algum lugar antes de usá-lo?"
    a: "Você pode testar padrões parecidos no verificador de força de padrão do Velcrypt, que roda localmente no navegador. Nunca digite o seu padrão verdadeiro em nenhum site; teste um parecido."
---

A maioria dos apps pede um número. O Velcrypt pede que você desenhe. O bloqueio por padrão é a porta de entrada de cada cofre e também o segredo do qual a chave de criptografia do cofre é derivada, então vale a pena dedicar alguns minutos a ele.

## Como funciona o bloqueio por padrão 5×5

Um bloqueio por padrão é um método de desbloqueio em que você traça um caminho entre pontos em vez de digitar um código. No Velcrypt, a grade tem 25 pontos organizados em cinco linhas e cinco colunas. Você encosta o dedo, arrasta pelos pontos que escolher e levanta o dedo para terminar.

Duas regras valem para todo padrão:

1. **Pelo menos 6 pontos.** Linhas mais curtas são recusadas.
2. **Pelo menos uma mudança de direção.** Uma única linha reta não é permitida.

Esses são os mínimos. O Velcrypt recomenda padrões de **8 a 12 pontos**, porque cada ponto a mais multiplica o número de padrões possíveis que alguém teria de testar.

Cada padrão também faz mais do que desbloquear: ele escolhe qual cofre se abre. Essa ideia é explicada na página de [cofres ocultos](id:hidden-vaults).

## O que torna um padrão forte

Um padrão forte é longo, muda de direção com frequência e não lembra nada conhecido. A grade é grande, mas as pessoas tendem a repetir os mesmos hábitos: começar no canto superior esquerdo, traçar letras ou desenhar quadrados certinhos. Esses hábitos são exatamente o que alguém que observa ou tenta adivinhar testaria primeiro.

| Hábito | Por que é fraco | Alternativa melhor |
| --- | --- | --- |
| Começar em um canto | Cantos são os pontos de partida mais comuns | Comece em um ponto interno ou da borda |
| Letras e formas (L, Z, S, U, um quadrado) | Fáceis de adivinhar e de reconhecer por cima do ombro | Use um caminho irregular, sem forma óbvia |
| Longos trechos retos | Poucas decisões, pouca incerteza | Mude de direção a cada dois ou três pontos |
| Ficar em uma só área | Usa uma parte pequena da grade | Atravesse várias linhas e colunas |
| Padrões muito curtos | Menos combinações para testar | Mire em 8 a 12 pontos |

Algumas dicas práticas:

- **Cruze o próprio caminho.** Linhas que passam por cima de trechos anteriores são mais difíceis de ler por uma marca de dedo na tela ou por uma olhada rápida.
- **Crie um ritmo que faça sentido para você, não para os outros.** Um caminho que você desenha no automático é mais fácil de lembrar do que um aleatório em que precisa pensar.
- **Desenhe algumas vezes antes de confiar nele.** A repetição é o que transforma um padrão novo em memória muscular.
- **Proteja a tela.** Nenhum padrão ajuda se alguém vê você desenhá-lo. Incline o celular ou cubra a grade em público.

Se quiser uma segunda opinião, o [verificador de força de padrão](id:pattern-strength-checker) dá uma nota aproximada e uma estimativa em bits com base no tamanho, nas curvas, nos cruzamentos e na cobertura da grade. É uma heurística, não uma garantia, e você deve testar um padrão parecido com o seu, não o verdadeiro.

## Por que não há Face ID nem Touch ID

O Velcrypt não tem desbloqueio biométrico, e essa é uma decisão deliberada. A biometria é prática justamente porque está sempre com você, e essa também é a sua fraqueza: um rosto pode ser colocado na frente do celular e um dedo pode ser pressionado no sensor sem o seu consentimento.

Um padrão existe só na sua cabeça. Ninguém consegue tirá-lo da sua mão nem apontar o celular para o seu rosto para obtê-lo. Para um cofre feito para proteger seus arquivos mais privados, essa diferença importa mais do que economizar um segundo no desbloqueio. As vantagens e desvantagens são comparadas com mais detalhe em [padrão x PIN x Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Seu padrão e a chave de criptografia

O padrão não é só conferido e esquecido. O Velcrypt o passa por uma função lenta de derivação de chaves para gerar a chave que destrava a chave mestra do cofre, que por sua vez protege cada arquivo. A cadeia completa está descrita na página de [criptografia](id:encryption).

Isso tem uma consequência honesta. Como o padrão faz parte da chave, não existe link de “redefinir padrão” nem conta de reserva. Se você esquecê-lo, o cofre fica trancado para sempre. Leia [o que fazer se você esquecer o padrão do cofre](id:forgot-vault-pattern) antes de escolher um, e escolha algo de que ainda vai se lembrar daqui a seis meses.

## Contra o que um padrão não protege

Um padrão forte eleva o nível, mas é só uma camada. Ele não impede quem filma ou observa você desenhando, alguém a quem você entrega o celular com um cofre aberto, nem malware em um aparelho com jailbreak. A [página de segurança](id:security#what-velcrypt-does-not-protect-against) lista esses limites por completo. Combinar o padrão com o [bloqueio automático](id:auto-lock) fecha a brecha mais comum: um cofre que fica aberto quando você deixa o celular de lado.
