// Post-build audit of dist/ for every locale.
// Checks: one <h1>, <title> ≤ 60, unique titles/descriptions per locale,
// internal links + #anchors resolve, JSON-LD parses, hreflang is reciprocal
// (incl. x-default and self-reference), canonical is self, sitemap matches.
// Usage: npm run build && node scripts/check-dist.mjs
import fs from 'node:fs';
import path from 'node:path';

const dist = path.resolve(import.meta.dirname, '../dist');
const SITE = 'https://velcrypt.app';
const files = [];
(function walk(d) {
  for (const f of fs.readdirSync(d)) {
    const p = path.join(d, f);
    if (fs.statSync(p).isDirectory()) walk(p);
    else if (f.endsWith('.html')) files.push(p);
  }
})(dist);

const urlOf = (file) => '/' + path.relative(dist, file).split(path.sep).join('/').replace(/index\.html$/, '');
const pages = new Map();
for (const f of files) {
  const html = fs.readFileSync(f, 'utf8');
  pages.set(urlOf(f), { file: f, html });
}

const problems = [];
const bad = (msg) => problems.push(msg);
const byLocale = {};
const alt = new Map();
const ids = new Map();

for (const [url, { html }] of pages) {
  ids.set(url, new Set([...html.matchAll(/\sid="([^"]+)"/g)].map((m) => m[1])));
}

for (const [url, { html }] of pages) {
  const is404 = /404(\.html|\/)?$/.test(url);
  const lang = (html.match(/<html lang="([^"]+)"/) || [])[1];
  if (!lang) bad(`no lang: ${url}`);
  const h1 = (html.match(/<h1[\s>]/g) || []).length;
  if (h1 !== 1) bad(`h1=${h1}: ${url}`);
  const title = (html.match(/<title>([\s\S]*?)<\/title>/) || [])[1] ?? '';
  const t = title.replace(/&amp;/g, '&').replace(/&#39;/g, "'").replace(/&quot;/g, '"');
  if ([...t].length > 60) bad(`title ${[...t].length}>60: ${url} (${t})`);
  const desc = (html.match(/<meta name="description" content="([^"]*)"/) || [])[1] ?? '';
  if (!desc) bad(`no description: ${url}`);
  if (!is404) {
    byLocale[lang] ??= { titles: new Map(), descs: new Map() };
    const L = byLocale[lang];
    if (L.titles.has(t)) bad(`dup title [${lang}] ${url} == ${L.titles.get(t)}`); else L.titles.set(t, url);
    if (L.descs.has(desc)) bad(`dup description [${lang}] ${url} == ${L.descs.get(desc)}`); else L.descs.set(desc, url);
    const canon = (html.match(/<link rel="canonical" href="([^"]+)"/) || [])[1];
    if (canon !== SITE + url) bad(`canonical mismatch: ${url} -> ${canon}`);
    const alts = [...html.matchAll(/<link rel="alternate" hreflang="([^"]+)" href="([^"]+)"/g)].map((m) => ({ hl: m[1], href: m[2].replace(SITE, '') }));
    alt.set(url, alts);
    if (!alts.some((a) => a.href === url && a.hl === lang)) bad(`hreflang missing self (${lang}): ${url}`);
    if (!alts.some((a) => a.hl === 'x-default')) bad(`no x-default: ${url}`);
  }
  for (const m of html.matchAll(/<script type="application\/ld\+json">([\s\S]*?)<\/script>/g)) {
    try { JSON.parse(m[1]); } catch { bad(`bad JSON-LD: ${url}`); }
  }
  for (const m of html.matchAll(/href="(\/[^"]*)"/g)) {
    const [p, hash] = m[1].split('#');
    if (/\.(txt|xml|png|svg|ico|webmanifest|webp|jpg|css|js)$/.test(p)) {
      if (!fs.existsSync(path.join(dist, p))) bad(`missing asset ${p} in ${url}`);
      continue;
    }
    if (!pages.has(p)) { bad(`broken link ${m[1]} in ${url}`); continue; }
    if (hash && !ids.get(p).has(hash)) bad(`broken anchor ${m[1]} in ${url}`);
  }
}

// Reciprocal hreflang: every alternate must list this page back with the same cluster.
for (const [url, alts] of alt) {
  for (const a of alts) {
    if (a.hl === 'x-default') continue;
    const back = alt.get(a.href);
    if (!back) { bad(`hreflang target not a page: ${url} -> ${a.href}`); continue; }
    if (!back.some((b) => b.href === url)) bad(`hreflang not reciprocal: ${url} <-> ${a.href}`);
  }
}

// Sitemap ↔ pages.
const sm = fs.readFileSync(path.join(dist, 'sitemap.xml'), 'utf8');
const locs = [...sm.matchAll(/<loc>([^<]+)<\/loc>/g)].map((m) => m[1].replace(SITE, ''));
for (const l of locs) if (!pages.has(l)) bad(`sitemap URL without page: ${l}`);
const indexable = [...alt.keys()];
for (const u of indexable) if (!locs.includes(u)) bad(`page missing from sitemap: ${u}`);

const counts = {};
for (const u of indexable) { const lang = pages.get(u).html.match(/<html lang="([^"]+)"/)[1]; counts[lang] = (counts[lang] ?? 0) + 1; }
console.log('Indexable pages per locale:', counts, 'total', indexable.length, '| html files', files.length, '| sitemap', locs.length);
if (problems.length) { console.log(problems.slice(0, 80).join('\n')); console.log(`${problems.length} problem(s)`); process.exit(1); }
console.log('dist OK');
