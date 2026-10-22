import { getCollection, type CollectionEntry } from 'astro:content';
import { isActiveLocale } from '../i18n/locales.mjs';
import { entryPath, pathFor } from '../i18n/registry.mjs';

export const COLLECTION_NAMES = ['pages', 'features', 'guides', 'useCases', 'compare', 'tools'] as const;
export type CollectionName = (typeof COLLECTION_NAMES)[number];
export type AnyEntry = CollectionEntry<CollectionName>;

export interface Page {
  collection: CollectionName;
  locale: string;
  slug: string;
  path: string;
  entry: AnyEntry;
  data: AnyEntry['data'] & { summary?: string; category?: string; group?: string; status?: string; competitor?: string; lastChecked?: string; toolName?: string };
}

/** entry.id is "<locale>/<slug>" (glob loader). */
function split(entry: AnyEntry) {
  const [locale, ...rest] = entry.id.split('/');
  return { locale, slug: rest.join('/') };
}

let cache: Page[] | null = null;

export async function getAllPages(): Promise<Page[]> {
  if (cache) return cache;
  const out: Page[] = [];
  for (const c of COLLECTION_NAMES) {
    const entries = (await getCollection(c)) as AnyEntry[];
    for (const entry of entries) {
      const { locale, slug } = split(entry);
      if (!isActiveLocale(locale) || entry.data.draft) continue;
      if (entry.data.pageId !== slug && locale === 'en') {
        throw new Error(`English file name must equal pageId: ${c}/${entry.id} has pageId ${entry.data.pageId}`);
      }
      out.push({ collection: c, locale, slug, path: entryPath(c, locale, slug), entry, data: entry.data as Page['data'] });
    }
  }
  cache = out;
  return out;
}

export async function getPages(collection: CollectionName, locale = 'en'): Promise<Page[]> {
  return (await getAllPages())
    .filter((p) => p.collection === collection && p.locale === locale)
    .sort((a, b) => a.data.order - b.data.order || a.data.navTitle.localeCompare(b.data.navTitle));
}

export async function getPageById(pageId: string, locale = 'en'): Promise<Page | undefined> {
  const all = await getAllPages();
  return all.find((p) => p.data.pageId === pageId && p.locale === locale) ?? all.find((p) => p.data.pageId === pageId && p.locale === 'en');
}

/** Link helper usable in .astro files: href('pricing') -> '/pricing/'. */
export function href(pageId: string, locale = 'en'): string {
  return pathFor(pageId, locale);
}

/** Ordered keys; labels come from the locale copy (copy.guideCategories / copy.useCaseGroups). */
export const GUIDE_CATEGORY_KEYS = ['hiding', 'apple', 'choosing', 'security', 'practical'] as const;
export const USE_CASE_GROUP_KEYS = ['everyday', 'travel', 'sensitive', 'professional'] as const;

export function isoDate(d: Date | string): string {
  return new Date(d).toISOString().slice(0, 10);
}

export function readingMinutes(body: string | undefined, locale = 'en'): number {
  const text = (body ?? '').replace(/<!--[\s\S]*?-->/g, '');
  // Japanese and Chinese don't separate words with spaces: estimate by characters.
  if (locale === 'ja' || locale === 'zh-hans') return Math.max(1, Math.round(text.replace(/\s/g, '').length / 500));
  const words = text.split(/\s+/).filter(Boolean).length;
  return Math.max(1, Math.round(words / 220));
}
