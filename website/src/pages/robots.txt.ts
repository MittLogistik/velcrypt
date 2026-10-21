import type { APIRoute } from 'astro';
import { SITE_URL } from '../config/site';

// Search engines and AI assistants are explicitly welcome.
const AGENTS = [
  'Googlebot', 'Bingbot', 'Applebot', 'DuckDuckBot', 'YandexBot',
  'GPTBot', 'OAI-SearchBot', 'ChatGPT-User',
  'ClaudeBot', 'Claude-SearchBot', 'Claude-User', 'anthropic-ai',
  'PerplexityBot', 'Perplexity-User',
  'Google-Extended', 'Applebot-Extended',
  'CCBot', 'Amazonbot', 'meta-externalagent', 'DuckAssistBot', 'MistralAI-User', 'cohere-ai',
];

export const GET: APIRoute = () => {
  const groups = AGENTS.map((a) => `User-agent: ${a}\nAllow: /\n`).join('\n');
  const body = `# Velcrypt welcomes search engines and AI assistants.\n# Curated index for LLMs: ${SITE_URL}/llms.txt\n\nUser-agent: *\nAllow: /\n\n${groups}\nSitemap: ${SITE_URL}/sitemap.xml\n`;
  return new Response(body, { headers: { 'Content-Type': 'text/plain; charset=utf-8' } });
};
