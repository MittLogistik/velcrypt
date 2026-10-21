// @ts-check
/**
 * Locale registry. Only locales with `active: true` are built.
 * `prefix` is the URL prefix ('' = root). `hreflang` is the value used in
 * <link rel="alternate"> and in the sitemap.
 *
 * To launch a locale: set active: true, add UI strings in src/i18n/ui.ts,
 * add translated section slugs in src/i18n/sections.mjs, and add translated
 * content files under src/content/<collection>/<code>/ (same pageId as English).
 */
export const DEFAULT_LOCALE = 'en';

/** @typedef {{code:string, hreflang:string, prefix:string, name:string, dir:'ltr'|'rtl', ogLocale:string, active:boolean}} Locale */

/** @type {Locale[]} */
export const LOCALES = [
  { code: 'en', hreflang: 'en', prefix: '', name: 'English', dir: 'ltr', ogLocale: 'en_US', active: true },
  { code: 'es', hreflang: 'es', prefix: '/es', name: 'Español', dir: 'ltr', ogLocale: 'es_ES', active: false },
  { code: 'de', hreflang: 'de', prefix: '/de', name: 'Deutsch', dir: 'ltr', ogLocale: 'de_DE', active: false },
  { code: 'fr', hreflang: 'fr', prefix: '/fr', name: 'Français', dir: 'ltr', ogLocale: 'fr_FR', active: false },
  { code: 'pt-br', hreflang: 'pt-BR', prefix: '/pt-br', name: 'Português (Brasil)', dir: 'ltr', ogLocale: 'pt_BR', active: false },
  { code: 'ja', hreflang: 'ja', prefix: '/ja', name: '日本語', dir: 'ltr', ogLocale: 'ja_JP', active: false },
  { code: 'it', hreflang: 'it', prefix: '/it', name: 'Italiano', dir: 'ltr', ogLocale: 'it_IT', active: false },
  { code: 'ko', hreflang: 'ko', prefix: '/ko', name: '한국어', dir: 'ltr', ogLocale: 'ko_KR', active: false },
  { code: 'zh-hans', hreflang: 'zh-Hans', prefix: '/zh-hans', name: '简体中文', dir: 'ltr', ogLocale: 'zh_CN', active: false },
  { code: 'zh-hant', hreflang: 'zh-Hant', prefix: '/zh-hant', name: '繁體中文', dir: 'ltr', ogLocale: 'zh_TW', active: false },
  { code: 'nl', hreflang: 'nl', prefix: '/nl', name: 'Nederlands', dir: 'ltr', ogLocale: 'nl_NL', active: false },
  { code: 'sv', hreflang: 'sv', prefix: '/sv', name: 'Svenska', dir: 'ltr', ogLocale: 'sv_SE', active: false },
  { code: 'pl', hreflang: 'pl', prefix: '/pl', name: 'Polski', dir: 'ltr', ogLocale: 'pl_PL', active: false },
  { code: 'tr', hreflang: 'tr', prefix: '/tr', name: 'Türkçe', dir: 'ltr', ogLocale: 'tr_TR', active: false },
  { code: 'ru', hreflang: 'ru', prefix: '/ru', name: 'Русский', dir: 'ltr', ogLocale: 'ru_RU', active: false },
  { code: 'uk', hreflang: 'uk', prefix: '/uk', name: 'Українська', dir: 'ltr', ogLocale: 'uk_UA', active: false },
  { code: 'ar', hreflang: 'ar', prefix: '/ar', name: 'العربية', dir: 'rtl', ogLocale: 'ar_AR', active: false },
  { code: 'he', hreflang: 'he', prefix: '/he', name: 'עברית', dir: 'rtl', ogLocale: 'he_IL', active: false },
  { code: 'hi', hreflang: 'hi', prefix: '/hi', name: 'हिन्दी', dir: 'ltr', ogLocale: 'hi_IN', active: false },
  { code: 'id', hreflang: 'id', prefix: '/id', name: 'Bahasa Indonesia', dir: 'ltr', ogLocale: 'id_ID', active: false },
  { code: 'th', hreflang: 'th', prefix: '/th', name: 'ไทย', dir: 'ltr', ogLocale: 'th_TH', active: false },
  { code: 'vi', hreflang: 'vi', prefix: '/vi', name: 'Tiếng Việt', dir: 'ltr', ogLocale: 'vi_VN', active: false },
  { code: 'da', hreflang: 'da', prefix: '/da', name: 'Dansk', dir: 'ltr', ogLocale: 'da_DK', active: false },
  { code: 'nb', hreflang: 'nb', prefix: '/nb', name: 'Norsk bokmål', dir: 'ltr', ogLocale: 'nb_NO', active: false },
  { code: 'fi', hreflang: 'fi', prefix: '/fi', name: 'Suomi', dir: 'ltr', ogLocale: 'fi_FI', active: false },
  { code: 'cs', hreflang: 'cs', prefix: '/cs', name: 'Čeština', dir: 'ltr', ogLocale: 'cs_CZ', active: false },
  { code: 'el', hreflang: 'el', prefix: '/el', name: 'Ελληνικά', dir: 'ltr', ogLocale: 'el_GR', active: false },
  { code: 'hu', hreflang: 'hu', prefix: '/hu', name: 'Magyar', dir: 'ltr', ogLocale: 'hu_HU', active: false },
  { code: 'ro', hreflang: 'ro', prefix: '/ro', name: 'Română', dir: 'ltr', ogLocale: 'ro_RO', active: false },
  { code: 'pt-pt', hreflang: 'pt-PT', prefix: '/pt-pt', name: 'Português (Portugal)', dir: 'ltr', ogLocale: 'pt_PT', active: false },
];

export const ACTIVE_LOCALES = LOCALES.filter((l) => l.active);

/** @param {string} code @returns {Locale} */
export function getLocale(code) {
  const l = LOCALES.find((x) => x.code === code);
  if (!l) throw new Error(`Unknown locale "${code}"`);
  return l;
}

/** @param {string} code */
export function isActiveLocale(code) {
  return ACTIVE_LOCALES.some((l) => l.code === code);
}
