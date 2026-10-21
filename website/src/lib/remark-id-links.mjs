// @ts-check
/**
 * Remark plugin: rewrites `[text](id:page-id)` and `[text](id:page-id#anchor)`
 * to the localized URL of that page. The locale is taken from the file path
 * (src/content/<collection>/<locale>/<slug>.md). Unknown ids fail the build,
 * which keeps internal links from ever breaking silently.
 */
import { visit } from 'unist-util-visit';
import path from 'node:path';
import { pathFor } from '../i18n/registry.mjs';

export default function remarkIdLinks() {
  /** @param {any} tree @param {any} file */
  return (tree, file) => {
    const fp = String(file.path || file.history?.[0] || '');
    const parts = fp.split(path.sep).join('/').split('/');
    const ci = parts.lastIndexOf('content');
    const locale = ci >= 0 && parts.length > ci + 2 ? parts[ci + 2] : 'en';
    visit(tree, ['link', 'definition'], (node) => {
      const url = String(node.url || '');
      if (!url.startsWith('id:')) return;
      const [id, hash] = url.slice(3).split('#');
      try {
        node.url = pathFor(id, locale) + (hash ? '#' + hash : '');
      } catch (e) {
        throw new Error(`Broken internal link "${url}" in ${fp}: ${/** @type {Error} */ (e).message}`);
      }
    });
  };
}
