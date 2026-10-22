import { getAllPages, getPages, GUIDE_CATEGORY_KEYS, type Page } from './content';
import { STATIC_ROUTES } from '../i18n/static-routes.mjs';
import { pathFor } from '../i18n/registry.mjs';
import { ACTIVE_LOCALES, getLocale } from '../i18n/locales.mjs';
import { getCopy } from '../i18n/copy/index';
import { SITE_URL, TAGLINE, APP_LIVE, APP_STORE_URL } from '../config/site';

const abs = (p: string) => new URL(p, SITE_URL).toString();
const ORDER: Page['collection'][] = ['pages', 'features', 'guides', 'useCases', 'compare', 'tools'];

/** URL of a locale's llms.txt / llms-full.txt. */
export function llmsPath(locale: string, full = false): string {
  return `${getLocale(locale).prefix}/llms${full ? '-full' : ''}.txt`;
}

function summary(locale: string): string[] {
  const c = getCopy(locale).llms;
  return [...c.summary, APP_LIVE ? `${c.statusLive}: ${APP_STORE_URL}` : c.statusSoon];
}

export async function buildLlmsTxt(locale = 'en'): Promise<string> {
  const copy = getCopy(locale);
  const c = copy.llms;
  const hubCopy: Record<string, { h1: string; description: string }> = {
    features: copy.hubs.features, guides: copy.hubs.guides, 'use-cases': copy.hubs.useCases, compare: copy.hubs.compare, tools: copy.hubs.tools,
  };
  const lines: string[] = [];
  lines.push('# Velcrypt', '', `> ${TAGLINE} ${c.intro}`, '');
  lines.push(...summary(locale).map((s) => `- ${s}`), '');
  lines.push(`${c.fullTextLink}: ${abs(llmsPath(locale, true))}`, '');
  const others = ACTIVE_LOCALES.filter((l) => l.code !== locale);
  if (others.length) {
    lines.push(`## ${c.otherLanguages}`, '');
    for (const l of others) lines.push(`- [${getCopy(l.code).meta.langName}](${abs(llmsPath(l.code))}) (${l.hreflang})`);
    lines.push('');
  }
  lines.push(`## ${c.overviewTitle}`, '');
  for (const r of STATIC_ROUTES) {
    if (!r.paths[locale]) continue;
    const t = r.id === 'home' ? copy.home.llmsTitle : hubCopy[r.id].h1;
    const d = r.id === 'home' ? copy.home.description : hubCopy[r.id].description;
    lines.push(`- [${t}](${abs(r.paths[locale])}): ${d}`);
  }
  lines.push('');
  for (const col of ORDER) {
    const pages = await getPages(col, locale);
    if (!pages.length) continue;
    lines.push(`## ${c.sectionTitles[col]}`, '');
    if (col === 'guides') {
      for (const cat of GUIDE_CATEGORY_KEYS) {
        const inCat = pages.filter((p) => p.data.category === cat);
        if (!inCat.length) continue;
        lines.push(`### ${copy.guideCategories[cat]}`, '');
        for (const p of inCat) lines.push(`- [${p.data.h1}](${abs(p.path)}): ${p.data.answer}`);
        lines.push('');
      }
    } else {
      for (const p of pages) lines.push(`- [${p.data.h1}](${abs(p.path)}): ${p.data.answer}`);
      lines.push('');
    }
  }
  return lines.join('\n');
}

/** Markdown body -> readable plain text with absolute, same-locale links. */
function toPlain(md: string, locale: string): string {
  return md
    .replace(/<!--[\s\S]*?-->/g, '')
    .replace(/<a id="[^"]*"><\/a>\s*/g, '')
    .replace(/\]\(id:([a-z0-9-]+)(#[^)]+)?\)/g, (_m, id: string, hash?: string) => `](${abs(pathFor(id, locale))}${hash ?? ''})`)
    .replace(/\]\((\/[^)]*)\)/g, (_m, p: string) => `](${abs(p)})`)
    .replace(/\n{3,}/g, '\n\n')
    .trim();
}

export async function buildLlmsFull(locale = 'en'): Promise<string> {
  const c = getCopy(locale).llms;
  const out: string[] = [`# ${c.fullTitle}`, '', `${SITE_URL}. ${c.fullSource}`, '', `## ${c.productSummary}`, '', ...summary(locale).map((s) => `- ${s}`), ''];
  const all = (await getAllPages()).filter((p) => p.locale === locale && p.data.pageId !== 'terms');
  all.sort((a, b) => ORDER.indexOf(a.collection) - ORDER.indexOf(b.collection) || a.data.order - b.data.order);
  for (const p of all) {
    out.push('---', '', `# ${p.data.h1}`, '', `${c.url}: ${abs(p.path)}`, `${c.updated}: ${new Date(p.data.dateModified).toISOString().slice(0, 10)}`, '', p.data.answer, '');
    out.push(`${c.keyFacts}:`, ...p.data.keyFacts.map((f) => `- ${f}`), '');
    out.push(toPlain(p.entry.body ?? '', locale), '');
    const faqs = p.data.faqGroups.length ? p.data.faqGroups.flatMap((g) => g.items) : p.data.faq;
    if (faqs.length) {
      out.push('## FAQ', '');
      for (const f of faqs) out.push(`### ${f.q}`, '', f.a, '');
    }
  }
  return out.join('\n');
}
