// Prints the per-locale keyword → URL map (Markdown) from content frontmatter.
// Usage: node scripts/keyword-map.mjs > keyword-map.md
import fs from 'node:fs';
import path from 'node:path';
import { parse } from 'yaml';
import { entryPath } from '../src/i18n/registry.mjs';
import { ACTIVE_LOCALES } from '../src/i18n/locales.mjs';

const root = path.resolve(import.meta.dirname, '../src/content');
const COLS = ['pages', 'features', 'guides', 'useCases', 'compare', 'tools'];
const out = [];
for (const l of ACTIVE_LOCALES) {
  out.push(`### ${l.name} (\`${l.code}\`, hreflang \`${l.hreflang}\`)`, '', '| pageId | Target keyword | URL |', '|---|---|---|');
  for (const c of COLS) {
    const dir = path.join(root, c, l.code);
    if (!fs.existsSync(dir)) continue;
    const rows = fs.readdirSync(dir).map((f) => {
      const d = parse(fs.readFileSync(path.join(dir, f), 'utf8').match(/^---\r?\n([\s\S]*?)\r?\n---/)[1]);
      return { o: d.order ?? 100, line: `| ${d.pageId} | ${String(d.primaryKeyword).replace(/\|/g, '/')} | ${entryPath(c, l.code, f.replace(/\.md$/, ''))} |` };
    });
    rows.sort((a, b) => a.o - b.o).forEach((r) => out.push(r.line));
  }
  out.push('');
}
console.log(out.join('\n'));
