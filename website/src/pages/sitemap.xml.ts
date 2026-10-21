import type { APIRoute } from 'astro';
import { getLiveRegistry } from '../i18n/registry.mjs';
import { getLocale, DEFAULT_LOCALE } from '../i18n/locales.mjs';
import { getAllPages, isoDate } from '../lib/content';
import { SITE_URL, SITE_UPDATED } from '../config/site';

/**
 * Sitemap with a full hreflang cluster (incl. x-default) per URL.
 * Works for any number of active locales: alternates are grouped by pageId.
 */
export const GET: APIRoute = async () => {
  const routes = getLiveRegistry();
  const pages = await getAllPages();
  const lastmod = new Map(pages.map((p) => [p.path, isoDate(p.data.dateModified)]));
  const byId = new Map<string, typeof routes>();
  for (const r of routes) byId.set(r.pageId, [...(byId.get(r.pageId) ?? []), r]);
  const abs = (p: string) => new URL(p, SITE_URL).toString();
  const esc = (s: string) => s.replace(/&/g, '&amp;').replace(/</g, '&lt;');

  const urls = routes
    .slice()
    .sort((a, b) => a.path.localeCompare(b.path))
    .map((r) => {
      const alts = byId.get(r.pageId) ?? [];
      const def = alts.find((a) => a.locale === DEFAULT_LOCALE);
      const links = alts
        .map((a) => `    <xhtml:link rel="alternate" hreflang="${getLocale(a.locale).hreflang}" href="${esc(abs(a.path))}"/>`)
        .concat(def ? [`    <xhtml:link rel="alternate" hreflang="x-default" href="${esc(abs(def.path))}"/>`] : [])
        .join('\n');
      return `  <url>\n    <loc>${esc(abs(r.path))}</loc>\n    <lastmod>${lastmod.get(r.path) ?? SITE_UPDATED}</lastmod>\n${links}\n  </url>`;
    })
    .join('\n');

  const xml = `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xhtml="http://www.w3.org/1999/xhtml">\n${urls}\n</urlset>\n`;
  return new Response(xml, { headers: { 'Content-Type': 'application/xml; charset=utf-8' } });
};
