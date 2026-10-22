# Velcrypt SEO and content plan

Last updated: 22 October 2026. Scope: velcrypt.app. 11 live locales (en + wave 1: es, de, fr, pt-BR, it, nl, sv, ja, ko, zh-Hans); the system is built for about 30.

## 1. Strategy in five lines

1. **Angle:** each pattern opens its own encrypted vault, with no account and no cloud. Most competitors argue that "hiding is not encrypting". We cover that too, but lead with the things that are ours: patterns as keys, plausible deniability and honest limits.
2. **Intent ladder:** iOS how-to guides (high volume) lead to Apple-native questions ("is the Hidden album private"), then to choosing a vault, then to feature and comparison pages, then to the App Store CTA.
3. **AI answer engines:** every page opens with a direct answer and key facts, then the body, then FAQs headed by the actual questions. The site also has JSON-LD, `llms.txt`, `llms-full.txt` and explicit crawler allowances.
4. **Quality over count:** no programmatic or templated pages. Each new page must answer a distinct intent with iOS-accurate steps and pass the honesty rules in the README.
5. **Trust:** a public security model with a section on what Velcrypt does not protect against. No ratings, user counts, prices or audit claims until they are real.

## 2. Keyword → URL map (everything built)

Primary keywords come from each page's `primaryKeyword` frontmatter. Secondary phrasings are in `keywords`.

### pages

| Target keyword | URL | Title |
|---|---|---|
| velcrypt security | /security/ | Velcrypt Security: How the Encryption Works |
| velcrypt pricing | /pricing/ | Velcrypt Pricing: Free Version and Premium |
| velcrypt faq | /faq/ | Velcrypt FAQ: Vaults, Patterns, Encryption |
| about velcrypt | /about/ | About Velcrypt: Private by Design |
| velcrypt support | /support/ | Velcrypt Support: Contact and Troubleshooting |
| velcrypt privacy policy | /privacy/ | Velcrypt Privacy Policy |
| velcrypt terms of use | /terms/ | Velcrypt Terms of Use |
| velcrypt press kit | /press/ | Velcrypt Press Kit: Logos, Facts and Contact |

### features

| Target keyword | URL | Title |
|---|---|---|
| pattern lock app iphone | /features/pattern-lock/ | Pattern Lock: Unlock Your Vault on a 5×5 Grid |
| hidden vault app iphone | /features/hidden-vaults/ | Hidden Vaults: Every Pattern Opens Its Own Vault |
| duress pattern vault app | /features/duress-pattern/ | Duress Pattern (Coming Soon): Protect Vaults Under Pressure |
| photo vault encryption iphone | /features/encryption/ | Velcrypt Encryption: AES-256-GCM, Keys from Your Pattern |
| offline photo vault no account | /features/offline-no-account/ | Offline Photo Vault with No Account, No Cloud, No Servers |
| hide photos iphone app | /features/hide-photos/ | Hide Photos on iPhone in an Encrypted Vault | Velcrypt |
| hide videos iphone app | /features/hide-videos/ | Hide Videos on iPhone in an Encrypted Vault | Velcrypt |
| private documents app iphone | /features/private-documents/ | Private Documents on iPhone: Encrypt PDFs, Scans and IDs |
| auto lock vault app iphone | /features/auto-lock/ | Auto-Lock: Your Vault Locks When You Leave the App |
| private photo album app iphone | /features/albums/ | Vault Albums, Viewer and Secure Export | Velcrypt |

### guides

| Target keyword | URL | Title |
|---|---|---|
| how to hide photos on iphone | /guides/hide-photos-iphone/ | How to Hide Photos on iPhone (2026 Guide) |
| how to lock photos on iphone | /guides/lock-photos-iphone/ | How to Lock Photos on iPhone: 4 Methods Compared |
| how to hide videos on iphone | /guides/hide-videos-iphone/ | How to Hide Videos on iPhone (and Save Space) |
| password protect photos on iphone | /guides/password-protect-photos-iphone/ | How to Password Protect Photos on iPhone |
| secret photo album iphone | /guides/secret-photo-album-iphone/ | Secret Photo Album on iPhone: What Actually Works |
| password protect a folder on iphone | /guides/password-protect-folder-iphone/ | How to Password Protect a Folder on iPhone |
| do hidden photos show up in memories | /guides/hidden-photos-search-memories-iphone/ | Do Hidden Photos Show in Search, Memories or Widgets? |
| show one photo on iphone without swiping | /guides/guided-access-show-one-photo/ | Show One Photo on iPhone Without Swiping |
| is the iphone hidden album private | /guides/is-iphone-hidden-album-private/ | Is the iPhone Hidden Album Private? What It Protects |
| are hidden photos saved to icloud | /guides/are-hidden-photos-saved-to-icloud/ | Are Hidden Photos Saved to iCloud? How Sync Really Works |
| icloud advanced data protection | /guides/icloud-advanced-data-protection-explained/ | iCloud Advanced Data Protection Explained (2026) |
| which apps can see my photos iphone | /guides/which-apps-can-see-your-photos-iphone/ | Which Apps Can See My Photos on iPhone? How to Check |
| best private photo vault apps for iphone | /guides/best-private-photo-vault-apps-iphone/ | Best Private Photo Vault Apps for iPhone: How to Choose |
| are photo vault apps safe | /guides/are-photo-vault-apps-safe/ | Are Photo Vault Apps Safe? A 9-Point Checklist |
| calculator vault apps | /guides/calculator-vault-apps-explained/ | Calculator Vault Apps Explained: Disguise vs Encryption |
| photo vault no account | /guides/photo-vault-without-account/ | Photo Vault Without an Account: Offline Vaults Explained |
| delete photos after importing to vault | /guides/delete-original-photos-after-import/ | Delete Original Photos After Importing to a Vault |
| remove exif data iphone | /guides/remove-photo-metadata-iphone/ | How to Remove EXIF and Location Data from iPhone Photos |
| store intimate photos safely iphone | /guides/store-intimate-photos-safely-iphone/ | How to Store Intimate Photos Safely on iPhone |
| can customs search my phone | /guides/phone-privacy-border-crossing/ | Can Customs Search My Phone? Border Privacy Guide |
| scan documents privately on iphone | /guides/scan-documents-privately-iphone/ | How to Scan Documents Privately on iPhone |
| pattern lock vs pin | /guides/pattern-lock-vs-pin-vs-face-id/ | Pattern Lock vs PIN vs Face ID: Which Is Safer? |
| decoy vault | /guides/what-is-a-decoy-vault/ | What Is a Decoy Vault? How to Set Up a Believable One |
| plausible deniability encryption | /guides/plausible-deniability-explained/ | Plausible Deniability in Encryption, Explained |
| aes-256 encryption explained | /guides/aes-256-encryption-explained/ | AES-256 Encryption Explained (GCM, PBKDF2, Quantum) |
| forgot photo vault password | /guides/forgot-vault-pattern/ | Forgot Your Photo Vault Password or Pattern? |

### useCases

| Target keyword | URL | Title |
|---|---|---|
| sharing iphone with kids privacy | /use-cases/sharing-phone-with-kids/ | Sharing Your iPhone With Kids: Keep Photos Private |
| partner looking through my phone photos | /use-cases/partner-scrolling-camera-roll/ | When Your Partner Scrolls Your Camera Roll |
| iphone repair privacy photos | /use-cases/phone-repair-privacy/ | iPhone Repair Privacy: Protect Your Photos First |
| iphone photos showing on ipad | /use-cases/family-shared-icloud/ | Photos Showing on a Family iPad? Separate iCloud |
| ex has access to my iphone photos | /use-cases/after-a-breakup/ | After a Breakup: Lock Down Your iPhone Photos |
| travelling with private photos iphone | /use-cases/travelling-with-private-photos/ | Travelling With Private Photos on Your iPhone |
| store id documents securely iphone | /use-cases/medical-and-id-documents/ | Medical and ID Documents on iPhone: Store Privately |
| how to save evidence of harassment iphone | /use-cases/documenting-harassment-evidence/ | Keeping Harassment Evidence Private on iPhone |
| protect unreleased photos iphone | /use-cases/creators-unreleased-content/ | Protecting Unreleased Work and Client Photos on iPhone |
| journalist protect sources iphone | /use-cases/journalists-protecting-sources/ | Journalists: Protecting Source Photos on iPhone |

### compare

| Target keyword | URL | Title |
|---|---|---|
| velcrypt vs keepsafe | /compare/velcrypt-vs-keepsafe/ | Velcrypt vs Keepsafe: On-Device Vault vs Cloud Vault |
| velcrypt vs private photo vault | /compare/velcrypt-vs-private-photo-vault/ | Velcrypt vs Private Photo Vault: Side-by-Side (2026) |
| calculator vault app vs velcrypt | /compare/velcrypt-vs-calculator-vault-apps/ | Velcrypt vs Calculator Vault Apps: Disguise or Encryption |
| velcrypt vs iphone hidden album | /compare/velcrypt-vs-iphone-hidden-album/ | Velcrypt vs iPhone Hidden Album: What’s the Difference? |
| apple notes locked notes vs photo vault | /compare/velcrypt-vs-apple-notes-locked-notes/ | Velcrypt vs Apple Notes Locked Notes for Private Photos |
| keepsafe alternative | /compare/keepsafe-alternative/ | Keepsafe Alternative for iPhone: What to Look For |

### tools

| Target keyword | URL | Title |
|---|---|---|
| photo metadata remover | /tools/photo-metadata-remover/ | Photo Metadata Remover: View & Strip EXIF (Free) |
| pattern strength checker | /tools/pattern-strength-checker/ | Pattern Strength Checker: Test a 5×5 Unlock Pattern |

### Hub and core URLs

| Target keyword | URL |
|---|---|
| private photo vault iphone / encrypted photo vault app | / |
| photo vault features / pattern lock vault app | /features/ |
| iphone photo privacy guide | /guides/ |
| when to use a photo vault | /use-cases/ |
| best photo vault comparison / keepsafe alternative | /compare/ |
| exif remover online / pattern strength checker | /tools/ |

## 2b. Per-locale keyword → URL map (wave 1, generated)

Regenerate with `node scripts/keyword-map.mjs`. The target keyword is each page’s `primaryKeyword`, researched per language for local search intent rather than translated literally.

#### English (`en`, hreflang `en`)

| pageId | Target keyword | URL |
|---|---|---|
| security | velcrypt security | /security/ |
| pricing | velcrypt pricing | /pricing/ |
| faq | velcrypt faq | /faq/ |
| about | about velcrypt | /about/ |
| support | velcrypt support | /support/ |
| privacy | velcrypt privacy policy | /privacy/ |
| terms | velcrypt terms of use | /terms/ |
| press | velcrypt press kit | /press/ |
| pattern-lock | pattern lock app iphone | /features/pattern-lock/ |
| hidden-vaults | hidden vault app iphone | /features/hidden-vaults/ |
| duress-pattern | duress pattern vault app | /features/duress-pattern/ |
| encryption | photo vault encryption iphone | /features/encryption/ |
| offline-no-account | offline photo vault no account | /features/offline-no-account/ |
| hide-photos | hide photos iphone app | /features/hide-photos/ |
| hide-videos | hide videos iphone app | /features/hide-videos/ |
| private-documents | private documents app iphone | /features/private-documents/ |
| auto-lock | auto lock vault app iphone | /features/auto-lock/ |
| albums | private photo album app iphone | /features/albums/ |
| hide-photos-iphone | how to hide photos on iphone | /guides/hide-photos-iphone/ |
| lock-photos-iphone | how to lock photos on iphone | /guides/lock-photos-iphone/ |
| hide-videos-iphone | how to hide videos on iphone | /guides/hide-videos-iphone/ |
| password-protect-photos-iphone | password protect photos on iphone | /guides/password-protect-photos-iphone/ |
| secret-photo-album-iphone | secret photo album iphone | /guides/secret-photo-album-iphone/ |
| password-protect-folder-iphone | password protect a folder on iphone | /guides/password-protect-folder-iphone/ |
| hidden-photos-search-memories-iphone | do hidden photos show up in memories | /guides/hidden-photos-search-memories-iphone/ |
| guided-access-show-one-photo | show one photo on iphone without swiping | /guides/guided-access-show-one-photo/ |
| is-iphone-hidden-album-private | is the iphone hidden album private | /guides/is-iphone-hidden-album-private/ |
| are-hidden-photos-saved-to-icloud | are hidden photos saved to icloud | /guides/are-hidden-photos-saved-to-icloud/ |
| icloud-advanced-data-protection-explained | icloud advanced data protection | /guides/icloud-advanced-data-protection-explained/ |
| which-apps-can-see-your-photos-iphone | which apps can see my photos iphone | /guides/which-apps-can-see-your-photos-iphone/ |
| best-private-photo-vault-apps-iphone | best private photo vault apps for iphone | /guides/best-private-photo-vault-apps-iphone/ |
| are-photo-vault-apps-safe | are photo vault apps safe | /guides/are-photo-vault-apps-safe/ |
| calculator-vault-apps-explained | calculator vault apps | /guides/calculator-vault-apps-explained/ |
| photo-vault-without-account | photo vault no account | /guides/photo-vault-without-account/ |
| delete-original-photos-after-import | delete photos after importing to vault | /guides/delete-original-photos-after-import/ |
| remove-photo-metadata-iphone | remove exif data iphone | /guides/remove-photo-metadata-iphone/ |
| store-intimate-photos-safely-iphone | store intimate photos safely iphone | /guides/store-intimate-photos-safely-iphone/ |
| phone-privacy-border-crossing | can customs search my phone | /guides/phone-privacy-border-crossing/ |
| scan-documents-privately-iphone | scan documents privately on iphone | /guides/scan-documents-privately-iphone/ |
| pattern-lock-vs-pin-vs-face-id | pattern lock vs pin | /guides/pattern-lock-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | decoy vault | /guides/what-is-a-decoy-vault/ |
| plausible-deniability-explained | plausible deniability encryption | /guides/plausible-deniability-explained/ |
| aes-256-encryption-explained | aes-256 encryption explained | /guides/aes-256-encryption-explained/ |
| forgot-vault-pattern | forgot photo vault password | /guides/forgot-vault-pattern/ |
| sharing-phone-with-kids | sharing iphone with kids privacy | /use-cases/sharing-phone-with-kids/ |
| partner-scrolling-camera-roll | partner looking through my phone photos | /use-cases/partner-scrolling-camera-roll/ |
| phone-repair-privacy | iphone repair privacy photos | /use-cases/phone-repair-privacy/ |
| family-shared-icloud | iphone photos showing on ipad | /use-cases/family-shared-icloud/ |
| after-a-breakup | ex has access to my iphone photos | /use-cases/after-a-breakup/ |
| travelling-with-private-photos | travelling with private photos iphone | /use-cases/travelling-with-private-photos/ |
| medical-and-id-documents | store id documents securely iphone | /use-cases/medical-and-id-documents/ |
| documenting-harassment-evidence | how to save evidence of harassment iphone | /use-cases/documenting-harassment-evidence/ |
| creators-unreleased-content | protect unreleased photos iphone | /use-cases/creators-unreleased-content/ |
| journalists-protecting-sources | journalist protect sources iphone | /use-cases/journalists-protecting-sources/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /compare/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /compare/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | calculator vault app vs velcrypt | /compare/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | velcrypt vs iphone hidden album | /compare/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | apple notes locked notes vs photo vault | /compare/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | keepsafe alternative | /compare/keepsafe-alternative/ |
| photo-metadata-remover | photo metadata remover | /tools/photo-metadata-remover/ |
| pattern-strength-checker | pattern strength checker | /tools/pattern-strength-checker/ |

#### Español (`es`, hreflang `es`)

| pageId | Target keyword | URL |
|---|---|---|
| security | seguridad velcrypt | /es/seguridad/ |
| pricing | velcrypt precio | /es/precios/ |
| faq | velcrypt preguntas frecuentes | /es/preguntas-frecuentes/ |
| about | acerca de velcrypt | /es/acerca-de/ |
| support | soporte velcrypt | /es/soporte/ |
| privacy | política de privacidad velcrypt | /es/privacidad/ |
| terms | términos de uso velcrypt | /es/terminos/ |
| press | kit de prensa velcrypt | /es/prensa/ |
| pattern-lock | app bloqueo con patrón iphone | /es/funciones/bloqueo-con-patron/ |
| hidden-vaults | app bóveda oculta iphone | /es/funciones/bovedas-ocultas/ |
| duress-pattern | patrón de coacción app bóveda | /es/funciones/patron-de-coaccion/ |
| encryption | bóveda de fotos cifrada iphone | /es/funciones/cifrado-aes-256/ |
| offline-no-account | bóveda de fotos sin cuenta | /es/funciones/boveda-sin-cuenta-sin-conexion/ |
| hide-photos | app para ocultar fotos iphone | /es/funciones/ocultar-fotos/ |
| hide-videos | app para ocultar vídeos iphone | /es/funciones/ocultar-videos/ |
| private-documents | guardar documentos privados iphone | /es/funciones/documentos-privados-iphone/ |
| auto-lock | bloqueo automático app bóveda iphone | /es/funciones/bloqueo-automatico/ |
| albums | app álbum de fotos privado iphone | /es/funciones/album-de-fotos-privado/ |
| hide-photos-iphone | ocultar fotos iphone | /es/guias/ocultar-fotos-iphone/ |
| lock-photos-iphone | bloquear fotos iphone | /es/guias/bloquear-fotos-iphone/ |
| hide-videos-iphone | ocultar videos iphone | /es/guias/ocultar-videos-iphone/ |
| password-protect-photos-iphone | poner contraseña a fotos iphone | /es/guias/poner-contrasena-fotos-iphone/ |
| secret-photo-album-iphone | álbum secreto iphone | /es/guias/album-secreto-fotos-iphone/ |
| password-protect-folder-iphone | poner contraseña a una carpeta iphone | /es/guias/poner-contrasena-carpeta-iphone/ |
| hidden-photos-search-memories-iphone | fotos ocultas aparecen en recuerdos | /es/guias/fotos-ocultas-busqueda-recuerdos-iphone/ |
| guided-access-show-one-photo | mostrar una foto iphone sin deslizar | /es/guias/mostrar-una-foto-acceso-guiado/ |
| is-iphone-hidden-album-private | álbum oculto iphone es privado | /es/guias/album-oculto-iphone-es-privado/ |
| are-hidden-photos-saved-to-icloud | fotos ocultas se guardan en icloud | /es/guias/fotos-ocultas-icloud/ |
| icloud-advanced-data-protection-explained | protección de datos avanzada icloud | /es/guias/proteccion-avanzada-datos-icloud/ |
| which-apps-can-see-your-photos-iphone | qué apps pueden ver mis fotos iphone | /es/guias/que-apps-ven-mis-fotos-iphone/ |
| best-private-photo-vault-apps-iphone | mejor app para ocultar fotos iphone | /es/guias/mejores-apps-ocultar-fotos-iphone/ |
| are-photo-vault-apps-safe | son seguras las apps de bóveda de fotos | /es/guias/apps-boveda-fotos-son-seguras/ |
| calculator-vault-apps-explained | app calculadora secreta | /es/guias/apps-calculadora-secreta/ |
| photo-vault-without-account | bóveda de fotos sin cuenta | /es/guias/boveda-fotos-sin-cuenta/ |
| delete-original-photos-after-import | borrar fotos después de importarlas a una bóveda | /es/guias/borrar-fotos-originales-tras-importar/ |
| remove-photo-metadata-iphone | eliminar metadatos fotos iphone | /es/guias/eliminar-metadatos-fotos-iphone/ |
| store-intimate-photos-safely-iphone | guardar fotos íntimas iphone | /es/guias/guardar-fotos-intimas-iphone/ |
| phone-privacy-border-crossing | pueden revisar mi móvil en la aduana | /es/guias/revisar-telefono-aduana/ |
| scan-documents-privately-iphone | escanear documentos iphone de forma privada | /es/guias/escanear-documentos-privado-iphone/ |
| pattern-lock-vs-pin-vs-face-id | patrón vs pin | /es/guias/patron-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | bóveda señuelo | /es/guias/que-es-boveda-senuelo/ |
| plausible-deniability-explained | negación plausible cifrado | /es/guias/negacion-plausible-cifrado/ |
| aes-256-encryption-explained | cifrado aes-256 explicado | /es/guias/cifrado-aes-256-explicado/ |
| forgot-vault-pattern | olvidé la contraseña de la bóveda de fotos | /es/guias/olvide-clave-boveda-fotos/ |
| sharing-phone-with-kids | ocultar fotos a los niños iphone | /es/casos-de-uso/prestar-iphone-a-los-ninos/ |
| partner-scrolling-camera-roll | mi pareja mira mis fotos del móvil | /es/casos-de-uso/mi-pareja-mira-mis-fotos/ |
| phone-repair-privacy | privacidad fotos reparar iphone | /es/casos-de-uso/privacidad-al-reparar-el-iphone/ |
| family-shared-icloud | fotos del iphone aparecen en el ipad | /es/casos-de-uso/fotos-del-iphone-en-el-ipad-familiar/ |
| after-a-breakup | mi ex tiene acceso a mis fotos del iphone | /es/casos-de-uso/proteger-fotos-tras-una-ruptura/ |
| travelling-with-private-photos | viajar con fotos privadas iphone | /es/casos-de-uso/viajar-con-fotos-privadas/ |
| medical-and-id-documents | guardar dni en el iphone de forma segura | /es/casos-de-uso/documentos-medicos-y-dni/ |
| documenting-harassment-evidence | cómo guardar pruebas de acoso en el iphone | /es/casos-de-uso/guardar-pruebas-de-acoso-iphone/ |
| creators-unreleased-content | proteger fotos inéditas iphone | /es/casos-de-uso/proteger-fotos-ineditas-y-de-clientes/ |
| journalists-protecting-sources | periodistas proteger fuentes iphone | /es/casos-de-uso/periodistas-proteger-fuentes/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /es/comparativas/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /es/comparativas/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | app calculadora para ocultar fotos | /es/comparativas/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | álbum oculto iphone vs velcrypt | /es/comparativas/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | ocultar fotos en notas bloqueadas | /es/comparativas/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | alternativa a keepsafe | /es/comparativas/alternativa-a-keepsafe/ |
| photo-metadata-remover | eliminar metadatos de fotos | /es/herramientas/eliminar-metadatos-fotos/ |
| pattern-strength-checker | patrón de desbloqueo seguro | /es/herramientas/comprobador-patron-desbloqueo/ |

#### Deutsch (`de`, hreflang `de`)

| pageId | Target keyword | URL |
|---|---|---|
| security | velcrypt sicherheit | /de/sicherheit/ |
| pricing | velcrypt preise | /de/preise/ |
| faq | velcrypt faq | /de/faq/ |
| about | über velcrypt | /de/ueber-uns/ |
| support | velcrypt support | /de/support/ |
| privacy | velcrypt datenschutz | /de/datenschutz/ |
| terms | velcrypt nutzungsbedingungen | /de/nutzungsbedingungen/ |
| press | velcrypt pressekit | /de/presse/ |
| pattern-lock | muster sperre app iphone | /de/funktionen/muster-sperre-app-iphone/ |
| hidden-vaults | versteckter tresor app iphone | /de/funktionen/versteckte-tresore/ |
| duress-pattern | panik muster tresor app | /de/funktionen/notfallmuster/ |
| encryption | foto tresor verschlüsselung iphone | /de/funktionen/verschluesselung/ |
| offline-no-account | foto tresor ohne konto | /de/funktionen/offline-foto-tresor-ohne-konto/ |
| hide-photos | fotos verstecken iphone app | /de/funktionen/fotos-verstecken/ |
| hide-videos | videos verstecken iphone app | /de/funktionen/videos-verstecken/ |
| private-documents | dokumente verschlüsseln iphone | /de/funktionen/dokumente-verschluesseln-iphone/ |
| auto-lock | app automatisch sperren iphone | /de/funktionen/automatische-sperre/ |
| albums | privates fotoalbum app iphone | /de/funktionen/alben-im-tresor/ |
| hide-photos-iphone | fotos verstecken iphone | /de/anleitungen/fotos-verstecken-iphone/ |
| lock-photos-iphone | fotos sperren iphone | /de/anleitungen/fotos-sperren-iphone/ |
| hide-videos-iphone | videos verstecken iphone | /de/anleitungen/videos-verstecken-iphone/ |
| password-protect-photos-iphone | fotos mit passwort schützen iphone | /de/anleitungen/fotos-mit-passwort-schuetzen-iphone/ |
| secret-photo-album-iphone | geheimes fotoalbum iphone | /de/anleitungen/geheimes-fotoalbum-iphone/ |
| password-protect-folder-iphone | ordner mit passwort schützen iphone | /de/anleitungen/ordner-mit-passwort-schuetzen-iphone/ |
| hidden-photos-search-memories-iphone | ausgeblendete fotos rückblicke | /de/anleitungen/ausgeblendete-fotos-suche-rueckblicke-iphone/ |
| guided-access-show-one-photo | nur ein foto zeigen iphone | /de/anleitungen/nur-ein-foto-zeigen-gefuehrter-zugriff/ |
| is-iphone-hidden-album-private | album ausgeblendet sicher | /de/anleitungen/album-ausgeblendet-iphone-sicher/ |
| are-hidden-photos-saved-to-icloud | ausgeblendete fotos icloud | /de/anleitungen/ausgeblendete-fotos-icloud/ |
| icloud-advanced-data-protection-explained | erweiterter datenschutz icloud | /de/anleitungen/icloud-erweiterter-datenschutz-erklaert/ |
| which-apps-can-see-your-photos-iphone | welche apps haben zugriff auf meine fotos iphone | /de/anleitungen/welche-apps-sehen-meine-fotos-iphone/ |
| best-private-photo-vault-apps-iphone | beste foto tresor app iphone | /de/anleitungen/beste-foto-tresor-apps-iphone/ |
| are-photo-vault-apps-safe | sind foto tresor apps sicher | /de/anleitungen/sind-foto-tresor-apps-sicher/ |
| calculator-vault-apps-explained | taschenrechner tresor app | /de/anleitungen/taschenrechner-tresor-apps-erklaert/ |
| photo-vault-without-account | foto tresor ohne konto | /de/anleitungen/foto-tresor-ohne-konto/ |
| delete-original-photos-after-import | fotos nach import in tresor löschen | /de/anleitungen/originalfotos-nach-import-loeschen/ |
| remove-photo-metadata-iphone | exif daten entfernen iphone | /de/anleitungen/foto-metadaten-entfernen-iphone/ |
| store-intimate-photos-safely-iphone | intime fotos sicher aufbewahren iphone | /de/anleitungen/intime-fotos-sicher-aufbewahren-iphone/ |
| phone-privacy-border-crossing | handy kontrolle zoll | /de/anleitungen/handy-kontrolle-grenze-privatsphaere/ |
| scan-documents-privately-iphone | dokumente scannen iphone privat | /de/anleitungen/dokumente-privat-scannen-iphone/ |
| pattern-lock-vs-pin-vs-face-id | muster oder pin sicherer | /de/anleitungen/muster-pin-oder-face-id/ |
| what-is-a-decoy-vault | köder tresor | /de/anleitungen/was-ist-ein-koeder-tresor/ |
| plausible-deniability-explained | glaubhafte abstreitbarkeit verschlüsselung | /de/anleitungen/glaubhafte-abstreitbarkeit-erklaert/ |
| aes-256-encryption-explained | aes-256 verschlüsselung erklärt | /de/anleitungen/aes-256-verschluesselung-erklaert/ |
| forgot-vault-pattern | foto tresor passwort vergessen | /de/anleitungen/tresor-muster-vergessen/ |
| sharing-phone-with-kids | fotos vor kindern verstecken iphone | /de/anwendungsfaelle/handy-mit-kindern-teilen/ |
| partner-scrolling-camera-roll | partner schaut mein handy durch | /de/anwendungsfaelle/partner-schaut-fotos-durch/ |
| phone-repair-privacy | handy reparatur fotos schützen | /de/anwendungsfaelle/handy-reparatur-fotos-schuetzen/ |
| family-shared-icloud | iphone fotos erscheinen auf ipad | /de/anwendungsfaelle/fotos-auf-familien-ipad-icloud-trennen/ |
| after-a-breakup | ex hat zugriff auf meine fotos iphone | /de/anwendungsfaelle/nach-der-trennung-fotos-schuetzen/ |
| travelling-with-private-photos | private fotos iphone reise schützen | /de/anwendungsfaelle/reisen-mit-privaten-fotos/ |
| medical-and-id-documents | ausweis sicher speichern iphone | /de/anwendungsfaelle/ausweis-und-gesundheitsdokumente-sicher/ |
| documenting-harassment-evidence | beweise belästigung sichern iphone | /de/anwendungsfaelle/belaestigung-beweise-sichern-iphone/ |
| creators-unreleased-content | unveröffentlichte fotos schützen iphone | /de/anwendungsfaelle/unveroeffentlichte-inhalte-schuetzen/ |
| journalists-protecting-sources | quellenschutz journalisten iphone | /de/anwendungsfaelle/quellenschutz-journalisten-iphone/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /de/vergleich/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /de/vergleich/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | taschenrechner tresor app | /de/vergleich/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | iphone album ausgeblendet vs tresor app | /de/vergleich/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | fotos in notizen sperren | /de/vergleich/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | keepsafe alternative | /de/vergleich/keepsafe-alternative/ |
| photo-metadata-remover | foto metadaten entfernen | /de/tools/foto-metadaten-entfernen/ |
| pattern-strength-checker | musterstärke prüfen | /de/tools/musterstaerke-pruefen/ |

#### Français (`fr`, hreflang `fr`)

| pageId | Target keyword | URL |
|---|---|---|
| security | sécurité velcrypt | /fr/securite/ |
| pricing | prix velcrypt | /fr/tarifs/ |
| faq | faq velcrypt | /fr/faq/ |
| about | à propos de velcrypt | /fr/a-propos/ |
| support | assistance velcrypt | /fr/assistance/ |
| privacy | politique de confidentialité velcrypt | /fr/confidentialite/ |
| terms | conditions d’utilisation velcrypt | /fr/conditions/ |
| press | kit presse velcrypt | /fr/presse/ |
| pattern-lock | app verrouillage par schéma iphone | /fr/fonctionnalites/schema-de-deverrouillage/ |
| hidden-vaults | coffre-fort caché iphone | /fr/fonctionnalites/coffres-caches/ |
| duress-pattern | code de contrainte coffre-fort photo | /fr/fonctionnalites/schema-de-contrainte/ |
| encryption | coffre-fort photo chiffré iphone | /fr/fonctionnalites/chiffrement-aes-256/ |
| offline-no-account | coffre-fort photo sans compte | /fr/fonctionnalites/hors-ligne-sans-compte/ |
| hide-photos | cacher des photos iphone | /fr/fonctionnalites/cacher-des-photos-iphone/ |
| hide-videos | cacher des vidéos iphone | /fr/fonctionnalites/cacher-des-videos-iphone/ |
| private-documents | protéger ses documents sur iphone | /fr/fonctionnalites/documents-prives-iphone/ |
| auto-lock | verrouillage automatique app iphone | /fr/fonctionnalites/verrouillage-automatique/ |
| albums | album photo privé iphone | /fr/fonctionnalites/albums-photo-prives/ |
| hide-photos-iphone | cacher des photos sur iphone | /fr/guides/cacher-photos-iphone/ |
| lock-photos-iphone | verrouiller ses photos sur iphone | /fr/guides/verrouiller-photos-iphone/ |
| hide-videos-iphone | cacher des vidéos sur iphone | /fr/guides/cacher-videos-iphone/ |
| password-protect-photos-iphone | mettre un mot de passe sur ses photos iphone | /fr/guides/mot-de-passe-photos-iphone/ |
| secret-photo-album-iphone | album photo secret iphone | /fr/guides/album-photo-secret-iphone/ |
| password-protect-folder-iphone | mettre un mot de passe sur un dossier iphone | /fr/guides/dossier-mot-de-passe-iphone/ |
| hidden-photos-search-memories-iphone | photos masquées souvenirs iphone | /fr/guides/photos-masquees-recherche-souvenirs/ |
| guided-access-show-one-photo | montrer une photo iphone sans balayer | /fr/guides/acces-guide-montrer-une-photo/ |
| is-iphone-hidden-album-private | album masqué iphone privé | /fr/guides/album-masques-iphone-prive/ |
| are-hidden-photos-saved-to-icloud | photos masquées icloud | /fr/guides/photos-masquees-icloud/ |
| icloud-advanced-data-protection-explained | protection avancée des données icloud | /fr/guides/protection-avancee-donnees-icloud/ |
| which-apps-can-see-your-photos-iphone | quelles apps ont accès à mes photos iphone | /fr/guides/apps-acces-photos-iphone/ |
| best-private-photo-vault-apps-iphone | meilleure app coffre-fort photo iphone | /fr/guides/meilleure-app-coffre-fort-photo-iphone/ |
| are-photo-vault-apps-safe | app coffre-fort photo sûre | /fr/guides/applis-coffre-fort-photo-fiables/ |
| calculator-vault-apps-explained | app calculatrice coffre-fort | /fr/guides/app-calculatrice-coffre-fort/ |
| photo-vault-without-account | coffre-fort photo sans compte | /fr/guides/coffre-fort-photo-sans-compte/ |
| delete-original-photos-after-import | supprimer photos après import coffre-fort | /fr/guides/supprimer-photos-originales-apres-import/ |
| remove-photo-metadata-iphone | supprimer données exif iphone | /fr/guides/supprimer-metadonnees-photo-iphone/ |
| store-intimate-photos-safely-iphone | protéger photos intimes iphone | /fr/guides/proteger-photos-intimes-iphone/ |
| phone-privacy-border-crossing | douane fouille téléphone | /fr/guides/telephone-controle-frontiere/ |
| scan-documents-privately-iphone | scanner des documents iphone confidentialité | /fr/guides/scanner-documents-iphone-confidentiel/ |
| pattern-lock-vs-pin-vs-face-id | schéma ou code pin | /fr/guides/schema-code-ou-face-id/ |
| what-is-a-decoy-vault | coffre-fort leurre | /fr/guides/coffre-fort-leurre/ |
| plausible-deniability-explained | déni plausible chiffrement | /fr/guides/deni-plausible-explique/ |
| aes-256-encryption-explained | chiffrement aes-256 expliqué | /fr/guides/chiffrement-aes-256-explique/ |
| forgot-vault-pattern | mot de passe coffre-fort photo oublié | /fr/guides/schema-coffre-oublie/ |
| sharing-phone-with-kids | prêter son iphone à un enfant | /fr/cas-usage/preter-son-iphone-aux-enfants/ |
| partner-scrolling-camera-roll | mon partenaire fouille dans mes photos | /fr/cas-usage/partenaire-fouille-mes-photos/ |
| phone-repair-privacy | réparation iphone photos privées | /fr/cas-usage/reparation-iphone-photos-privees/ |
| family-shared-icloud | photos iphone sur ipad | /fr/cas-usage/photos-iphone-sur-ipad-familial/ |
| after-a-breakup | mon ex a accès à mes photos iphone | /fr/cas-usage/apres-une-rupture-proteger-ses-photos/ |
| travelling-with-private-photos | voyager avec des photos privées iphone | /fr/cas-usage/voyager-avec-photos-privees/ |
| medical-and-id-documents | stocker ses papiers d’identité sur iphone | /fr/cas-usage/documents-medicaux-et-identite/ |
| documenting-harassment-evidence | garder des preuves de harcèlement iphone | /fr/cas-usage/preuves-de-harcelement-iphone/ |
| creators-unreleased-content | protéger ses photos clients iphone | /fr/cas-usage/createurs-contenus-inedits/ |
| journalists-protecting-sources | journaliste protéger ses sources iphone | /fr/cas-usage/journalistes-proteger-ses-sources/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /fr/comparatifs/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /fr/comparatifs/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | app calculatrice secrète vs velcrypt | /fr/comparatifs/velcrypt-vs-apps-calculatrice/ |
| velcrypt-vs-iphone-hidden-album | album masqué iphone vs coffre-fort photo | /fr/comparatifs/velcrypt-vs-album-masques-iphone/ |
| velcrypt-vs-apple-notes-locked-notes | verrouiller une note avec des photos iphone | /fr/comparatifs/velcrypt-vs-notes-verrouillees/ |
| keepsafe-alternative | alternative à keepsafe | /fr/comparatifs/alternative-keepsafe/ |
| photo-metadata-remover | supprimer métadonnées photo | /fr/outils/supprimer-metadonnees-photo/ |
| pattern-strength-checker | tester robustesse schéma de déverrouillage | /fr/outils/tester-motif-deverrouillage/ |

#### Português (Brasil) (`pt-br`, hreflang `pt-BR`)

| pageId | Target keyword | URL |
|---|---|---|
| security | segurança velcrypt | /pt-br/seguranca/ |
| pricing | velcrypt preço | /pt-br/precos/ |
| faq | velcrypt perguntas frequentes | /pt-br/perguntas-frequentes/ |
| about | sobre o velcrypt | /pt-br/sobre/ |
| support | velcrypt suporte | /pt-br/suporte/ |
| privacy | velcrypt política de privacidade | /pt-br/privacidade/ |
| terms | velcrypt termos de uso | /pt-br/termos-de-uso/ |
| press | velcrypt kit de imprensa | /pt-br/imprensa/ |
| pattern-lock | app com senha de padrão iphone | /pt-br/recursos/bloqueio-por-padrao/ |
| hidden-vaults | app cofre oculto iphone | /pt-br/recursos/cofres-ocultos/ |
| duress-pattern | senha de coação cofre de fotos | /pt-br/recursos/padrao-de-coacao/ |
| encryption | cofre de fotos criptografado iphone | /pt-br/recursos/criptografia-aes-256/ |
| offline-no-account | cofre de fotos sem conta | /pt-br/recursos/cofre-de-fotos-offline-sem-conta/ |
| hide-photos | app para esconder fotos iphone | /pt-br/recursos/esconder-fotos-cofre-criptografado/ |
| hide-videos | app para esconder vídeos iphone | /pt-br/recursos/esconder-videos-cofre-criptografado/ |
| private-documents | guardar documentos no iphone com segurança | /pt-br/recursos/documentos-privados-iphone/ |
| auto-lock | app com bloqueio automático iphone | /pt-br/recursos/bloqueio-automatico/ |
| albums | álbum de fotos privado iphone | /pt-br/recursos/album-de-fotos-privado/ |
| hide-photos-iphone | como esconder fotos no iphone | /pt-br/guias/esconder-fotos-iphone/ |
| lock-photos-iphone | como bloquear fotos no iphone | /pt-br/guias/bloquear-fotos-iphone/ |
| hide-videos-iphone | como esconder vídeos no iphone | /pt-br/guias/esconder-videos-iphone/ |
| password-protect-photos-iphone | colocar senha nas fotos do iphone | /pt-br/guias/colocar-senha-nas-fotos-iphone/ |
| secret-photo-album-iphone | álbum secreto iphone | /pt-br/guias/album-secreto-iphone/ |
| password-protect-folder-iphone | pasta com senha iphone | /pt-br/guias/pasta-com-senha-iphone/ |
| hidden-photos-search-memories-iphone | fotos ocultas aparecem nas memórias | /pt-br/guias/fotos-ocultas-busca-memorias-iphone/ |
| guided-access-show-one-photo | mostrar uma foto no iphone sem deixar passar | /pt-br/guias/acesso-guiado-mostrar-uma-foto/ |
| is-iphone-hidden-album-private | álbum ocultos iphone é seguro | /pt-br/guias/album-ocultos-iphone-e-seguro/ |
| are-hidden-photos-saved-to-icloud | fotos ocultas vão para o icloud | /pt-br/guias/fotos-ocultas-vao-para-icloud/ |
| icloud-advanced-data-protection-explained | proteção avançada de dados icloud | /pt-br/guias/protecao-avancada-de-dados-icloud/ |
| which-apps-can-see-your-photos-iphone | quais apps veem minhas fotos iphone | /pt-br/guias/quais-apps-veem-suas-fotos-iphone/ |
| best-private-photo-vault-apps-iphone | melhores apps de cofre de fotos para iphone | /pt-br/guias/melhores-apps-cofre-de-fotos-iphone/ |
| are-photo-vault-apps-safe | apps de cofre de fotos são seguros | /pt-br/guias/apps-cofre-de-fotos-sao-seguros/ |
| calculator-vault-apps-explained | app calculadora secreta | /pt-br/guias/app-calculadora-secreta-como-funciona/ |
| photo-vault-without-account | cofre de fotos sem conta | /pt-br/guias/cofre-de-fotos-sem-conta/ |
| delete-original-photos-after-import | apagar fotos depois de importar para o cofre | /pt-br/guias/apagar-fotos-originais-apos-importar/ |
| remove-photo-metadata-iphone | remover dados exif iphone | /pt-br/guias/remover-metadados-fotos-iphone/ |
| store-intimate-photos-safely-iphone | guardar fotos íntimas com segurança iphone | /pt-br/guias/guardar-fotos-intimas-com-seguranca/ |
| phone-privacy-border-crossing | imigração pode revistar meu celular | /pt-br/guias/imigracao-revistar-celular-fronteira/ |
| scan-documents-privately-iphone | escanear documentos no iphone | /pt-br/guias/escanear-documentos-iphone/ |
| pattern-lock-vs-pin-vs-face-id | padrão vs pin | /pt-br/guias/padrao-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | cofre falso | /pt-br/guias/o-que-e-cofre-falso/ |
| plausible-deniability-explained | negação plausível criptografia | /pt-br/guias/negacao-plausivel-o-que-e/ |
| aes-256-encryption-explained | criptografia aes-256 | /pt-br/guias/criptografia-aes-256-o-que-e/ |
| forgot-vault-pattern | esqueci a senha do cofre de fotos | /pt-br/guias/esqueci-padrao-do-cofre/ |
| sharing-phone-with-kids | esconder fotos das crianças iphone | /pt-br/casos-de-uso/emprestar-celular-para-criancas/ |
| partner-scrolling-camera-roll | namorado mexe nas minhas fotos | /pt-br/casos-de-uso/parceiro-mexendo-nas-suas-fotos/ |
| phone-repair-privacy | assistência técnica pode ver minhas fotos | /pt-br/casos-de-uso/privacidade-iphone-assistencia-tecnica/ |
| family-shared-icloud | fotos do iphone aparecendo no ipad | /pt-br/casos-de-uso/fotos-aparecendo-no-ipad-da-familia/ |
| after-a-breakup | ex tem acesso às minhas fotos iphone | /pt-br/casos-de-uso/proteger-fotos-depois-do-termino/ |
| travelling-with-private-photos | viajar com fotos privadas iphone | /pt-br/casos-de-uso/viajar-com-fotos-privadas-iphone/ |
| medical-and-id-documents | guardar documentos no celular com segurança | /pt-br/casos-de-uso/guardar-rg-e-documentos-medicos/ |
| documenting-harassment-evidence | como guardar provas de assédio no celular | /pt-br/casos-de-uso/guardar-provas-de-assedio-iphone/ |
| creators-unreleased-content | proteger fotos de clientes iphone | /pt-br/casos-de-uso/proteger-fotos-de-clientes-iphone/ |
| journalists-protecting-sources | jornalista proteger fontes iphone | /pt-br/casos-de-uso/jornalistas-protegendo-fontes/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /pt-br/comparativos/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /pt-br/comparativos/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | app calculadora secreta | /pt-br/comparativos/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | esconder fotos iphone álbum ocultos | /pt-br/comparativos/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | esconder fotos no app notas | /pt-br/comparativos/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | alternativa ao keepsafe | /pt-br/comparativos/alternativa-ao-keepsafe/ |
| photo-metadata-remover | remover metadados de foto | /pt-br/ferramentas/remover-metadados-de-fotos/ |
| pattern-strength-checker | padrão de desbloqueio seguro | /pt-br/ferramentas/verificador-de-forca-do-padrao/ |

#### 日本語 (`ja`, hreflang `ja`)

| pageId | Target keyword | URL |
|---|---|---|
| security | velcrypt セキュリティ | /ja/security/ |
| pricing | velcrypt 料金 | /ja/pricing/ |
| faq | velcrypt よくある質問 | /ja/faq/ |
| about | velcrypt とは | /ja/about/ |
| support | velcrypt サポート | /ja/support/ |
| privacy | velcrypt プライバシーポリシー | /ja/privacy/ |
| terms | velcrypt 利用規約 | /ja/terms/ |
| press | velcrypt プレスキット | /ja/press/ |
| pattern-lock | パターンロック アプリ iPhone | /ja/features/pattern-lock/ |
| hidden-vaults | 隠し 保管庫 アプリ iPhone | /ja/features/hidden-vaults/ |
| duress-pattern | 脅迫パターン 保管庫 アプリ | /ja/features/duress-pattern/ |
| encryption | 写真 暗号化 iPhone アプリ | /ja/features/encryption/ |
| offline-no-account | 写真保管庫 アカウント不要 | /ja/features/offline-no-account/ |
| hide-photos | 写真 隠す iPhone アプリ | /ja/features/hide-photos/ |
| hide-videos | 動画 隠す iPhone アプリ | /ja/features/hide-videos/ |
| private-documents | 書類 暗号化 iPhone アプリ | /ja/features/private-documents/ |
| auto-lock | アプリ 自動ロック iPhone | /ja/features/auto-lock/ |
| albums | 秘密のアルバム iPhone アプリ | /ja/features/albums/ |
| hide-photos-iphone | iphone 写真 隠す | /ja/guides/hide-photos-iphone/ |
| lock-photos-iphone | iphone 写真 ロック | /ja/guides/lock-photos-iphone/ |
| hide-videos-iphone | iphone 動画 隠す | /ja/guides/hide-videos-iphone/ |
| password-protect-photos-iphone | iphone 写真 パスワード | /ja/guides/password-protect-photos-iphone/ |
| secret-photo-album-iphone | シークレットアルバム iphone | /ja/guides/secret-photo-album-iphone/ |
| password-protect-folder-iphone | iphone フォルダ パスワード | /ja/guides/password-protect-folder-iphone/ |
| hidden-photos-search-memories-iphone | 非表示 写真 メモリー 表示される | /ja/guides/hidden-photos-search-memories-iphone/ |
| guided-access-show-one-photo | iphone 写真 1枚だけ見せる | /ja/guides/guided-access-show-one-photo/ |
| is-iphone-hidden-album-private | iphone 非表示アルバム 安全 | /ja/guides/is-iphone-hidden-album-private/ |
| are-hidden-photos-saved-to-icloud | 非表示 写真 icloud 保存される | /ja/guides/are-hidden-photos-saved-to-icloud/ |
| icloud-advanced-data-protection-explained | icloud 高度なデータ保護 | /ja/guides/icloud-advanced-data-protection-explained/ |
| which-apps-can-see-your-photos-iphone | iphone 写真 アクセス アプリ 確認 | /ja/guides/which-apps-can-see-your-photos-iphone/ |
| best-private-photo-vault-apps-iphone | 写真 隠す アプリ iphone おすすめ | /ja/guides/best-private-photo-vault-apps-iphone/ |
| are-photo-vault-apps-safe | 写真保管庫アプリ 安全 | /ja/guides/are-photo-vault-apps-safe/ |
| calculator-vault-apps-explained | 電卓 アプリ 写真 隠す | /ja/guides/calculator-vault-apps-explained/ |
| photo-vault-without-account | 写真保管庫 アカウント不要 | /ja/guides/photo-vault-without-account/ |
| delete-original-photos-after-import | 保管庫 読み込み 元の写真 削除 | /ja/guides/delete-original-photos-after-import/ |
| remove-photo-metadata-iphone | iphone 写真 位置情報 削除 | /ja/guides/remove-photo-metadata-iphone/ |
| store-intimate-photos-safely-iphone | iphone プライベート 写真 安全 保管 | /ja/guides/store-intimate-photos-safely-iphone/ |
| phone-privacy-border-crossing | 入国審査 スマホ 調べられる | /ja/guides/phone-privacy-border-crossing/ |
| scan-documents-privately-iphone | iphone 書類 スキャン 写真に保存しない | /ja/guides/scan-documents-privately-iphone/ |
| pattern-lock-vs-pin-vs-face-id | パターンロック pin どっちが安全 | /ja/guides/pattern-lock-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | ダミー 保管庫 | /ja/guides/what-is-a-decoy-vault/ |
| plausible-deniability-explained | もっともらしい否認 暗号化 | /ja/guides/plausible-deniability-explained/ |
| aes-256-encryption-explained | aes-256 暗号化 とは | /ja/guides/aes-256-encryption-explained/ |
| forgot-vault-pattern | 写真保管庫 パスワード 忘れた | /ja/guides/forgot-vault-pattern/ |
| sharing-phone-with-kids | 子供 スマホ 貸す 写真 見られる | /ja/use-cases/sharing-phone-with-kids/ |
| partner-scrolling-camera-roll | 彼氏 スマホ 写真 見られる | /ja/use-cases/partner-scrolling-camera-roll/ |
| phone-repair-privacy | iPhone 修理 写真 見られる | /ja/use-cases/phone-repair-privacy/ |
| family-shared-icloud | iPhone 写真 iPad 同期 させない | /ja/use-cases/family-shared-icloud/ |
| after-a-breakup | 元彼 写真 見られる iPhone | /ja/use-cases/after-a-breakup/ |
| travelling-with-private-photos | 旅行 iPhone 写真 守る | /ja/use-cases/travelling-with-private-photos/ |
| medical-and-id-documents | 身分証 写真 保管 iPhone 安全 | /ja/use-cases/medical-and-id-documents/ |
| documenting-harassment-evidence | 嫌がらせ 証拠 保存 iPhone | /ja/use-cases/documenting-harassment-evidence/ |
| creators-unreleased-content | 未公開 写真 守る iPhone | /ja/use-cases/creators-unreleased-content/ |
| journalists-protecting-sources | ジャーナリスト 情報源 保護 iPhone | /ja/use-cases/journalists-protecting-sources/ |
| velcrypt-vs-keepsafe | velcrypt keepsafe 比較 | /ja/compare/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt private photo vault 比較 | /ja/compare/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | 電卓 写真 隠す アプリ | /ja/compare/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | iphone 写真 隠す 非表示 アルバム | /ja/compare/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | メモ ロック 写真 隠す | /ja/compare/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | keepsafe 代わり | /ja/compare/keepsafe-alternative/ |
| photo-metadata-remover | 写真 位置情報 削除 | /ja/tools/photo-metadata-remover/ |
| pattern-strength-checker | パターンロック 強度 | /ja/tools/pattern-strength-checker/ |

#### Italiano (`it`, hreflang `it`)

| pageId | Target keyword | URL |
|---|---|---|
| security | velcrypt sicurezza | /it/sicurezza/ |
| pricing | velcrypt prezzo | /it/prezzi/ |
| faq | velcrypt domande frequenti | /it/domande-frequenti/ |
| about | velcrypt chi siamo | /it/chi-siamo/ |
| support | velcrypt assistenza | /it/assistenza/ |
| privacy | velcrypt informativa privacy | /it/informativa-privacy/ |
| terms | velcrypt termini di utilizzo | /it/termini-di-utilizzo/ |
| press | velcrypt press kit | /it/stampa/ |
| pattern-lock | app blocco con sequenza iphone | /it/funzionalita/blocco-con-sequenza/ |
| hidden-vaults | app cassaforte nascosta iphone | /it/funzionalita/casseforti-nascoste/ |
| duress-pattern | sequenza di emergenza app cassaforte | /it/funzionalita/sequenza-di-emergenza/ |
| encryption | cassaforte foto crittografata iphone | /it/funzionalita/crittografia-cassaforte-foto/ |
| offline-no-account | cassaforte foto offline senza account | /it/funzionalita/cassaforte-foto-offline-senza-account/ |
| hide-photos | app per nascondere foto iphone | /it/funzionalita/nascondere-foto-cassaforte-cifrata/ |
| hide-videos | app per nascondere video iphone | /it/funzionalita/nascondere-video-cassaforte-cifrata/ |
| private-documents | app documenti privati iphone | /it/funzionalita/documenti-privati-iphone/ |
| auto-lock | app cassaforte blocco automatico iphone | /it/funzionalita/blocco-automatico/ |
| albums | album foto privato iphone | /it/funzionalita/album-foto-privati/ |
| hide-photos-iphone | come nascondere foto su iphone | /it/guide/nascondere-foto-iphone/ |
| lock-photos-iphone | bloccare foto iphone | /it/guide/bloccare-foto-iphone/ |
| hide-videos-iphone | nascondere video iphone | /it/guide/nascondere-video-iphone/ |
| password-protect-photos-iphone | mettere password foto iphone | /it/guide/mettere-password-foto-iphone/ |
| secret-photo-album-iphone | album segreto iphone | /it/guide/album-foto-segreto-iphone/ |
| password-protect-folder-iphone | cartella con password iphone | /it/guide/cartella-con-password-iphone/ |
| hidden-photos-search-memories-iphone | foto nascoste compaiono nei ricordi | /it/guide/foto-nascoste-ricerca-ricordi-iphone/ |
| guided-access-show-one-photo | mostrare una sola foto iphone senza scorrere | /it/guide/mostrare-una-sola-foto-iphone/ |
| is-iphone-hidden-album-private | album nascosti iphone è privato | /it/guide/album-nascosti-iphone-e-privato/ |
| are-hidden-photos-saved-to-icloud | foto nascoste icloud | /it/guide/foto-nascoste-salvate-su-icloud/ |
| icloud-advanced-data-protection-explained | protezione avanzata dei dati icloud | /it/guide/protezione-avanzata-dati-icloud/ |
| which-apps-can-see-your-photos-iphone | quali app vedono le mie foto iphone | /it/guide/quali-app-vedono-foto-iphone/ |
| best-private-photo-vault-apps-iphone | migliori app cassaforte foto iphone | /it/guide/migliori-app-cassaforte-foto-iphone/ |
| are-photo-vault-apps-safe | app cassaforte foto sono sicure | /it/guide/app-cassaforte-foto-sono-sicure/ |
| calculator-vault-apps-explained | app calcolatrice segreta | /it/guide/app-calcolatrice-segreta-spiegate/ |
| photo-vault-without-account | cassaforte foto senza account | /it/guide/cassaforte-foto-senza-account/ |
| delete-original-photos-after-import | eliminare foto dopo importazione in cassaforte | /it/guide/eliminare-foto-originali-dopo-importazione/ |
| remove-photo-metadata-iphone | rimuovere dati exif iphone | /it/guide/rimuovere-dati-exif-foto-iphone/ |
| store-intimate-photos-safely-iphone | conservare foto intime iphone | /it/guide/conservare-foto-intime-iphone/ |
| phone-privacy-border-crossing | la dogana può controllare il telefono | /it/guide/controllo-telefono-alla-dogana/ |
| scan-documents-privately-iphone | scansionare documenti iphone | /it/guide/scansionare-documenti-iphone-privato/ |
| pattern-lock-vs-pin-vs-face-id | sequenza di sblocco vs pin | /it/guide/sequenza-sblocco-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | cassaforte esca | /it/guide/cassaforte-esca-cos-e/ |
| plausible-deniability-explained | negabilità plausibile crittografia | /it/guide/negabilita-plausibile-crittografia/ |
| aes-256-encryption-explained | crittografia aes-256 spiegata | /it/guide/crittografia-aes-256-spiegata/ |
| forgot-vault-pattern | password cassaforte foto dimenticata | /it/guide/sequenza-cassaforte-dimenticata/ |
| sharing-phone-with-kids | nascondere foto ai bambini iphone | /it/casi-d-uso/dare-iphone-ai-bambini/ |
| partner-scrolling-camera-roll | il mio ragazzo guarda le mie foto | /it/casi-d-uso/partner-guarda-le-mie-foto/ |
| phone-repair-privacy | riparazione iphone privacy foto | /it/casi-d-uso/riparazione-iphone-privacy-foto/ |
| family-shared-icloud | foto iphone compaiono su ipad | /it/casi-d-uso/foto-iphone-compaiono-su-ipad/ |
| after-a-breakup | il mio ex ha accesso alle mie foto | /it/casi-d-uso/dopo-una-rottura-foto-iphone/ |
| travelling-with-private-photos | viaggiare con foto private iphone | /it/casi-d-uso/viaggiare-con-foto-private/ |
| medical-and-id-documents | conservare documenti d'identità su iphone | /it/casi-d-uso/documenti-identita-medici-iphone/ |
| documenting-harassment-evidence | salvare prove di molestie iphone | /it/casi-d-uso/prove-di-molestie-iphone/ |
| creators-unreleased-content | proteggere foto inedite iphone | /it/casi-d-uso/proteggere-contenuti-inediti-iphone/ |
| journalists-protecting-sources | giornalisti proteggere le fonti iphone | /it/casi-d-uso/giornalisti-proteggere-fonti/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /it/confronti/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /it/confronti/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | app calcolatrice segreta vs velcrypt | /it/confronti/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | album nascosti iphone vs velcrypt | /it/confronti/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | note bloccate iphone vs cassaforte foto | /it/confronti/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | alternativa a keepsafe | /it/confronti/alternativa-a-keepsafe/ |
| photo-metadata-remover | rimuovere metadati foto | /it/strumenti/rimuovere-metadati-foto/ |
| pattern-strength-checker | verifica sicurezza sequenza di sblocco | /it/strumenti/verifica-robustezza-sequenza/ |

#### 한국어 (`ko`, hreflang `ko`)

| pageId | Target keyword | URL |
|---|---|---|
| security | 사진 금고 앱 암호화 | /ko/security/ |
| pricing | 사진 금고 앱 무료 | /ko/pricing/ |
| faq | velcrypt 자주 묻는 질문 | /ko/faq/ |
| about | velcrypt 소개 | /ko/about/ |
| support | velcrypt 고객 지원 | /ko/support/ |
| privacy | velcrypt 개인정보 처리방침 | /ko/privacy/ |
| terms | velcrypt 이용약관 | /ko/terms/ |
| press | velcrypt 보도 자료 | /ko/press/ |
| pattern-lock | 아이폰 패턴 잠금 앱 | /ko/features/pattern-lock/ |
| hidden-vaults | 아이폰 비밀 금고 앱 | /ko/features/hidden-vaults/ |
| duress-pattern | 강압 패턴 금고 앱 | /ko/features/duress-pattern/ |
| encryption | 아이폰 사진 암호화 앱 | /ko/features/encryption/ |
| offline-no-account | 계정 없는 사진 금고 앱 | /ko/features/offline-no-account/ |
| hide-photos | 아이폰 사진 숨기기 앱 | /ko/features/hide-photos/ |
| hide-videos | 아이폰 동영상 숨기기 앱 | /ko/features/hide-videos/ |
| private-documents | 아이폰 문서 암호화 앱 | /ko/features/private-documents/ |
| auto-lock | 아이폰 금고 앱 자동 잠금 | /ko/features/auto-lock/ |
| albums | 아이폰 비밀 앨범 앱 | /ko/features/albums/ |
| hide-photos-iphone | 아이폰 사진 숨기기 | /ko/guides/hide-photos-iphone/ |
| lock-photos-iphone | 아이폰 사진 잠금 | /ko/guides/lock-photos-iphone/ |
| hide-videos-iphone | 아이폰 동영상 숨기기 | /ko/guides/hide-videos-iphone/ |
| password-protect-photos-iphone | 아이폰 사진 비밀번호 | /ko/guides/password-protect-photos-iphone/ |
| secret-photo-album-iphone | 아이폰 비밀 앨범 | /ko/guides/secret-photo-album-iphone/ |
| password-protect-folder-iphone | 아이폰 폴더 비밀번호 | /ko/guides/password-protect-folder-iphone/ |
| hidden-photos-search-memories-iphone | 숨긴 사진 추억에 나옴 | /ko/guides/hidden-photos-search-memories-iphone/ |
| guided-access-show-one-photo | 아이폰 사진 한 장만 보여주기 | /ko/guides/guided-access-show-one-photo/ |
| is-iphone-hidden-album-private | 아이폰 가려진 항목 안전 | /ko/guides/is-iphone-hidden-album-private/ |
| are-hidden-photos-saved-to-icloud | 숨긴 사진 iCloud 저장 | /ko/guides/are-hidden-photos-saved-to-icloud/ |
| icloud-advanced-data-protection-explained | iCloud 고급 데이터 보호 | /ko/guides/icloud-advanced-data-protection-explained/ |
| which-apps-can-see-your-photos-iphone | 아이폰 사진 접근 권한 | /ko/guides/which-apps-can-see-your-photos-iphone/ |
| best-private-photo-vault-apps-iphone | 아이폰 사진 금고 앱 추천 | /ko/guides/best-private-photo-vault-apps-iphone/ |
| are-photo-vault-apps-safe | 사진 금고 앱 안전 | /ko/guides/are-photo-vault-apps-safe/ |
| calculator-vault-apps-explained | 계산기 금고 앱 | /ko/guides/calculator-vault-apps-explained/ |
| photo-vault-without-account | 계정 없는 사진 금고 | /ko/guides/photo-vault-without-account/ |
| delete-original-photos-after-import | 금고 가져온 후 원본 사진 삭제 | /ko/guides/delete-original-photos-after-import/ |
| remove-photo-metadata-iphone | 아이폰 사진 위치 정보 삭제 | /ko/guides/remove-photo-metadata-iphone/ |
| store-intimate-photos-safely-iphone | 아이폰 은밀한 사진 안전하게 보관 | /ko/guides/store-intimate-photos-safely-iphone/ |
| phone-privacy-border-crossing | 입국 심사 휴대폰 검사 | /ko/guides/phone-privacy-border-crossing/ |
| scan-documents-privately-iphone | 아이폰 문서 스캔 사진 저장 안 하기 | /ko/guides/scan-documents-privately-iphone/ |
| pattern-lock-vs-pin-vs-face-id | 패턴 잠금 PIN 비교 | /ko/guides/pattern-lock-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | 위장 금고 | /ko/guides/what-is-a-decoy-vault/ |
| plausible-deniability-explained | 그럴듯한 부인 가능성 암호화 | /ko/guides/plausible-deniability-explained/ |
| aes-256-encryption-explained | AES-256 암호화란 | /ko/guides/aes-256-encryption-explained/ |
| forgot-vault-pattern | 사진 금고 비밀번호 분실 | /ko/guides/forgot-vault-pattern/ |
| sharing-phone-with-kids | 아이에게 휴대폰 빌려줄 때 사진 숨기기 | /ko/use-cases/sharing-phone-with-kids/ |
| partner-scrolling-camera-roll | 애인이 내 폰 사진 볼 때 | /ko/use-cases/partner-scrolling-camera-roll/ |
| phone-repair-privacy | 아이폰 수리 사진 개인정보 | /ko/use-cases/phone-repair-privacy/ |
| family-shared-icloud | 아이폰 사진 아이패드에 뜸 | /ko/use-cases/family-shared-icloud/ |
| after-a-breakup | 전 애인 내 아이폰 사진 접근 | /ko/use-cases/after-a-breakup/ |
| travelling-with-private-photos | 해외여행 아이폰 사진 보안 | /ko/use-cases/travelling-with-private-photos/ |
| medical-and-id-documents | 아이폰 신분증 사진 보관 | /ko/use-cases/medical-and-id-documents/ |
| documenting-harassment-evidence | 아이폰 괴롭힘 증거 보관 | /ko/use-cases/documenting-harassment-evidence/ |
| creators-unreleased-content | 아이폰 미공개 사진 보호 | /ko/use-cases/creators-unreleased-content/ |
| journalists-protecting-sources | 기자 취재원 보호 아이폰 | /ko/use-cases/journalists-protecting-sources/ |
| velcrypt-vs-keepsafe | keepsafe 비교 | /ko/compare/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | private photo vault 비교 | /ko/compare/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | 계산기 사진 숨기기 앱 | /ko/compare/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | 아이폰 사진 숨기기 | /ko/compare/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | 메모 앱 사진 잠금 | /ko/compare/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | keepsafe 대안 | /ko/compare/keepsafe-alternative/ |
| photo-metadata-remover | 사진 메타데이터 삭제 | /ko/tools/photo-metadata-remover/ |
| pattern-strength-checker | 잠금 패턴 강도 | /ko/tools/pattern-strength-checker/ |

#### 简体中文 (`zh-hans`, hreflang `zh-Hans`)

| pageId | Target keyword | URL |
|---|---|---|
| security | 照片加密 安全原理 | /zh-hans/security/ |
| pricing | Velcrypt 价格 | /zh-hans/pricing/ |
| faq | Velcrypt 常见问题 | /zh-hans/faq/ |
| about | 关于 Velcrypt | /zh-hans/about/ |
| support | Velcrypt 客服 | /zh-hans/support/ |
| privacy | Velcrypt 隐私政策 | /zh-hans/privacy/ |
| terms | Velcrypt 使用条款 | /zh-hans/terms/ |
| press | Velcrypt 媒体资料 | /zh-hans/press/ |
| pattern-lock | 图案解锁 App iPhone | /zh-hans/features/pattern-lock/ |
| hidden-vaults | 隐藏空间 App iPhone | /zh-hans/features/hidden-vaults/ |
| duress-pattern | 胁迫密码 保险箱 App | /zh-hans/features/duress-pattern/ |
| encryption | iPhone 照片加密 | /zh-hans/features/encryption/ |
| offline-no-account | 离线照片保险箱 无需注册 | /zh-hans/features/offline-no-account/ |
| hide-photos | iPhone 隐藏照片 | /zh-hans/features/hide-photos/ |
| hide-videos | iPhone 隐藏视频 | /zh-hans/features/hide-videos/ |
| private-documents | iPhone 文件加密 | /zh-hans/features/private-documents/ |
| auto-lock | App 自动锁定 iPhone | /zh-hans/features/auto-lock/ |
| albums | iPhone 私密相册 | /zh-hans/features/albums/ |
| hide-photos-iphone | iPhone 隐藏照片 | /zh-hans/guides/hide-photos-iphone/ |
| lock-photos-iphone | iPhone 照片上锁 | /zh-hans/guides/lock-photos-iphone/ |
| hide-videos-iphone | iPhone 隐藏视频 | /zh-hans/guides/hide-videos-iphone/ |
| password-protect-photos-iphone | iPhone 照片设置密码 | /zh-hans/guides/password-protect-photos-iphone/ |
| secret-photo-album-iphone | iPhone 私密相册 | /zh-hans/guides/secret-photo-album-iphone/ |
| password-protect-folder-iphone | iPhone 文件夹设置密码 | /zh-hans/guides/password-protect-folder-iphone/ |
| hidden-photos-search-memories-iphone | 隐藏的照片会出现在回忆里吗 | /zh-hans/guides/hidden-photos-search-memories-iphone/ |
| guided-access-show-one-photo | iPhone 只看一张照片 不能划 | /zh-hans/guides/guided-access-show-one-photo/ |
| is-iphone-hidden-album-private | iPhone 隐藏相簿安全吗 | /zh-hans/guides/is-iphone-hidden-album-private/ |
| are-hidden-photos-saved-to-icloud | 隐藏的照片会上传到 iCloud 吗 | /zh-hans/guides/are-hidden-photos-saved-to-icloud/ |
| icloud-advanced-data-protection-explained | iCloud 高级数据保护 | /zh-hans/guides/icloud-advanced-data-protection-explained/ |
| which-apps-can-see-your-photos-iphone | 哪些 App 能看到我的照片 | /zh-hans/guides/which-apps-can-see-your-photos-iphone/ |
| best-private-photo-vault-apps-iphone | iPhone 私密相册 App 推荐 | /zh-hans/guides/best-private-photo-vault-apps-iphone/ |
| are-photo-vault-apps-safe | 私密相册 App 安全吗 | /zh-hans/guides/are-photo-vault-apps-safe/ |
| calculator-vault-apps-explained | 计算器隐藏相册 App | /zh-hans/guides/calculator-vault-apps-explained/ |
| photo-vault-without-account | 免注册私密相册 | /zh-hans/guides/photo-vault-without-account/ |
| delete-original-photos-after-import | 导入保险箱后删除原图 | /zh-hans/guides/delete-original-photos-after-import/ |
| remove-photo-metadata-iphone | iPhone 照片去除位置信息 | /zh-hans/guides/remove-photo-metadata-iphone/ |
| store-intimate-photos-safely-iphone | iPhone 私密照片安全存放 | /zh-hans/guides/store-intimate-photos-safely-iphone/ |
| phone-privacy-border-crossing | 海关会检查手机吗 | /zh-hans/guides/phone-privacy-border-crossing/ |
| scan-documents-privately-iphone | iPhone 私密扫描文件 | /zh-hans/guides/scan-documents-privately-iphone/ |
| pattern-lock-vs-pin-vs-face-id | 图案锁和数字密码哪个安全 | /zh-hans/guides/pattern-lock-vs-pin-vs-face-id/ |
| what-is-a-decoy-vault | 诱饵保险箱 | /zh-hans/guides/what-is-a-decoy-vault/ |
| plausible-deniability-explained | 合理否认 加密 | /zh-hans/guides/plausible-deniability-explained/ |
| aes-256-encryption-explained | AES-256 加密是什么 | /zh-hans/guides/aes-256-encryption-explained/ |
| forgot-vault-pattern | 私密相册密码忘了怎么办 | /zh-hans/guides/forgot-vault-pattern/ |
| sharing-phone-with-kids | 孩子玩手机 照片隐私 | /zh-hans/use-cases/sharing-phone-with-kids/ |
| partner-scrolling-camera-roll | 另一半翻我手机相册 | /zh-hans/use-cases/partner-scrolling-camera-roll/ |
| phone-repair-privacy | iPhone 维修 照片隐私 | /zh-hans/use-cases/phone-repair-privacy/ |
| family-shared-icloud | iPhone 照片同步到 iPad | /zh-hans/use-cases/family-shared-icloud/ |
| after-a-breakup | 前任能看到我的 iPhone 照片 | /zh-hans/use-cases/after-a-breakup/ |
| travelling-with-private-photos | 旅行 iPhone 私密照片 保护 | /zh-hans/use-cases/travelling-with-private-photos/ |
| medical-and-id-documents | iPhone 证件照片 安全保存 | /zh-hans/use-cases/medical-and-id-documents/ |
| documenting-harassment-evidence | iPhone 保存骚扰证据 | /zh-hans/use-cases/documenting-harassment-evidence/ |
| creators-unreleased-content | iPhone 未发布照片 隐私保护 | /zh-hans/use-cases/creators-unreleased-content/ |
| journalists-protecting-sources | 记者 保护消息来源 手机 | /zh-hans/use-cases/journalists-protecting-sources/ |
| velcrypt-vs-keepsafe | Velcrypt Keepsafe 对比 | /zh-hans/compare/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | Velcrypt Private Photo Vault 对比 | /zh-hans/compare/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | 计算器隐藏照片 App | /zh-hans/compare/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | iPhone 隐藏照片 安全吗 | /zh-hans/compare/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | 备忘录 加密照片 | /zh-hans/compare/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | Keepsafe 替代 | /zh-hans/compare/keepsafe-alternative/ |
| photo-metadata-remover | 照片元数据清除 | /zh-hans/tools/photo-metadata-remover/ |
| pattern-strength-checker | 图案密码强度检测 | /zh-hans/tools/pattern-strength-checker/ |

#### Nederlands (`nl`, hreflang `nl`)

| pageId | Target keyword | URL |
|---|---|---|
| security | velcrypt beveiliging | /nl/beveiliging/ |
| pricing | velcrypt prijs | /nl/prijzen/ |
| faq | velcrypt veelgestelde vragen | /nl/veelgestelde-vragen/ |
| about | over velcrypt | /nl/over-ons/ |
| support | velcrypt support | /nl/support/ |
| privacy | velcrypt privacybeleid | /nl/privacybeleid/ |
| terms | velcrypt gebruiksvoorwaarden | /nl/gebruiksvoorwaarden/ |
| press | velcrypt perskit | /nl/pers/ |
| pattern-lock | app vergrendelen met patroon iphone | /nl/functies/patroonvergrendeling-iphone/ |
| hidden-vaults | verborgen kluis app iphone | /nl/functies/verborgen-kluizen/ |
| duress-pattern | dwangpatroon kluis app | /nl/functies/dwangpatroon/ |
| encryption | versleutelde fotokluis iphone | /nl/functies/versleuteling-fotokluis/ |
| offline-no-account | fotokluis zonder account | /nl/functies/fotokluis-zonder-account/ |
| hide-photos | foto's verbergen iphone app | /nl/functies/fotos-verbergen-fotokluis/ |
| hide-videos | video's verbergen iphone app | /nl/functies/videos-verbergen-videokluis/ |
| private-documents | documenten beveiligen iphone | /nl/functies/prive-documenten-kluis/ |
| auto-lock | app automatisch vergrendelen iphone | /nl/functies/automatisch-vergrendelen/ |
| albums | geheim fotoalbum iphone | /nl/functies/albums-in-kluis/ |
| hide-photos-iphone | foto's verbergen iphone | /nl/gidsen/fotos-verbergen-iphone/ |
| lock-photos-iphone | foto's vergrendelen iphone | /nl/gidsen/fotos-vergrendelen-iphone/ |
| hide-videos-iphone | video's verbergen iphone | /nl/gidsen/videos-verbergen-iphone/ |
| password-protect-photos-iphone | wachtwoord op foto's iphone | /nl/gidsen/wachtwoord-op-fotos-iphone/ |
| secret-photo-album-iphone | geheim fotoalbum iphone | /nl/gidsen/geheim-fotoalbum-iphone/ |
| password-protect-folder-iphone | map beveiligen met wachtwoord iphone | /nl/gidsen/map-beveiligen-met-wachtwoord-iphone/ |
| hidden-photos-search-memories-iphone | verborgen foto's in herinneringen | /nl/gidsen/verborgen-fotos-zoeken-herinneringen-iphone/ |
| guided-access-show-one-photo | één foto laten zien iphone zonder swipen | /nl/gidsen/een-foto-tonen-zonder-swipen-iphone/ |
| is-iphone-hidden-album-private | is album verborgen iphone privé | /nl/gidsen/is-album-verborgen-iphone-prive/ |
| are-hidden-photos-saved-to-icloud | verborgen foto's icloud | /nl/gidsen/verborgen-fotos-icloud/ |
| icloud-advanced-data-protection-explained | geavanceerde databescherming icloud | /nl/gidsen/geavanceerde-databescherming-icloud-uitgelegd/ |
| which-apps-can-see-your-photos-iphone | welke apps hebben toegang tot mijn foto's iphone | /nl/gidsen/welke-apps-zien-je-fotos-iphone/ |
| best-private-photo-vault-apps-iphone | beste fotokluis app iphone | /nl/gidsen/beste-fotokluis-apps-iphone/ |
| are-photo-vault-apps-safe | zijn fotokluis apps veilig | /nl/gidsen/zijn-fotokluis-apps-veilig/ |
| calculator-vault-apps-explained | rekenmachine kluis app | /nl/gidsen/rekenmachine-kluis-apps-uitgelegd/ |
| photo-vault-without-account | fotokluis zonder account | /nl/gidsen/fotokluis-zonder-account/ |
| delete-original-photos-after-import | foto's verwijderen na importeren in kluis | /nl/gidsen/originele-fotos-verwijderen-na-import/ |
| remove-photo-metadata-iphone | exif gegevens verwijderen iphone | /nl/gidsen/exif-locatie-verwijderen-iphone-fotos/ |
| store-intimate-photos-safely-iphone | intieme foto's veilig bewaren iphone | /nl/gidsen/intieme-fotos-veilig-bewaren-iphone/ |
| phone-privacy-border-crossing | mag de douane mijn telefoon doorzoeken | /nl/gidsen/douane-telefoon-doorzoeken/ |
| scan-documents-privately-iphone | documenten scannen iphone privé | /nl/gidsen/documenten-prive-scannen-iphone/ |
| pattern-lock-vs-pin-vs-face-id | patroonslot vs pincode | /nl/gidsen/patroon-vs-pincode-vs-face-id/ |
| what-is-a-decoy-vault | lokkluis | /nl/gidsen/wat-is-een-lokkluis/ |
| plausible-deniability-explained | plausibele ontkenning versleuteling | /nl/gidsen/plausibele-ontkenning-uitgelegd/ |
| aes-256-encryption-explained | aes-256 versleuteling uitgelegd | /nl/gidsen/aes-256-versleuteling-uitgelegd/ |
| forgot-vault-pattern | fotokluis wachtwoord vergeten | /nl/gidsen/fotokluis-wachtwoord-patroon-vergeten/ |
| sharing-phone-with-kids | foto's verbergen voor kinderen iphone | /nl/toepassingen/telefoon-delen-met-kinderen/ |
| partner-scrolling-camera-roll | partner kijkt in mijn telefoon foto's | /nl/toepassingen/partner-kijkt-in-je-fotos/ |
| phone-repair-privacy | iphone reparatie privacy foto's | /nl/toepassingen/iphone-reparatie-privacy/ |
| family-shared-icloud | iphone foto's verschijnen op ipad | /nl/toepassingen/fotos-op-ipad-gezin-icloud/ |
| after-a-breakup | ex heeft toegang tot mijn foto's iphone | /nl/toepassingen/na-een-relatiebreuk/ |
| travelling-with-private-photos | privéfoto's beschermen op reis iphone | /nl/toepassingen/reizen-met-prive-fotos/ |
| medical-and-id-documents | identiteitsbewijs veilig bewaren iphone | /nl/toepassingen/medische-documenten-en-id/ |
| documenting-harassment-evidence | bewijs intimidatie bewaren iphone | /nl/toepassingen/bewijs-intimidatie-bewaren/ |
| creators-unreleased-content | klantfoto's veilig bewaren iphone | /nl/toepassingen/onuitgebracht-werk-beschermen/ |
| journalists-protecting-sources | journalist bronbescherming telefoon | /nl/toepassingen/journalisten-bronnen-beschermen/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /nl/vergelijken/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /nl/vergelijken/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | rekenmachine kluis app | /nl/vergelijken/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | foto’s verbergen iphone album verborgen | /nl/vergelijken/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | foto’s vergrendelen in notities iphone | /nl/vergelijken/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | keepsafe alternatief | /nl/vergelijken/keepsafe-alternatief/ |
| photo-metadata-remover | metadata foto verwijderen | /nl/tools/metadata-foto-verwijderen/ |
| pattern-strength-checker | patroon sterkte test | /nl/tools/patroon-sterkte-test/ |

#### Svenska (`sv`, hreflang `sv`)

| pageId | Target keyword | URL |
|---|---|---|
| security | krypterat fotovalv iphone säkerhet | /sv/sakerhet/ |
| pricing | velcrypt pris | /sv/priser/ |
| faq | velcrypt vanliga frågor | /sv/vanliga-fragor/ |
| about | om velcrypt | /sv/om-oss/ |
| support | velcrypt support | /sv/support/ |
| privacy | velcrypt integritetspolicy | /sv/integritetspolicy/ |
| terms | velcrypt användarvillkor | /sv/anvandarvillkor/ |
| press | velcrypt pressmaterial | /sv/press/ |
| pattern-lock | mönsterlås app iphone | /sv/funktioner/monsterlas-app-iphone/ |
| hidden-vaults | dolda valv app iphone | /sv/funktioner/dolda-valv/ |
| duress-pattern | tvångsmönster valvapp | /sv/funktioner/tvangsmonster/ |
| encryption | krypterat fotovalv iphone | /sv/funktioner/kryptering-fotovalv/ |
| offline-no-account | fotovalv utan konto | /sv/funktioner/offline-fotovalv-utan-konto/ |
| hide-photos | dölja bilder iphone app | /sv/funktioner/dolja-bilder-fotovalv/ |
| hide-videos | dölja videor iphone app | /sv/funktioner/dolja-videor-fotovalv/ |
| private-documents | kryptera dokument iphone | /sv/funktioner/privata-dokument-krypterade/ |
| auto-lock | automatisk låsning valvapp iphone | /sv/funktioner/automatisk-last/ |
| albums | privat fotoalbum app iphone | /sv/funktioner/album-i-valvet/ |
| hide-photos-iphone | dölja bilder iphone | /sv/guider/dolja-bilder-iphone/ |
| lock-photos-iphone | låsa bilder iphone | /sv/guider/lasa-bilder-iphone/ |
| hide-videos-iphone | dölja videor iphone | /sv/guider/dolja-videor-iphone/ |
| password-protect-photos-iphone | lösenord på bilder iphone | /sv/guider/losenord-pa-bilder-iphone/ |
| secret-photo-album-iphone | hemligt fotoalbum iphone | /sv/guider/hemligt-fotoalbum-iphone/ |
| password-protect-folder-iphone | lösenordsskydda mapp iphone | /sv/guider/losenordsskydda-mapp-iphone/ |
| hidden-photos-search-memories-iphone | gömda bilder syns i minnen | /sv/guider/gomda-bilder-sok-minnen-iphone/ |
| guided-access-show-one-photo | visa en bild iphone utan att svepa | /sv/guider/visa-en-bild-guidad-atkomst/ |
| is-iphone-hidden-album-private | är albumet gömda privat iphone | /sv/guider/ar-albumet-gomda-privat-iphone/ |
| are-hidden-photos-saved-to-icloud | sparas gömda bilder i icloud | /sv/guider/sparas-gomda-bilder-i-icloud/ |
| icloud-advanced-data-protection-explained | avancerat dataskydd icloud | /sv/guider/avancerat-dataskydd-icloud/ |
| which-apps-can-see-your-photos-iphone | vilka appar kan se mina bilder iphone | /sv/guider/vilka-appar-ser-mina-bilder/ |
| best-private-photo-vault-apps-iphone | bästa app för att dölja bilder iphone | /sv/guider/basta-fotovalv-appar-iphone/ |
| are-photo-vault-apps-safe | är fotovalv-appar säkra | /sv/guider/ar-fotovalv-appar-sakra/ |
| calculator-vault-apps-explained | miniräknare app dölja bilder | /sv/guider/miniraknare-valv-appar/ |
| photo-vault-without-account | fotovalv utan konto | /sv/guider/fotovalv-utan-konto/ |
| delete-original-photos-after-import | radera bilder efter import till valv | /sv/guider/radera-originalbilder-efter-import/ |
| remove-photo-metadata-iphone | ta bort exif data iphone | /sv/guider/ta-bort-platsdata-bilder-iphone/ |
| store-intimate-photos-safely-iphone | spara intima bilder säkert iphone | /sv/guider/spara-intima-bilder-sakert-iphone/ |
| phone-privacy-border-crossing | får tullen kolla min mobil | /sv/guider/far-tullen-kolla-mobilen/ |
| scan-documents-privately-iphone | skanna dokument privat iphone | /sv/guider/skanna-dokument-privat-iphone/ |
| pattern-lock-vs-pin-vs-face-id | mönsterlås eller pin-kod | /sv/guider/monsterlas-pin-eller-face-id/ |
| what-is-a-decoy-vault | lockbetesvalv | /sv/guider/vad-ar-ett-lockbetesvalv/ |
| plausible-deniability-explained | trovärdigt förnekande kryptering | /sv/guider/trovardigt-fornekande-kryptering/ |
| aes-256-encryption-explained | aes-256 kryptering | /sv/guider/aes-256-kryptering-forklarad/ |
| forgot-vault-pattern | glömt lösenord fotovalv | /sv/guider/glomt-monster-fotovalv/ |
| sharing-phone-with-kids | dölja bilder för barn iphone | /sv/anvandningsfall/dela-iphone-med-barn/ |
| partner-scrolling-camera-roll | partner kollar mina bilder i telefonen | /sv/anvandningsfall/partner-kollar-mina-bilder/ |
| phone-repair-privacy | iphone reparation bilder integritet | /sv/anvandningsfall/iphone-reparation-skydda-bilder/ |
| family-shared-icloud | iphone bilder syns på ipad | /sv/anvandningsfall/bilder-syns-pa-familjens-ipad/ |
| after-a-breakup | ex har tillgång till mina bilder iphone | /sv/anvandningsfall/efter-uppbrott-skydda-bilder/ |
| travelling-with-private-photos | resa med privata bilder iphone | /sv/anvandningsfall/resa-med-privata-bilder/ |
| medical-and-id-documents | spara id-handlingar säkert iphone | /sv/anvandningsfall/id-handlingar-och-vardpapper/ |
| documenting-harassment-evidence | spara bevis på trakasserier iphone | /sv/anvandningsfall/spara-bevis-trakasserier-iphone/ |
| creators-unreleased-content | skydda opublicerade bilder iphone | /sv/anvandningsfall/skydda-opublicerat-material/ |
| journalists-protecting-sources | källskydd journalist iphone | /sv/anvandningsfall/kallskydd-journalister-iphone/ |
| velcrypt-vs-keepsafe | velcrypt vs keepsafe | /sv/jamfor/velcrypt-vs-keepsafe/ |
| velcrypt-vs-private-photo-vault | velcrypt vs private photo vault | /sv/jamfor/velcrypt-vs-private-photo-vault/ |
| velcrypt-vs-calculator-vault-apps | kalkylator app dölja bilder | /sv/jamfor/velcrypt-vs-calculator-vault-apps/ |
| velcrypt-vs-iphone-hidden-album | dölja bilder iphone gömda album | /sv/jamfor/velcrypt-vs-iphone-hidden-album/ |
| velcrypt-vs-apple-notes-locked-notes | låsa bilder i anteckningar iphone | /sv/jamfor/velcrypt-vs-apple-notes-locked-notes/ |
| keepsafe-alternative | alternativ till keepsafe | /sv/jamfor/keepsafe-alternativ/ |
| photo-metadata-remover | ta bort metadata från bild | /sv/verktyg/ta-bort-metadata-fran-bild/ |
| pattern-strength-checker | testa mönsterlås styrka | /sv/verktyg/testa-monsterstyrka/ |

## 3. Prioritised backlog: the next ~100 pages

Priority: **P1** means high intent or high volume, write next. **P2** means strong supporting topics. **P3** means long tail and authority pieces. Each item is one page, and the slug is a suggestion. Keyword clusters come from `docs/research/vaultaire/seo-keywords.md`, sections A–J.

### P1: commercial and high-volume how-to (25)
1. /guides/photo-vault-app-iphone/: photo vault app iphone (what a vault is, how to choose one)
2. /guides/app-to-hide-photos/: app to hide photos / pictures (types of apps, graded by protection)
3. /guides/hide-photos-ipad/: hide photos on iPad (Hidden album on iPadOS; Velcrypt is iPhone-only, so say so)
4. /guides/hide-photos-mac/: hide photos on Mac (Hidden album, locking it)
5. /guides/view-hidden-photos-mac/: view hidden photos on Mac
6. /guides/where-is-hidden-album-iphone/: where is the Hidden album (iOS 18/26 Utilities)
7. /guides/change-hidden-album-password-iphone/: change the Hidden album password (it uses the device passcode)
8. /guides/can-apple-see-hidden-photos/: can Apple see your hidden photos
9. /guides/can-someone-open-hidden-album-with-passcode/: Hidden album passcode fallback
10. /guides/do-hidden-photos-transfer-new-iphone/: do hidden photos transfer to a new iPhone
11. /guides/hidden-album-vs-photo-vault/: Hidden album vs a photo vault
12. /guides/lock-apps-face-id-iphone/: lock apps with Face ID on iPhone (iOS 18)
13. /guides/hide-apps-iphone/: hide apps (iOS 18 hidden folder, Screen Time)
14. /guides/move-photos-to-vault-app/: move photos into a vault app (copy, then delete originals)
15. /guides/export-photos-from-vault-app/: export photos from a vault safely
16. /guides/photo-vault-with-decoy-password/: photo vault with a decoy password
17. /guides/video-hider-app-iphone/: video hider apps for iPhone
18. /guides/secret-photo-app-iphone/: secret photo app iPhone
19. /guides/free-photo-vault-iphone/: free photo vault iPhone (what free usually costs you)
20. /guides/photo-vault-full-resolution/: photo vault with no quality loss (original files)
21. /guides/hide-photos-shortcut-iphone/: hide photos with a Shortcut
22. /guides/recover-deleted-photos-iphone/: recover deleted photos (Recently Deleted, iCloud)
23. /guides/stop-whatsapp-saving-photos-iphone/: stop WhatsApp saving photos to the camera roll
24. /guides/keep-screenshots-private-iphone/: keep screenshots private
25. /compare/velcrypt-vs-google-photos-locked-folder/: Google Photos Locked Folder (iOS availability, facts)

### P1: comparisons and alternatives (10). Verify every competitor fact before publishing.
26. /compare/private-photo-vault-alternative/
27. /compare/calculator-vault-alternative/
28. /compare/hidden-album-alternative/
29. /compare/samsung-secure-folder-vs-iphone/: does the iPhone have a Secure Folder?
30. /compare/keepsafe-vs-private-photo-vault/: neutral third-party comparison
31. /compare/velcrypt-vs-secret-photo-album/
32. /compare/velcrypt-vs-hide-it-pro/
33. /compare/velcrypt-vs-encrypted-notes-apps/
34. /compare/velcrypt-vs-icloud-advanced-data-protection/: complementary, not a competitor
35. /compare/best-photo-vault-no-subscription/: depends on final pricing; write after pricing is set

### P2: Apple-native privacy questions (25)
36. hidden photos in iPhone backup · 37. does full photo access include hidden photos · 38. iCloud Shared Library and hidden photos · 39. hide photos from Memories and Featured (deep dive) · 40. hide someone from the People album · 41. Shared with You photos · 42. Apple Watch photos privacy · 43. CarPlay and photos · 44. iPhone guest mode alternatives · 45. iCloud Keychain vs a vault · 46. are locked notes encrypted · 47. iPhone Live Photos privacy · 48. AirDrop privacy settings · 49. stop strangers' AirDrops · 50. iPhone clipboard privacy · 51. iPhone analytics opt-out · 52. Lockdown Mode and photos · 53. Stolen Device Protection explained · 54. Apple Intelligence / Enhanced Visual Search photo scanning · 55. does a factory reset erase iCloud photos · 56. what is in an iPhone backup · 57. iCloud shared album privacy · 58. Family Sharing and photos · 59. stop iCloud Photos syncing to other devices · 60. delete photos from iPhone but keep them in iCloud

### P2: security education (15)
61. zero-knowledge encryption explained (as a concept, not a claim) · 62. end-to-end encryption and photos · 63. are iCloud Photos end-to-end encrypted · 64. PBKDF2 and key stretching explained · 65. what is a salt · 66. AES-128 vs AES-256 · 67. is AES-256 quantum resistant · 68. smudge attacks on pattern locks · 69. shoulder surfing: how to draw unobserved · 70. how photo vault apps work · 71. does deleting a vault app delete the photos · 72. can police access photo vault apps (general, no legal advice) · 73. can forensic tools see vault apps · 74. compelled biometrics: what to know · 75. how to choose a memorable strong pattern

### P2: use cases (12)
76. a houseguest went through my phone · 77. coworker saw photos on a work phone · 78. a partner knows my passcode · 79. photos from a previous relationship · 80. lock-screen widget showed a private photo · 81. photos synced to a shared family Mac · 82. caregivers holding medical documents · 83. tenants keeping housing evidence · 84. therapists' notes on iPhone · 85. photographers with client photos of children · 86. activists and protest photos · 87. LGBTQ+ people on a shared family iPhone

### P3: practical and tools (13)
88. password-protect a PDF on iPhone · 89. store tax documents on iPhone · 90. should you store a crypto seed phrase on iPhone · 91. before selling your iPhone: private photo checklist · 92. wipe your iPhone before a trade-in · 93. protect photos before an iPhone repair (guide variant) · 94. burner phone setup · 95. Signal disappearing messages · 96. /tools/face-blur/ (browser-only; reuse the canvas pipeline) · 97. /tools/image-compressor/ · 98. /tools/photo-location-finder/ (reads GPS only; privacy explainer) · 99. /tools/c2pa-content-credentials-checker/ · 100. /tools/qr-code-generator/ (Wi-Fi, offline)

**Gaps worth owning** (from the research): video-specific pages, Android-switcher pages ("I came from Android pattern lock"), comparisons between two other apps, and an honest "what to expect at launch" changelog page (`/whats-new/`) once the app ships.

## 4. Localization plan

### Architecture (already implemented)
- Locales are listed in `src/i18n/locales.mjs`: 30 locales. 11 are active: en, es, de, fr, pt-br, it, nl, sv, ja, ko, zh-hans.
- URLs: English sits at the root. Other locales sit under `/{code}/` with **translated section folders** (`src/i18n/sections.mjs`, e.g. `/de/anleitungen/…`, `/es/guias/…`) and **translated, keyword-localized slugs** (the filename of the translated Markdown file).
- Every page has a stable `pageId`. Translations share it, and `src/i18n/registry.mjs` builds the hreflang clusters. Those clusters are used in `<head>` and in `sitemap.xml`, each with `x-default` pointing to English. Only pages that exist in a locale are listed, so there are never hreflang links to missing pages.
- `[text](id:page-id)` links in Markdown resolve to the same locale's URL and fall back to English. Unknown ids fail the build.
- The home page and section hubs are data-driven: their copy, and all UI text, live in `src/i18n/copy/<locale>.ts` (same shape as `en.ts`). Their URLs are derived automatically for every active locale. Hub URLs are the translated section folders.
- Each locale also gets its own `/<locale>/llms.txt`, `/<locale>/llms-full.txt` and a localized `/<locale>/404.html`.
- CJK locales (ja, ko, zh-hans) use ASCII English slugs and section folders by design; titles, H1s, descriptions and content are fully localized.

### Slug translation approach
1. Research local search phrasing for each page; don't translate the English slug word for word. Example: `hide-photos-iphone` becomes `/de/anleitungen/fotos-verstecken-iphone/` and `/es/guias/ocultar-fotos-iphone/`.
2. Use ASCII, lowercase and hyphens only. Transliterate diacritics (ä→ae in de, ç→c, ñ→n). For CJK, Arabic, Hebrew, Thai and Hindi, use short romanized or English keyword slugs and keep the localized title. This avoids percent-encoded URLs.
3. Never change a slug after it is published. If you must, add a 301 in `public/_redirects`.
4. Keep comparison slugs that contain brand names in English (`velcrypt-vs-keepsafe`).
5. Translators also localize `title` (≤60), `description` (≤155), `answer`, `keyFacts` and FAQs. These are not machine-translated without native review, both for quality and for Google's scaled-content policy.

### Priority order
| Wave | Locales | Why |
|---|---|---|
| 1 (live) | es, de, fr, pt-br, ja, ko, zh-hans, it, nl, sv | Largest iPhone markets with strong privacy search demand |
| 2 | zh-hant, pl, tr, ru, uk | High iOS share or strong privacy interest |
| 3 | ar (RTL), he (RTL), id, th, vi, hi | Large populations. RTL layout must be checked (the CSS uses logical-friendly layout; check tables and breadcrumbs) |
| 4 | da, nb, fi, cs, el, hu, ro, pt-pt | Smaller markets; translate the core and top guides only |

For each wave, ship the core pages, all feature pages and the top 10 guides first. Add more guides once the core pages have impressions in Search Console. Match the App Store listing locales to the site locales.

## 5. Measurement
- Google Search Console and Bing Webmaster Tools: submit `/sitemap.xml`.
- App Store Connect campaign links: every CTA carries `ct=web_<placement>`. The tokens are in the source: `appStoreLink()` in `src/config/site.ts`.
- The site has no analytics by design. If you add any, update `/privacy/` first and prefer a cookieless, self-hosted option.
