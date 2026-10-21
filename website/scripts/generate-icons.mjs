// Generates favicons, touch icons and press assets into public/.
// Run: npm run icons   (outputs are committed; not part of `npm run build`)
import sharp from 'sharp';
import fs from 'node:fs';
import path from 'node:path';
import { logoSvg } from './brand.mjs';

const root = path.resolve(import.meta.dirname, '..');
const pub = path.join(root, 'public');
const appIcon = path.resolve(root, '../ios/Velcrypt/Resources/Assets.xcassets/AppIcon.appiconset/AppIcon-1024.png');
fs.mkdirSync(path.join(pub, 'press'), { recursive: true });

// SVG favicon + press logo
fs.writeFileSync(path.join(pub, 'favicon.svg'), logoSvg({ size: 64 }));
fs.writeFileSync(path.join(pub, 'press', 'velcrypt-logo.svg'), logoSvg({ size: 512 }));

const hasIcon = fs.existsSync(appIcon);
const src = hasIcon ? sharp(appIcon) : sharp(Buffer.from(logoSvg({ size: 1024, bg: '#0B1220', pad: 10 })));
const srcBuf = await src.png().toBuffer();
if (hasIcon) fs.copyFileSync(appIcon, path.join(pub, 'press', 'velcrypt-app-icon-1024.png'));
else fs.writeFileSync(path.join(pub, 'press', 'velcrypt-app-icon-1024.png'), srcBuf);

const out = [
  ['apple-touch-icon.png', 180],
  ['icon-192.png', 192],
  ['icon-512.png', 512],
];
for (const [name, s] of out) await sharp(srcBuf).resize(s, s).png({ compressionLevel: 9 }).toFile(path.join(pub, name));

// favicon.ico (single 32px PNG inside an ICO container)
const png32 = await sharp(Buffer.from(logoSvg({ size: 32, bg: '#0B1220', pad: 2 }))).resize(32, 32).png().toBuffer();
const header = Buffer.alloc(22);
header.writeUInt16LE(0, 0); header.writeUInt16LE(1, 2); header.writeUInt16LE(1, 4);
header.writeUInt8(32, 6); header.writeUInt8(32, 7); header.writeUInt8(0, 8); header.writeUInt8(0, 9);
header.writeUInt16LE(1, 10); header.writeUInt16LE(32, 12); header.writeUInt32LE(png32.length, 14); header.writeUInt32LE(22, 18);
fs.writeFileSync(path.join(pub, 'favicon.ico'), Buffer.concat([header, png32]));
console.log(`Icons written (${hasIcon ? 'from AppIcon-1024.png' : 'from SVG logo'}).`);
