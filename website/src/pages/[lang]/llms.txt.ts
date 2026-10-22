import type { APIRoute } from 'astro';
import { buildLlmsTxt } from '../../lib/llms';
import { ACTIVE_LOCALES, DEFAULT_LOCALE } from '../../i18n/locales.mjs';

export function getStaticPaths() {
  return ACTIVE_LOCALES.filter((l) => l.code !== DEFAULT_LOCALE).map((l) => ({ params: { lang: l.prefix.slice(1) }, props: { locale: l.code } }));
}

export const GET: APIRoute = async ({ props }) =>
  new Response(await buildLlmsTxt(props.locale as string), { headers: { 'Content-Type': 'text/plain; charset=utf-8' } });
