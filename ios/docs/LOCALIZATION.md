# Localization

Velcrypt ships in English (the source language) and 10 other languages: es, de, fr, pt-BR, ja, ko, zh-Hans, it, nl, sv.

| File | Contents |
|---|---|
| `Velcrypt/Resources/Localizable.xcstrings` | All UI strings. The keys are the English text that SwiftUI looks up. |
| `Velcrypt/Resources/InfoPlist.xcstrings` | Permission prompts (`NSPhotoLibraryAddUsageDescription`, `NSPhotoLibraryUsageDescription`, `NSCameraUsageDescription`, `NSMicrophoneUsageDescription`). `CFBundleDisplayName` is intentionally **not** localized, so the app is called "Velcrypt" everywhere. |
| `scripts/validate-strings.mjs` | Validator (see below). |
| `docs/app-store/<locale>.md` | App Store Connect metadata per storefront locale. |

## Glossary

Use exactly these terms in the UI, in App Store copy and in support text. The brand name **Velcrypt** is never translated or inflected. In German, Japanese and Korean it is used without an article. In pt-BR it takes the masculine article "o Velcrypt". The tagline "Well Encrypted. Truly Private." stays in English as a brand signature.

| English | es | de | fr | pt-BR | ja | ko | zh-Hans | it | nl | sv |
|---|---|---|---|---|---|---|---|---|---|---|
| vault | bóveda | Tresor | coffre | cofre | 保管庫 | 금고 | 保险库 | cassaforte (pl. casseforti) | kluis | valv |
| pattern | patrón | Muster | schéma | padrão | パターン | 패턴 | 图案 | sequenza | patroon | mönster |
| dot | punto | Punkt | point | ponto | ドット | 점 | 点 | punto | stip | punkt |
| album | álbum | Album (pl. Alben) | album | álbum | アルバム | 앨범 | 相簿 | album | album | album |
| item | elemento | Objekt | élément | item | 項目 | 항목 | 项目 | elemento | onderdeel | objekt |
| import | importar | importieren | importer | importar | 読み込む | 가져오기 | 导入 | importare | importeren | importera |
| export | exportar | exportieren | exporter | exportar | 書き出す | 내보내기 | 导出 | esportare | exporteren | exportera |
| decoy (vault) | bóveda señuelo | Täuschungstresor | coffre leurre | cofre de disfarce | ダミー(の保管庫) | 위장 금고 | 伪装保险库 | cassaforte civetta | afleidingskluis | skenvalv |
| encrypted / encrypt | cifrado / cifrar | verschlüsselt / verschlüsseln | chiffré / chiffrer | criptografado / criptografar | 暗号化 | 암호화 | 加密 | cifrato / cifrare | versleuteld / versleutelen | krypterad / kryptera |
| lock / unlock | bloquear / desbloquear | sperren / entsperren | verrouiller / déverrouiller | bloquear / desbloquear | ロック / ロック解除 | 잠금 / 잠금 해제 | 锁定 / 解锁 | bloccare / sbloccare | vergrendelen / ontgrendelen | låsa / låsa upp |
| original(s) | original(es) | Original(e) | original(aux) | original(is) | オリジナル | 원본 | 原件 | originale/i | origineel / originelen | original(en) |
| delete (permanent) | eliminar | löschen | supprimer | apagar | 削除 | 삭제 | 删除 | eliminare | verwijderen | radera |
| permanently | de forma permanente | endgültig | définitivement | permanentemente | 完全に | 영구적으로 | 永久 | definitivamente | definitief | permanent |
| key (encryption) | clave (llave in slogans) | Schlüssel | clé | chave | 鍵 / 暗号鍵 | 키 / 열쇠 | 密钥 | chiave | sleutel | nyckel |
| duress pattern (coming soon) | patrón de coacción | Notfallmuster | schéma de contrainte | padrão de coação | 緊急用パターン | 비상 패턴 | 胁迫图案 | sequenza di emergenza | noodpatroon | nödmönster |

Notes on term choices:

- **ko 금고, not 보관함:** iOS already uses 보관함 for the Photos library (사진 보관함), and the two must never be confused in sentences such as "Originals in your Photos library are not affected."
- **it "sequenza":** this is the established Italian term for an unlock pattern. "Schema" would be ambiguous.
- **fr "schéma":** this is the established French term for an unlock pattern (schéma de déverrouillage).
- **zh-Hans 相簿:** this follows the iOS Photos app. App Store copy also uses 相册 because users search for it.
- **ja 保管庫 in the UI, 金庫 in the App Store name:** 金庫 is the more common search term.

### iOS system terms

Strings that point to iOS apps or menus use Apple's own localized names.

| English | es | de | fr | pt-BR | ja | ko | zh-Hans | it | nl | sv |
|---|---|---|---|---|---|---|---|---|---|---|
| Photos (app) | Fotos | Fotos | Photos | Fotos | 写真 | 사진 | 照片 | Foto | Foto's | Bilder |
| Files (app) | Archivos | Dateien | Fichiers | Arquivos | ファイル | 파일 | 文件 | File | Bestanden | Filer |
| Photos library | fototeca | Fotomediathek | photothèque | fototeca | 写真ライブラリ | 사진 보관함 | 照片图库 | libreria Foto | fotobibliotheek | bildbibliotek |
| Recently Deleted | Eliminado | Zuletzt gelöscht | Supprimés récemment | Apagados | 最近削除した項目 | 최근 삭제된 항목 | 最近删除 | Eliminati di recente | Recent verwijderd | Nyligen raderade |
| Settings | Ajustes | Einstellungen | Réglages | Ajustes | 設定 | 설정 | 设置 | Impostazioni | Instellingen | Inställningar |
| Cancel / Done / OK | Cancelar / OK / OK | Abbrechen / Fertig / OK | Annuler / OK / OK | Cancelar / OK / OK | キャンセル / 完了 / OK | 취소 / 완료 / 확인 | 取消 / 完成 / 好 | Annulla / Fine / OK | Annuleer / Gereed / OK | Avbryt / Klar / OK |
| Save | Guardar | Sichern | Enregistrer | Salvar | 保存 | 저장 | 存储 | Salva | Bewaar | Spara |
| Shortcuts (app) | Atajos | Kurzbefehle | Raccourcis | Atalhos | ショートカット | 단축어 | 快捷指令 | Comandi Rapidi | Opdrachten | Genvägar |
| App Library | biblioteca de apps | App-Mediathek | bibliothèque d’apps | Biblioteca de Apps | Appライブラリ | 앱 보관함 | App 资源库 | Libreria app | appbibliotheek | appbiblioteket |

### Tone and form of address

- Write concise, warm UI copy in the style of Apple. Use sentence case for body text and follow each language's convention for titles and buttons. pt-BR uses Title Case for buttons, as Apple does.
- Form of address follows Apple's usage in each language: informal *tú* (es), *du* (de, sv), *você* (pt-BR), *tu* (it), *je* (nl). French uses *vous*. Japanese uses polite です/ます forms, Korean uses 합니다/하세요 forms, and zh-Hans uses 你.
- Quotation marks: „…“ (de), « … » with spaces inside (fr), 「…」 (ja), ‘…’ (ko), “…” (zh-Hans, es, pt-BR, it), '…' (nl), ”…” (sv).
- These **safety-critical sentences** must stay unambiguous. Do not soften them:
  - A forgotten pattern cannot be recovered, and that vault can never be opened again.
  - Deleting is permanent.
  - Importing copies items. Originals are not deleted unless the user deletes them.
  - Vaults are not in iCloud or computer backups. Only an encrypted backup file that the user creates can restore them on another device.
  - A forgotten backup password cannot be recovered.

## Plurals

Count-based strings use plural variations (CLDR categories):

| Key | Variation |
|---|---|
| `%lld albums`, `%lld items`, `%lld items couldn't be imported.`, `%lld items are now encrypted in your vault.`, `Delete %lld items?`, `Move %lld Items`, `Connect at least %lld dots` | `variations.plural` |
| `AES-256 encrypted · %lld items · %@` | `substitutions.arg1` (plural on the first argument only, so the `%@` size is untouched) |

- en, de, nl, sv: `one`, `other`
- es, fr, it, pt-BR: `one`, `many`, `other` (`many` is for large round numbers such as 1,000,000 and uses the same text as `other`)
- ja, ko, zh-Hans: `other` only

The code also has separate keys for the singular (`1 item`, `1 album`, `1 item couldn't be imported.`), and these are translated normally. `Encrypting %lld of %lld` needs no plural in any of the 10 languages. ja and ko use positional specifiers there (`%2$lld項目中%1$lld項目を暗号化中`), and in `Step %lld of %lld`.

## Adding or changing a string

1. Write the English text in Swift as usual (`Text("…")`, `String(localized: "…")`). When you build, Xcode adds the key to `Localizable.xcstrings`.
2. Translate the key in Xcode's String Catalog editor for every language, or edit the JSON. Use the glossary above. Keep every format specifier (`%lld` = integer, `%@` = string). If a language needs a different word order, use positional specifiers (`%1$lld`, `%2$@`).
3. For counts, choose **Vary by Plural** in Xcode, or copy the structure of an existing plural key.
4. Run the validator:

   ```sh
   node ios/scripts/validate-strings.mjs --scan
   ```

Each translation must be marked `"state" : "translated"`. Xcode marks a translation `needs_review` when the English source text changes. Re-check those translations before you release.

## Adding a language

1. Add the language code to `LOCALES` in `scripts/validate-strings.mjs`. If its CLDR plural categories differ, add them to `REQUIRED_PLURAL` and `ALLOWED_PLURAL` too.
2. In Xcode, open each `.xcstrings` file and add the language (the **+** button under the language list). Translate every key, including every plural form the language needs. Arabic and Polish, for example, need `few` and `many`.
3. Add the language to the glossary tables above before you translate, so the terms stay consistent.
4. Run the validator until it passes. Then add `docs/app-store/<locale>.md` for the matching App Store Connect locale.

## Validation script

```sh
node ios/scripts/validate-strings.mjs                 # validate both catalogs, every key
node ios/scripts/validate-strings.mjs --keys keys.json # also require every key listed in keys.json (except "%lld")
node ios/scripts/validate-strings.mjs --scan          # also list Swift string literals that are missing from the catalog
node ios/scripts/validate-strings.mjs --verbose       # also list values that are identical to English but allowed
```

The script checks:

- Both catalogs parse as JSON and have `sourceLanguage` set to `en`.
- Every key has all 10 locales.
- Every value, plural form and substitution has the same format specifiers as the English source, with positional specifiers resolved.
- Plural categories are valid for the language, and every required category is present.
- No translation is empty.
- No translation is identical to English, unless the key is on the allow-list (`OK`, `Album`, `Version`, `System`, `Video, %@, %@`, `Camera`, `Timer`, etc., where the word is the same in that language).

The script exits with status 1 on any error, so it can run in CI.

