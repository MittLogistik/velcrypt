import en, { type Copy } from './en';
import { pathFor } from '../registry.mjs';

type DeepPartial<T> = { [K in keyof T]?: T[K] extends (infer U)[] ? U[] : T[K] extends object ? DeepPartial<T[K]> : T[K] };
export type LocaleCopy = DeepPartial<Copy>;

// Every file in this folder named <locale>.ts is a locale copy (default export).
const modules = import.meta.glob<{ default: LocaleCopy }>(['./*.ts', '!./index.ts', '!./en.ts'], { eager: true });
const byLocale: Record<string, LocaleCopy> = {};
for (const [file, mod] of Object.entries(modules)) {
  const code = file.replace(/^\.\//, '').replace(/\.ts$/, '');
  if (code === 'index' || code === 'en') continue;
  byLocale[code] = mod.default;
}

function merge<T>(base: T, over: unknown): T {
  if (over === undefined || over === null) return base;
  if (Array.isArray(base)) return (Array.isArray(over) && over.length ? over : base) as T;
  if (typeof base === 'object' && base) {
    const out: Record<string, unknown> = { ...(base as Record<string, unknown>) };
    for (const k of Object.keys(over as object)) out[k] = merge((base as Record<string, unknown>)[k], (over as Record<string, unknown>)[k]);
    return out as T;
  }
  return over as T;
}

const cache = new Map<string, Copy>();
export function getCopy(locale: string): Copy {
  if (!cache.has(locale)) cache.set(locale, locale === 'en' ? en : merge(en, byLocale[locale]));
  return cache.get(locale)!;
}

export function hasCopy(locale: string): boolean {
  return locale === 'en' || locale in byLocale;
}

/** Replace {name} placeholders. */
export function fmt(s: string, vars: Record<string, string | number>): string {
  return s.replace(/\{(\w+)\}/g, (m, k) => (k in vars ? String(vars[k]) : m));
}

const esc = (s: string) => s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');

/** Escape text and turn [label](id:page-id#hash) into localized links. */
export function rich(s: string, locale: string): string {
  let out = '';
  let last = 0;
  const re = /\[([^\]]+)\]\(id:([a-z0-9-]+)(#[a-z0-9-]+)?\)/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(s))) {
    out += esc(s.slice(last, m.index)) + `<a href="${pathFor(m[2], locale)}${m[3] ?? ''}">${esc(m[1])}</a>`;
    last = m.index + m[0].length;
  }
  return out + esc(s.slice(last));
}
