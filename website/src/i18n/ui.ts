/**
 * UI strings per locale. Add a new object per locale (same keys) when
 * launching a language; missing keys fall back to English.
 */
const en = {
  skip: 'Skip to content',
  nav_features: 'Features',
  nav_security: 'Security',
  nav_guides: 'Guides',
  nav_pricing: 'Pricing',
  nav_faq: 'FAQ',
  cta_live_small: 'Download on the',
  cta_live_big: 'App Store',
  cta_soon_small: 'Coming soon to the',
  cta_soon_big: 'App Store',
  cta_header_live: 'Get the app',
  cta_header_soon: 'Get notified',
  cta_note_live: 'Free to download. iPhone, iOS 17 or later.',
  cta_note_soon: 'Launching soon for iPhone (iOS 17 or later). Free version, optional Premium.',
  breadcrumb_home: 'Home',
  key_facts: 'Key facts',
  in_short: 'In short',
  faq_heading: 'Frequently asked questions',
  related_heading: 'Related reading',
  updated: 'Updated',
  published: 'Published',
  on_this_page: 'On this page',
  coming_soon: 'Coming soon',
  footer_tagline: 'Private photos, videos and documents, encrypted on your iPhone. No account. No cloud.',
  footer_features: 'Features',
  footer_guides: 'Guides',
  footer_usecases: 'Use cases',
  footer_compare: 'Compare',
  footer_tools: 'Free tools',
  footer_company: 'Velcrypt',
  footer_legal_note: 'Apple, iPhone, iCloud and App Store are trademarks of Apple Inc. Velcrypt is not affiliated with Apple.',
  read_more: 'Read',
  all_guides: 'All guides',
};

export type UIKey = keyof typeof en;

const dict: Record<string, Partial<Record<UIKey, string>>> = { en };

export function t(locale: string, key: UIKey): string {
  return dict[locale]?.[key] ?? en[key];
}
