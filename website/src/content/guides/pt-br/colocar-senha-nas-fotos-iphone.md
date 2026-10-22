---
pageId: password-protect-photos-iphone
title: "Como colocar senha nas fotos do iPhone"
description: "O iOS não tem senha por foto. Veja as opções reais para colocar senha em fotos específicas no iPhone e o que cada uma protege de verdade."
h1: "Como colocar senha nas fotos do iPhone"
navTitle: "Colocar senha nas fotos"
answer: "O iOS não consegue colocar senha numa foto individual. As opções nativas mais próximas são ocultá-la no álbum Ocultos, protegido por Face ID, ou adicioná-la a uma nota bloqueada com senha própria do Notas. Para proteger fotos específicas com um segredo que não seja o código do aparelho, copie-as para um app de cofre criptografado e apague os originais."
keyFacts:
  - "O app Fotos não tem ajuste de senha por foto nem por álbum."
  - "O álbum Ocultos abre com Face ID, Touch ID ou o código do aparelho, não com uma senha separada."
  - "Uma nota bloqueada pode usar uma senha própria do Notas, separada do código do iPhone."
  - "Adicionar uma foto a uma nota ou a um cofre cria uma cópia; o original fica no Fotos até ser apagado."
  - "Um app de cofre criptografado dá a fotos específicas um bloqueio independente do aparelho."
primaryKeyword: "colocar senha nas fotos do iphone"
keywords: ["senha nas fotos iphone", "colocar senha em foto iphone", "proteger fotos com senha iphone", "bloquear fotos individuais iphone", "senha para fotos iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Por que o iOS não tem senha por foto, e três formas práticas de colocar um bloqueio de verdade em fotos específicas."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "Dá para colocar senha em uma única foto no iPhone?"
    a: "Não no app Fotos. O iOS só bloqueia os álbuns Ocultos e Apagados, e eles usam Face ID, Touch ID ou o código do aparelho. Uma foto só ganha senha própria se você mover uma cópia para uma nota bloqueada ou um app de cofre."
  - q: "Posso definir outra senha para o álbum Ocultos?"
    a: "Não. O álbum Ocultos sempre usa o Face ID, o Touch ID ou o código do aparelho. Não existe ajuste para uma senha separada do álbum Ocultos."
  - q: "As fotos em notas bloqueadas são criptografadas?"
    a: "Sim. A Apple criptografa o conteúdo das notas bloqueadas, incluindo as imagens anexadas. Se você usar uma senha separada do Notas e esquecê-la, a Apple não consegue recuperar essas notas."
  - q: "Se eu colocar senha numa foto, ela sai do rolo da câmera?"
    a: "Não automaticamente. Notas bloqueadas e apps de cofre fazem uma cópia, então você precisa apagar o original do Fotos e depois de Apagados para que ele suma."
  - q: "Senha é mais segura que Face ID para fotos?"
    a: "Para afastar pessoas que estão fisicamente com você, muitas vezes sim. O Face ID pode ser usado enquanto você dorme ou sob pressão, e o bloqueio do Fotos recorre ao código do aparelho, que outros podem saber. Um segredo separado evita as duas coisas."
---

Muita gente procura um jeito de colocar senha em uma foto, como faria num PDF. O iOS não oferece isso. O que ele oferece são alguns recursos próximos, e qual deles serve para você depende do que você entende por “senha” e de quem você quer proteger a foto.

## Por que não existe senha por foto

O modelo de segurança do iPhone protege o aparelho inteiro com um único código. Com o celular bloqueado, seus dados ficam criptografados; depois que você desbloqueia, os apps que você abre podem mostrar o conteúdo. Fotos individuais não têm bloqueio próprio. O app Fotos só adiciona um segundo pedido para dois álbuns do sistema, Ocultos e Apagados, e esse pedido usa o mesmo Face ID, Touch ID ou código da tela bloqueada.

Então, na verdade, há duas necessidades diferentes por trás da pergunta:

1. **“Não quero isso no meu rolo da câmera.”** É um problema de visibilidade, e ocultar resolve.
2. **“Quero que precise de um segredo que só eu sei.”** É um problema de acesso, e exige um bloqueio diferente do código do aparelho.

## Opção 1: ocultar atrás do Face ID

Se a sua preocupação principal é alguém passar pela foto ao rolar a galeria, ocultá-la é rápido:

1. Abra a foto no **Fotos**.
2. Toque em **Mais (•••)** › **Ocultar**.
3. Verifique se **Usar Face ID** está ativado em **Ajustes › Apps › Fotos** (Ajustes › Fotos antes do iOS 18).

A foto agora fica no álbum Ocultos, atrás da autenticação biométrica. Não é uma senha no sentido comum: qualquer pessoa que saiba o código do seu iPhone pode escolher a alternativa do código e abrir o álbum. Mais detalhes em [como esconder fotos no iPhone](id:hide-photos-iphone).

## Opção 2: uma nota bloqueada com senha própria

O Notas da Apple é o único app nativo que permite definir uma senha separada, diferente do código do aparelho, para o conteúdo que você escolher. Uma nota bloqueada é criptografada, e as fotos anexadas também.

1. Vá em **Ajustes › Apps › Notas › Senha** (Ajustes › Notas › Senha em versões anteriores) e escolha usar uma senha personalizada em vez do código do iPhone. Adicione uma dica que você entenda e os outros não.
2. No **Notas**, crie uma nota nova. Toque no botão da câmera e tire uma foto direto na nota ou escolha uma da fototeca.
3. Toque em **Mais (•••)** › **Bloquear**.
4. Volte ao Fotos e apague o original; depois apague-o de novo em **Apagados**.

<!-- TODO verify iOS label -->

Tirar a foto direto dentro da nota é o caminho mais limpo, porque ela nunca chega ao rolo da câmera.

Fique atento às contrapartidas. O Notas sincroniza pelo iCloud se você usa o iCloud para notas, e o Notas não foi feito para ver muitas fotos ou vídeos. Se você esquecer a senha personalizada, essas notas não podem ser abertas. [Velcrypt vs. notas bloqueadas do Apple Notas](id:velcrypt-vs-apple-notes-locked-notes) aprofunda a comparação.

## Opção 3: um app de cofre criptografado

Um cofre de fotos é um app que mantém a própria cópia criptografada das suas imagens, bloqueada com um segredo que o app gerencia. É o mais próximo de uma senha por foto de verdade: você decide exatamente quais fotos entram, e o código do aparelho não as abre.

Observe algumas coisas antes de confiar em um:

- **Criptografia de verdade,** não só uma pasta escondida. O app deve criptografar os arquivos no aparelho com uma cifra autenticada moderna.
- **Um bloqueio independente do aparelho.** Se o cofre abre só com Face ID, herda o mesmo problema da alternativa do código que o álbum Ocultos tem.
- **Tratamento claro dos dados.** Ele envia algo para um servidor? Exige conta? O que acontece se você esquecer o código?

[Apps de cofre de fotos são seguros?](id:are-photo-vault-apps-safe) trata dessas perguntas com mais profundidade.

## Comparando as opções

| | Ocultar | Nota bloqueada | App de cofre |
| --- | --- | --- | --- |
| Separado do código do aparelho | Não | Sim, com senha personalizada do Notas | Geralmente |
| Tira a foto do rolo da câmera | Sim, move para Ocultos | Só se você apagar o original | Só se você apagar o original |
| Confortável para muitas fotos | Sim | Não | Sim |
| Lida bem com vídeos | Sim | Mal | Geralmente |
| Nativo do iOS | Sim | Sim | Não |

## Escolher um segredo que valha a pena

Uma senha separada só ajuda se for realmente separada. Alguns hábitos fazem a diferença:

- **Não reutilize o código do iPhone.** Se as pessoas de quem você está se protegendo sabem o seu código, uma senha do Notas ou um código de cofre igual entrega as duas coisas.
- **Fuja do óbvio.** Aniversários, datas comemorativas, sequências tipo 1234 e o mesmo código do app do banco são as primeiras coisas que alguém tenta.
- **Faça algo memorável só para você.** Na maioria dos casos não dá para redefinir, então escolha algo de que você se lembre daqui a meses sem anotar num papelzinho dentro da capinha.
- **Preste atenção ao redor.** Qualquer segredo pode ser visto por cima do ombro. Digite quando ninguém estiver olhando a tela.

## Uma observação sobre os originais

Seja qual for o bloqueio escolhido, uma cópia protegida não adianta se ainda existe uma cópia desprotegida. Depois de mover uma foto para uma nota ou um cofre, apague-a do Fotos, apague-a de Apagados e pense em outros lugares onde ela possa existir: um álbum compartilhado do iCloud, uma conversa, um app de armazenamento na nuvem. O guia sobre [apagar os originais depois de importar](id:delete-original-photos-after-import) mostra cada passo.

## Onde o Velcrypt se encaixa

O Velcrypt atende à segunda necessidade: um segredo que só você sabe. Em vez de uma senha digitada, você desenha um [padrão](id:pattern-lock) numa grade de 5×5 pontos. Ele precisa passar por pelo menos seis pontos com pelo menos uma mudança de direção, e padrões de oito a doze pontos são recomendados. O Velcrypt não usa Face ID nem Touch ID, então nem o código do seu iPhone nem o seu rosto o abrem.

Cada padrão abre o próprio cofre, e as fotos dentro dele são [criptografadas](id:encryption) com AES-256-GCM usando chaves derivadas desse padrão. Como tudo fica no aparelho e fora dos backups, não há como redefinir um padrão esquecido. Se você prefere uma senha que possa recuperar, vale pesar essa limitação com honestidade antes de mover qualquer coisa importante.
