---
pageId: hidden-vaults
title: "Cofres ocultos: cada padrão abre o seu próprio cofre"
description: "No Velcrypt, cada padrão é um cofre separado. Não há lista de cofres, e um padrão desconhecido abre um cofre vazio, sem erro. Veja como funciona."
h1: "Cofres ocultos: um padrão, um cofre, nenhuma lista"
navTitle: "Cofres ocultos"
answer: "No Velcrypt, cada padrão abre o seu próprio cofre criptografado. Não existe lista de cofres, e um padrão que o app nunca viu simplesmente abre um cofre vazio, sem erro, então nada na tela prova que existem outros cofres."
keyFacts:
  - "Cada padrão é um cofre próprio, com a sua própria chave de criptografia."
  - "O Velcrypt nunca mostra uma lista de cofres."
  - "Um padrão desconhecido abre um cofre vazio, sem mensagem de erro."
  - "Você pode manter um cofre de fachada com conteúdo comum."
  - "Mais cofres fazem parte do upgrade Premium opcional planejado."
primaryKeyword: "app cofre oculto iphone"
keywords: ["cofre secreto iphone", "app com vários cofres de fotos", "cofre falso iphone", "cofre de fachada", "negação plausível cofre de fotos", "segundo cofre oculto"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Cada padrão é um cofre próprio. Sem lista de cofres, sem erro para padrões desconhecidos e com espaço para um cofre de fachada convincente."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "Como vejo todos os meus cofres no Velcrypt?"
    a: "Não vê, e isso é intencional. O Velcrypt não tem lista de cofres. O único jeito de abrir um cofre é desenhar o padrão dele, então guarde de memória quais são os seus padrões."
  - q: "O que acontece se eu desenhar o padrão errado?"
    a: "O Velcrypt abre um cofre vazio para aquele padrão em vez de mostrar um erro. Se você adicionasse arquivos ali, esse padrão viraria um novo cofre. Se esperava ver suas fotos e não aparece nada, provavelmente desenhou um padrão um pouco diferente."
  - q: "Alguém consegue saber que eu tenho mais de um cofre secreto?"
    a: "Não pela interface do app. Não há lista, contador nem mensagem de erro que revele outros cofres. O Velcrypt não consegue esconder que o próprio app está instalado e não impede que alguém veja você desenhar um padrão."
  - q: "O que é um cofre de fachada?"
    a: "Um cofre de fachada é um cofre com conteúdo comum e convincente, que você pode abrir se for pressionado a mostrar o que há dentro do app. O cofre verdadeiro fica atrás de outro padrão."
howTo:
  name: "Criar um segundo cofre oculto no Velcrypt"
  steps:
    - name: "Bloqueie o Velcrypt"
      text: "Saia do cofre em que você está para que a grade do padrão apareça."
    - name: "Desenhe um padrão novo"
      text: "Desenhe um padrão que você nunca usou, com pelo menos 6 pontos e pelo menos uma mudança de direção. Um cofre vazio se abre."
    - name: "Adicione conteúdo"
      text: "Importe uma foto, um vídeo ou um documento para o cofre vazio para começar a usá-lo."
    - name: "Pratique o padrão"
      text: "Bloqueie e desbloqueie algumas vezes para lembrar qual padrão pertence a qual cofre."
---

A maioria dos apps de cofre tem uma senha e uma área bloqueada, então perguntar “qual é a senha?” revela tudo. O Velcrypt funciona de outro jeito: o padrão que você desenha não apenas desbloqueia o app, ele decide qual cofre aparece. Essa ideia simples é o que torna os cofres ocultos possíveis.

## Cada padrão é um cofre próprio

Um cofre oculto é um cofre cuja existência não pode ser confirmada por quem está de fora. No Velcrypt, cada padrão válido na [grade 5×5](id:pattern-lock) corresponde a um cofre separado, com chave mestra aleatória e arquivos próprios. O padrão A mostra as fotos que você guardou atrás do padrão A. O padrão B mostra um conjunto completamente diferente.

Não existe tela de ajustes que liste os cofres, nem menu “trocar de cofre”, nem número que diga quantos existem. De dentro do app, cada cofre parece ser o único.

## Nenhum erro para um padrão desconhecido

Quando você desenha um padrão que o Velcrypt nunca viu, ele não diz “padrão incorreto”. Ele abre um cofre vazio. Esse comportamento é o coração do recurso:

- **Nada para contar.** Não há contador de tentativas nem mensagem de falha que confirme que o padrão “verdadeiro” ainda existe.
- **Nada para comparar.** Um cofre vazio é idêntico a um cofre que você acabou de criar.
- **Nada para provar.** Quem olha o app não consegue saber se você tem um cofre ou vários.

Isso é uma forma de [negação plausível](id:plausible-deniability-explained): a capacidade de afirmar de forma crível que o que você mostrou é tudo o que existe, porque o software não dá nenhuma evidência do contrário.

Há também um efeito prático. Se você errar o padrão, vai cair em um cofre vazio em vez de ver um erro. Se suas fotos parecerem ter sumido, bloqueie o app e desenhe o padrão de novo, com calma.

## Como criar um segundo cofre

1. **Bloqueie o Velcrypt.** Saia do cofre em que você está para que a grade do padrão apareça.
2. **Desenhe um padrão novo.** Use um que você nunca usou, seguindo as regras de sempre: pelo menos 6 pontos e pelo menos uma mudança de direção.
3. **Adicione algo.** Um cofre vazio se abre. Importe uma foto, um vídeo ou um documento para começar a usá-lo.
4. **Pratique o padrão.** Bloqueie e desbloqueie algumas vezes para lembrar exatamente qual padrão pertence a qual cofre.

## Usando um cofre de fachada

Um cofre de fachada é um cofre cheio de conteúdo inofensivo, mas convincente, como alguns comprovantes salvos, capturas de tela ou fotos de férias. Se alguém insistir em ver o que há no Velcrypt, você pode abrir o cofre de fachada, e ele se comporta como qualquer outro cofre.

Um cofre de fachada funciona melhor quando parece usado. Um cofre vazio levanta a pergunta “por que instalar um app de cofre para nada?”, enquanto um cofre com algumas dezenas de itens comuns raramente levanta. O guia sobre [o que é um cofre de fachada](id:what-is-a-decoy-vault) mostra como deixá-lo convincente.

O Velcrypt também planeja um [padrão de coação](id:duress-pattern) para o upgrade Premium opcional (em breve). A ideia é ir um passo além do cofre de fachada: abrir um cofre escolhido e remover em silêncio o acesso aos outros.

## Como cada cofre continua separado

A separação não é só uma questão de esconder pastas. Cada cofre tem a própria chave mestra aleatória de 256 bits, destravada por uma chave derivada do padrão daquele cofre. Os arquivos de um cofre são criptografados com chaves que pertencem só a ele, então abrir um cofre não dá acesso a nenhum outro. A página de [criptografia](id:encryption) explica a cadeia de chaves completa.

## O que os cofres ocultos fazem e não fazem

Cofres ocultos dificultam provar que existe mais conteúdo. Eles não deixam você invisível:

- O ícone do Velcrypt aparece na Tela de Início. O iOS 18 e posteriores permitem ocultar apps em uma pasta oculta protegida pelo Face ID, mas esse é um recurso do iOS, não do Velcrypt.
- Quem vê você desenhar o padrão verdadeiro consegue abrir o cofre verdadeiro.
- Cópias de um arquivo que ainda existam em outros lugares, como no Fotos, em Apagados, no iCloud ou em uma conversa, ficam fora da proteção do cofre.
- A negação depende do contexto. É uma propriedade técnica do app, não uma garantia legal.

Para situações como cruzar uma fronteira ou entregar o celular a alguém, leia [privacidade do celular na fronteira](id:phone-privacy-border-crossing) antes de confiar em um único recurso.
