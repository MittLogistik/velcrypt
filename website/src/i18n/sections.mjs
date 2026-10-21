// @ts-check
/**
 * Translated URL section segments per content collection.
 * '' means the collection lives at the locale root (e.g. /security/).
 * Locales without an entry fall back to the English segment.
 * Example: guides -> /guides/x/ (en), /de/anleitungen/x/ (de), /es/guias/x/ (es).
 */
export const SECTIONS = {
  pages: { en: '' },
  features: { en: 'features', de: 'funktionen', es: 'funciones', fr: 'fonctionnalites', 'pt-br': 'recursos', it: 'funzionalita' },
  guides: { en: 'guides', de: 'anleitungen', es: 'guias', fr: 'guides', 'pt-br': 'guias', it: 'guide' },
  useCases: { en: 'use-cases', de: 'anwendungsfaelle', es: 'casos-de-uso', fr: 'cas-usage', 'pt-br': 'casos-de-uso', it: 'casi-d-uso' },
  compare: { en: 'compare', de: 'vergleich', es: 'comparar', fr: 'comparer', 'pt-br': 'comparar', it: 'confronto' },
  tools: { en: 'tools', de: 'tools', es: 'herramientas', fr: 'outils', 'pt-br': 'ferramentas', it: 'strumenti' },
};

/** @typedef {keyof typeof SECTIONS} CollectionName */
export const COLLECTIONS = /** @type {CollectionName[]} */ (Object.keys(SECTIONS));

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
