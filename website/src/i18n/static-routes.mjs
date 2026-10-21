// @ts-check
/**
 * Hand-built (non-collection) pages, each with a stable id and per-locale paths.
 * When you add a translated version under src/pages/<locale>/..., add its path
 * here; hreflang tags, the sitemap and llms.txt pick it up automatically.
 * @type {{id:string, title:string, description:string, paths:Record<string,string>}[]}
 */
export const STATIC_ROUTES = [
  {
    id: 'home',
    title: 'Velcrypt: private encrypted photo vault for iPhone',
    description: 'Home page. What Velcrypt is, how the pattern unlock works and why every pattern opens its own vault.',
    paths: { en: '/' },
  },
  {
    id: 'features',
    title: 'Velcrypt features',
    description: 'Index of every Velcrypt feature: pattern lock, hidden vaults, encryption, offline design, albums and more.',
    paths: { en: '/features/' },
  },
  {
    id: 'guides',
    title: 'iPhone photo privacy guides',
    description: 'Index of practical guides on hiding, locking and encrypting photos, videos and documents on iPhone.',
    paths: { en: '/guides/' },
  },
  {
    id: 'use-cases',
    title: 'Use cases',
    description: 'Real situations where a private vault helps, from lending your phone to crossing a border.',
    paths: { en: '/use-cases/' },
  },
  {
    id: 'compare',
    title: 'Comparisons',
    description: 'Neutral comparisons between Velcrypt and other ways to keep photos private on iPhone.',
    paths: { en: '/compare/' },
  },
  {
    id: 'tools',
    title: 'Free privacy tools',
    description: 'Free browser-only tools: photo metadata remover and pattern strength checker.',
    paths: { en: '/tools/' },
  },
];
