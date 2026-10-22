---
pageId: pattern-strength-checker
title: "Verificador de força do padrão: teste um padrão 5×5"
description: "Desenhe um padrão de teste em uma grade 5×5 e veja uma nota de força e uma estimativa em bits. Funciona localmente. Nunca digite seu padrão real em sites."
h1: "Verificador de força do padrão de desbloqueio"
navTitle: "Verificador de força do padrão"
answer: "Desenhe um padrão na grade 5×5 para ver se ele cumpre as regras mínimas do Velcrypt e receber uma nota aproximada, de Curto demais a Muito forte, além de uma estimativa em bits. É uma heurística, não uma garantia. Nunca coloque seu padrão real em nenhum site; teste um parecido."
keyFacts:
  - "Verifica as regras mínimas do Velcrypt: pelo menos 6 pontos e pelo menos uma mudança de direção."
  - "Classifica os padrões como Curto demais, Fraco, Razoável, Forte ou Muito forte, com uma estimativa aproximada em bits."
  - "Valoriza mais pontos, mudanças de direção, cruzamentos da própria linha e maior cobertura da grade."
  - "Penaliza começos no canto, longas retas e formas de letras simples como L, Z, S e U."
  - "Funciona localmente; nada é armazenado nem enviado. Teste um padrão parecido, nunca o real."
primaryKeyword: "padrão de desbloqueio seguro"
keywords: ["força do padrão de desbloqueio", "meu padrão é seguro", "segurança do bloqueio por padrão", "padrão de desbloqueio 5x5", "ideias de padrão de desbloqueio seguro", "testar padrão de desbloqueio"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Desenhe um padrão de teste em uma grade 5×5 e veja uma nota aproximada de força. Funciona localmente. Nunca use seu padrão real."
toolName: "Verificador de força do padrão"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Verificar a força de um padrão de teste"
  steps:
    - name: "Desenhe um padrão parecido"
      text: "Toque ou arraste pela grade 5×5 para desenhar um padrão no mesmo estilo daquele que você tem em mente, não o seu padrão real."
    - name: "Confira as regras mínimas"
      text: "Verifique se o padrão usa pelo menos 6 pontos e muda de direção pelo menos uma vez."
    - name: "Leia a nota"
      text: "Veja a nota, de Curto demais a Muito forte, e a estimativa aproximada em bits."
    - name: "Ajuste e tente de novo"
      text: "Acrescente pontos, curvas ou um cruzamento, evite começar no canto e formas de letras simples, e veja como a nota muda."
faq:
  - q: "É seguro colocar meu padrão real aqui?"
    a: "Não faça isso. O verificador funciona localmente e não armazena nada, mas a boa prática é nunca digitar um segredo real em nenhum site. Desenhe um padrão de estilo parecido e aplique o que aprender."
  - q: "Como a força é calculada?"
    a: "É uma heurística. O verificador conta os pontos e as mudanças de direção, percebe quando a linha cruza a si mesma, mede quantas linhas e colunas ela cobre e reduz a nota para começos no canto, longas retas e formas que parecem letras simples."
  - q: "O que significam os bits?"
    a: "Os bits são uma medida aproximada de quantas tentativas um atacante poderia precisar; cada bit a mais praticamente dobra esse número. A estimativa aqui é aproximada e considera alguém que conhece os hábitos comuns, não um chute puramente aleatório."
  - q: "Qual deve ser o tamanho de um padrão do Velcrypt?"
    a: "O mínimo é de 6 pontos, com pelo menos uma mudança de direção. O Velcrypt recomenda de 8 a 12 pontos para um padrão mais forte que você ainda consiga lembrar com segurança."
  - q: "Um padrão forte protege contra alguém que está me observando?"
    a: "Não. Se alguém vir você desenhar, a força não importa. Proteja a tela e desenhe onde não possa ser observado nem filmado."
  - q: "E se eu esquecer um padrão complicado?"
    a: "No Velcrypt, um padrão esquecido não pode ser recuperado, nem por você nem pelo Velcrypt. Escolha algo complexo, mas fácil de lembrar, e pratique antes de depender dele."
---

## Como funciona

Toque ou arraste pela grade 5×5 para desenhar um padrão de teste. Enquanto você desenha, o verificador primeiro confere as regras mínimas do Velcrypt: uma linha contínua por pelo menos seis pontos, com pelo menos uma mudança de direção. Se o padrão não as cumprir, ele recebe a nota **Curto demais**.

Depois que o padrão passa, o verificador dá uma nota aproximada — **Fraco**, **Razoável**, **Forte** ou **Muito forte** — além de uma força aproximada em bits. Tudo funciona no seu navegador. Nada é salvo, e nada é enviado para lugar nenhum.

## O que o verificador analisa

A força de um padrão é, grosso modo, o quanto seria difícil alguém adivinhá-lo, considerando o que as pessoas costumam desenhar. O verificador combina vários sinais:

- **Número de pontos.** Mais pontos significam mais padrões possíveis.
- **Mudanças de direção.** Cada curva acrescenta imprevisibilidade em relação a uma linha reta.
- **Cruzamentos da própria linha.** Uma linha que cruza o próprio caminho é menos comum e mais difícil de adivinhar.
- **Cobertura da grade.** Padrões que se estendem por várias linhas e colunas pontuam mais do que os espremidos em uma única área.
- **Começo no canto.** Começar em um canto é muito comum, então reduz um pouco a nota.
- **Longas retas.** Percorrer uma linha ou coluna inteira é fácil de adivinhar e fácil de ver por cima do ombro.
- **Formas simples.** Padrões que lembram L, Z, S, U ou um quadrado estão entre os primeiros que qualquer pessoa tentaria.

O número de bits é uma estimativa, não uma medição. É uma heurística feita para afastar você dos hábitos comuns, não uma garantia de quanto tempo um padrão resistiria a um atacante determinado.

## Por que os padrões humanos são previsíveis

No papel, uma grade 5×5 oferece um número enorme de linhas possíveis. Na prática, as pessoas não escolhem ao acaso. Pesquisas sobre o clássico padrão 3×3 dos celulares encontraram repetidamente vieses fortes: começar no canto superior esquerdo, ir da esquerda para a direita e de cima para baixo, fazer poucas curvas e desenhar letras conhecidas. Esses hábitos encolhem o espaço que um atacante realmente precisa vasculhar.

Um padrão forte é aquele que evita esses hábitos e continua fácil de você lembrar. Para uma comparação mais ampla entre formas de desbloqueio, leia [padrão vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Dicas para um padrão mais forte

1. **Busque de 8 a 12 pontos.** É a recomendação do Velcrypt: longo o bastante para ser difícil de adivinhar, curto o bastante para lembrar.
2. **Faça duas ou mais curvas.** Misture movimentos horizontais, verticais e diagonais.
3. **Cruze a própria linha uma vez.** Isso acrescenta complexidade sem exigir muito esforço para memorizar.
4. **Comece fora dos cantos.** Pontos do meio ou das bordas são menos esperados.
5. **Use a grade inteira.** Passe por pelo menos três linhas e três colunas.
6. **Evite letras e formas.** Iniciais, L, Z, S, U e quadrados estão entre as primeiras tentativas.
7. **Pratique antes de depender dele.** Desenhe várias vezes para que a memória muscular assuma.

## Nunca coloque seu padrão real

Este verificador não armazena nem transmite nada, mas o hábito importa mais do que esta página. Nunca digite ou desenhe uma senha, PIN ou padrão real em nenhum site. Em vez disso, desenhe um padrão de estilo parecido (comprimento, número de curvas e região de início semelhantes) e use o resultado como orientação.

## A força é só parte da história

No Velcrypt, seu padrão é a chave: as chaves de criptografia são derivadas dele com PBKDF2-HMAC-SHA512 usando no mínimo 600.000 iterações, o que torna cada tentativa lenta. Veja [criptografia](id:encryption). Cada padrão também abre seu próprio cofre, como explicado em [cofres ocultos](id:hidden-vaults) e [bloqueio por padrão](id:pattern-lock).

Um padrão forte não protege contra alguém que observa você desenhar, contra um celular entregue com o cofre aberto nem contra um padrão esquecido. Não há redefinição de padrão, então leia [esqueceu o padrão do cofre](id:forgot-vault-pattern) antes de escolher algo de que você talvez não se lembre.
