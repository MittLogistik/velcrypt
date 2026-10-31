---
pageId: duress-password-explained
title: "Senha de coação: o que é, como funciona e quando usar"
description: "Senha de coação (ou senha de pânico) é um segundo segredo para quando forçam você a desbloquear algo. De onde vem, como apps a usam e o padrão de coação."
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
  - "O iPhone não tem senha de coação nativa e a maioria dos Android também não; o GrapheneOS oferece um PIN de coação que apaga o celular."
primaryKeyword: "senha de coação"
keywords: ["senha de pânico", "código de coação", "o que é senha de coação", "senha de coação significado", "palavra-código de coação", "exemplos de palavra-código de emergência", "pin de coação", "senha de coação alarme", "senha invertida caixa eletrônico mito", "digital de coação", "senha de coação celular", "pin de coação android", "grapheneos pin de coação", "senha de pânico celular", "padrão de coação"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "O que são senhas, palavras-código e PINs de coação, o que iPhone e Android oferecem e como funciona o padrão de coação do Velcrypt."
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
  - q: "O que é uma palavra-código de coação?"
    a: "É uma palavra ou frase de aparência comum, combinada antes, que avisa alguém de que você está em perigo sem que a pessoa que está pressionando perceba. Locais de trabalho, bares (como a campanha britânica “Ask for Angela”) e famílias usam palavras assim, cada um com uma resposta combinada."
  - q: "O iPhone ou o Android têm um PIN de coação nativo?"
    a: "O iPhone não tem senha de coação. Manter pressionados o botão lateral e um botão de volume só desativa o Face ID até que o código seja digitado. A maioria dos Android também não tem, embora o modo de bloqueio desative a biometria. O GrapheneOS oferece um PIN de coação que apaga o celular inteiro."
  - q: "O que o padrão de coação do Velcrypt faz?"
    a: "Desenhá-lo na tela de bloqueio abre o cofre de fachada em que ele foi configurado e, ao mesmo tempo, apaga em silêncio e de forma permanente todos os outros cofres daquele iPhone. O desbloqueio parece igual e leva o mesmo tempo que o normal."
  - q: "Posso usar uma senha de coação quando a polícia ou agentes de fronteira pedem acesso?"
    a: "Você não deve usá-la para apagar dados nessa situação. As leis variam conforme o país, e apagar dados diante de uma exigência legal pode ser crime por si só, como destruição de provas ou obstrução. Procure orientação jurídica."
---

A maior parte da segurança serve para manter estranhos do lado de fora. Uma senha de coação trata de outro momento: quando alguém está do seu lado e obriga você a deixá-lo entrar. Este guia explica o que são senhas de coação, de onde vem a ideia, como funcionam as palavras-código de coação, o que o iPhone e o Android oferecem, como os apps de celular a usam e como funciona o padrão de coação do Velcrypt, incluindo os limites.

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

Senhas de coação de alarme normalmente só funcionam com monitoramento profissional, e digitar uma pede um atendimento de emergência de verdade, mesmo que seja só um teste. Empresas de alarme e a polícia também alertam que um código muito parecido com o normal causa alarmes falsos, então escolha um que você não vá confundir.

### Bancos e instalações de segurança

Funcionários de banco há muito tempo contam com alarmes silenciosos e sinais de coação: um botão, uma palavra-código ou um código que alerta a segurança sem alertar o assaltante. O objetivo é o mesmo das centrais de alarme: cooperar na aparência e pedir ajuda por baixo.

Talvez você já tenha ouvido que digitar a senha do cartão ao contrário no caixa eletrônico chama a polícia. É mito. A ideia vem de uma patente dos anos 1990 para uma “senha de emergência”, mas um relatório de 2010 da equipe da Comissão Federal de Comércio dos EUA (FTC) concluiu que esse tipo de sistema nunca foi instalado em caixas eletrônicos, e checadores de fatos já desmentiram a corrente muitas vezes. Se você for assaltado no caixa, entregue o que pedirem se isso mantiver você em segurança e, depois, ligue para a polícia e para o seu banco.

### Software de criptografia

Ferramentas de criptografia de disco trouxeram uma ideia parecida: uma segunda senha que abre um volume externo convincente enquanto um volume oculto fica fora de vista. Isso não é um código de coação no sentido estrito, porque nada é disparado, mas tem o mesmo objetivo de tornar seguro “ceder em parte”. [Negação plausível, explicada](id:plausible-deniability-explained) conta essa história.

## Palavras-código de coação: a versão falada

Uma **palavra-código de coação** é uma senha de coação que você fala em vez de digitar: uma palavra ou frase de aparência comum, combinada antes, que quer dizer “não estou bem, mas não posso falar”. Quem ouve por acaso escuta uma conversa qualquer. Quem conhece o código escuta um pedido de ajuda, e já sabe o que fazer.

Onde elas são usadas:

- **Locais de trabalho e equipes de segurança.** Bancos, lojas, hospitais e seguranças costumam combinar uma frase que pode ser dita ao telefone ou pelo rádio na frente de um agressor, para que um colega peça ajuda sem ninguém perceber.
- **Campanhas de segurança pública.** No Reino Unido, muitos bares e casas noturnas participam da campanha “Ask for Angela”: quem se sente inseguro num encontro ou numa noitada pergunta à equipe pela “Angela”, e funcionários treinados ajudam com discrição, por exemplo chamando um táxi. Esse código é público de propósito, para que os locais possam divulgá-lo em cartazes. Campanhas inspiradas nele existem em outros países.
- **Famílias e amigos.** Algumas famílias combinam uma palavra que um filho ou parente pode mandar por mensagem ou dizer numa ligação para dizer “venha me buscar” ou “peça ajuda” sem explicar o motivo. Muitas famílias também usam hoje uma *palavra de segurança* para confirmar que uma ligação desesperada vem mesmo de um parente, e não de um golpista que clona vozes. É mais uma palavra de verificação do que um código de coação, mas as mesmas regras valem.

Exemplos do *tipo* de frase que funciona (crie a sua em vez de copiar estas):

- perguntar por uma pessoa que não existe, como “A Angela está trabalhando hoje?”;
- uma pergunta sobre um bicho de estimação, um parente ou uma tarefa que quem ouve sabe que está errada;
- um detalhe estranho numa frase normal, como uma cor ou uma comida que você nunca menciona.

Uma boa palavra-código de coação soa natural na conversa em que você a usaria, nunca aparece por acaso, vem com uma resposta combinada (quem liga para quem e o que acontece depois) e é relembrada de vez em quando para ninguém esquecer. Guarde-a só para quem precisa: um código publicado na internet, ou conhecido pela pessoa de quem você tem medo, deixa de funcionar.

## PIN de coação no celular: o que o iPhone e o Android oferecem

Quem procura por “código de coação no celular”, “PIN de coação” ou “digital de coação” geralmente quer saber se o próprio aparelho já vem com isso. A resposta curta: o iPhone não, e a maioria dos Android também não.

### iPhone

- **Sem senha de coação.** O iOS não tem um segundo código que abra uma fachada, dispare um alerta ou apague o celular.
- **O SOS de Emergência desativa o Face ID.** Manter pressionados o botão lateral e qualquer um dos botões de volume por cerca de dois segundos abre a tela de desligar e de SOS de Emergência. <!-- TODO verify iOS label --> A partir daí, o Face ID e o Touch ID ficam desativados até que o código seja digitado, então ninguém consegue desbloquear o celular apontando-o para o seu rosto. Toque em Cancelar se não quiser ligar; dependendo dos seus ajustes, segurar por mais tempo pode iniciar uma ligação de emergência. [O que fazer se alguém obrigar você a desbloquear o celular](id:forced-to-unlock-phone) explica isso em mais detalhes.
- **Apagar Dados não é uma senha de coação.** A opção Apagar Dados, em Ajustes → Face ID e Código <!-- TODO verify iOS label -->, apaga o iPhone depois de 10 tentativas erradas de código. Ela protege contra quem tenta adivinhar, não contra alguém ao seu lado exigindo o código.
- **Funções de coação ficam dentro dos apps.** Como o iOS não tem um PIN de coação para o sistema todo, qualquer função de coação no iPhone pertence a um único app e só alcança os dados dele. O padrão de coação do Velcrypt, mais abaixo, é um exemplo.

### Android

- **Modo de bloqueio.** No Android 9 e posteriores, muitos celulares oferecem o modo de bloqueio (“Lockdown”) no menu de desligar; em algumas marcas é preciso ativá-lo antes nas configurações. <!-- TODO verify: Android label and Samsung One UI changes --> Ele bloqueia o celular e desativa o desbloqueio por digital e por rosto até que o PIN, o padrão ou a senha sejam digitados.
- **Sem PIN de coação no Android padrão.** O Android que vem nos aparelhos do Google, da Samsung e da maioria dos fabricantes não tem PIN de coação nativo. <!-- TODO verify -->
- **PIN de coação do GrapheneOS.** O GrapheneOS, um sistema operacional focado em segurança para celulares Google Pixel compatíveis, tem um PIN e uma senha de coação. Digitar qualquer um deles em qualquer lugar onde o celular peça as credenciais apaga o aparelho inteiro, incluindo eSIMs, na hora e de forma irreversível. Isso protege os dados, mas depois fica óbvio que o celular foi redefinido.
- **Apps de terceiros.** Alguns apps Android de código aberto, como Duress e Wasted no F-Droid, observam se uma senha de coação é digitada na tela de bloqueio e então bloqueiam ou apagam o celular, usando permissões de acessibilidade e de administrador do dispositivo. A confiabilidade depende do aparelho e da versão do Android. <!-- TODO verify -->

### O que significa “digital de coação”

Uma **digital de coação** é um dedo específico cadastrado como alarme silencioso. Alguns sistemas biométricos de controle de acesso oferecem isso: você escaneia esse dedo, a porta abre normalmente e um alarme de coação vai para a segurança. Os celulares comuns não oferecem isso. <!-- TODO verify --> No celular, a biometria é justamente o ponto fraco sob coação, porque alguém pode apontar o aparelho para o seu rosto ou pressionar seu dedo no sensor. Por isso vale saber desativar o Face ID rápido, e por isso o Velcrypt [não tem desbloqueio por Face ID, de propósito](id:pattern-lock-vs-pin-vs-face-id).

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
