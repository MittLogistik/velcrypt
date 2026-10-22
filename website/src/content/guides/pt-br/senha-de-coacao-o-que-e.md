---
pageId: duress-password-explained
title: "Senha de coação: o que é e para que serve a senha de pânico"
description: "O que é uma senha de coação, senha de pânico ou código de coação, de onde vem a ideia, como os apps de celular a usam e como funciona o padrão de coação."
h1: "Senha de coação, senha de pânico e padrão de coação, explicados"
navTitle: "Senha de coação explicada"
answer: "Uma senha de coação (também chamada de senha de pânico ou código de coação) é um segundo segredo que você só usa quando alguém obriga você a desbloquear algo. Ela parece um desbloqueio normal, mas dispara em silêncio uma ação de proteção, como um alarme silencioso ou a exclusão de dados sensíveis. No Velcrypt, o padrão de coação abre um cofre de fachada e apaga de forma permanente todos os outros cofres do iPhone."
keyFacts:
  - "Uma senha de coação parece um desbloqueio normal, mas dispara uma ação de proteção escondida."
  - "A ideia vem dos alarmes e dos bancos, onde um código de coação aciona um alarme silencioso."
  - "No celular, códigos de coação costumam abrir um conteúdo inofensivo e apagar ou bloquear o resto."
  - "No Velcrypt, o padrão de coação abre um cofre de fachada e apaga de forma permanente todos os outros cofres."
  - "A exclusão é irreversível; só um arquivo de backup feito antes traz os dados de volta."
  - "É uma ferramenta de segurança pessoal, nunca um jeito de destruir provas ou desafiar ordens legais."
primaryKeyword: "senha de coação"
keywords: ["senha de pânico", "código de coação", "o que é senha de coação", "senha de pânico celular", "padrão de coação"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "O que são senhas de coação e senhas de pânico, de onde vêm, como os apps de celular as usam e como funciona o padrão de coação do Velcrypt."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "O que é uma senha de coação?"
    a: "Uma senha de coação é um segredo que você só usa sob coação. Para quem está olhando, digitá-la parece um desbloqueio normal, mas ela também dispara algo de proteção em segundo plano, como um alarme silencioso, a abertura de um conteúdo de fachada ou a exclusão de dados sensíveis."
  - q: "Senha de pânico e código de coação são a mesma coisa?"
    a: "Sim, no uso do dia a dia os termos querem dizer a mesma coisa. “Código de coação” é comum em sistemas de alarme; “senha de pânico” ou “PIN de coação”, em apps e aparelhos. O Velcrypt usa um padrão em vez de um PIN, então chama a sua versão de padrão de coação."
  - q: "Digitar a senha do cartão ao contrário no caixa eletrônico chama a polícia?"
    a: "Não. A história da “senha invertida” é um mito antigo. Bancos já estudaram e patentearam ideias parecidas, mas os caixas eletrônicos em geral não funcionam assim. Não conte com isso."
  - q: "O que o padrão de coação do Velcrypt faz?"
    a: "Desenhá-lo na tela de bloqueio abre o cofre de fachada em que ele foi configurado e, ao mesmo tempo, apaga em silêncio e de forma permanente todos os outros cofres daquele iPhone. O desbloqueio parece igual e leva o mesmo tempo que o normal."
  - q: "Posso usar uma senha de coação quando a polícia ou agentes de fronteira pedem acesso?"
    a: "Você não deve usá-la para apagar dados nessa situação. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só, como destruição de provas ou obstrução. Procure orientação jurídica."
---

A maior parte da segurança serve para manter estranhos do lado de fora. Uma senha de coação trata de outro momento: quando alguém está do seu lado e obriga você a deixá-lo entrar. Este guia explica o que são senhas de coação, de onde vem a ideia, como os apps de celular a usam e como funciona o padrão de coação do Velcrypt, incluindo os limites.

## O que é uma senha de coação

Uma **senha de coação** é um segundo segredo que você só usa quando está sendo coagido. Para quem está olhando, digitá-la parece exatamente um desbloqueio normal. Nos bastidores, ela faz algo a mais para proteger você ou os seus dados.

Você vai encontrar vários nomes para a mesma ideia:

- **Código de coação**, o termo comum em sistemas de alarme e instalações de segurança.
- **Senha de pânico** ou **PIN de pânico**, comuns em apps.
- **PIN de coação** ou **padrão de coação**, dependendo de como o aparelho é desbloqueado.

A característica que define tudo é que a resposta é **silenciosa**. Se digitar o código fizesse soar uma sirene, aparecer um aviso ou mudar algo visível, o risco para você aumentaria, porque quem está forçando saberia que você resistiu.

## De onde vem a ideia

### Sistemas de alarme

Muitas centrais de alarme residenciais e comerciais aceitam um código de coação. Você o digita no teclado e o alarme desliga como sempre, então um invasor que obrigou você a desarmá-lo não vê nada de estranho. Ao mesmo tempo, a central avisa discretamente a empresa de monitoramento de que você está em apuros.

### Bancos e instalações de segurança

Funcionários de banco há muito tempo contam com alarmes silenciosos e sinais de coação: um botão, uma palavra-código ou um código que alerta a segurança sem alertar o assaltante. O objetivo é o mesmo das centrais de alarme: cooperar na aparência e pedir ajuda por baixo.

Talvez você já tenha ouvido que digitar a senha do cartão ao contrário no caixa eletrônico chama a polícia. É mito. A ideia já foi discutida e até patenteada, mas os caixas eletrônicos em geral não funcionam assim, então não conte com isso.

### Software de criptografia

Ferramentas de criptografia de disco trouxeram uma ideia parecida: uma segunda senha que abre um volume externo convincente enquanto um volume oculto fica fora de vista. Isso não é um código de coação no sentido estrito, porque nada é disparado, mas tem o mesmo objetivo de tornar seguro “ceder em parte”. [Negação plausível, explicada](id:plausible-deniability-explained) conta essa história.

## Como os apps de celular usam códigos de coação

No celular normalmente não há uma central de monitoramento para avisar, então os códigos de coação protegem os dados. As abordagens comuns são:

1. **Abrir um conteúdo inofensivo.** O código de coação abre uma fachada: um segundo espaço, de aparência comum. Isso é parecido com um [cofre de fachada](id:what-is-a-decoy-vault) e, sozinho, não apaga nada.
2. **Abrir um conteúdo inofensivo e apagar o resto.** O código de coação abre a fachada e, ao mesmo tempo, elimina os dados sensíveis. É a forma mais forte, e não pode ser desfeita.
3. **Apagar tudo.** Alguns sistemas focados em segurança oferecem um PIN de coação que apaga o aparelho ou o app inteiro. Isso protege os dados, mas deixa óbvio que algo aconteceu.

O que separa uma boa implementação de uma ruim é, sobretudo, **o que pode ser observado**:

- O desbloqueio parece igual e leva o mesmo tempo que um normal?
- Existe algum ajuste, selo ou arquivo que revele que há um código de coação configurado?
- Alguma coisa muda na tela depois?

Se a resposta a qualquer uma dessas perguntas entregar o código, ele pode piorar uma situação que já é tensa.

## Como funciona o padrão de coação do Velcrypt

O Velcrypt desbloqueia com um padrão desenhado em uma grade 5×5, e cada padrão abre o seu próprio cofre. O [padrão de coação](id:duress-pattern) dele é um recurso Premium construído sobre esse modelo:

- **Você o configura de dentro de um cofre de fachada**, em Ajustes → Padrão de Coação. Um cofre de fachada é um segundo cofre com conteúdo inofensivo e plausível. Cofres além do primeiro exigem o Premium.
- **Você desenha um padrão separado duas vezes e confirma.** Não pode ser um padrão que já abre um cofre.
- **Na tela de bloqueio, desenhar o padrão de coação abre o cofre de fachada** e apaga em silêncio, de forma permanente, todos os outros cofres daquele iPhone.
- **Nada na tela mostra que isso aconteceu.** O desbloqueio parece igual e leva o mesmo tempo que o normal.
- **O app nunca mostra se há um padrão de coação configurado.** Sempre existe no Keychain do iOS um registro criptografado de tamanho fixo; quando não há padrão de coação, ele guarda bytes aleatórios.
- **Um por iPhone.** Configurar um novo padrão de coação substitui o anterior. Para desativá-lo é preciso desenhá-lo, e desativá-lo não apaga nada.
- **Ele continua funcionando se o Premium acabar.** Só a configuração exige o Premium.

Se você o configurar no único cofre do celular, não há mais nada para apagar, e o Velcrypt avisa sobre isso.

## Os limites honestos

### A exclusão é permanente

Cofres apagados não podem ser recuperados pelo celular. Os dados do cofre ficam fora dos backups do iCloud e do computador, então o único caminho de volta é um arquivo de backup criptografado feito antes em Ajustes → Backup. O backup é grátis, e o padrão de coação não mexe em arquivos de backup guardados fora do app. A [página de segurança](id:security#encrypted-backup) explica como os backups são protegidos.

### Apagado não é o mesmo que eliminado fisicamente

A memória flash não garante que os bytes apagados sejam eliminados fisicamente na hora. O Velcrypt conta com outra coisa: os dados do cofre são criptografados com AES-256-GCM e as chaves são apagadas junto com as pastas do cofre, então qualquer dado que sobrar é texto cifrado sem chave.

### Ele só alcança os cofres do Velcrypt

Cópias na sua biblioteca do Fotos, em Apagados, no iCloud, em conversas ou no celular de outra pessoa não são afetadas. [Apague os originais depois de importar](id:delete-original-photos-after-import).

### Ele não desfaz a observação

Se alguém viu ou filmou você desenhando o padrão verdadeiro, um padrão de coação não muda o que essa pessoa sabe.

## Responsabilidade: para que uma senha de coação não serve

Uma senha de coação é uma ferramenta de segurança pessoal. Ela foi feita para momentos como um assalto, uma ameaça ou um parceiro controlador exigindo ver o seu celular.

Ela **não** é um jeito de destruir provas nem de driblar uma exigência legal da polícia, de agentes de fronteira ou de um tribunal. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só, por exemplo destruição de provas ou obstrução de uma investigação. Se você está enfrentando uma exigência legal, ou espera enfrentar, procure orientação jurídica. O [guia sobre fronteiras](id:phone-privacy-border-crossing) trata especificamente de viagens.

## Vale a pena usar uma?

Um padrão de coação faz sentido se você consegue se imaginar sendo pressionado a desbloquear os seus cofres e prefere perder esses arquivos a deixar que alguém os veja. Faz menos sentido se os arquivos forem insubstituíveis e você não tiver backup, ou se for difícil lembrar, sob estresse, qual padrão faz o quê.

Se decidir usar um, comece pelo backup, monte um cofre de fachada convincente e leia [como configurar um cofre de fachada e um padrão de coação](id:set-up-decoy-vault-and-duress-pattern). Se você está pensando nisso por causa de uma pessoa específica, [o que fazer se alguém obrigar você a desbloquear o celular](id:forced-to-unlock-phone) trata do quadro mais amplo de segurança. Os planos Premium estão na [página de preços](id:pricing).
