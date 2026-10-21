// @ts-check
/**
 * Route registry: maps every stable pageId to its URL in each locale.
 * Built from (a) STATIC_ROUTES and (b) the Markdown files on disk, so it can
 * be used both by Astro pages and by the remark plugin that resolves
 * `id:` links inside Markdown (which runs before collections are queried).
 */
import fs from 'node:fs';
import path from 'node:path';
import { STATIC_ROUTES } from './static-routes.mjs';
import { COLLECTIONS, sectionSegment } from './sections.mjs';
import { getLocale, isActiveLocale, LOCALES } from './locales.mjs';

const CONTENT_DIR = path.resolve(process.cwd(), 'src/content');

/**
 * @param {string} collection
 * @param {string} locale
 * @param {string} slug
 */
export function entryPath(collection, locale, slug) {
  const prefix = getLocale(locale).prefix;
  const section = sectionSegment(collection, locale);
  return `${prefix}/${section ? section + '/' : ''}${slug}/`;
}

/** @typedef {{ pageId:string, collection:string|null, locale:string, path:string, slug:string|null, draft:boolean }} RouteEntry */

/** @type {RouteEntry[] | null} */
let cache = null;

/** @returns {RouteEntry[]} */
export function getRegistry() {
  if (cache) return cache;
  /** @type {RouteEntry[]} */
  const out = [];
  for (const r of STATIC_ROUTES) {
    for (const [locale, p] of Object.entries(r.paths)) {
      out.push({ pageId: r.id, collection: null, locale, path: p, slug: null, draft: false });
    }
  }
  for (const collection of COLLECTIONS) {
    const cdir = path.join(CONTENT_DIR, collection);
    if (!fs.existsSync(cdir)) continue;
    for (const locale of fs.readdirSync(cdir)) {
      const ldir = path.join(cdir, locale);
      if (!fs.statSync(ldir).isDirectory()) continue;
      if (!LOCALES.some((l) => l.code === locale)) throw new Error(`Unknown locale folder ${ldir}`);
      for (const file of fs.readdirSync(ldir)) {
        if (!file.endsWith('.md')) continue;
        const slug = file.replace(/\.md$/, '');
        const src = fs.readFileSync(path.join(ldir, file), 'utf8');
        const fm = src.match(/^---\r?\n([\s\S]*?)\r?\n---/);
        const idm = fm && fm[1].match(/^pageId:\s*["']?([a-z0-9-]+)["']?\s*$/m);
        if (!idm) throw new Error(`Missing pageId in ${collection}/${locale}/${file}`);
        const draft = !!(fm && /^draft:\s*true\s*$/m.test(fm[1]));
        out.push({ pageId: idm[1], collection, locale, path: entryPath(collection, locale, slug), slug, draft });
      }
    }
  }
  // Integrity: one path per (pageId, locale) and unique paths.
  const seen = new Set();
  const paths = new Set();
  for (const e of out) {
    const k = `${e.pageId}@${e.locale}`;
    if (seen.has(k)) throw new Error(`Duplicate pageId "${e.pageId}" in locale ${e.locale}`);
    if (paths.has(e.path)) throw new Error(`Duplicate URL ${e.path}`);
    seen.add(k);
    paths.add(e.path);
  }
  cache = out;
  return out;
}

/** Routes that are actually built (active locale, not draft). */
export function getLiveRegistry() {
  return getRegistry().filter((e) => isActiveLocale(e.locale) && !e.draft);
}

/**
 * Resolve a pageId to a path in a locale, falling back to English.
 * @param {string} pageId
 * @param {string} locale
 * @returns {string}
 */
export function pathFor(pageId, locale = 'en') {
  const live = getLiveRegistry();
  const hit = live.find((e) => e.pageId === pageId && e.locale === locale) ?? live.find((e) => e.pageId === pageId && e.locale === 'en');
  if (!hit) throw new Error(`Unknown or unbuilt pageId "${pageId}"`);
  return hit.path;
}

/**
 * All built locale versions of a pageId (for hreflang).
 * @param {string} pageId
 * @returns {{locale:string, hreflang:string, path:string}[]}
 */
export function alternatesFor(pageId) {
  return getLiveRegistry()
    .filter((e) => e.pageId === pageId)
    .map((e) => ({ locale: e.locale, hreflang: getLocale(e.locale).hreflang, path: e.path }));
}
