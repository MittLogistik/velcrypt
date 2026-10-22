// Fast pre-build check of every content file against the schema limits.
// Usage: node scripts/check-content.mjs
import fs from 'node:fs';
import path from 'node:path';
import { parse } from 'yaml';

const root = path.resolve(import.meta.dirname, '../src/content');
const LIM = { title: [4, 60], description: [50, 155], h1: [2, 999], navTitle: [2, 48], answer: [20, 420], summary: [0, 160] };
let bad = 0;
const seen = {};
for (const col of fs.readdirSync(root)) {
  for (const loc of fs.readdirSync(path.join(root, col))) {
    for (const f of fs.readdirSync(path.join(root, col, loc))) {
      const p = path.join(root, col, loc, f);
      const src = fs.readFileSync(p, 'utf8');
      const m = src.match(/^---\r?\n([\s\S]*?)\r?\n---/);
      let d;
      try { d = parse(m[1]); } catch (e) { console.log('YAML', p, e.message.split('\n')[0]); bad++; continue; }
      for (const [k, [lo, hi]] of Object.entries(LIM)) {
        if (d[k] === undefined) { if (k !== 'summary' || col !== 'pages') { if (k !== 'summary') { console.log('MISSING', k, p); bad++; } } continue; }
        const n = [...String(d[k])].length;
        if (n < lo || n > hi) { console.log(`LEN ${k}=${n} (${lo}-${hi})`, p); bad++; }
      }
      if (!Array.isArray(d.keyFacts) || d.keyFacts.length < 3 || d.keyFacts.length > 7) { console.log('KEYFACTS', p); bad++; }
      for (const q of [...(d.faq || []), ...(d.faqGroups || []).flatMap((g) => g.items)]) if (!q.q || !q.a || q.q.length < 3 || q.a.length < 5) { console.log('FAQ', p); bad++; }
      for (const k of ['title', 'description']) {
        const key = `${loc}|${k}|${d[k]}`;
        if (seen[key]) { console.log('DUP', k, p, '==', seen[key]); bad++; } else seen[key] = p;
      }
    }
  }
}
console.log(bad ? `${bad} problem(s)` : 'content OK');
process.exit(bad ? 1 : 0);
