#!/usr/bin/env node
// Recounts App Store metadata in ios/docs/app-store/*.md and checks App Store Connect limits.
//
//   node ios/scripts/count-metadata.mjs [file.md ...]
//
// For each field ("## Name", "## Subtitle", ...) the first fenced block below the heading is counted
// in Unicode characters, as App Store Connect counts them. The heading becomes "## Field (n/limit)"
// and the summary table row is rewritten. Exits with code 1 if any field is over its limit.
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const LIMITS = {
  'Name': 30,
  'Subtitle': 30,
  'Keywords': 100,
  'Promotional text': 170,
  'Description': 4000,
  "What's New": 4000,
};

const here = path.dirname(fileURLToPath(import.meta.url));
const dir = path.resolve(here, '../docs/app-store');
const files = process.argv.slice(2).length
  ? process.argv.slice(2)
  : fs.readdirSync(dir).filter((f) => f.endsWith('.md') && f !== 'SUBMISSION.md').map((f) => path.join(dir, f));

let failed = false;
for (const file of files) {
  let text = fs.readFileSync(file, 'utf8').replace(/\r\n/g, '\n');
  const counts = {};
  for (const [field, limit] of Object.entries(LIMITS)) {
    const escaped = field.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    const re = new RegExp(`^## ${escaped}(?: \\(.*\\))?\\n+\`\`\`\\n([\\s\\S]*?)\\n\`\`\``, 'm');
    const m = text.match(re);
    if (!m) { console.error(`${path.basename(file)}: missing field "${field}"`); failed = true; continue; }
    const n = [...m[1]].length;
    counts[field] = n;
    if (n > limit) { console.error(`${path.basename(file)}: ${field} is ${n}/${limit}`); failed = true; }
    text = text.replace(new RegExp(`^## ${escaped}(?: \\(.*\\))?$`, 'm'), `## ${field} (${n.toLocaleString('en-US')}/${limit.toLocaleString('en-US')})`);
    text = text.replace(
      new RegExp(`^\\| ${escaped} \\| [^|]+ \\| [^|]+ \\|$`, 'm'),
      `| ${field} | ${limit.toLocaleString('en-US')} | ${n.toLocaleString('en-US')} |`,
    );
  }
  fs.writeFileSync(file, text);
  console.log(`${path.basename(file)}: ${Object.entries(counts).map(([k, v]) => `${k} ${v}`).join(', ')}`);
}
process.exit(failed ? 1 : 0);
