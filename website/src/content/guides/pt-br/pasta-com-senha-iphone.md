---
pageId: password-protect-folder-iphone
title: "Como colocar senha numa pasta no iPhone"
description: "O app Arquivos não põe senha em pastas. Bloqueie o Arquivos no iOS 18, use notas bloqueadas ou guarde documentos num cofre criptografado."
h1: "Como colocar senha numa pasta no iPhone"
navTitle: "Pasta com senha no iPhone"
answer: "Não dá para colocar senha numa pasta do app Arquivos do iPhone. As opções nativas mais próximas são bloquear o app Arquivos inteiro com Exigir Face ID (iOS 18 e posteriores) ou guardar o conteúdo numa nota bloqueada com senha própria. Para documentos que precisam de um bloqueio independente do código, use um app de cofre criptografado que importe do Arquivos."
keyFacts:
  - "O app Arquivos não tem ajuste para bloquear ou pôr senha em pastas individuais."
  - "O iOS 18 e posteriores podem bloquear o próprio app Arquivos com Face ID, Touch ID ou código."
  - "Notas bloqueadas são criptografadas e podem usar uma senha separada do Notas."
  - "PDFs com senha e arquivos compactados criptografados protegem arquivos isolados, não pastas."
  - "Um app de cofre criptografado pode guardar documentos do Arquivos atrás de um segredo próprio."
primaryKeyword: "pasta com senha iphone"
keywords: ["bloquear app arquivos iphone", "colocar senha em pasta iphone", "bloquear pasta iphone", "proteger arquivos com senha iphone", "pasta segura iphone", "esconder arquivos iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "O que o app Arquivos consegue e não consegue bloquear, e as formas práticas de proteger uma pasta de documentos no iPhone."
category: hiding
order: 6
related: [private-documents, scan-documents-privately-iphone, lock-photos-iphone, secret-photo-album-iphone, medical-and-id-documents, offline-no-account]
faq:
  - q: "Dá para bloquear uma pasta no app Arquivos do iPhone?"
    a: "Não. O Arquivos não oferece senha por pasta. No iOS 18 e posteriores você pode bloquear o app Arquivos inteiro com Face ID, Touch ID ou código, o que protege todas as pastas de uma vez."
  - q: "Como bloquear o app Arquivos no iPhone?"
    a: "Mantenha pressionado o ícone do Arquivos, escolha Exigir Face ID (ou Touch ID ou Código) e confirme. Isso exige iOS 18 ou posterior."
  - q: "Dá para colocar senha num PDF no iPhone?"
    a: "Alguns apps conseguem exportar ou salvar um PDF com senha, mas o iOS não tem um jeito geral de fazer isso pelo app Arquivos. Um PDF com senha protege só aquele arquivo, não a pasta em que ele está."
  - q: "Os arquivos em No Meu iPhone são criptografados?"
    a: "Eles são protegidos pela Proteção de Dados do iOS enquanto o celular está bloqueado, como os outros dados do aparelho. Com o iPhone desbloqueado, qualquer pessoa que esteja usando o aparelho pode abrir o Arquivos e lê-los, a menos que o app esteja bloqueado."
  - q: "O iCloud Drive é um lugar seguro para documentos privados?"
    a: "Os arquivos do iCloud Drive são criptografados, mas a Apple guarda as chaves, a menos que você ative a Proteção Avançada de Dados. Qualquer pessoa conectada à sua Conta Apple em outro aparelho também pode navegar por eles."
---

O app Arquivos parece bastante com um navegador de arquivos de computador, então é natural esperar as mesmas opções: clicar com o botão direito numa pasta, definir uma senha, pronto. O iOS não funciona assim. Não existe bloqueio por pasta no Arquivos, nem um ajuste escondido que acrescente isso. O que você pode fazer é bloquear o app, bloquear o conteúdo em outro app ou mover os documentos para um lugar que tenha bloqueio próprio.

## Por que o Arquivos não tem senha para pastas

O app Arquivos é um navegador de locais de armazenamento: **No Meu iPhone**, **iCloud Drive** e os provedores de terceiros que você conectou. Ele mostra o que há nesses locais, mas deixa o controle de acesso para o iOS. A segurança do iPhone gira em torno de um único código do aparelho. Com o celular bloqueado, os dados dos arquivos ficam criptografados pela Proteção de Dados do iOS; depois de desbloqueado, o Arquivos pode mostrá-los para quem estiver com o celular na mão.

Então a pergunta realista não é “como coloco senha nesta pasta”, e sim “como impeço que alguém usando meu celular desbloqueado abra estes documentos”.

## Opção 1: bloquear o app Arquivos (iOS 18 e posteriores)

O iOS 18 trouxe o bloqueio de apps, que coloca um pedido de autenticação na frente de um app toda vez que ele abre.

1. Encontre o **Arquivos** na Tela de Início ou na Biblioteca de Apps.
2. Mantenha o ícone pressionado.
3. Escolha **Exigir Face ID** (o texto acompanha o aparelho: Touch ID ou Código).
4. Confirme.

<!-- TODO verify iOS label -->

Agora o Arquivos pede Face ID antes de mostrar qualquer coisa. Isso protege todas as pastas do Arquivos, não só uma, o que é vantagem ou incômodo dependendo de quanto você usa o app.

Os limites são os de sempre dos bloqueios nativos. A alternativa é o código do aparelho, então quem sabe esse código abre o Arquivos. O bloqueio também vale só para o app Arquivos; outros apps que acessam o mesmo armazenamento, como apps de nuvem ou apps com pastas de documentos próprias, não são afetados. Os apps da própria Apple em geral não podem ir para a pasta de apps ocultos, então o Arquivos continua visível no aparelho.

## Opção 2: uma nota bloqueada

O Notas da Apple consegue bloquear notas individuais, criptografá-las e protegê-las com uma senha separada do código do iPhone. Notas podem conter documentos digitalizados, fotos e anexos, então uma nota bloqueada pode funcionar como uma pequena pasta protegida.

1. Defina uma senha personalizada em **Ajustes › Apps › Notas › Senha** (Ajustes › Notas › Senha antes do iOS 18) ou escolha usar o código do aparelho.
2. Crie uma nota e adicione o conteúdo. O botão da câmera permite digitalizar documentos direto na nota, então o papel nunca passa pela sua fototeca.
3. Toque em **Mais (•••)** › **Bloquear**.

<!-- TODO verify iOS label -->

Você pode agrupar várias notas bloqueadas numa pasta do Notas, mas o que fica bloqueado são as notas individuais, não a pasta. Para uma comparação mais profunda, veja [Velcrypt vs. notas bloqueadas do Apple Notas](id:velcrypt-vs-apple-notes-locked-notes) e, especificamente sobre digitalização, [escanear documentos com privacidade no iPhone](id:scan-documents-privately-iphone).

## Opção 3: proteger arquivos individuais

Alguns tipos de arquivo podem ter senha própria:

- **PDFs.** Vários editores de PDF e apps de escritório conseguem salvar um PDF com senha. O iOS em si não tem uma ferramenta geral para isso.
- **Documentos de escritório.** Alguns apps de produtividade aceitam senha em documentos; se dá para definir uma no iPhone depende do app.
- **Arquivos compactados criptografados.** Alguns apps gerenciadores de arquivos criam arquivos compactados com senha.

Eles protegem um arquivo por vez, e abrir e fechar esses arquivos pode deixar cópias descriptografadas em pastas temporárias, dependendo do app. São úteis quando você precisa enviar um arquivo protegido para alguém; como armazenamento do dia a dia, são desajeitados.

## Opção 4: um cofre criptografado

Um app de cofre importa documentos para o próprio armazenamento e os criptografa com um segredo que só você sabe. Na prática, é a pasta com senha que o Arquivos não oferece, com a vantagem extra de que o bloqueio não é o código do aparelho.

Ao escolher um, confira se ele realmente criptografa os arquivos (e não só os esconde), se envia algo para fora e se consegue importar do app Arquivos, já que é lá que a maioria dos documentos fica. Lembre-se de apagar o original do Arquivos depois; uma cópia importada não remove a origem. Se o arquivo estava no iCloud Drive, confira também **Apagados** nos locais da aba Navegar do Arquivos.

<!-- TODO verify iOS label -->

## Lugares onde documentos se acumulam sem você perceber

Bloquear uma pasta só adianta se os arquivos sensíveis estiverem de fato nela. No iPhone, documentos costumam se acumular em alguns lugares previsíveis:

- **Downloads.** O Safari e o Mail salvam arquivos numa pasta Downloads no Arquivos, no iCloud Drive ou em No Meu iPhone, conforme os ajustes do Safari.
- **Anexos de e-mail.** Abrir um anexo não o apaga do e-mail. A mensagem continua na sua caixa de entrada, em todos os aparelhos que sincronizam a conta.
- **Mensagens e apps de conversa.** PDFs e digitalizações que você enviou ou recebeu ficam na conversa até você apagá-los ali.
- **Apagados no Arquivos.** Arquivos que você apaga do iCloud Drive ou de No Meu iPhone vão para um local Apagados na aba Navegar, onde esperam antes de serem removidos de vez.

Antes de decidir onde fica a sua pasta privada, vale fazer uma varredura nesses lugares uma vez.

## Qual opção serve para você

| Necessidade | Melhor opção |
| --- | --- |
| Impedir acesso casual a todos os meus arquivos | Bloquear o app Arquivos |
| Proteger algumas notas ou digitalizações com senha separada | Notas bloqueadas |
| Enviar um arquivo protegido para alguém | PDF ou arquivo compactado com senha |
| Manter documentos de identidade, exames ou contratos longe de quem sabe meu código | Cofre criptografado |

Para documentos de identidade e registros de saúde em especial, o caso de uso sobre [documentos médicos e de identidade](id:medical-and-id-documents) traz mais contexto.

## Onde o Velcrypt se encaixa

O Velcrypt guarda [documentos privados](id:private-documents) nos mesmos cofres criptografados que fotos e vídeos. Você os importa do app Arquivos, e eles são criptografados no aparelho com AES-256-GCM, com chaves derivadas do seu padrão de desbloqueio. Não há conta e nada vai para um servidor; a página sobre [armazenamento offline e sem conta](id:offline-no-account) explica o que isso significa na prática.

Como os dados do cofre ficam fora dos backups do iCloud e do computador, mantenha uma cópia independente de qualquer documento que você não pode perder, guardada num lugar de confiança. Se o celular for perdido ou o padrão esquecido, ninguém consegue abrir o cofre, nem o Velcrypt.
