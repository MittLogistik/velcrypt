---
pageId: duress-pattern
title: "Padrão de coação (planejado): proteja cofres sob pressão"
description: "O padrão de coação é um recurso planejado do Velcrypt para uma atualização futura: um padrão abre o cofre escolhido e remove o acesso aos outros."
h1: "Padrão de coação (planejado)"
navTitle: "Padrão de coação (planejado)"
answer: "O padrão de coação é um recurso planejado para uma atualização futura do Velcrypt e ainda não está no app. A ideia é que você possa definir um padrão especial que abre um cofre escolhido por você e remove em silêncio o acesso aos seus outros cofres, para momentos em que alguém pressiona você a desbloquear o app."
keyFacts:
  - "Status: planejado para uma atualização futura. Ainda não está no app."
  - "Um padrão especial abrirá um cofre escolhido."
  - "Ao mesmo tempo, ele removerá em silêncio o acesso aos outros cofres."
  - "Ele não consegue recuperar cópias que existem fora do Velcrypt."
  - "É uma ferramenta de privacidade, não aconselhamento jurídico nem um jeito de driblar ordens legais."
primaryKeyword: "senha de coação cofre de fotos"
keywords: ["senha de pânico iphone", "padrão de pânico cofre de fotos", "código de coação app", "proteção contra desbloqueio forçado", "cofre com autodestruição"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Planejado: um padrão especial que abriria um cofre escolhido e removeria em silêncio o acesso aos outros."
status: coming-soon
schemaType: WebPage
order: 3
related: [hidden-vaults, pattern-lock, what-is-a-decoy-vault, plausible-deniability-explained, phone-privacy-border-crossing]
faq:
  - q: "O padrão de coação já está disponível no Velcrypt?"
    a: "Não. É um recurso planejado para uma atualização futura, ainda sem data. Até lá, você pode usar cofres ocultos e um cofre de fachada, que já funcionam hoje (um segundo cofre exige o Premium)."
  - q: "O que vai acontecer quando alguém usar o padrão de coação?"
    a: "A ideia é que ele abra um cofre escolhido por você com antecedência e, ao mesmo tempo, remova em silêncio o acesso aos seus outros cofres. Nada na tela vai indicar que algo mais aconteceu."
  - q: "Uma senha de coação apaga fotos que eu já compartilhei?"
    a: "Não. Ela só afeta o que está dentro do Velcrypt naquele celular. Cópias na sua biblioteca do Fotos, no iCloud, em conversas, no e-mail ou no aparelho de outra pessoa ficam fora do alcance dela."
  - q: "É legal usar um padrão de coação?"
    a: "Depende de onde você está e da situação. Remover dados enquanto autoridades inspecionam um aparelho legalmente pode ser crime em alguns países. O Velcrypt não pode dar aconselhamento jurídico; se isso for importante para você, fale com um advogado."
---

Às vezes o risco não é um celular roubado, mas uma pessoa na sua frente pedindo para você abrir o app. O padrão de coação é a resposta planejada do Velcrypt para esse momento. Ele ainda não está disponível: é um **recurso planejado para uma atualização futura**, e esta página descreve o que ele foi pensado para fazer.

## O que o padrão de coação vai fazer

Um padrão de coação é um padrão de desbloqueio especial para usar quando você está sendo pressionado ou coagido. No Velcrypt, o plano é que funcione assim:

1. Com antecedência, você define um padrão de coação e escolhe qual cofre ele deve abrir, normalmente um [cofre de fachada](id:what-is-a-decoy-vault) com conteúdo comum.
2. Se algum dia você for forçado a desbloquear o app, desenha o padrão de coação em vez do verdadeiro.
3. O Velcrypt abre o cofre escolhido normalmente.
4. Em segundo plano, ele remove em silêncio o acesso aos seus outros cofres naquele aparelho.

Para quem está de fora, nada de estranho acontece. Não há alerta, animação nem mensagem dizendo que algo foi removido.

## Como ele se apoia nos cofres ocultos

O Velcrypt já oferece [cofres ocultos](id:hidden-vaults): cada padrão abre o seu próprio cofre, não existe lista de cofres, e um padrão desconhecido abre um cofre vazio, sem erro. Isso já dificulta que alguém prove que existem outros cofres.

O padrão de coação acrescenta uma segunda camada. Um cofre de fachada depende de a outra pessoa acreditar em você. O padrão de coação é pensado para situações em que isso pode não bastar, por exemplo se você espera ser questionado várias vezes ou ter o padrão verdadeiro exigido depois. Depois de usado, os outros cofres não ficam mais acessíveis naquele celular. A ideia por trás dos dois recursos está explicada em [negação plausível, explicada](id:plausible-deniability-explained).

## Quando ele pode fazer diferença

Ninguém costuma se planejar para uma coação, mas algumas situações a tornam mais provável:

- **Um relacionamento abusivo ou controlador**, em que o parceiro exige ver tudo no seu celular.
- **Jornalistas e pesquisadores** que carregam material capaz de expor fontes.
- **Viagens por lugares com revistas invasivas de aparelhos**, tema de [privacidade do celular na fronteira](id:phone-privacy-border-crossing).
- **Furto ou assalto**, quando alguém obriga você a desbloquear tudo na hora.

Em todos os casos, o objetivo é o mesmo: dar a você um jeito de cooperar na aparência e manter os arquivos mais sensíveis fora de alcance.

## Limites honestos

Um padrão de coação é uma ferramenta forte, e vem com limites igualmente reais. É melhor conhecê-los agora do que descobri-los depois.

**Ele não desfaz cópias.** Ele só age sobre os cofres do próprio Velcrypt naquele aparelho. Se uma foto ainda está na sua biblioteca do Fotos, em Apagados, nas Fotos do iCloud, em uma conversa ou no celular de outra pessoa, ela continua lá. Limpe os originais depois de importar; o guia sobre [apagar os originais depois de importar](id:delete-original-photos-after-import) mostra como.

**Considere a ação permanente.** Os dados do cofre não entram nos backups do iCloud nem do computador, então assuma que o acesso, uma vez removido, não pode ser restaurado naquele aparelho. Um backup criptografado que você tenha salvo em outro lugar continuaria existindo, o que também significa que ele poderia ser encontrado. Use o recurso só se você realmente aceitar perder esses arquivos.

**Ele não impede a observação.** Se alguém viu você desenhar o padrão verdadeiro ou filmou a tela, o padrão de coação não muda o que essa pessoa viu.

**Coação é imprevisível.** Algumas pessoas podem reagir mal se desconfiarem de que algo foi escondido ou removido. Sua segurança física importa mais do que qualquer arquivo. Um padrão de coação é uma opção, não uma obrigação, e você é quem melhor sabe se usá-lo é seguro.

**Não é aconselhamento jurídico.** As leis sobre revista de aparelhos, desbloqueio obrigatório e destruição de dados variam conforme o país e a situação. Em alguns lugares, remover dados durante uma inspeção oficial pode ser crime por si só. O Velcrypt não pode dizer o que é legal onde você está; se o risco for alto, consulte um advogado antes de viajar ou agir.

## Enquanto ele não chega

Você já pode se preparar com recursos que existem hoje. Crie um cofre de fachada convincente (um segundo cofre exige o [Premium](id:pricing)), escolha um [padrão](id:pattern-lock) forte para o cofre verdadeiro e mantenha os originais sensíveis fora do rolo da câmera. Quando o padrão de coação for lançado, ele se encaixará nessa configuração.
