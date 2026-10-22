---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Como configurar um cofre de fachada e um padrão de coação"
description: "Passo a passo: faça backup do cofre verdadeiro, monte um cofre de fachada convincente e configure um padrão de coação no Velcrypt; praticar e desativar."
h1: "Como configurar um cofre de fachada e um padrão de coação no Velcrypt"
navTitle: "Configurar fachada e padrão de coação"
answer: "Primeiro, faça backup do seu cofre verdadeiro em Ajustes → Backup. Depois, com o Premium, desenhe um padrão novo para criar um cofre de fachada e encha-o de conteúdo inofensivo. De dentro do cofre de fachada, abra Ajustes → Padrão de Coação, desenhe um padrão separado duas vezes e confirme. Desenhar esse padrão na tela de bloqueio vai abrir o cofre de fachada e apagar de forma permanente todos os outros cofres."
keyFacts:
  - "Comece com um backup criptografado do seu cofre verdadeiro; ele é o único caminho de volta depois que o padrão de coação for usado."
  - "Um cofre de fachada é um segundo padrão com conteúdo inofensivo e plausível; ele exige o Premium."
  - "Configure o padrão de coação de dentro do cofre de fachada, em Ajustes → Padrão de Coação."
  - "O padrão de coação precisa ser novo: não pode ser um padrão que abre algum cofre."
  - "Nunca o teste na tela de bloqueio; pratique de cabeça."
  - "Um padrão de coação por iPhone; um novo substitui o anterior, e desativá-lo não apaga nada."
primaryKeyword: "como configurar um cofre de fachada"
keywords: ["configurar padrão de coação", "padrão de coação velcrypt", "cofre de fachada iphone", "criar cofre falso", "como usar padrão de coação"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Backup primeiro, depois um cofre de fachada convincente e um padrão de coação no Velcrypt, com dicas para praticar, trocar e desativar."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Configurar um cofre de fachada e um padrão de coação no Velcrypt"
  steps:
    - name: "Faça backup do seu cofre verdadeiro"
      text: "Abra o seu cofre verdadeiro, vá em Ajustes → Backup → Fazer Backup Deste Cofre, escolha uma senha de backup de pelo menos 8 caracteres e salve o arquivo .velcrypt fora do app, por exemplo no iCloud Drive ou em um computador."
    - name: "Crie um cofre de fachada"
      text: "Com o Premium, bloqueie o app e desenhe um padrão novo, que você nunca usou. O Velcrypt abre um cofre novo e vazio para ele."
    - name: "Torne o cofre de fachada convincente"
      text: "Importe algumas dezenas de itens inofensivos do dia a dia, como recibos, cópias de documentos ou ideias de presente, em dois ou três álbuns."
    - name: "Abra Ajustes → Padrão de Coação no cofre de fachada"
      text: "Com o cofre de fachada aberto, vá em Ajustes → Padrão de Coação e toque em Configurar Padrão de Coação."
    - name: "Desenhe o padrão de coação duas vezes e confirme"
      text: "Desenhe um padrão separado que não abra nenhum cofre, desenhe-o de novo para confirmar, leia o aviso e toque em Ativar."
    - name: "Pratique sem dispará-lo"
      text: "Ensaie o padrão de coação de cabeça ou em um papel que você destrói depois, nunca na tela de bloqueio."
faq:
  - q: "Preciso do Premium para configurar um cofre de fachada e um padrão de coação?"
    a: "Sim. A versão grátis tem um cofre, e um cofre de fachada é um segundo cofre. O padrão de coação também faz parte do Premium. Depois de configurado, ele continua funcionando mesmo que o Premium acabe."
  - q: "Por que preciso de um backup antes?"
    a: "Porque o padrão de coação apaga de forma permanente todos os cofres menos o de fachada, e os dados do cofre não estão nos backups do iCloud nem do computador. Um arquivo de backup criptografado salvo fora do app é a única forma de recuperar um cofre apagado."
  - q: "Posso testar o padrão de coação?"
    a: "Na tela de bloqueio, não: desenhá-lo ali apaga os seus outros cofres de verdade. Pratique de cabeça. Você pode conferir se lembra dele em Ajustes → Padrão de Coação → Desativar Padrão de Coação, mas desenhá-lo ali o desativa, então você precisaria configurá-lo de novo."
  - q: "Posso ter mais de um padrão de coação?"
    a: "Não. Existe um padrão de coação por iPhone. Configurar um novo, a partir de qualquer cofre de fachada, substitui o anterior."
  - q: "Como recupero o meu cofre verdadeiro depois que o padrão de coação foi usado?"
    a: "Desenhe o seu padrão verdadeiro, que agora abre um cofre novo e vazio. Depois vá em Ajustes → Backup → Restaurar do Backup, escolha o seu arquivo .velcrypt e digite a senha de backup."
---

Este guia mostra a configuração completa no Velcrypt: um backup do seu cofre verdadeiro, um cofre de fachada convincente e um [padrão de coação](id:duress-pattern) que abre o cofre de fachada e apaga em silêncio todos os outros cofres do iPhone. Leva cerca de 15 minutos, a maior parte deles gasta para deixar o cofre de fachada com cara de real.

Antes de começar, um lembrete rápido do que o padrão de coação faz. Quando alguém o desenha na tela de bloqueio, o Velcrypt abre o cofre de fachada e, no mesmo instante, **apaga de forma permanente todos os outros cofres daquele iPhone**. O desbloqueio parece igual e leva o mesmo tempo que o normal, e nada na tela mostra o que aconteceu. Essa é a ideia, e também é por isso que o primeiro passo é um backup.

(No app, o cofre de fachada aparece como “cofre de disfarce”; é a mesma coisa.)

## Do que você precisa

- **Velcrypt Premium.** A versão grátis tem um cofre com até 50 itens. Um cofre de fachada é um segundo cofre, e o padrão de coação é um recurso Premium. Veja os [preços](id:pricing).
- **Um lugar seguro para um arquivo de backup**, fora do app: iCloud Drive, o Arquivos em outro aparelho ou um computador.
- **Três padrões que você saiba diferenciar:** o verdadeiro, o de fachada e o de coação.

## Passo 1: faça backup do seu cofre verdadeiro

Os dados do cofre não entram nos backups do iCloud nem do computador. Se o padrão de coação for usado algum dia, a única forma de recuperar o seu cofre verdadeiro é um arquivo de backup criptografado feito antes.

1. Desenhe o seu padrão verdadeiro para abrir o seu cofre verdadeiro.
2. Vá em **Ajustes → Backup → Fazer Backup Deste Cofre**.
3. Escolha uma senha de backup de pelo menos 8 caracteres, digite-a duas vezes e toque em **Criar Backup**.
4. Toque em **Salvar Backup…** e salve o arquivo .velcrypt em algum lugar que não seja este iPhone.

Algumas coisas para saber:

- **O backup é grátis** e cobre o cofre que está aberto. Se você tem vários cofres privados, faça backup de cada um.
- **O padrão de coação não mexe em arquivos de backup** guardados fora do app.
- **Guarde bem a senha de backup.** Uma senha de backup esquecida não pode ser recuperada, nem por você nem pelo Velcrypt.
- **Pense em quem consegue chegar ao arquivo.** Se a pessoa que preocupa você consegue abrir o seu iCloud Drive ou o seu computador, escolha outro lugar. O arquivo é criptografado, mas a existência dele mostra que há um cofre para restaurar.

Refaça o backup de tempos em tempos, porque ele só contém o que havia no cofre quando você o criou.

## Passo 2: crie o cofre de fachada

No Velcrypt, cada padrão é um cofre próprio, e um padrão que o app nunca viu abre um cofre novo e vazio. Então criar um cofre de fachada é só desenhar um padrão novo.

1. Bloqueie o app.
2. Desenhe um padrão novo: uma linha contínua passando por pelo menos 6 pontos da grade 5×5, com pelo menos uma mudança de direção. Faça-o bem diferente do seu padrão verdadeiro no formato e no ponto de partida.
3. O Velcrypt abre um cofre novo e vazio. Esse é o seu cofre de fachada.

A página do [bloqueio por padrão](id:pattern-lock) explica o que torna um padrão forte, e o [verificador de força de padrão](id:pattern-strength-checker) grátis ajuda a comparar ideias. Nunca teste os seus padrões verdadeiros em um site.

## Passo 3: torne o cofre de fachada convincente

Um cofre vazio levanta suspeita. Um cofre de fachada funciona quando alguém olha para ele e pensa: “Ah, é só isso.”

- **Dê a ele um motivo para existir:** cópias de RG e da carteirinha do plano de saúde, recibos e garantias, prints de reservas, ideias de presente.
- **Importe algumas dezenas de itens reais** em dois ou três álbuns.
- **Mantenha-o atualizado.** Acrescente algo a cada poucas semanas para que o item mais recente não tenha meses.

O Velcrypt também pede que você adicione algo antes que um cofre possa ter um padrão de coação, porque o padrão de coação abre este cofre. [O que é um cofre falso?](id:what-is-a-decoy-vault) tem mais ideias e explica o que entrega um cofre de fachada.

## Passo 4: configure o padrão de coação

Faça isso de dentro do cofre de fachada. O padrão de coação sempre abre o cofre em que foi configurado.

1. Com o cofre de fachada aberto, vá em **Ajustes → Padrão de Coação**.
2. Leia as três explicações curtas e toque em **Configurar Padrão de Coação**.
3. **Desenhe um padrão de coação.** Ele precisa ser um padrão novo, que não abra nenhum cofre; se abrir, o Velcrypt pede que você escolha outro.
4. **Desenhe-o de novo para confirmar.**
5. Leia o aviso de que desenhá-lo na tela de bloqueio abre este cofre e apaga de forma permanente todos os outros cofres deste iPhone, e toque em **Ativar**.

Se o cofre de fachada for o único cofre do iPhone, o Velcrypt avisa que o padrão de coação não apagaria nada. Crie primeiro o cofre de fachada com um padrão diferente do seu cofre verdadeiro.

### Como escolher o padrão de coação

- Faça-o **fácil de desenhar sob estresse**, com fluidez e sem hesitar.
- Faça-o **impossível de confundir com o seu padrão verdadeiro**. Desenhar o padrão de coação por engano apaga o seu cofre verdadeiro.
- Considere fazê-lo **parecido em esforço** com o verdadeiro, para que desenhá-lo não pareça diferente para quem está olhando.

## Passo 5: pratique, sem dispará-lo

Nunca teste o padrão de coação na tela de bloqueio. Isso não é um teste; ele realmente apaga os seus outros cofres.

Em vez disso, ensaie de cabeça, trace-o com o dedo em uma superfície ou desenhe-o em um papel que você destrói depois. Pratique até conseguir desenhar tanto o padrão de fachada quanto o de coação sem pensar, mesmo com alguém olhando.

## Convivendo com um padrão de coação

- **Nada mostra que ele está configurado.** O Velcrypt nunca exibe se existe um padrão de coação. Por trás, sempre existe no Keychain do iOS um registro criptografado de tamanho fixo, com bytes aleatórios quando não há nenhum.
- **Um por iPhone.** Configurar um novo padrão de coação substitui o anterior.
- **Para desativá-lo:** vá em **Ajustes → Padrão de Coação → Desativar Padrão de Coação** e desenhe-o. Desenhá-lo ali só o desativa; nada é apagado.
- **Se o Premium acabar,** o padrão de coação continua funcionando. Só a configuração exige o Premium.

## Se o padrão de coação for usado algum dia

Os seus outros cofres sumiram daquele iPhone. Para restaurar um:

1. Desenhe o seu padrão verdadeiro. Agora ele abre um cofre novo e vazio.
2. Vá em **Ajustes → Backup → Restaurar do Backup**.
3. Escolha o seu arquivo .velcrypt e digite a senha de backup.

Só faça isso quando for seguro. Se a pessoa que obrigou você a desbloquear o celular ainda estiver por perto, restaurar o cofre na hora pode desfazer o motivo pelo qual você usou o padrão de coação.

## Limites para ter em mente

- **Cópias fora do Velcrypt continuam lá.** Apague os originais do Fotos e de Apagados depois de importar; veja [apagar os originais depois de importar](id:delete-original-photos-after-import).
- **A memória flash não garante eliminação física.** Os dados do cofre são criptografados com AES-256-GCM e as chaves são apagadas junto com as pastas do cofre, então o que sobrar é ilegível.
- **Ele não impede alguém que viu você desenhar o seu padrão verdadeiro.**
- **É uma ferramenta de segurança pessoal.** Nunca o use para destruir provas ou para desafiar uma exigência legal da polícia, de agentes de fronteira ou de um tribunal. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só; procure orientação jurídica se isso se aplicar a você.

Se você está configurando isso por causa de uma pessoa específica, [o que fazer se alguém obrigar você a desbloquear o celular](id:forced-to-unlock-phone) trata do quadro mais amplo de segurança. Se você tem medo de esquecer um padrão, leia antes [esqueci o padrão do cofre](id:forgot-vault-pattern).
