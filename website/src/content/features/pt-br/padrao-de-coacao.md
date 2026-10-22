---
pageId: duress-pattern
title: "Padrão de coação: abre um cofre de fachada e apaga o resto"
description: "O padrão de coação do Velcrypt abre seu cofre de fachada e apaga em silêncio, para sempre, todos os outros cofres do iPhone. Como funciona e limites."
h1: "Padrão de coação"
navTitle: "Padrão de coação"
answer: "O padrão de coação é um recurso Premium do Velcrypt 1.0. Você o configura de dentro de um cofre de fachada. Se algum dia desenhá-lo na tela de bloqueio, o Velcrypt abre esse cofre de fachada e apaga em silêncio, de forma permanente, todos os outros cofres do iPhone. Nada na tela mostra que isso aconteceu."
keyFacts:
  - "Disponível agora no Velcrypt 1.0, como parte do Premium."
  - "Configurado em Ajustes → Padrão de Coação, de dentro de um cofre de fachada."
  - "Desenhá-lo abre o cofre de fachada e apaga de forma permanente todos os outros cofres daquele iPhone."
  - "O desbloqueio parece igual e leva o mesmo tempo que um desbloqueio normal."
  - "O app nunca mostra se há um padrão de coação configurado."
  - "Cofres apagados só podem ser restaurados de um backup criptografado feito antes."
  - "É uma ferramenta de segurança pessoal, não aconselhamento jurídico nem um jeito de driblar ordens legais."
primaryKeyword: "senha de coação cofre de fotos"
keywords: ["senha de pânico iphone", "padrão de pânico cofre de fotos", "código de coação app", "proteção contra desbloqueio forçado", "cofre com autodestruição"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Um padrão separado que abre seu cofre de fachada e apaga em silêncio, de forma permanente, todos os outros cofres do iPhone. Premium."
status: available
schemaType: WebPage
order: 3
related: [set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, self-destruct-photo-vault, hidden-vaults, what-is-a-decoy-vault, plausible-deniability-explained]
howTo:
  name: "Configurar um padrão de coação no Velcrypt"
  steps:
    - name: "Faça um backup criptografado do seu cofre verdadeiro"
      text: "Abra seu cofre verdadeiro, vá em Ajustes → Backup e salve um arquivo .velcrypt protegido por senha fora do app, por exemplo no Arquivos ou em um computador."
    - name: "Abra seu cofre de fachada"
      text: "Desenhe o padrão de um segundo cofre com conteúdo inofensivo e plausível. Cofres além do primeiro exigem o Premium."
    - name: "Abra Ajustes → Padrão de Coação"
      text: "De dentro do cofre de fachada, abra Ajustes e escolha Padrão de Coação."
    - name: "Desenhe um novo padrão de coação duas vezes"
      text: "Desenhe um padrão separado que não abra nenhum cofre e desenhe-o de novo para confirmar."
    - name: "Confirme"
      text: "Leia o aviso e confirme. A partir daí, desenhar esse padrão na tela de bloqueio abre este cofre de fachada e apaga todos os outros cofres do iPhone."
faq:
  - q: "O padrão de coação já está disponível no Velcrypt?"
    a: "Sim. Ele faz parte do Premium no Velcrypt 1.0. Você o configura em Ajustes → Padrão de Coação com um cofre de fachada aberto."
  - q: "O que acontece quando alguém desenha o padrão de coação?"
    a: "O Velcrypt abre o cofre de fachada em que ele foi configurado e, ao mesmo tempo, apaga em silêncio e de forma permanente todos os outros cofres daquele iPhone. Não há mensagem, animação nem atraso que denuncie o que aconteceu."
  - q: "Alguém consegue saber se eu tenho um padrão de coação?"
    a: "Pelo app, não. O Velcrypt nunca mostra se há um configurado. Sempre existe no Keychain um registro criptografado de tamanho fixo, preenchido com bytes aleatórios quando não há padrão de coação, então o registro parece igual nos dois casos."
  - q: "Consigo recuperar os cofres apagados?"
    a: "Pelo celular, não. O único caminho de volta é um arquivo de backup criptografado que você fez antes em Ajustes → Backup e salvou fora do app. O padrão de coação não mexe em arquivos de backup guardados em outro lugar."
  - q: "Preciso continuar pagando o Premium para ele funcionar?"
    a: "Não. Configurá-lo exige o Premium, mas um padrão de coação já configurado continua funcionando se o Premium acabar."
  - q: "Como desativo o padrão de coação?"
    a: "Em Ajustes → Padrão de Coação, toque em Desativar Padrão de Coação e desenhe o padrão de coação. Desenhá-lo ali só o desativa; nada é apagado."
  - q: "O padrão de coação apaga fotos que eu já compartilhei?"
    a: "Não. Ele só apaga os cofres do próprio Velcrypt naquele celular. Cópias na sua biblioteca do Fotos, no iCloud, em conversas, no e-mail, em um arquivo de backup ou no aparelho de outra pessoa ficam fora do alcance dele."
  - q: "É legal usar um padrão de coação?"
    a: "Depende de onde você está e da situação. Apagar dados quando a polícia, agentes de fronteira ou um tribunal exigem acesso legalmente pode ser crime por si só. O padrão de coação foi feito para situações de segurança pessoal, não para destruir provas. Se houver uma exigência legal envolvida, procure orientação jurídica."
---

Às vezes o risco não é um celular roubado, mas uma pessoa na sua frente mandando você abrir o app. Um [cofre de fachada](id:what-is-a-decoy-vault) ajuda em muitos desses momentos. O padrão de coação vai além: ele abre o cofre de fachada **e** apaga de forma permanente todos os outros cofres do iPhone, para que os seus cofres privados não possam mais ser abertos ali, nem depois.

Ele faz parte do Premium no Velcrypt 1.0.

## O que o padrão de coação faz

Um padrão de coação é um padrão de desbloqueio separado, que você só usa sob pressão. No Velcrypt, ele funciona assim:

1. Você o configura com antecedência, de dentro de um cofre de fachada: um segundo cofre com conteúdo inofensivo e plausível.
2. Se algum dia for obrigado a desbloquear o app, você desenha o padrão de coação em vez do verdadeiro.
3. O Velcrypt abre o cofre de fachada, exatamente como em um desbloqueio normal.
4. No mesmo instante, ele apaga em silêncio e de forma permanente todos os outros cofres daquele iPhone.

Nada na tela conta à outra pessoa o que aconteceu. Não há alerta, animação nem atraso extra: o desbloqueio parece igual e leva o mesmo tempo que qualquer outro.

## Como configurar

Você precisa do Premium, porque o padrão de coação fica em um segundo cofre, e cofres além do primeiro são um recurso Premium.

1. **Primeiro, faça backup do seu cofre verdadeiro.** Abra-o, vá em **Ajustes → Backup** e salve o arquivo .velcrypt protegido por senha fora do app, por exemplo no Arquivos, no iCloud Drive ou em um computador. Essa é a única forma de recuperar o cofre se o padrão de coação for usado.
2. **Abra seu cofre de fachada.** Se ainda não tiver um, desenhe um padrão novo para criá-lo e adicione algum conteúdo comum; o Velcrypt pede que você adicione algo antes que um cofre possa ter um padrão de coação. O [guia do cofre falso](id:what-is-a-decoy-vault) explica como torná-lo convincente.
3. **Vá em Ajustes → Padrão de Coação** com o cofre de fachada aberto.
4. **Desenhe o padrão de coação duas vezes.** Ele precisa ser um padrão novo, que não abra nenhum cofre existente.
5. **Leia o aviso e toque em Ativar.** Depois, pratique o padrão de cabeça, não na tela de bloqueio: desenhá-lo ali apaga seus outros cofres.

O passo a passo completo, com dicas de prática, está em [como configurar um cofre de fachada e um padrão de coação](id:set-up-decoy-vault-and-duress-pattern).

### Regras que vale conhecer

- **Um por iPhone.** Existe só um padrão de coação por aparelho. Configurar um novo substitui o anterior.
- **Para desativá-lo**, é preciso desenhar o padrão de coação em Ajustes → Padrão de Coação. Desenhá-lo ali só o desativa; nada é apagado.
- **Ele continua funcionando se o Premium acabar.** Só a configuração exige o Premium.
- **Configure-o em um cofre de fachada, não no seu único cofre.** Se o cofre de fachada for o único do celular, não há nada para o padrão de coação apagar. O Velcrypt avisa você quando for esse o caso.

## Nada revela que ele existe

Um padrão de coação só é útil se ninguém conseguir saber que ele está lá. O Velcrypt nunca mostra se há um configurado, nem na interface nem nos ajustes. Por trás, sempre existe no Keychain do iOS um registro criptografado de tamanho fixo; quando não há padrão de coação, ele guarda bytes aleatórios. Assim, o registro parece igual quer você use o recurso, quer não.

Isso se apoia nos [cofres ocultos](id:hidden-vaults): cada padrão abre o seu próprio cofre, não existe lista de cofres, e um padrão desconhecido abre um cofre vazio, sem erro. A ideia por trás dos dois está explicada em [negação plausível, explicada](id:plausible-deniability-explained).

## Quando ele pode ajudar

O padrão de coação foi feito para situações de segurança pessoal, por exemplo:

- **Um parceiro controlador ou abusivo** que exige ver tudo no seu celular.
- **Um assalto ou uma ameaça**, quando alguém obriga você a desbloquear tudo na hora.
- **Bisbilhotice insistente** de alguém que não aceita o cofre de fachada e vai continuar perguntando.

Se você está em uma dessas situações, o guia sobre [o que fazer se alguém obrigar você a desbloquear o celular](id:forced-to-unlock-phone) trata do quadro mais amplo, inclusive de quando procurar serviços de apoio.

## Limites honestos

**É permanente.** Cofres apagados não podem ser recuperados pelo celular. Os dados do cofre ficam fora dos backups do iCloud e do computador, então o único caminho de volta é um arquivo de backup criptografado feito antes. Arquivos de backup salvos fora do app não são afetados.

**A memória flash tem limites.** Como qualquer app, o Velcrypt não pode garantir que os bytes apagados sejam fisicamente eliminados da memória flash. O que ele garante é que os dados do cofre são criptografados com AES-256-GCM e que as chaves são apagadas junto com as pastas do cofre, então o que sobrar é texto cifrado ilegível.

**Ele não desfaz cópias.** Se uma foto ainda está na sua biblioteca do Fotos, em Apagados, nas Fotos do iCloud, em uma conversa ou no celular de outra pessoa, ela continua lá. [Apague os originais depois de importar](id:delete-original-photos-after-import).

**Ele não impede a observação.** Se alguém viu você desenhar o padrão verdadeiro ou filmou a tela, o padrão de coação não muda o que essa pessoa viu. Desenhe longe dos olhos dos outros.

**Sua segurança vem primeiro.** Algumas pessoas podem reagir mal se desconfiarem de que algo foi escondido ou removido. Um padrão de coação é uma opção, nunca uma obrigação. Você é quem melhor sabe se usá-lo é seguro.

**Não é um jeito de driblar a lei.** Nunca o use para destruir provas ou para desafiar uma exigência legal da polícia, de agentes de fronteira ou de um tribunal. As leis sobre revista de aparelhos e eliminação de dados variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só. Se houver uma exigência legal envolvida, procure orientação jurídica. O [guia sobre fronteiras](id:phone-privacy-border-crossing) trata de viagens.

## Preços

O padrão de coação faz parte do Premium, junto com itens ilimitados, mais cofres e ícones alternativos do app. O backup criptografado continua grátis para todos. Veja os planos em [preços](id:pricing).
