---
pageId: calculator-vault-apps-explained
title: "App calculadora secreta: disfarce vs. criptografia"
description: "Apps de calculadora secreta escondem fotos atrás de uma calculadora falsa. Veja como funciona o disfarce, por que não é criptografia e onde o iOS o revela."
h1: "App calculadora secreta: como funciona o cofre disfarçado"
navTitle: "Calculadora secreta explicada"
answer: "Uma calculadora secreta é um cofre de fotos que parece e funciona como calculadora até você digitar um código secreto como se fosse uma conta. O disfarce engana uma olhada rápida, mas não é criptografia, e o iOS revela a identidade real do app em lugares como a busca da Biblioteca de Apps, o Spotlight, o Armazenamento do iPhone e as suas compras na App Store."
keyFacts:
  - "Calculadoras secretas escondem um cofre de fotos atrás de uma calculadora funcional; um código digitado como conta abre o cofre."
  - "Disfarce e criptografia são coisas diferentes: o disfarce esconde que o cofre existe, a criptografia protege os arquivos."
  - "Spotlight, Biblioteca de Apps, Armazenamento do iPhone, Tempo de Uso e o histórico de compras da App Store podem revelar o app real."
  - "Uma calculadora ocupando vários gigabytes de armazenamento é uma pista óbvia."
  - "Muitas calculadoras secretas são sustentadas por anúncios; confira o rótulo de privacidade da App Store antes de usar uma."
primaryKeyword: "app calculadora secreta"
keywords:
  - "calculadora secreta iphone"
  - "app calculadora para esconder fotos"
  - "cofre calculadora iphone"
  - "calculadora falsa fotos ocultas"
  - "como descobrir calculadora secreta no celular"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Como funcionam os cofres disfarçados de calculadora, por que disfarce não é criptografia e quando o truque ainda faz sentido."
category: choosing
order: 22
related:
  - velcrypt-vs-calculator-vault-apps
  - are-photo-vault-apps-safe
  - plausible-deniability-explained
  - what-is-a-decoy-vault
  - best-private-photo-vault-apps-iphone
faq:
  - q: "Como funcionam os apps de calculadora secreta?"
    a: "Eles abrem como uma calculadora que funciona. Quando você digita um código específico, muitas vezes seguido da tecla de igual ou de porcentagem, o app muda para um cofre de fotos escondido. Sem o código, ele se comporta como uma calculadora comum."
  - q: "Alguém consegue encontrar uma calculadora secreta no meu iPhone?"
    a: "Sim, se procurar. O nome e o tamanho reais do app aparecem em lugares como a busca da Biblioteca de Apps, Ajustes › Geral › Armazenamento do iPhone, o Tempo de Uso e o seu histórico de compras da App Store."
  - q: "Apps de calculadora secreta são criptografados?"
    a: "Alguns são, outros não. O disfarce de calculadora não diz nada sobre como os arquivos são guardados, então confira se o desenvolvedor documenta criptografia em repouso de verdade."
  - q: "Uma calculadora secreta é melhor que um cofre comum?"
    a: "Não por si só. Ela acrescenta um disfarce, que pode ajudar contra uma olhada rápida, mas a proteção dos seus arquivos continua dependendo da criptografia e da força do seu código."
  - q: "Existe alternativa melhor do que disfarçar um app?"
    a: "No iOS 18 e posteriores, você pode ocultar qualquer app atrás do Face ID na pasta de apps ocultos da Biblioteca de Apps. Outra abordagem é a negação plausível, em que o cofre não prova que existe mais conteúdo mesmo quando é aberto."
---

Na App Store, um número surpreendente de “calculadoras” não são calculadoras de verdade. São cofres de fotos fantasiados. A ideia é esperta: ninguém olha duas vezes para uma calculadora. Mas vale entender exatamente o que a fantasia faz e o que não faz antes de confiar a ela algo sensível.

## Como funciona o disfarce de calculadora

Uma calculadora secreta é um app de cofre de fotos feito para parecer e se comportar como uma calculadora comum. O ícone lembra uma calculadora, o nome na Tela de Início costuma ser algo como “Calculadora” e, ao abrir, ele faz contas de verdade. O cofre só aparece quando você digita um código secreto, normalmente um número seguido de uma tecla específica, como **=** ou **%**.

Algumas variações vão além: um histórico falso de “contas recentes”, um código falso que abre uma galeria inofensiva ou uma opção para o app travar ou fechar se o código errado for digitado. Os recursos variam muito de um desenvolvedor para outro.

<!-- TODO verify -->

## Disfarce não é criptografia

Aqui há duas perguntas diferentes sendo respondidas:

- O **disfarce** responde: “Alguém vai perceber que existe um cofre neste celular?”
- A **criptografia** responde: “Se alguém chegar aos arquivos, consegue lê-los?”

Criptografia é o processo de embaralhar dados para que só possam ser lidos com a chave certa. Um disfarce de calculadora não faz nada por essa pergunta. Os arquivos podem estar devidamente criptografados ou podem ser imagens comuns no armazenamento do app, atrás de uma tela de código. Pela calculadora, não dá para saber. Procure uma declaração clara de como os arquivos são guardados e de como a chave se relaciona com o seu código; nossa [lista de segurança para cofres](id:are-photo-vault-apps-safe) explica o que observar.

O contrário também vale: um cofre pode ter criptografia forte e nenhum disfarce.

## Onde o iOS revela o app real

O iOS não foi feito para manter em segredo a identidade de um app, então um app disfarçado deixa rastros em vários lugares. Quem sabe onde procurar consegue encontrá-los:

| Onde | O que pode revelar |
| --- | --- |
| **Busca do Spotlight e da Biblioteca de Apps** | Buscar o nome real do app, ou navegar pelas categorias da Biblioteca de Apps, pode trazê-lo à tona |
| **Ajustes › Geral › Armazenamento do iPhone** | Uma “calculadora” ocupando gigabytes |
| **Tempo de Uso** | Quanto tempo você passa na sua “calculadora” |
| **Histórico de compras da App Store** | O nome real do app e a página dele na App Store |
| **Manter o ícone pressionado** | Opções como compartilhar o app, que podem levar à página dele na App Store |
| **Duas calculadoras** | A Calculadora da própria Apple continua no celular, a menos que você a tenha removido |

A pista do armazenamento é especialmente difícil de evitar: fotos e vídeos ocupam espaço, e o iOS mostra o tamanho de cada app com honestidade. Se alguém já está desconfiado, o disfarce costuma ajudar menos do que se imagina.

## Quando o disfarce ainda pode ajudar

Isso não torna as calculadoras secretas inúteis. O disfarce tem valor real em algumas situações:

- **Exposição casual.** Uma criança, um amigo ou um colega que bate o olho na sua Tela de Início dificilmente vai investigar uma calculadora.
- **Evitar perguntas.** Algumas pessoas simplesmente não querem explicar por que têm um app de “cofre”.
- **Aparelhos compartilhados** em que ninguém está procurando nada.

Se alguém está procurando de propósito, ou pode pressionar você a abrir apps, o disfarce é uma camada fina. Nessa situação, duas outras ideias costumam se sustentar melhor.

### Ocultar o app com o próprio iOS

No iOS 18 e posteriores, você pode manter pressionada a maioria dos apps e escolher exigir Face ID ou ocultar o app. Os apps ocultos vão para uma pasta **Ocultos** no fim da Biblioteca de Apps, bloqueada com Face ID, Touch ID ou o código, e deixam de aparecer no Spotlight. É um recurso do sistema que funciona com qualquer app, não só com cofres. A mesma ressalva do álbum Ocultos vale aqui: quem sabe o seu código abre a pasta.

<!-- TODO verify iOS label -->

### Negação plausível em vez de disfarce

Negação plausível é a ideia de que, mesmo quando alguém vê o app ou faz você abri-lo, nada prova que há mais coisa para encontrar. Um cofre falso é uma forma disso: um segundo código abre um espaço inocente. Uma forma mais forte é um design em que qualquer código abre alguma coisa e o app nunca confirma quantos espaços existem. Explicamos as duas em [o que é um cofre falso?](id:what-is-a-decoy-vault) e [negação plausível explicada](id:plausible-deniability-explained).

## Perguntas antes de escolher uma calculadora secreta

1. O desenvolvedor explica como os arquivos são criptografados, e não só escondidos?
2. O que o rótulo de privacidade da App Store lista? Muitas calculadoras secretas são sustentadas por anúncios, o que geralmente significa SDKs de rastreamento.
3. Há conta ou envio para a nuvem, e isso é opcional?
4. Como você recupera o acesso se esquecer o código?
5. Importar copia a foto, deixando o original na sua biblioteca?

<!-- TODO verify -->

Esse último ponto pega as pessoas desprevenidas com qualquer tipo de cofre. O original fica no Fotos e em **Apagados** até você removê-lo; veja [apagar os originais depois de importar](id:delete-original-photos-after-import).

## Como o Velcrypt aborda isso

O Velcrypt não finge ser outra coisa. Ele não tem disfarce de calculadora nem ícone alternativo. Em vez disso, ele se concentra no que acontece depois que o app é aberto. Cada cofre abre com o próprio padrão desenhado numa grade de 5×5, e qualquer padrão que o app nunca viu simplesmente abre um cofre vazio, sem erro e sem nada que prove que existem outros cofres ([cofres ocultos](id:hidden-vaults)). Os arquivos são criptografados com AES-256-GCM usando chaves derivadas do padrão ([criptografia](id:encryption)), e tudo fica no aparelho.

A contrapartida é que o app fica visível na sua Tela de Início, a menos que você use o recurso do próprio iOS para ocultar apps. E, na primeira versão, o conteúdo do cofre não tem backup em lugar nenhum, então um celular perdido ou um padrão esquecido significa conteúdo perdido. Para uma comparação direta, veja [Velcrypt vs. apps de calculadora secreta](id:velcrypt-vs-calculator-vault-apps).
