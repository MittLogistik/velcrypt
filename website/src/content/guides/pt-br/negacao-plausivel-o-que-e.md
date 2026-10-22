---
pageId: plausible-deniability-explained
title: "Negação plausível na criptografia: o que é"
description: "O que é negação plausível na criptografia, como os volumes ocultos a criaram, como o Velcrypt a aplica aos cofres e os limites honestos da ideia."
h1: "Negação plausível na criptografia, explicada"
navTitle: "Negação plausível explicada"
answer: "Negação plausível na criptografia significa que, mesmo depois de você desbloquear algo, ninguém consegue provar se existem mais dados escondidos. O Velcrypt a aplica fazendo cada padrão abrir o próprio cofre e mostrando um cofre vazio, e não um erro, para padrões desconhecidos. Ele não esconde que existem dados criptografados no aparelho."
keyFacts:
  - "Negação plausível diz respeito ao que pode ser provado, não a esconder que um app ou dados criptografados existem."
  - "Ferramentas de criptografia de disco criaram a ideia com volumes ocultos dentro de volumes criptografados comuns."
  - "No Velcrypt, qualquer padrão desconhecido abre um cofre vazio, sem erro e sem lista de cofres."
  - "O tamanho do armazenamento e a análise forense podem mostrar que existem dados criptografados, mesmo que não possam ser lidos."
  - "A negação protege contra bisbilhotice e pressão informal; não é um escudo jurídico."
primaryKeyword: "negação plausível criptografia"
keywords: ["o que é negação plausível", "criptografia negável", "volume oculto explicado", "negação plausível cofre de fotos", "cofre negável iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "O conceito por trás de volumes ocultos e cofres falsos, como o design de padrões desconhecidos do Velcrypt o usa e o que ele não consegue fazer."
category: security
order: 42
related: [what-is-a-decoy-vault, hidden-vaults, duress-pattern, duress-password-explained, self-destruct-photo-vault, aes-256-encryption-explained, phone-privacy-border-crossing, security]
faq:
  - q: "O que significa negação plausível, em termos simples?"
    a: "Significa que você pode dizer, com credibilidade, “isso é tudo”, e ninguém consegue provar o contrário. Na criptografia, isso é alcançado com designs em que os dados escondidos são indistinguíveis de espaço vazio ou de dados que não existem."
  - q: "O Velcrypt esconde que eu uso um app de cofre?"
    a: "Não. O app aparece na sua Tela de Início, a menos que você use a opção do próprio iOS para ocultar apps, e o uso de armazenamento dele aparece nos Ajustes do iPhone. A negação do Velcrypt diz respeito a quantos cofres existem e ao que há neles, não a haver ou não dados criptografados no aparelho."
  - q: "Ferramentas forenses conseguem detectar cofres ocultos?"
    a: "Elas podem conseguir mostrar que o app guarda mais dados criptografados do que um cofre aberto explica. Sem o padrão certo, os dados em si continuam criptografados com AES-256-GCM, mas a existência deles pode não ser negável diante de um especialista."
  - q: "Negação plausível é legal?"
    a: "Usar criptografia é legal na maioria dos países, mas as leis sobre revelar chaves e sobre enganar autoridades variam muito. Este guia não é orientação jurídica; se você enfrentar uma situação legal, fale com um advogado."
  - q: "O que é um volume oculto?"
    a: "Um volume oculto é um segundo volume criptografado guardado no espaço livre de um volume criptografado comum. Uma senha abre o volume externo, outra abre o oculto, e os dados ocultos parecem espaço livre aleatório."
---

A criptografia responde muito bem a uma pergunta: alguém consegue ler isto sem a chave? A negação plausível responde a uma pergunta mais difícil e mais humana: o que acontece quando alguém exige a chave? Este guia explica o conceito, de onde ele veio, como o Velcrypt o usa e onde ele deixa de funcionar.

## O que significa negação plausível

Negação plausível é a propriedade de que, mesmo depois de você abrir algo sob pressão, ninguém consegue provar que você está escondendo mais alguma coisa. Você pode dizer “é só isso”, e o sistema não dá à outra pessoa nenhuma prova para contradizer você.

Isso importa porque a criptografia forte desloca o ponto fraco da matemática para a pessoa. Se um arquivo é protegido por AES-256, ninguém vai quebrar a cifra. Vão pedir a você, insistir ou ameaçar. Designs com negação tentam fazer com que ceder em parte seja uma opção segura.

## Um pouco de história: volumes ocultos

A ideia se popularizou com softwares de criptografia de disco. Ferramentas da família TrueCrypt e VeraCrypt introduziram o **volume oculto**: um segundo contêiner criptografado escondido no espaço não usado de um contêiner criptografado comum.

O truque funciona porque a saída de uma boa criptografia parece ruído aleatório, assim como o espaço livre de um volume criptografado preenchido com dados aleatórios. Uma senha abre o volume externo, que guarda arquivos falsos críveis. Outra senha abre o volume oculto. Sem essa segunda senha, a parte oculta é indistinguível de espaço vazio.

Pesquisadores também exploraram a “criptografia negável” de forma mais formal, em que o mesmo texto cifrado pode ser decifrado em textos diferentes com chaves diferentes. Os volumes ocultos foram a versão prática e amplamente usada.

Ao longo dos anos, esses mesmos pesquisadores e profissionais também documentaram os limites: sistemas operacionais deixam rastros (listas de arquivos recentes, miniaturas, logs), as pessoas se comportam de forma inconsistente, e um adversário que sabe que o software aceita volumes ocultos pode simplesmente supor que existe um.

## Como o Velcrypt aplica a ideia

O Velcrypt adapta o princípio a um cofre de fotos e documentos no iPhone. Não há volume externo e interno; em vez disso:

- **Cada padrão é um cofre próprio.** Cada cofre tem a própria chave mestra aleatória de 256 bits, desbloqueada por uma chave derivada daquele padrão.
- **Não existe lista de cofres.** O app não guarda nada que enumere quantos cofres existem.
- **Padrões desconhecidos abrem um cofre vazio.** Desenhe um padrão que o Velcrypt nunca viu e você cai num cofre novo e vazio. Não há mensagem de “padrão errado”.

A consequência é que um padrão errado e um cofre válido, mas vazio, parecem idênticos. Se você abrir um cofre para alguém, nada na interface mostra que existem outros cofres. Isso faz de um [cofre falso](id:what-is-a-decoy-vault) uma forma natural de uso, e não um modo especial. A página do recurso de [cofres ocultos](id:hidden-vaults) mostra como isso funciona na prática.

O [padrão de coação](id:duress-pattern), disponível com o Premium, amplia isso: um padrão especial abre um cofre de fachada e apaga em silêncio, de forma permanente, todos os outros cofres do iPhone. O app nunca mostra se há um configurado, então a existência dele também é negável. [Senha de coação, explicada](id:duress-password-explained) coloca a ideia em contexto.

## Os limites honestos

É fácil exagerar a negação. Veja o que o Velcrypt **não** afirma.

### Ele não esconde que o app existe

O Velcrypt fica na sua Tela de Início como qualquer outro app. O iOS 18 e posteriores permitem ocultar apps numa pasta oculta bloqueada com Face ID, mas isso é um recurso do iOS, e quem sabe o código do seu aparelho ainda consegue olhar. Ver um app de cofre diz às pessoas que você valoriza privacidade; não diz o que você guarda.

### Ele não esconde que existem dados criptografados

O Velcrypt não afirma esconder que há dados criptografados armazenados no aparelho. Arquivos criptografados ocupam espaço, e os Ajustes do iPhone mostram quanto armazenamento cada app usa. Uma perícia num aparelho poderia mostrar que o app guarda mais dados criptografados do que o cofre que você abriu. Ela não consegue descriptografar esses dados sem o padrão, mas o “tem mais coisa aqui” pode ficar visível para um especialista.

### Ele não desfaz cópias em outros lugares

Se uma foto ainda existe na sua fototeca, em Apagados, no iCloud ou numa conversa, a negação do cofre é irrelevante. [Remova os originais](id:delete-original-photos-after-import) depois de importar.

### Ele não impede a observação

Se alguém viu você desenhar o padrão real, ou filmou a tela, a negação acabou. Desenhe em privado e proteja a tela.

### Não é uma estratégia jurídica

Em alguns países, recusar-se a revelar chaves ou enganar autoridades pode trazer penalidades. A negação é útil principalmente contra pressão informal: um parceiro ciumento, um ladrão, um parente intrometido. Para qualquer situação com autoridades, leia o [guia sobre fronteiras](id:phone-privacy-border-crossing) e busque orientação jurídica adequada.

## Negação vs. sigilo: duas promessas diferentes

Ajuda separar as duas ideias, porque o marketing costuma misturá-las.

| | Sigilo (criptografia) | Negação |
|---|---|---|
| A pergunta que responde | Alguém consegue ler isto sem a chave? | Alguém consegue provar que existe mais do que você mostrou? |
| Em que se apoia | Matemática e gestão de chaves | Design indistinguível e comportamento crível |
| Quão forte é | Muito forte com AES-256 e boa derivação de chave | Depende da situação, de quem observa e do contexto |
| O que a quebra | Segredos fracos, chaves vazadas, cópias em outros lugares | Tamanho do armazenamento, rastros forenses, hesitação, observação |

A criptografia mantém o seu conteúdo ilegível em quase todos os cenários. A negação é uma camada mais suave e social por cima: valiosa no momento, mas nunca algo em que apostar tudo.

## Tornar a negação crível

A tecnologia dá a possibilidade; o seu comportamento dá a plausibilidade.

1. **Mantenha com cara de usado o cofre que você abriria.** Álbuns reais, itens recentes, um propósito crível.
2. **Faça a história bater com o armazenamento.** Um cofre falso com meia dúzia de documentos destoa de muitos gigabytes de armazenamento do app.
3. **Não hesite.** Pratique o padrão que você abriria até ele sair no automático.
4. **Evite rastros.** Não dê a álbuns em outros lugares nomes ligados ao que você esconde e não deixe originais em outros apps.

## Onde o Velcrypt se encaixa

O Velcrypt combina uma estrutura negável com criptografia forte: AES-256-GCM via Apple CryptoKit, chaves derivadas do seu padrão com PBKDF2-HMAC-SHA512 (pelo menos 600.000 iterações) e chaves por arquivo derivadas com HKDF. Tudo fica no aparelho, sem conta e sem servidor que possa revelar quantos cofres você tem. A [página de criptografia](id:encryption) traz os detalhes, e a [visão geral de segurança](id:security) lista as ameaças que ele não foi feito para impedir.
