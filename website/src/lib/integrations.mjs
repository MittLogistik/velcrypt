// @ts-check
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

/**
 * Cloudflare Pages serves the nearest `404.html` up the directory tree, so each
 * locale gets /<locale>/404.html. Astro renders them as /<locale>/404/index.html;
 * this moves them into place after the build.
 * @returns {import('astro').AstroIntegration}
 */
export function localized404() {
  return {
    name: 'velcrypt-localized-404',
    hooks: {
      'astro:build:done': ({ dir }) => {
        const root = fileURLToPath(dir);
        for (const entry of fs.readdirSync(root, { withFileTypes: true })) {
          if (!entry.isDirectory()) continue;
          const src = path.join(root, entry.name, '404', 'index.html');
          if (!fs.existsSync(src)) continue;
          fs.copyFileSync(src, path.join(root, entry.name, '404.html'));
          fs.rmSync(path.join(root, entry.name, '404'), { recursive: true, force: true });
        }
      },
    },
  };
}
