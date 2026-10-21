// @ts-check
import { defineConfig } from 'astro/config';
import remarkIdLinks from './src/lib/remark-id-links.mjs';

export default defineConfig({
  site: 'https://velcrypt.app',
  output: 'static',
  trailingSlash: 'always',
  build: {
    format: 'directory',
    inlineStylesheets: 'always',
  },
  compressHTML: true,
  prefetch: false,
  devToolbar: { enabled: false },
  // Keep scripts as external files so the CSP can stay script-src 'self'.
  vite: { build: { assetsInlineLimit: 0 } },
  markdown: {
    remarkPlugins: [remarkIdLinks],
    smartypants: true,
    gfm: true,
  },
});
