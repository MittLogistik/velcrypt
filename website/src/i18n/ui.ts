/**
 * UI string lookup. Strings live in src/i18n/copy/<locale>.ts (same shape as
 * en.ts); missing keys fall back to English.
 */
import en from './copy/en';
import { getCopy } from './copy/index';

export type UIKey = keyof typeof en.ui;

export function t(locale: string, key: UIKey): string {
  return getCopy(locale).ui[key] ?? en.ui[key];
}
