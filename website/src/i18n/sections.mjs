// @ts-check
/**
 * Translated URL section segments per content collection (also the URL of
 * each section hub). '' = the collection lives at the locale root
 * (e.g. /security/, /de/sicherheit/). Locales without an entry fall back to
 * the English segment. CJK locales intentionally use ASCII English segments
 * (no percent-encoded URLs); their page titles and content are localized.
 */
export const SECTIONS = {
  pages: { en: '' },
  features: {
    en: 'features', es: 'funciones', de: 'funktionen', fr: 'fonctionnalites', 'pt-br': 'recursos',
    it: 'funzionalita', nl: 'functies', sv: 'funktioner', ja: 'features', ko: 'features', 'zh-hans': 'features',
  },
  guides: {
    en: 'guides', es: 'guias', de: 'anleitungen', fr: 'guides', 'pt-br': 'guias',
    it: 'guide', nl: 'gidsen', sv: 'guider', ja: 'guides', ko: 'guides', 'zh-hans': 'guides',
  },
  useCases: {
    en: 'use-cases', es: 'casos-de-uso', de: 'anwendungsfaelle', fr: 'cas-usage', 'pt-br': 'casos-de-uso',
    it: 'casi-d-uso', nl: 'toepassingen', sv: 'anvandningsfall', ja: 'use-cases', ko: 'use-cases', 'zh-hans': 'use-cases',
  },
  compare: {
    en: 'compare', es: 'comparativas', de: 'vergleich', fr: 'comparatifs', 'pt-br': 'comparativos',
    it: 'confronti', nl: 'vergelijken', sv: 'jamfor', ja: 'compare', ko: 'compare', 'zh-hans': 'compare',
  },
  tools: {
    en: 'tools', es: 'herramientas', de: 'tools', fr: 'outils', 'pt-br': 'ferramentas',
    it: 'strumenti', nl: 'tools', sv: 'verktyg', ja: 'tools', ko: 'tools', 'zh-hans': 'tools',
  },
};

/** @typedef {keyof typeof SECTIONS} CollectionName */
export const COLLECTIONS = /** @type {CollectionName[]} */ (Object.keys(SECTIONS));

/** Hub page id for each collection that has a hub. */
export const HUB_IDS = /** @type {Record<string,string>} */ ({
  features: 'features',
  guides: 'guides',
  useCases: 'use-cases',
  compare: 'compare',
  tools: 'tools',
});

/**
 * @param {string} collection
 * @param {string} locale
 * @returns {string}
 */
export function sectionSegment(collection, locale) {
  const map = /** @type {Record<string,string>} */ (SECTIONS[/** @type {CollectionName} */ (collection)]);
  if (!map) throw new Error(`Unknown collection "${collection}"`);
  return map[locale] ?? map.en;
}
