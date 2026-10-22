import { SITE_URL, SITE_NAME, TAGLINE, APP_LIVE, APP_STORE_URL, MIN_IOS, SUPPORT_EMAIL, absoluteUrl } from '../config/site';
import { getCopy } from '../i18n/copy/index';
import { ACTIVE_LOCALES } from '../i18n/locales.mjs';

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
    contactPoint: { '@type': 'ContactPoint', contactType: 'customer support', email: SUPPORT_EMAIL, availableLanguage: ACTIVE_LOCALES.map((l) => l.hreflang) },
    ...(APP_LIVE ? { sameAs: [APP_STORE_URL] } : {}),
  };
}

export function website(locale = 'en') {
  return {
    '@type': 'WebSite',
    '@id': SITE_ID,
    name: SITE_NAME,
    url: SITE_URL + '/',
    description: getCopy(locale).schema.websiteDescription,
    inLanguage: getLocaleTag(locale),
    publisher: { '@id': ORG_ID },
  };
}

/** MobileApplication. Deliberately no aggregateRating/review (no ratings yet). */
export function mobileApp(locale = 'en') {
  const c = getCopy(locale).schema;
  return {
    '@type': 'MobileApplication',
    '@id': APP_ID,
    name: SITE_NAME,
    alternateName: 'Velcrypt Photo Vault',
    description: c.appDescription,
    inLanguage: getLocaleTag(locale),
    operatingSystem: `iOS ${MIN_IOS}.0 or later`,
    applicationCategory: 'UtilitiesApplication',
    applicationSubCategory: c.appSubCategory,
    device: 'iPhone',
    image: absoluteUrl('/press/velcrypt-app-icon-1024.png'),
    url: SITE_URL + '/',
    ...(APP_LIVE ? { downloadUrl: APP_STORE_URL, installUrl: APP_STORE_URL } : {}),
    publisher: { '@id': ORG_ID },
    featureList: c.featureList,
    offers: {
      '@type': 'Offer',
      price: '0',
      priceCurrency: 'USD',
      description: c.offerDescription,
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
    inLanguage: getLocaleTag(opts.locale),
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

function getLocaleTag(code: string): string {
  return ACTIVE_LOCALES.find((l) => l.code === code)?.hreflang ?? code;
}
