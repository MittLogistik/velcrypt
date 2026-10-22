---
pageId: forgot-vault-pattern
title: "Esqueci a senha ou o padrão do cofre de fotos: e agora?"
description: "Esqueceu a senha ou o padrão do cofre de fotos? O que tentar primeiro, por que o Velcrypt não tem redefinição, como outros apps recuperam e como evitar."
h1: "Esqueceu a senha ou o padrão do cofre de fotos? O que dá e o que não dá para fazer"
navTitle: "Esqueci o padrão do cofre"
answer: "No Velcrypt, um padrão esquecido não pode ser redefinido nem recuperado, nem por você nem pelo Velcrypt, porque a chave existe só na sua memória e nenhum servidor guarda uma cópia. O que você pode fazer é tentar, com calma, variações próximas do padrão ou restaurar um backup criptografado, se tiver criado um. Outros apps de cofre podem oferecer recuperação por e-mail ou conta; confira o que o seu usa."
keyFacts:
  - "O Velcrypt não tem redefinição, e-mail de recuperação nem frase de recuperação: as chaves são derivadas do seu padrão no aparelho."
  - "Um padrão errado no Velcrypt abre um cofre vazio em vez de mostrar erro, então um cofre vazio muitas vezes significa um padrão ligeiramente diferente."
  - "Os dados do cofre ficam fora dos backups do iCloud e do computador."
  - "Um backup criptografado feito antes, em Ajustes → Backup, pode ser restaurado em qualquer cofre com a senha de backup."
  - "Se perder algo seria insuportável, mantenha uma cópia em outro lugar de confiança."
primaryKeyword: "esqueci a senha do cofre de fotos"
keywords: ["esqueci o padrão do cofre", "recuperar cofre de fotos", "esqueci o pin do app de cofre", "redefinir padrão do cofre", "bloqueado no cofre de fotos"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "O que tentar primeiro, por que o Velcrypt não redefine um padrão esquecido, como outros apps lidam com recuperação e hábitos que evitam ficar trancado de fora."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "O suporte do Velcrypt consegue redefinir meu padrão?"
    a: "Não. O Velcrypt não tem conta nem servidor, e suas chaves são derivadas do padrão no seu iPhone. Não há nada que a equipe possa redefinir ou consultar, e é também por isso que ninguém mais consegue entrar."
  - q: "Meu cofre de repente parece vazio. Perdi meus dados?"
    a: "Provavelmente não. No Velcrypt, um padrão que o app nunca viu abre um cofre novo e vazio, então um cofre vazio normalmente significa que você desenhou um padrão um pouco diferente. Feche o app, tente de novo com cuidado e evite adicionar qualquer coisa ao cofre vazio."
  - q: "Reinstalar o Velcrypt me deixa recomeçar e manter as fotos?"
    a: "Não. Apagar o app apaga os dados criptografados dele do aparelho. Reinstalar dá a você um app limpo, não acesso aos cofres antigos. Só apague se já aceitou que o conteúdo se perdeu."
  - q: "Como outros apps de cofre de fotos lidam com um PIN esquecido?"
    a: "Muitos apps com conta permitem redefinir o PIN por e-mail ou por uma conta na nuvem, ou seja, existe um caminho de recuperação fora da sua memória. Confira a ajuda do seu app antes de precisar e entenda que um caminho de recuperação também pode ser uma porta de entrada para outra pessoa."
  - q: "Um backup do Velcrypt ajuda se eu esquecer o padrão?"
    a: "Sim, se você criou um antes. Abra qualquer cofre (um padrão novo abre um cofre vazio), vá em Ajustes → Backup e restaure o arquivo com a senha de backup. Os itens são adicionados ao cofre aberto. Sem backup, o conteúdo não pode ser recuperado, e uma senha de backup esquecida também não."
---

Aquele frio na barriga quando o desenho que você fez cem vezes de repente não funciona é real. Antes de qualquer coisa: não apague nem reinstale o app. A maioria dos padrões “esquecidos” acaba sendo padrões lembrados com um pequeno erro, e há coisas sensatas para tentar primeiro.

## Primeiro, tente isto (no Velcrypt)

O Velcrypt se comporta de um jeito diferente da maioria dos apps quando você erra o padrão. Ele não mostra erro. Qualquer padrão que ele nunca viu simplesmente abre um cofre novo e vazio. Então, se o seu cofre parece vazio, a explicação mais provável é que você desenhou um padrão um pouco diferente, e não que seus dados sumiram.

Siga estes passos com calma:

1. **Não adicione nada ao cofre vazio.** Se você importar itens para ele, cria um cofre novo com aquele padrão errado, o que aumenta a confusão depois.
2. **Feche o app e comece de novo.** O Velcrypt se bloqueia quando vai para segundo plano (após o intervalo que você definiu), o que dá a você uma tela de desbloqueio nova.
3. **Confira o ponto de partida.** Um padrão é uma sequência de pontos, então começar pela outra ponta da mesma forma geralmente é um padrão diferente.
4. **Confira pontos pulados ou a mais.** Numa grade de 5×5, uma linha reta pode facilmente passar por um ponto a mais ou a menos do que você pretendia.
5. **Pense em onde você costuma estar.** A memória muscular está ligada à postura. Tente desenhar na posição em que você normalmente desbloqueia: com uma mão, com as duas, sentado.
6. **Rascunhe no papel.** Desenhe a grade de 5×5, rascunhe o padrão de memória e compare variações. Destrua o papel depois.
7. **Faça uma pausa.** A memória funciona pior sob estresse. Tentar de novo mais tarde, descansado, muitas vezes resolve.

## Se realmente se perdeu

Se nada disso funcionar e você não tiver um backup, a resposta honesta é: o conteúdo não pode ser recuperado. Nem por você, nem pelo Velcrypt, nem por ninguém.

Isso não é uma política que alguém possa contornar. É como a criptografia funciona:

- O Velcrypt não tem conta, e-mail nem servidor. Veja [offline, sem conta](id:offline-no-account).
- As chaves do seu cofre são desbloqueadas por uma chave derivada do seu padrão no aparelho, usando PBKDF2 e um salt guardado no Keychain do iOS. Sem o padrão, essa chave não pode ser gerada.
- Os dados do cofre são criptografados com AES-256-GCM, que não pode ser quebrado por força bruta. O [explicador sobre AES-256](id:aes-256-encryption-explained) mostra por quê.
- Os dados do cofre ficam fora dos backups do iCloud e do Finder/iTunes, então não existe uma cópia automática para restaurar. A única cópia possível é um backup criptografado que você mesmo tenha criado.

### Se você tem um backup criptografado

Se você criou um backup do cofre em Ajustes → Backup antes de esquecer o padrão, ainda pode recuperar o conteúdo. Desenhe um padrão novo (de preferência um que você vá lembrar), que abre um cofre vazio, vá em Ajustes → Backup, escolha Restaurar do Backup e digite a senha escolhida quando o backup foi criado. Os itens do backup são adicionados ao cofre aberto. O backup só contém o que havia no cofre no momento em que foi criado, e o Velcrypt não consegue recuperar uma senha de backup esquecida.

As mesmas propriedades que tornam o seu cofre privado tornam definitivo um padrão esquecido. Um sistema com um botão “esqueceu o padrão?” necessariamente mantém uma porta de entrada que não depende só de você.

### E os outros cofres?

Como cada padrão é um cofre próprio, esquecer um padrão não afeta os outros. Se você lembra o padrão do seu [cofre falso](id:what-is-a-decoy-vault), esse cofre abre normalmente.

## Por que “sem redefinição” é uma escolha deliberada

Mecanismos de recuperação sempre criam uma segunda chave. Redefinições por e-mail podem ser acionadas por qualquer pessoa com acesso à sua caixa de entrada. Backups na nuvem podem ser restaurados por qualquer pessoa que entre na conta. Perguntas de segurança muitas vezes podem ser adivinhadas pelas redes sociais.

O Velcrypt escolheu não ter uma segunda chave. Isso elimina uma categoria inteira de ataques e significa que não há nada para ser requisitado judicialmente, vazado ou roubado por phishing. O preço é que só você carrega a responsabilidade de lembrar o padrão. Para muita gente, essa troca vale a pena; para certos conteúdos, não. Decida que tipo de conteúdo você está guardando.

## Como evitar ficar trancado de fora

### Escolha um padrão forte, mas memorável

Força e facilidade de lembrar não são opostas. Um bom padrão na grade de 5×5:

- usa de 8 a 12 pontos e muda de direção várias vezes,
- não começa num canto nem traça uma letra,
- tem alguma lógica pessoal que só você conhece, como uma forma ligada a um lugar ou um gesto que pareça natural para você.

Teste uma forma parecida (não a real) no [verificador de força de padrão](id:pattern-strength-checker) e leia [padrão vs. PIN vs. Face ID](id:pattern-lock-vs-pin-vs-face-id) para saber o que torna um padrão fraco.

### Pratique

- Abra o cofre com frequência nas primeiras semanas para o movimento virar memória muscular.
- Evite trocar o padrão logo antes de um período estressante, como uma viagem.
- Se você tem vários cofres, faça padrões bem diferentes para não misturá-los.

### Faça backups criptografados

Em Ajustes → Backup, crie um backup de cada cofre importante e salve o arquivo fora do iPhone, no iCloud Drive ou em um computador. Refaça o backup depois de adicionar coisas importantes. Escolha uma senha de backup longa que você consiga lembrar ou guarde num gerenciador de senhas: sem ela, o arquivo não abre.

### Mantenha originais onde a perda doeria

Se perder uma foto ou um documento seria realmente insuportável, um cofre não deve ser o único lugar onde ele existe. Para itens insubstituíveis, mantenha um backup ou uma cópia extra num lugar de confiança, como um drive criptografado guardado em segurança. É uma troca consciente: cada cópia extra é mais um lugar para proteger.

### Não anote o padrão perto do celular

Se precisar mesmo de um lembrete por escrito, faça algo que só você consiga interpretar e guarde longe do aparelho.

## Se você usa outro app de cofre

A recuperação varia muito entre apps. Antes de precisar, confira:

- **Existe conta?** Apps com login por e-mail muitas vezes permitem redefinir o PIN por esse e-mail.
- **Existe backup na nuvem?** Alguns apps conseguem restaurar o conteúdo após reinstalar, se ele foi sincronizado com os servidores deles.
- **Existe código de recuperação?** Alguns apps geram um na configuração. Se você não o guardou, ele não vai ajudar.
- **O que diz a página de ajuda?** Procure as instruções oficiais de recuperação do fabricante. Desconfie de ferramentas de “desbloqueio” de terceiros; elas raramente funcionam e podem ser golpes.

O [guia sobre cofres de fotos sem conta](id:photo-vault-without-account) explica as contrapartidas entre apps com conta e apps só no aparelho.

## Onde o Velcrypt se encaixa

O Velcrypt é, de propósito, um cofre só no aparelho: sem conta, sem servidor, sem frase de recuperação, sem cópia das suas chaves em nenhum outro lugar. O único caminho de volta é um backup criptografado que você mesmo cria e guarda, e esse recurso é grátis. Se tiver dúvidas, o [suporte](id:support) pode explicar como o app se comporta, mas ninguém lá consegue abrir um cofre para você.
