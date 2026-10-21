// Generates 1200×630 Open Graph images (SVG -> PNG) into public/og/.
// Run: npm run og   (outputs are committed so the CI build needs no fonts)
import sharp from 'sharp';
import fs from 'node:fs';
import path from 'node:path';
import { SHIELD_PATH, V_PATH } from './brand.mjs';

const outDir = path.resolve(import.meta.dirname, '../public/og');
fs.mkdirSync(outDir, { recursive: true });

const VARIANTS = {
  default: { kicker: 'Encrypted photo vault for iPhone', title: ['Every pattern opens', 'its own private vault.'] },
  features: { kicker: 'Features', title: ['Pattern unlock. Hidden vaults.', 'AES-256 on your iPhone.'] },
  security: { kicker: 'Security model', title: ['How your pattern', 'becomes the key.'] },
  guides: { kicker: 'Guides', title: ['iPhone photo privacy,', 'explained honestly.'] },
  'use-cases': { kicker: 'Use cases', title: ['Private, even when', 'others hold your phone.'] },
  compare: { kicker: 'Comparisons', title: ['Hidden is not', 'the same as encrypted.'] },
  tools: { kicker: 'Free tools', title: ['Strip photo metadata.', 'Test your pattern.'] },
};

// Same 9-dot pattern as the hero animation.
const PATTERN = [[0, 0], [2, 1], [4, 2], [2, 3], [0, 4], [1, 4], [3, 3], [3, 1], [1, 0]];

function svg({ kicker, title }) {
  const gx = 820, gy = 150, gap = 78;
  const P = ([r, c]) => [gx + c * gap, gy + r * gap];
  const dots = [];
  for (let r = 0; r < 5; r++) for (let c = 0; c < 5; c++) {
    const on = PATTERN.some(([a, b]) => a === r && b === c);
    const [x, y] = P([r, c]);
    dots.push(`<circle cx="${x}" cy="${y}" r="${on ? 10 : 7}" fill="${on ? '#75D8FF' : '#2A3A57'}"/>`);
  }
  const d = PATTERN.map((p, i) => `${i ? 'L' : 'M'}${P(p).join(' ')}`).join(' ');
  const font = "-apple-system, 'SF Pro Display', 'Segoe UI', 'Helvetica Neue', Arial, sans-serif";
  return `<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
  <defs>
    <radialGradient id="bg1" cx="78%" cy="40%" r="60%"><stop offset="0" stop-color="#1B3460"/><stop offset="1" stop-color="#0B1220"/></radialGradient>
    <linearGradient id="g" x1="0" y1="0" x2="1" y2="1"><stop offset="0" stop-color="#4F8CFF"/><stop offset="1" stop-color="#75D8FF"/></linearGradient>
    <linearGradient id="o" x1="10" y1="6" x2="54" y2="60" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#4F8CFF"/><stop offset="1" stop-color="#75D8FF"/></linearGradient>
    <linearGradient id="v" x1="22" y1="22" x2="42" y2="44" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#FFFFFF"/><stop offset="1" stop-color="#75D8FF"/></linearGradient>
    <filter id="blur"><feGaussianBlur stdDeviation="9"/></filter>
  </defs>
  <rect width="1200" height="630" fill="url(#bg1)"/>
  <rect x="0.5" y="0.5" width="1199" height="629" fill="none" stroke="#75D8FF" stroke-opacity=".12"/>
  <g transform="translate(72 64) scale(1.1)">
    <path d="${SHIELD_PATH}" fill="#0B1220" stroke="url(#o)" stroke-width="3.4" stroke-linejoin="round"/>
    <path d="${V_PATH}" fill="none" stroke="url(#v)" stroke-width="5.2" stroke-linecap="round" stroke-linejoin="round"/>
  </g>
  <text x="156" y="113" font-family="${font}" font-size="38" font-weight="700" fill="#FFFFFF" letter-spacing="-0.5">Velcrypt</text>
  <text x="76" y="262" font-family="${font}" font-size="24" font-weight="600" fill="#75D8FF" letter-spacing="3">${kicker.toUpperCase()}</text>
  <text x="76" y="338" font-family="${font}" font-size="58" font-weight="700" fill="#FFFFFF" letter-spacing="-1.5">${title[0]}</text>
  <text x="76" y="410" font-family="${font}" font-size="58" font-weight="700" fill="#FFFFFF" letter-spacing="-1.5">${title[1]}</text>
  <text x="76" y="548" font-family="${font}" font-size="26" font-weight="500" fill="#94A3B8">Well Encrypted. Truly Private.  ·  velcrypt.com</text>
  ${dots.join('')}
  <path d="${d}" fill="none" stroke="url(#g)" stroke-width="16" stroke-linecap="round" stroke-linejoin="round" opacity=".6" filter="url(#blur)"/>
  <path d="${d}" fill="none" stroke="url(#g)" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
</svg>`;
}

for (const [name, v] of Object.entries(VARIANTS)) {
  await sharp(Buffer.from(svg(v))).png({ compressionLevel: 9, palette: false }).toFile(path.join(outDir, `${name}.png`));
}
console.log(`OG images written to ${outDir}`);
