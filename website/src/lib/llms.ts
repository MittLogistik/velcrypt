import { getAllPages, getPages, GUIDE_CATEGORIES, type Page } from './content';
import { STATIC_ROUTES } from '../i18n/static-routes.mjs';
import { pathFor } from '../i18n/registry.mjs';
import { SITE_URL, TAGLINE, APP_LIVE, APP_STORE_URL, MIN_IOS } from '../config/site';

const abs = (p: string) => new URL(p, SITE_URL).toString();

export const PRODUCT_SUMMARY = [
  `Velcrypt is a native iPhone app (iOS ${MIN_IOS} or later) that stores private photos, videos and documents in encrypted vaults on the device.`,
  'Unlock: draw a pattern on a 5×5 grid of dots — one continuous line through at least 6 dots with at least one change of direction (8–12 dots recommended).',
  'Every pattern is its own vault. There is no list of vaults; an unknown pattern opens an empty vault with no error, which gives plausible deniability and allows a decoy vault.',
  'Encryption: AES-256-GCM (Apple CryptoKit). Keys derived from the pattern with PBKDF2-HMAC-SHA512 (at least 600,000 iterations) and a per-device salt in the iOS Keychain. Each vault has a random 256-bit master key; per-file keys via HKDF. iOS Data Protection (complete) on files.',
  'No Face ID or Touch ID by design (biometrics can be compelled).',
  '100% on-device: no account, no servers, no uploads, no analytics on vault content. Vaults are excluded from iCloud and computer backups in the first version, so a lost phone or forgotten pattern means the vault cannot be recovered. An encrypted backup option is planned.',
  'Auto-lock when the app goes to the background (configurable delay); content hidden in the app switcher. Albums, photo/video viewer, document import from Files, multi-select, move between albums, secure export.',
  'Pricing: free version plus an optional Premium upgrade; prices not yet announced. Planned Premium: unlimited items, more vaults, duress pattern (coming soon), encrypted backup.',
  APP_LIVE ? `Available on the App Store: ${APP_STORE_URL}` : 'Status: coming soon to the App Store.',
];

const SECTIONS: { title: string; collection: Page['collection'] }[] = [
  { title: 'Core pages', collection: 'pages' },
  { title: 'Features', collection: 'features' },
  { title: 'Guides', collection: 'guides' },
  { title: 'Use cases', collection: 'useCases' },
  { title: 'Comparisons', collection: 'compare' },
  { title: 'Free tools', collection: 'tools' },
];

export async function buildLlmsTxt(): Promise<string> {
  const lines: string[] = [];
  lines.push('# Velcrypt', '', `> ${TAGLINE} Velcrypt is a private, encrypted photo, video and document vault for iPhone where every pattern drawn on a 5×5 grid opens its own vault. No account, no cloud.`, '');
  lines.push(...PRODUCT_SUMMARY.map((s) => `- ${s}`), '');
  lines.push(`Full text of the key pages: ${abs('/llms-full.txt')}`, '');
  lines.push('## Overview pages', '');
  for (const r of STATIC_ROUTES) lines.push(`- [${r.title}](${abs(pathFor(r.id, 'en'))}): ${r.description}`);
  lines.push('');
  for (const s of SECTIONS) {
    const pages = await getPages(s.collection, 'en');
    if (!pages.length) continue;
    lines.push(`## ${s.title}`, '');
    if (s.collection === 'guides') {
      for (const cat of Object.keys(GUIDE_CATEGORIES)) {
        const inCat = pages.filter((p) => p.data.category === cat);
        if (!inCat.length) continue;
        lines.push(`### ${GUIDE_CATEGORIES[cat]}`, '');
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

/** Markdown body -> readable plain text with absolute links. */
function toPlain(md: string): string {
  return md
    .replace(/<!--[\s\S]*?-->/g, '')
    .replace(/\]\(id:([a-z0-9-]+)(#[^)]+)?\)/g, (_m, id: string, hash?: string) => `](${abs(pathFor(id, 'en'))}${hash ?? ''})`)
    .replace(/\]\((\/[^)]*)\)/g, (_m, p: string) => `](${abs(p)})`)
    .replace(/\n{3,}/g, '\n\n')
    .trim();
}

export async function buildLlmsFull(): Promise<string> {
  const out: string[] = [`# Velcrypt — full text of key pages`, '', `Source: ${SITE_URL}. Generated at build time from the site content.`, '', '## Product summary', '', ...PRODUCT_SUMMARY.map((s) => `- ${s}`), ''];
  const all = (await getAllPages()).filter((p) => p.locale === 'en' && !['terms'].includes(p.data.pageId));
  const order: Page['collection'][] = ['pages', 'features', 'guides', 'useCases', 'compare', 'tools'];
  all.sort((a, b) => order.indexOf(a.collection) - order.indexOf(b.collection) || a.data.order - b.data.order);
  for (const p of all) {
    out.push('---', '', `# ${p.data.h1}`, '', `URL: ${abs(p.path)}`, `Updated: ${new Date(p.data.dateModified).toISOString().slice(0, 10)}`, '', p.data.answer, '');
    out.push('Key facts:', ...p.data.keyFacts.map((f) => `- ${f}`), '');
    out.push(toPlain(p.entry.body ?? ''), '');
    const faqs = p.data.faqGroups.length ? p.data.faqGroups.flatMap((g) => g.items) : p.data.faq;
    if (faqs.length) {
      out.push('## FAQ', '');
      for (const f of faqs) out.push(`### ${f.q}`, '', f.a, '');
    }
  }
  return out.join('\n');
}
