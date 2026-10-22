---
pageId: encryption
title: "Criptografia do Velcrypt: AES-256-GCM e chaves do padrão"
description: "Como o Velcrypt criptografa o seu cofre: PBKDF2-HMAC-SHA512 a partir do padrão, chave mestra aleatória de 256 bits, HKDF por arquivo e AES-256-GCM."
h1: "Como o Velcrypt criptografa o seu cofre de fotos"
navTitle: "Criptografia"
answer: "O Velcrypt criptografa cada arquivo com AES-256-GCM. Seu padrão é reforçado com PBKDF2-HMAC-SHA512 (pelo menos 600.000 iterações, salt por aparelho) e vira uma chave que destrava a chave mestra aleatória de 256 bits do cofre, da qual o HKDF deriva uma chave própria para cada arquivo. A Proteção de Dados do iOS acrescenta uma segunda camada."
keyFacts:
  - "Cifra: criptografia autenticada AES-256-GCM via Apple CryptoKit."
  - "Reforço do padrão: PBKDF2-HMAC-SHA512, com pelo menos 600.000 iterações."
  - "Um salt aleatório por aparelho fica guardado no Keychain do iOS."
  - "Cada cofre tem sua própria chave mestra aleatória de 256 bits; cada arquivo recebe sua própria chave via HKDF."
  - "A Proteção de Dados do iOS (classe de proteção completa) atua por cima."
primaryKeyword: "cofre de fotos criptografado iphone"
keywords: ["criptografia de fotos iphone", "cofre de fotos aes-256-gcm", "app cofre pbkdf2", "como meu cofre é criptografado", "criptografia autenticada explicada"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM por arquivo, chaves derivadas do seu padrão com PBKDF2-HMAC-SHA512 e HKDF, mais a Proteção de Dados do iOS."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Que criptografia o Velcrypt usa?"
    a: "AES-256-GCM, um modo de criptografia autenticada, por meio do framework CryptoKit da Apple. Cada arquivo é criptografado com uma chave própria, derivada da chave mestra aleatória de 256 bits do cofre."
  - q: "Meu padrão fica salvo no celular?"
    a: "O padrão não é usado diretamente como chave. Ele é reforçado com PBKDF2-HMAC-SHA512, com pelo menos 600.000 iterações e um salt por aparelho, e o resultado serve para destravar a chave mestra do cofre."
  - q: "O Velcrypt consegue descriptografar meus arquivos?"
    a: "Não. O Velcrypt não tem servidores nem cópia das suas chaves. As chaves só podem ser reconstruídas no seu celular a partir do seu padrão, e é também por isso que um padrão esquecido não pode ser redefinido."
  - q: "Por que usar também a Proteção de Dados do iOS?"
    a: "Ela acrescenta uma camada independente. Os arquivos usam a classe de proteção completa, então o iOS os mantém criptografados com chaves ligadas ao código do aparelho enquanto o celular está bloqueado, além da criptografia do próprio Velcrypt."
---

A criptografia é o que faz de um cofre algo mais do que uma pasta escondida. No Velcrypt, cada foto, vídeo e documento é criptografado no seu iPhone antes de ser armazenado, com chaves que só podem ser reconstruídas a partir do seu padrão. Esta página mostra como essas chaves são criadas e usadas.

## A cadeia de chaves, passo a passo

O Velcrypt usa um modelo de chaves em camadas. Cada camada tem uma função.

1. **Seu padrão.** Você o desenha na [grade 5×5](id:pattern-lock). É o único segredo que você precisa lembrar.
2. **Reforço da chave com PBKDF2-HMAC-SHA512.** O padrão passa pelo PBKDF2 com SHA-512 por **pelo menos 600.000 iterações**, junto com um salt aleatório. O reforço de chave (key stretching) é uma técnica que torna cada tentativa deliberadamente lenta, então testar padrões um a um fica caro.
3. **Um salt por aparelho no Keychain.** O salt é aleatório, criado no seu aparelho e guardado no Keychain do iOS. Ele garante que o mesmo padrão gere uma chave diferente em outro celular, o que torna inúteis as tabelas de tentativas pré-calculadas.
4. **A chave mestra do cofre.** Cada cofre tem sua própria **chave mestra aleatória de 256 bits**. A chave reforçada do padrão não criptografa seus arquivos diretamente; ela destrava essa chave mestra.
5. **Chaves por arquivo com HKDF.** A partir da chave mestra, o HKDF (uma função padrão de derivação de chaves) deriva uma chave separada para cada arquivo. Nenhum par de arquivos compartilha a mesma chave.
6. **AES-256-GCM.** Cada arquivo é criptografado com a própria chave usando AES-256 no modo GCM, por meio do CryptoKit da Apple.

| Camada | O que faz |
| --- | --- |
| Padrão | O segredo que só você conhece |
| PBKDF2-HMAC-SHA512, mais de 600.000 iterações | Torna cada tentativa lenta |
| Salt por aparelho (Keychain) | Torna as chaves exclusivas do aparelho |
| Chave mestra aleatória de 256 bits | Uma por cofre, mantém os cofres separados |
| HKDF | Uma chave exclusiva para cada arquivo |
| AES-256-GCM | Criptografa e autentica o arquivo |
| Proteção de Dados do iOS | Segunda camada, no nível do sistema |

Como cada cofre tem a própria chave mestra, os cofres são separados criptograficamente. É isso que faz dos [cofres ocultos](id:hidden-vaults) algo mais do que um truque visual.

## O que significa criptografia autenticada

Criptografia autenticada é a criptografia que protege ao mesmo tempo o sigilo e a integridade. O AES-256-GCM faz duas coisas de uma vez: embaralha o arquivo para que ele não possa ser lido sem a chave e anexa uma etiqueta de autenticação que comprova que o arquivo não foi alterado.

Quando o Velcrypt abre um arquivo, ele confere essa etiqueta. Se um único byte tiver mudado, seja por corrupção ou adulteração, a descriptografia falha em vez de devolver silenciosamente dados danificados ou manipulados. Modos mais antigos, que criptografam sem autenticação, não conseguem detectar isso. Para uma visão geral da cifra em linguagem simples, veja [criptografia AES-256, explicada](id:aes-256-encryption-explained).

## A Proteção de Dados do iOS como segunda camada

Além da própria criptografia, o Velcrypt armazena os arquivos do cofre com a Proteção de Dados do iOS na classe de **proteção completa**. Nessa classe, o iOS mantém os arquivos criptografados com chaves ligadas ao código do aparelho sempre que o celular está bloqueado.

As duas camadas são independentes. Mesmo que uma fosse contornada de alguma forma, a outra continuaria entre um celular bloqueado e os seus arquivos.

## Por que as chaves não existem em nenhum outro lugar

O Velcrypt é [totalmente offline e sem conta](id:offline-no-account). Não há servidores, uploads nem cópia das suas chaves fora do seu celular. Esse design elimina toda uma categoria de risco: não existe banco de dados para ser invadido nem funcionário da empresa que possa descriptografar seus arquivos.

Isso também tem um custo. Como as chaves só existem no aparelho e só por meio do seu padrão, ninguém consegue recuperar um cofre se o padrão for esquecido ou o celular for perdido, a menos que você tenha criado antes um backup criptografado em Ajustes → Backup. Esse backup é um arquivo protegido por uma senha que você escolhe, e uma senha de backup esquecida também não pode ser recuperada.

## O que a criptografia não cobre

Uma criptografia forte protege os arquivos armazenados. Ela não ajuda se alguém vê você desenhar o padrão, se o cofre estiver aberto quando você entrega o celular ou se um aparelho com jailbreak estiver rodando malware. Ela também não alcança cópias fora do Velcrypt, como originais que continuam no Fotos. A [visão geral de segurança](id:security) cobre o modelo de ameaças por completo, incluindo [o que o Velcrypt não protege](id:security#what-velcrypt-does-not-protect-against).
