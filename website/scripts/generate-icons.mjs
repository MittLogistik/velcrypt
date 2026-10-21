// Generates favicons, touch icons, the header/footer mark and press assets into public/.
// Run: npm run icons   (outputs are committed; not part of `npm run build`)
// Sources live in ../brand/ (velcrypt-mark.png, velcrypt-logo.png) and ../ios (AppIcon-1024.png).
import sharp from 'sharp';
import fs from 'node:fs';
import path from 'node:path';

const root = path.resolve(import.meta.dirname, '..');
const pub = path.join(root, 'public');
const brand = path.resolve(root, '../brand');
const mark = path.join(brand, 'velcrypt-mark.png');
const appIcon = path.resolve(root, '../ios/Velcrypt/Resources/Assets.xcassets/AppIcon.appiconset/AppIcon-1024.png');
fs.mkdirSync(path.join(pub, 'press'), { recursive: true });
fs.mkdirSync(path.join(pub, 'brand'), { recursive: true });

// Shield mark for the header/footer (2× and 3× of the largest rendered size, ~36 px wide).
for (const w of [80, 120]) {
  await sharp(mark).resize({ width: w }).webp({ quality: 90 }).toFile(path.join(pub, 'brand', `velcrypt-mark-${w}.webp`));
}
await sharp(mark).resize({ width: 120 }).png({ compressionLevel: 9 }).toFile(path.join(pub, 'brand', 'velcrypt-mark-120.png'));

// Press kit
fs.copyFileSync(appIcon, path.join(pub, 'press', 'velcrypt-app-icon-1024.png'));
fs.copyFileSync(path.join(brand, 'velcrypt-logo.png'), path.join(pub, 'press', 'velcrypt-logo.png'));
fs.copyFileSync(mark, path.join(pub, 'press', 'velcrypt-mark.png'));

// Touch / PWA icons come from the opaque app icon.
for (const [name, s] of [['apple-touch-icon.png', 180], ['icon-192.png', 192], ['icon-512.png', 512]]) {
  await sharp(appIcon).resize(s, s).png({ compressionLevel: 9 }).toFile(path.join(pub, name));
}

// Favicons: transparent mark, centred in a square.
const square = async (s) =>
  sharp(mark)
    .resize(s, s, { fit: 'contain', background: { r: 0, g: 0, b: 0, alpha: 0 } })
    .png()
    .toBuffer();
fs.writeFileSync(path.join(pub, 'favicon-96.png'), await square(96));

// favicon.ico (single 32px PNG inside an ICO container)
const png32 = await square(32);
const header = Buffer.alloc(22);
header.writeUInt16LE(0, 0); header.writeUInt16LE(1, 2); header.writeUInt16LE(1, 4);
header.writeUInt8(32, 6); header.writeUInt8(32, 7); header.writeUInt8(0, 8); header.writeUInt8(0, 9);
header.writeUInt16LE(1, 10); header.writeUInt16LE(32, 12); header.writeUInt32LE(png32.length, 14); header.writeUInt32LE(22, 18);
fs.writeFileSync(path.join(pub, 'favicon.ico'), Buffer.concat([header, png32]));

// The old vector favicon no longer matches the brand.
fs.rmSync(path.join(pub, 'favicon.svg'), { force: true });
fs.rmSync(path.join(pub, 'press', 'velcrypt-logo.svg'), { force: true });
console.log('Icons written from brand/ and AppIcon-1024.png.');
