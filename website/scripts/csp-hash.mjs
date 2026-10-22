// Prints the CSP hash of the inline theme script and updates public/_headers.
// Usage: npm run csp-hash
import fs from 'node:fs';
import crypto from 'node:crypto';
import path from 'node:path';

const root = path.resolve(import.meta.dirname, '..');
const src = fs.readFileSync(path.join(root, 'src/lib/theme.ts'), 'utf8');
const script = src.match(/THEME_INIT =\s*\n?\s*"([^"]+)"/)[1];
const hash = `'sha256-${crypto.createHash('sha256').update(script).digest('base64')}'`;
const hp = path.join(root, 'public/_headers');
const headers = fs.readFileSync(hp, 'utf8').replace(/script-src 'self'( 'sha256-[^']+')?/, `script-src 'self' ${hash}`);
fs.writeFileSync(hp, headers);
console.log(hash);
