import { SITE_URL, SITE_NAME, TAGLINE, APP_LIVE, APP_STORE_URL, MIN_IOS, SUPPORT_EMAIL, absoluteUrl } from '../config/site';

const ORG_ID = `${SITE_URL}/#organization`;
const SITE_ID = `${SITE_URL}/#website`;
const APP_ID = `${SITE_URL}/#app`;

export function organization() {
  return {
    '@type': 'Organization',
    '@id': ORG_ID,
    name: SITE_NAME,
    url: SITE_URL + '/',
    slogan: TAGLINE,
    logo: { '@type': 'ImageObject', url: absoluteUrl('/press/velcrypt-app-icon-1024.png'), width: 1024, height: 1024 },
    email: SUPPORT_EMAIL,
    contactPoint: { '@type': 'ContactPoint', contactType: 'customer support', email: SUPPORT_EMAIL, availableLanguage: ['en'] },
    ...(APP_LIVE ? { sameAs: [APP_STORE_URL] } : {}),
  };
}

export function website(locale = 'en') {
  return {
    '@type': 'WebSite',
    '@id': SITE_ID,
    name: SITE_NAME,
    url: SITE_URL + '/',
    description: 'Private, encrypted photo, video and document vault for iPhone.',
    inLanguage: locale,
    publisher: { '@id': ORG_ID },
  };
}

/** MobileApplication. Deliberately no aggregateRating/review (no ratings yet). */
export function mobileApp() {
  return {
    '@type': 'MobileApplication',
    '@id': APP_ID,
    name: SITE_NAME,
    alternateName: 'Velcrypt Photo Vault',
    description:
      'Velcrypt stores private photos, videos and documents in encrypted vaults on your iPhone. Each pattern drawn on a 5×5 grid opens its own vault. No account, no cloud.',
    operatingSystem: `iOS ${MIN_IOS}.0 or later`,
    applicationCategory: 'UtilitiesApplication',
    applicationSubCategory: 'Photo vault',
    device: 'iPhone',
    image: absoluteUrl('/press/velcrypt-app-icon-1024.png'),
    url: SITE_URL + '/',
    ...(APP_LIVE ? { downloadUrl: APP_STORE_URL, installUrl: APP_STORE_URL } : {}),
    publisher: { '@id': ORG_ID },
    featureList: [
      'AES-256-GCM encryption on the device',
      'Pattern unlock on a 5×5 grid',
      'Every pattern opens its own vault',
      'No account, no servers, no uploads',
      'Auto-lock and app-switcher privacy',
      'Albums, photo and video viewer, document import',
    ],
    offers: {
      '@type': 'Offer',
      price: '0',
      priceCurrency: 'USD',
      description: 'Free version with an optional Premium upgrade.',
      availability: APP_LIVE ? 'https://schema.org/InStock' : 'https://schema.org/PreOrder',
    },
  };
}

export function breadcrumbs(items: { name: string; path: string }[]) {
  return {
    '@type': 'BreadcrumbList',
    itemListElement: items.map((it, i) => ({ '@type': 'ListItem', position: i + 1, name: it.name, item: absoluteUrl(it.path) })),
  };
}

export function faqPage(items: { q: string; a: string }[], path: string) {
  return {
    '@type': 'FAQPage',
    '@id': absoluteUrl(path) + '#faq',
    mainEntity: items.map((f) => ({ '@type': 'Question', name: f.q, acceptedAnswer: { '@type': 'Answer', text: f.a } })),
  };
}

export function howTo(h: { name: string; totalTime?: string; steps: { name: string; text: string }[] }, path: string, image?: string) {
  return {
    '@type': 'HowTo',
    name: h.name,
    ...(h.totalTime ? { totalTime: h.totalTime } : {}),
    ...(image ? { image: absoluteUrl(image) } : {}),
    step: h.steps.map((s, i) => ({ '@type': 'HowToStep', position: i + 1, name: s.name, text: s.text })),
  };
}

export function webPage(opts: {
  type: string;
  path: string;
  title: string;
  description: string;
  locale: string;
  datePublished?: string;
  dateModified?: string;
  image?: string;
  articleSection?: string;
  keywords?: string[];
}) {
  const url = absoluteUrl(opts.path);
  const isArticle = opts.type === 'Article';
  return {
    '@type': isArticle ? 'Article' : opts.type,
    '@id': url + '#main',
    url,
    ...(isArticle ? { headline: opts.title, mainEntityOfPage: url } : { name: opts.title }),
    description: opts.description,
    inLanguage: opts.locale,
    isPartOf: { '@id': SITE_ID },
    ...(opts.image ? { image: absoluteUrl(opts.image) } : {}),
    ...(opts.datePublished ? { datePublished: opts.datePublished } : {}),
    ...(opts.dateModified ? { dateModified: opts.dateModified } : {}),
    ...(isArticle ? { author: { '@id': ORG_ID }, publisher: { '@id': ORG_ID } } : { publisher: { '@id': ORG_ID } }),
    ...(opts.articleSection ? { articleSection: opts.articleSection } : {}),
    ...(opts.keywords?.length ? { keywords: opts.keywords.join(', ') } : {}),
    about: { '@id': APP_ID },
  };
}

export function itemList(items: { name: string; path: string }[]) {
  return {
    '@type': 'ItemList',
    itemListElement: items.map((it, i) => ({ '@type': 'ListItem', position: i + 1, name: it.name, url: absoluteUrl(it.path) })),
  };
}

export function graph(...nodes: object[]) {
  return { '@context': 'https://schema.org', '@graph': nodes };
}
