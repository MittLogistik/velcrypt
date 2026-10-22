---
pageId: self-destruct-photo-vault
title: "Cofre de fotos com autodestruição no iPhone: como funciona"
description: "Como funciona um cofre de fotos que se apaga sozinho no iPhone: exclusão após tentativas erradas x padrão de coação, os riscos de apagar de vez e backups."
h1: "Cofres de fotos com autodestruição no iPhone: como funcionam e quanto custam a você"
navTitle: "Cofres com autodestruição"
answer: "Um cofre de fotos com autodestruição apaga o conteúdo quando um gatilho é atingido. Os gatilhos comuns são tentativas erradas demais e um código de coação. Tentativas erradas podem ser disparadas por qualquer pessoa; um código de coação, só por você. O Velcrypt usa um padrão de coação que abre um cofre de fachada e apaga de forma permanente todos os outros. A exclusão não pode ser desfeita, então mantenha um backup."
keyFacts:
  - "Recursos de autodestruição apagam o conteúdo do cofre quando um gatilho é atingido; a exclusão não pode ser desfeita."
  - "A exclusão por tentativas erradas pode ser disparada por qualquer um que erre demais, inclusive uma criança ou um atacante."
  - "Um código de coação só é disparado de propósito, por você, e pode ser silencioso."
  - "O próprio iPhone pode apagar todos os dados após 10 tentativas erradas de código, se você ativar isso."
  - "O padrão de coação do Velcrypt abre um cofre de fachada e apaga de forma permanente todos os outros cofres (Premium)."
  - "Um arquivo de backup criptografado feito antes é o único caminho de volta depois de uma autodestruição."
primaryKeyword: "cofre de fotos autodestrutivo iphone"
keywords: ["cofre de fotos que se apaga sozinho", "app cofre com autodestruição", "cofre de fotos apagar após tentativas erradas", "apagar fotos em emergência iphone", "senha de pânico cofre de fotos"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Exclusão por tentativas erradas x padrão de coação, o custo real de apagar de vez e como manter um backup seguro antes de contar com qualquer um deles."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Existe cofre de fotos para iPhone que se apaga sozinho?"
    a: "Sim. Alguns apps de cofre apagam o conteúdo depois de um número de tentativas erradas, e alguns oferecem um código de coação ou de pânico. O Velcrypt tem um padrão de coação (Premium) que abre um cofre de fachada e apaga de forma permanente todos os outros cofres do iPhone."
  - q: "O Velcrypt apaga cofres depois de padrões errados demais?"
    a: "Não. No Velcrypt, um padrão que o app nunca viu simplesmente abre um cofre novo e vazio, então não existe “tentativa errada” para contar. A exclusão só acontece quando alguém desenha o padrão de coação que você configurou."
  - q: "Consigo recuperar as fotos depois que um cofre se autodestrói?"
    a: "Pelo celular, não. No Velcrypt, o único caminho de volta é um arquivo de backup criptografado feito antes em Ajustes → Backup e guardado fora do app. O padrão de coação não mexe em arquivos de backup salvos em outro lugar."
  - q: "Autodestruição é o mesmo que eliminação segura?"
    a: "Não exatamente. A memória flash não garante que os bytes apagados sejam eliminados fisicamente. Os dados dos cofres do Velcrypt são criptografados com AES-256-GCM e as chaves são apagadas junto com os cofres, então o que sobrar é texto cifrado ilegível."
  - q: "Posso usar um cofre com autodestruição se a polícia pedir para ver meu celular?"
    a: "Não. Não use nenhum recurso de exclusão para destruir provas ou desafiar uma exigência legal. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só. Procure orientação jurídica."
---

“Um cofre que se apaga sozinho” parece a proteção definitiva. Às vezes é. Mas a autodestruição também é o único recurso de um app de cofre que pode custar tudo a você em um segundo. Este guia explica como funcionam as abordagens comuns, no que cada uma é boa e ruim, e como usar uma sem perder arquivos que você queria manter.

## O que “autodestruição” significa em um cofre de fotos

Um recurso de autodestruição apaga parte ou todo o conteúdo de um cofre quando um gatilho é atingido. No iPhone, você vai ver principalmente três tipos:

1. **Exclusão por tentativas erradas:** depois de um número definido de PINs ou senhas erradas, o app apaga o conteúdo.
2. **Código de coação ou de pânico:** um código especial que, ao ser digitado, abre um conteúdo inofensivo e apaga o resto. [Senha de coação, explicada](id:duress-password-explained) traz o contexto.
3. **Exclusão no aparelho inteiro:** o iOS pode apagar o iPhone todo após 10 tentativas erradas de código (Ajustes › Face ID e Código › Apagar Dados), e o Buscar pode apagar remotamente um celular perdido.

Eles resolvem problemas diferentes e falham de formas diferentes.

## Exclusão por tentativas erradas

A ideia é simples: se alguém continua chutando, apague tudo antes que acerte.

**No que ela é boa**

- Funciona mesmo que você não esteja por perto, por exemplo se o seu celular for roubado.
- Coloca um limite rígido para quem tenta adivinhar PINs curtos.

**Onde ela falha**

- **Qualquer um pode dispará-la.** Uma criança brincando com o seu celular, um amigo tentando fazer graça ou um atacante que prefere destruir os seus arquivos a desistir podem acioná-la de propósito ou sem querer.
- **Ela é visível.** Depois da exclusão, o cofre está obviamente vazio ou reiniciado, o que mostra à pessoa que algo aconteceu.
- **Ela protege contra chutes, não contra coação.** Se alguém obriga você a digitar o código certo, o contador de tentativas erradas nunca entra em jogo.

Também vale conferir como o app conta as tentativas: se o contador sobrevive a reabrir o app e se ele realmente apaga os dados ou só bloqueia você.

## Códigos de coação e padrões de coação

Um código de coação é disparado de propósito, por você, normalmente quando alguém está obrigando você a desbloquear o app. As melhores implementações abrem uma fachada convincente e apagam em silêncio o conteúdo sensível por trás dela.

**No que ele é bom**

- **Só você pode dispará-lo.** Ninguém o aciona chutando.
- **Ele pode ser silencioso.** Se bem feito, nada na tela mostra que algo foi apagado.
- **Ele foi feito para a coação**, exatamente a situação que um contador de tentativas erradas não resolve.

**Onde ele falha**

- **Você precisa conseguir usá-lo.** Se alguém pegar o celular já desbloqueado, ou vir você desenhar o seu segredo verdadeiro, ele não ajuda.
- **Você precisa lembrar dele sob estresse**, sem confundi-lo com o segredo verdadeiro.
- **Ele é tão irreversível** quanto qualquer outra exclusão.

## Como o Velcrypt faz

O Velcrypt, de propósito, **não tem exclusão por tentativas erradas**. Cada padrão desenhado na grade 5×5 abre o seu próprio cofre, e um padrão que o app nunca viu simplesmente abre um cofre novo e vazio, sem erro. Não existe “padrão errado” para contar, e é isso que torna os [cofres ocultos](id:hidden-vaults) negáveis; também significa que ninguém consegue apagar os seus cofres só chutando mal.

Em vez disso, o Velcrypt tem um [padrão de coação](id:duress-pattern), parte do Premium:

- Você o configura em Ajustes → Padrão de Coação, de dentro de um [cofre de fachada](id:what-is-a-decoy-vault) com conteúdo inofensivo.
- Você desenha um padrão separado duas vezes e confirma. Não pode ser um padrão que já abre um cofre.
- Na tela de bloqueio, desenhá-lo abre o cofre de fachada e apaga em silêncio, de forma permanente, todos os outros cofres daquele iPhone. O desbloqueio parece igual e leva o mesmo tempo que o normal.
- O app nunca mostra se há um padrão de coação configurado. Existe um por iPhone; um novo substitui o anterior. Para desativá-lo é preciso desenhá-lo, e isso não apaga nada.
- Ele continua funcionando se o Premium acabar; só a configuração exige o Premium.
- Se você o configurar no único cofre do celular, não há mais nada para apagar, e o app avisa você.

## Comparando as abordagens

| | Exclusão por tentativas erradas | Código ou padrão de coação | “Apagar Dados” do iPhone |
|---|---|---|---|
| Quem pode disparar | Qualquer um que erre vezes suficientes | Só quem conhece o segredo de coação | Qualquer um que erre o código 10 vezes |
| Feito para | Chutes, roubo | Ser obrigado a desbloquear | Chutes, roubo |
| Visível depois | Geralmente | Pode ser silencioso | Sim, o celular é reiniciado |
| O que apaga | O conteúdo do app | Depende do app; no Velcrypt, todos os cofres menos o de fachada | Tudo no iPhone |
| Reversível | Só a partir de um backup | Só a partir de um backup | Só a partir de um backup |

## A troca que você não consegue evitar: é permanente

Todo recurso de autodestruição troca a possibilidade de recuperação por proteção. Antes de ativar um, seja honesto consigo mesmo sobre três coisas.

### Você precisa de um backup em outro lugar

Os cofres do Velcrypt ficam fora dos backups do iCloud e do computador, então um cofre apagado some do celular. O único caminho de volta é um **arquivo de backup criptografado feito antes**. No Velcrypt, Ajustes → Backup cria um arquivo .velcrypt do cofre aberto, protegido por uma senha de backup que você escolhe. É grátis. Salve-o fora do app, por exemplo no Arquivos, no iCloud Drive ou em um computador, e o padrão de coação não vai mexer nele. Guarde bem a senha de backup também: uma senha de backup esquecida não pode ser recuperada. Veja na [página de segurança](id:security#encrypted-backup) como os backups são protegidos.

### Apagado nem sempre é eliminado fisicamente

A memória flash não garante que os bytes apagados sejam eliminados fisicamente na hora. O que protege você é a criptografia: os dados dos cofres do Velcrypt são criptografados com AES-256-GCM, e as chaves são apagadas junto com as pastas do cofre, então o que sobrar é texto cifrado sem chave. Desconfie de qualquer app que prometa mais do que isso.

### Ele só apaga o que está dentro do app

Originais que ainda estão no Fotos, em Apagados, no iCloud, em conversas ou em outro aparelho não são afetados. [Apague os originais depois de importar](id:delete-original-photos-after-import).

## Use com responsabilidade

A autodestruição é uma ferramenta de segurança pessoal e de privacidade. Nunca a use para destruir provas ou para driblar uma exigência legal da polícia, de agentes de fronteira ou de um tribunal. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só. Se você está nessa situação, ou espera estar, procure orientação jurídica.

## Vale a pena escolher um cofre com autodestruição?

Escolha um se ser obrigado a desbloquear o cofre for um risco real para você e você preferir perder os arquivos a deixar que alguém os veja. Deixe de lado, ou espere até ter um backup, se os arquivos forem insubstituíveis.

Seja qual for o app, confira como a autodestruição é disparada, se ela é visível e o que ela realmente apaga. A nossa [lista de verificação de segurança de cofres de fotos](id:are-photo-vault-apps-safe) ajuda. Se você escolher o Velcrypt, [como configurar um cofre de fachada e um padrão de coação](id:set-up-decoy-vault-and-duress-pattern) mostra a configuração começando pelo backup, e a página de [preços](id:pricing) lista os planos Premium.
