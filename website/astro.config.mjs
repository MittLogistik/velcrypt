// @ts-check
import { defineConfig } from 'astro/config';
import { unified } from '@astrojs/markdown-remark';
import remarkIdLinks from './src/lib/remark-id-links.mjs';
import { localized404 } from './src/lib/integrations.mjs';

export default defineConfig({
  site: 'https://velcrypt.app',
  output: 'static',
  integrations: [localized404()],
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
    // remark/unified processor (needed for the id: link plugin). SmartyPants stays
    // off so localized quotes („…“, « … », 「…」) are kept exactly as written.
    processor: unified({ remarkPlugins: [remarkIdLinks], gfm: true, smartypants: false }),
  },
});
