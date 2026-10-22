---
pageId: faq
title: "Perguntas frequentes do Velcrypt: cofres e padrões"
description: "Respostas para as dúvidas mais comuns sobre o Velcrypt: cofres por padrão, criptografia, backup, privacidade, preços e compatibilidade com iPhone."
h1: "Perguntas frequentes sobre o Velcrypt"
navTitle: "Perguntas frequentes"
answer: "O Velcrypt é um app para iPhone (iOS 17 ou posterior) que guarda fotos, vídeos e documentos em cofres criptografados no seu aparelho. Cada cofre abre com seu próprio padrão, não há conta e nada é enviado — o que também significa que um padrão esquecido não pode ser recuperado."
keyFacts:
  - "App para iPhone, iOS 17 ou posterior."
  - "Cada padrão abre seu próprio cofre; padrões desconhecidos abrem um cofre vazio."
  - "Criptografia AES-256-GCM, só no aparelho, sem conta."
  - "Sem recuperação se você esquecer o padrão ou perder o celular."
  - "Versão grátis e Premium opcional; preços a anunciar."
primaryKeyword: "velcrypt perguntas frequentes"
keywords: ["dúvidas velcrypt", "como funciona o velcrypt", "perguntas app cofre de fotos", "ajuda padrão velcrypt", "backup velcrypt"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Primeiros passos"
    items:
      - q: "O que é o Velcrypt?"
        a: "O Velcrypt é um app para iPhone que guarda fotos, vídeos e documentos privados em cofres criptografados no seu aparelho. Você abre um cofre desenhando um padrão em uma grade de 5×5 pontos."
      - q: "O que posso guardar no Velcrypt?"
        a: "Fotos e vídeos da sua fototeca e documentos do app Arquivos. Dentro de um cofre, você pode organizar os itens em álbuns, ver fotos e vídeos com zoom e deslize, e mover ou exportar itens com segurança."
      - q: "Importar uma foto para o Velcrypt tira ela do app Fotos?"
        a: "Não. A importação cria uma cópia criptografada, e o original continua no Fotos até você apagá-lo. Depois de apagar, esvazie também a pasta Apagados, onde os itens ficam por cerca de 30 dias."
      - q: "O Velcrypt tem câmera própria?"
        a: "Não. O Velcrypt não inclui câmera. Você tira as fotos com o app Câmera do iPhone e depois as importa para um cofre."
      - q: "O Velcrypt é a mesma coisa que o álbum Ocultos do iPhone?"
        a: "Não. O álbum Ocultos apenas tira as fotos da visualização principal da fototeca e é aberto com Face ID ou com o código do iPhone. O Velcrypt criptografa os arquivos com uma chave derivada de um padrão separado, que não é o código do aparelho."
  - title: "Padrão e cofres"
    items:
      - q: "O que torna um padrão do Velcrypt válido?"
        a: "Uma linha contínua passando por pelo menos 6 pontos da grade 5×5, com pelo menos uma mudança de direção. Padrões mais longos, de 8 a 12 pontos, são recomendados."
      - q: "Como crio um segundo cofre?"
        a: "Desenhe um padrão novo que você ainda não usou. Cada padrão é um cofre próprio, então um padrão novo abre um cofre novo e vazio, que você pode começar a preencher."
      - q: "Por que meu padrão abriu um cofre vazio?"
        a: "O mais provável é que você tenha desenhado um padrão um pouco diferente, que o Velcrypt trata como outro cofre. Tente de novo, com calma; por design, o app nunca mostra mensagem de “padrão incorreto”."
      - q: "Posso ver uma lista dos meus cofres?"
        a: "Não. O Velcrypt não mantém lista de cofres, então nada no app revela quantos existem. Você precisa lembrar de cada padrão por conta própria."
      - q: "O que é um cofre de fachada?"
        a: "Um cofre de fachada é um cofre de aparência comum, com conteúdo inofensivo, que você pode abrir se for pressionado, enquanto seu cofre privado fica atrás de outro padrão. Nada no Velcrypt prova que o segundo cofre existe."
      - q: "O que é o padrão de coação?"
        a: "O padrão de coação é um recurso Premium planejado, em breve. Ao desenhá-lo, o app abriria um cofre escolhido por você e removeria silenciosamente o acesso aos outros."
      - q: "Posso organizar os itens dentro de um cofre?"
        a: "Sim. Cada cofre pode ter álbuns, e você pode selecionar vários itens e movê-los entre os álbuns daquele cofre."
      - q: "Por que o Velcrypt não usa Face ID nem Touch ID?"
        a: "Por design. Um rosto ou um dedo pode ser usado sem o seu consentimento, por exemplo enquanto você dorme ou sob pressão, enquanto um padrão existe apenas na sua memória."
  - title: "Segurança e criptografia"
    items:
      - q: "Como o Velcrypt criptografa meus arquivos?"
        a: "Com AES-256-GCM pelo Apple CryptoKit. Cada cofre tem sua própria chave mestra aleatória de 256 bits, e cada arquivo recebe sua própria chave, derivada com HKDF."
      - q: "Como meu padrão vira uma chave?"
        a: "O Velcrypt passa o padrão pelo PBKDF2-HMAC-SHA512 com no mínimo 600.000 iterações e um salt aleatório exclusivo do seu aparelho, guardado no Keychain do iOS. O padrão em si nunca é salvo."
      - q: "O Velcrypt usa a Proteção de Dados do iOS?"
        a: "Sim. Os arquivos do cofre usam a classe de proteção completa, então o iOS os mantém criptografados sempre que o iPhone está bloqueado, além da criptografia do próprio Velcrypt."
      - q: "O Velcrypt bloqueia automaticamente?"
        a: "Sim. Ele bloqueia quando o app vai para segundo plano, depois de um intervalo que você pode configurar, e o conteúdo do cofre fica oculto no alternador de apps."
      - q: "O Velcrypt passou por auditoria de segurança?"
        a: "Ainda não houve auditoria independente. O Velcrypt usa algoritmos padrão e o CryptoKit da Apple, e uma revisão externa seria muito bem-vinda."
      - q: "Contra o que o Velcrypt não protege?"
        a: "Alguém observando você desenhar o padrão, ser obrigado a desbloquear, celular entregue com um cofre aberto, malware em aparelho comprometido ou com jailbreak, fotos da sua tela e cópias que ainda existem em outros lugares. A página de segurança lista esses limites por completo."
  - title: "Backup e recuperação"
    items:
      - q: "O que acontece se eu esquecer o padrão do Velcrypt?"
        a: "O cofre não pode mais ser aberto. O Velcrypt nunca armazena seu padrão nem suas chaves, então nem você nem o Velcrypt conseguem recuperá-lo."
      - q: "Meu cofre entra no backup do iCloud?"
        a: "Não. Na primeira versão, os dados do cofre ficam fora dos backups do iCloud, para que os arquivos criptografados nunca saiam do seu aparelho."
      - q: "Meu cofre entra no backup pelo Finder ou iTunes?"
        a: "Não. Na primeira versão, os dados do cofre também ficam fora dos backups no computador."
      - q: "O que acontece com meus cofres se eu trocar de iPhone?"
        a: "Na primeira versão, os cofres não são transferidos para um novo aparelho. Exporte tudo o que quiser manter antes de trocar de celular e guarde em um lugar de confiança."
      - q: "O Velcrypt vai oferecer backup criptografado?"
        a: "Uma opção de backup criptografado está planejada como parte do Premium. Ainda não temos data e não vamos prometer uma até que esteja pronta."
      - q: "O suporte do Velcrypt pode redefinir meu padrão?"
        a: "Não. O suporte não tem acesso aos seus cofres, padrões ou chaves, então não há nada para redefinir do nosso lado."
  - title: "Privacidade"
    items:
      - q: "Preciso de uma conta para usar o Velcrypt?"
        a: "Não. Não há cadastro, e-mail nem login. Você instala o app e desenha um padrão."
      - q: "O Velcrypt envia minhas fotos para algum lugar?"
        a: "Não. O Velcrypt não tem servidores para o seu conteúdo, e os arquivos do cofre nunca saem do seu iPhone."
      - q: "O Velcrypt coleta dados de análise?"
        a: "O Velcrypt não coleta análises sobre o conteúdo dos cofres. Se você escolheu compartilhar análises com desenvolvedores nos Ajustes do iOS, a Apple pode compartilhar conosco dados de falhas e diagnóstico."
      - q: "Outras pessoas conseguem saber que eu uso o Velcrypt?"
        a: "O ícone do app aparece na sua Tela de Início, e ferramentas forenses podem perceber que o Velcrypt guarda dados criptografados e mais ou menos quanto. O Velcrypt esconde o número de cofres e o conteúdo deles, não a própria existência."
      - q: "O Velcrypt mostra anúncios ou vende dados?"
        a: "Não. O Velcrypt não tem anúncios e não vende dados. Para começar, ele nem coleta o seu conteúdo."
  - title: "Preços e disponibilidade"
    items:
      - q: "O Velcrypt é grátis?"
        a: "Existe uma versão grátis, além de um upgrade Premium opcional. O preço do Premium será anunciado."
      - q: "O que o Premium vai incluir?"
        a: "Os itens planejados para o Premium são itens ilimitados, mais cofres, o padrão de coação (em breve) e um futuro backup criptografado."
      - q: "Onde posso conseguir o Velcrypt?"
        a: "O Velcrypt é um app para iPhone distribuído pela App Store. Confira o botão da App Store neste site para saber a disponibilidade atual."
      - q: "Quem processa os pagamentos?"
        a: "A Apple processa todas as compras pela App Store. O Velcrypt nunca vê seus dados de pagamento."
  - title: "Compatibilidade"
    items:
      - q: "Qual versão do iOS o Velcrypt exige?"
        a: "O Velcrypt exige iOS 17 ou posterior no iPhone."
      - q: "Existe app do Velcrypt para iPad, Mac ou Android?"
        a: "Não. O Velcrypt é um app só para iPhone, e não há versão web."
      - q: "O Velcrypt sincroniza entre aparelhos?"
        a: "Não. Não há sincronização na nuvem; cada cofre existe apenas no iPhone em que foi criado."
      - q: "Posso importar documentos do app Arquivos?"
        a: "Sim. Você pode importar documentos do app Arquivos para qualquer cofre, junto com fotos e vídeos."
---

Estas são as perguntas mais comuns sobre o Velcrypt, agrupadas por tema. Cada resposta se sustenta sozinha, então você pode ir direto para a seção de que precisa.

Se quiser o quadro técnico completo, a página do [modelo de segurança](id:security) explica como seu padrão vira uma chave e como os arquivos são criptografados, além de mostrar contra o que o Velcrypt não consegue proteger. Para saber o que cada versão inclui, veja [preços](id:pricing). Se você acha que perdeu o acesso a um cofre, leia [esqueceu o padrão do cofre](id:forgot-vault-pattern) antes de tentar qualquer outra coisa — e lembre-se de que desenhar um padrão desconhecido simplesmente abre um cofre novo e vazio, em vez de mostrar um erro.

Não encontrou sua pergunta aqui? [Fale com o suporte](id:support) e ajudaremos no que for possível. Podemos responder dúvidas sobre como o app funciona, mas nunca conseguiremos abrir, redefinir ou recuperar um cofre para você.
