---
pageId: security
title: "Segurança do Velcrypt: como funciona a criptografia"
description: "Como o Velcrypt protege seus cofres: derivação PBKDF2, chave mestra por cofre, AES-256-GCM, Proteção de Dados do iOS — e contra o que ele não protege."
h1: "Como o Velcrypt funciona: o modelo de segurança"
navTitle: "Modelo de segurança"
answer: "O Velcrypt transforma o padrão que você desenha em uma chave com PBKDF2-HMAC-SHA512 (no mínimo 600.000 iterações), usa essa chave para proteger uma chave mestra aleatória de 256 bits daquele cofre e criptografa cada arquivo com AES-256-GCM no seu iPhone. Nada é enviado, e não existe conta nem cópia de recuperação das suas chaves."
keyFacts:
  - "Padrão → PBKDF2-HMAC-SHA512, no mínimo 600.000 iterações, salt aleatório por aparelho guardado no Keychain do iOS."
  - "Cada cofre tem sua própria chave mestra aleatória de 256 bits; as chaves de cada arquivo são derivadas com HKDF."
  - "Os arquivos são criptografados com AES-256-GCM via Apple CryptoKit, além da Proteção de Dados do iOS (classe de proteção completa)."
  - "Um padrão desconhecido abre um cofre vazio — sem lista de cofres, sem mensagem de “padrão incorreto”."
  - "Sem rede, sem conta, sem análises sobre o conteúdo do cofre; na v1 os dados do cofre ficam fora dos backups do iCloud e do computador."
  - "O Velcrypt ainda não passou por uma auditoria de segurança independente."
primaryKeyword: "segurança velcrypt"
keywords: ["criptografia cofre de fotos iphone", "como funciona a criptografia do velcrypt", "cofre de fotos aes-256-gcm", "bloqueio por padrão pbkdf2", "modelo de ameaças cofre de fotos", "app cofre com negação plausível"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "O Velcrypt consegue ver ou recuperar minhas fotos?"
    a: "Não. O Velcrypt não tem servidores, nem sistema de contas, nem cópia das suas chaves. Seu padrão nunca é armazenado, então ninguém no Velcrypt consegue abrir, redefinir ou recuperar um cofre."
  - q: "O que acontece se alguém desenhar o padrão errado no Velcrypt?"
    a: "Um padrão que o Velcrypt nunca viu simplesmente abre um cofre novo e vazio. Não aparece mensagem de erro nem nada que indique à pessoa se existem outros cofres."
  - q: "A criptografia do Velcrypt é a mesma criptografia nativa do iPhone?"
    a: "Não, ela se soma à do iPhone. O iOS já criptografa o aparelho, e o Velcrypt aplica a classe mais rígida da Proteção de Dados do iOS aos seus arquivos, mas também criptografa cada arquivo com uma chave AES-256-GCM própria, derivada do padrão do cofre. Assim, um celular desbloqueado não basta para abrir um cofre."
  - q: "O Velcrypt passou por auditoria independente?"
    a: "Ainda não. O Velcrypt usa o CryptoKit da Apple e algoritmos padrão e amplamente estudados. Uma revisão de segurança independente seria muito bem-vinda, mas nenhuma foi feita até agora."
  - q: "O Velcrypt esconde que eu uso um cofre criptografado?"
    a: "Não totalmente. O app aparece na sua Tela de Início, e alguém com ferramentas forenses pode perceber que o Velcrypt guarda dados criptografados e mais ou menos quanto. O que o Velcrypt esconde é quantos cofres você tem e o que há dentro deles."
---

Esta página explica, em linguagem simples, o que acontece com suas fotos, vídeos e documentos quando você os coloca no Velcrypt — e onde a proteção termina. Ela foi escrita para quem quer entender o funcionamento antes de confiar algo pessoal ao app.

## A versão curta

O Velcrypt é um app para iPhone que guarda arquivos privados em cofres criptografados no próprio aparelho. Você abre um cofre desenhando um padrão em uma grade de 5×5 pontos. Esse padrão nunca é salvo em lugar nenhum. Em vez disso, ele passa por uma função lenta de derivação de chave, que gera uma chave — e é essa chave que protege o conteúdo do cofre.

Tudo acontece no próprio iPhone. O Velcrypt não tem conta, nem servidores, nem etapa de envio, então não existe cópia do seu cofre, nem das suas chaves, em nenhum outro lugar. Essa é a origem da sua força e também a sua principal limitação: se você esquecer o padrão ou perder o celular, o cofre não pode ser recuperado.

## Do padrão à chave

### O padrão

Um padrão é uma linha contínua que passa por pelo menos 6 dos 25 pontos, com pelo menos uma mudança de direção. Padrões mais longos, de 8 a 12 pontos, são recomendados, porque cada ponto extra multiplica o número de padrões possíveis que um atacante teria de testar. Você pode ler mais sobre as vantagens e desvantagens em [padrão vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) e ver como o bloqueio funciona na [página do bloqueio por padrão](id:pattern-lock).

### PBKDF2 com salt por aparelho

Quando você termina de desenhar, o Velcrypt converte a sequência de pontos em uma chave usando **PBKDF2-HMAC-SHA512** com no mínimo **600.000 iterações**. PBKDF2 é uma função de derivação de chave: uma receita propositalmente lenta e repetível que transforma um segredo (seu padrão) em uma chave criptográfica. A lentidão é justamente o objetivo. Para você, gerar uma chave leva uma fração de segundo; já quem tenta milhões de padrões precisa pagar esse custo milhões de vezes.

A derivação também mistura um **salt** — um valor aleatório gerado uma única vez no seu aparelho e guardado no Keychain do iOS. Como o salt é exclusivo do seu iPhone, duas pessoas que desenhem o mesmo padrão acabam com chaves completamente diferentes, e tabelas pré-calculadas de “padrões comuns → chaves” não servem para nada.

### Uma chave mestra por cofre

Cada cofre tem sua própria **chave mestra**: 256 bits aleatórios gerados pelo gerador seguro de números aleatórios do sistema no momento em que o cofre é criado. A chave mestra é a que de fato protege os arquivos do cofre. Ela só é armazenada em forma protegida (encapsulada), selada com a chave derivada do seu padrão. Sem o padrão certo, a chave mestra não pode ser aberta.

Essa separação é importante. A chave mestra é realmente aleatória, então a força dela não depende de quão fácil de lembrar é o seu padrão, e ela mantém cada cofre criptograficamente independente de todos os outros cofres no mesmo celular.

### Uma chave por arquivo

A partir da chave mestra, o Velcrypt deriva uma chave separada para cada arquivo usando **HKDF**, uma função padrão para derivar várias chaves independentes de um único segredo forte. Se a chave de um arquivo algum dia fosse exposta, ela não revelaria a chave mestra nem as chaves dos outros arquivos.

## Como os arquivos são criptografados

### AES-256-GCM pelo Apple CryptoKit

Cada foto, vídeo e documento é criptografado com **AES-256-GCM**, usando o framework CryptoKit da Apple em vez de código criptográfico próprio. AES-256-GCM é criptografia autenticada: mantém o conteúdo confidencial *e* detecta adulterações. Se um único bit de um arquivo criptografado for alterado, a descriptografia falha em vez de produzir dados corrompidos ou manipulados. Para uma explicação mais detalhada, veja [criptografia AES-256 explicada](id:aes-256-encryption-explained) e a [página de criptografia](id:encryption).

### Proteção de Dados do iOS como segunda camada

Além da criptografia do próprio Velcrypt, os arquivos do cofre são gravados com a Proteção de Dados do iOS na classe de **proteção completa**. Com essa classe, o iOS mantém os arquivos criptografados com uma chave que só fica disponível enquanto o iPhone está desbloqueado. Com o celular bloqueado, nem o próprio sistema consegue lê-los. Essa camada é fornecida pela Apple e é independente das chaves do Velcrypt, então um atacante precisaria passar pelas duas.

## Por que um padrão desconhecido abre um cofre vazio

A maioria dos apps compara sua senha com algo armazenado — um hash, um verificador, uma “resposta correta” — e então diz *senha incorreta*. O Velcrypt, de propósito, não faz isso.

Não existe lista de cofres nem valor armazenado que confirme se um padrão está “correto”. Quando você desenha um padrão, o Velcrypt deriva uma chave e tenta abrir o cofre que pertence a ela. Se nenhum cofre corresponder, o app simplesmente abre um cofre novo e vazio para aquele padrão. Para quem está com o celular na mão, um padrão nunca usado e um cofre real, porém vazio, parecem idênticos.

Isso dá a você **negação plausível**: a possibilidade de dizer, com credibilidade, que não há mais nada para ver, porque nada no app prova o contrário. Você pode manter um cofre de fachada com fotos comuns e um cofre separado para o que é realmente privado. A página de [cofres ocultos](id:hidden-vaults) e nossos guias sobre [cofres de fachada](id:what-is-a-decoy-vault) e [negação plausível](id:plausible-deniability-explained) trazem mais detalhes.

Um efeito colateral prático: se você lembrar o padrão com um ponto errado, vai cair em um cofre vazio em vez de ver uma mensagem de erro. Isso é proposital, não um defeito.

## Bloqueio e o alternador de apps

O Velcrypt bloqueia automaticamente quando vai para segundo plano, depois de um intervalo que você pode configurar. Ao bloquear, as chaves do cofre são descartadas da memória e o padrão precisa ser desenhado de novo. O conteúdo do cofre também fica oculto no alternador de apps do iOS, então uma olhada nos apps recentes não mostra a miniatura de uma foto privada. Veja [bloqueio automático](id:auto-lock) para as configurações.

Não há desbloqueio por Face ID ou Touch ID, por escolha de design. Um rosto ou um dedo pode ser usado sem o seu consentimento — enquanto você dorme ou sob pressão. Um padrão existe apenas na sua memória.

## Sem rede, sem conta, sem backups

O Velcrypt funciona totalmente offline. Não há cadastro, endereço de e-mail, servidor nem envio do conteúdo do cofre, e nenhuma análise é coletada sobre o que você guarda. A página [offline e sem conta](id:offline-no-account) mostra o que isso significa na prática.

Na primeira versão, os dados do cofre também ficam **fora dos backups do iCloud e do computador (Finder)**. Isso mantém seus arquivos criptografados longe dos servidores da Apple e de qualquer computador com o qual você sincronize, mas tem uma consequência real: se o seu iPhone for perdido, quebrar ou for redefinido, os cofres vão junto. Uma opção de backup criptografado está planejada, sem data definida.

## Modelo de ameaças em resumo

| Ameaça | Protegido? | Observações |
|---|---|---|
| Alguém passa pela sua fototeca no app Fotos | Sim | Itens que você importa e depois apaga do Fotos (incluindo Apagados) ficam só no Velcrypt. |
| Alguém pega seu celular desbloqueado e abre o Velcrypt | Sim | A pessoa precisa do seu padrão; um padrão errado mostra um cofre vazio. |
| Alguém tenta provar que você tem mais cofres | Em grande parte | Sem lista de cofres, sem mensagem de “padrão incorreto”; o app não mostra quantos cofres existem. |
| Roubo de um iPhone bloqueado | Sim | Proteção de Dados do iOS mais a criptografia AES-256-GCM do próprio Velcrypt. |
| Força bruta no padrão a partir de arquivos extraídos | Dificultada | PBKDF2 com mais de 600.000 iterações e salt por aparelho; um padrão longo faz diferença. |
| Invasão de conta na nuvem | Sim | Os dados do cofre não são enviados e ficam fora dos backups do iCloud na v1. |
| Adulteração de arquivos criptografados | Detectada | A autenticação do AES-256-GCM rejeita dados modificados. |
| Alguém observando você desenhar o padrão | Não | Veja abaixo. |
| Malware ou aparelho com jailbreak | Não | Veja abaixo. |
| Padrão esquecido ou celular perdido | Não | Não há recuperação possível. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Contra o que o Velcrypt não protege

Toda ferramenta de segurança tem limites, e você deve conhecer os do Velcrypt antes de depender dele.

- **Olhares por cima do ombro.** Se alguém vir você desenhar seu padrão, pessoalmente ou por uma câmera, poderá abrir aquele cofre. Desenhe longe dos olhos dos outros e prefira um padrão que não pareça uma letra ou forma simples.
- **Ser obrigado a desbloquear.** O Velcrypt não consegue impedir que alguém force você a desenhar um padrão. Um cofre de fachada pode ajudar; um padrão de coação (em breve, Premium) está planejado para abrir um cofre escolhido e remover silenciosamente o acesso aos outros.
- **Celular entregue com o cofre aberto.** Enquanto um cofre está desbloqueado, qualquer pessoa com o celular na mão vê o que você vê. Bloqueie antes de passar o celular para alguém.
- **Aparelhos comprometidos ou com jailbreak e malware.** Um software capaz de ler a tela, registrar toques ou inspecionar a memória dos apps em um aparelho comprometido pode derrotar qualquer criptografia no nível do app.
- **Capturas de tela ou fotos da tela.** O Velcrypt não consegue impedir que outra câmera fotografe sua tela.
- **Cópias em outros lugares.** Importar copia a foto; o original continua no Fotos até você apagá-lo e, depois disso, fica em Apagados por cerca de 30 dias. Também podem existir cópias no Fotos do iCloud, em apps de mensagem, no e-mail ou no celular de outra pessoa. Siga o guia sobre [apagar os originais depois de importar](id:delete-original-photos-after-import).
- **Perda do celular ou padrão esquecido.** Nos dois casos, os dados se perdem. Não há frase de recuperação nem redefinição. Veja [esqueceu o padrão do cofre](id:forgot-vault-pattern).
- **Detecção de que o Velcrypt está em uso.** O ícone do app é visível, e ferramentas forenses podem perceber que o Velcrypt guarda dados criptografados e mais ou menos quanto. O Velcrypt não promete esconder isso — apenas o número de cofres e o conteúdo deles.
- **Padrões fracos ou fáceis de adivinhar.** Um padrão curto, ou em forma de L, Z ou quadrado, é muito mais fácil de adivinhar. Teste uma forma parecida no [verificador de força do padrão](id:pattern-strength-checker) — nunca o seu padrão real.

## Revisão independente

O Velcrypt se apoia em componentes padrão e amplamente estudados e nas bibliotecas de criptografia da própria Apple, em vez de algoritmos caseiros. Mesmo assim, um bom design não é o mesmo que um design verificado. O Velcrypt **não** passou por auditoria independente. Uma revisão de segurança externa seria muito bem-vinda e, se acontecer, publicaremos o resultado aqui.

## Glossário

- **AES-256-GCM** é um modo de criptografia simétrica que usa uma chave de 256 bits e autentica os dados, de modo que qualquer adulteração é detectada na descriptografia.
- **PBKDF2** (Password-Based Key Derivation Function 2) é um padrão que transforma um segredo, como uma senha ou um padrão de desbloqueio, em uma chave, repetindo uma função de hash muitas vezes para tornar as tentativas lentas.
- **Salt** é um valor aleatório combinado com o seu segredo antes da derivação da chave, para que o mesmo padrão gere chaves diferentes em aparelhos diferentes.
- **HKDF** (HMAC-based Key Derivation Function) é uma forma padrão de derivar várias chaves independentes a partir de uma chave forte.
- **Chave mestra** é a chave aleatória de 256 bits que pertence a um cofre e protege todas as chaves de arquivo desse cofre.
- **Negação plausível** é a propriedade de que nada no app consegue provar que existem outros cofres, de modo que você pode mostrar um cofre com credibilidade sem revelar os demais.
