// @ts-check
/**
 * Data-driven (non-Markdown) pages: the home page and the section hubs.
 * They exist in every active locale (copy lives in src/i18n/copy/<locale>.ts)
 * and their URLs derive from the locale prefix and translated section
 * segments, so nothing needs to be added here when a locale is switched on.
 */
import { ACTIVE_LOCALES } from './locales.mjs';
import { HUB_IDS, sectionSegment } from './sections.mjs';

/** @typedef {{ id:string, kind:'home'|'hub', collection?:string, paths:Record<string,string> }} StaticRoute */

/** @returns {StaticRoute[]} */
function build() {
  /** @type {StaticRoute[]} */
  const routes = [{ id: 'home', kind: 'home', paths: {} }];
  for (const [collection, id] of Object.entries(HUB_IDS)) routes.push({ id, kind: 'hub', collection, paths: {} });
  for (const l of ACTIVE_LOCALES) {
    for (const r of routes) {
      r.paths[l.code] = r.kind === 'home' ? `${l.prefix}/` : `${l.prefix}/${sectionSegment(/** @type {string} */ (r.collection), l.code)}/`;
    }
  }
  return routes;
}

export const STATIC_ROUTES = build();
