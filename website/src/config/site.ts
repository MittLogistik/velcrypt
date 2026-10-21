/**
 * Global site configuration. Flip APP_LIVE and set APP_STORE_URL when the
 * app is approved; every CTA on the site reads from here.
 */
export const SITE_URL = 'https://velcrypt.app';
export const SITE_NAME = 'Velcrypt';
export const TAGLINE = 'Well Encrypted. Truly Private.';

/** Set to true once the App Store listing is public. Controls all CTA wording. */
export const APP_LIVE = false;

/** Single source of truth for the App Store listing. */
export const APP_STORE_URL = 'https://apps.apple.com/app/velcrypt/id0000000000';

/** Contact addresses (placeholders until the mailboxes exist). */
export const SUPPORT_EMAIL = 'support@velcrypt.app';
export const PRESS_EMAIL = 'press@velcrypt.app';
export const PRIVACY_EMAIL = 'privacy@velcrypt.app';

/** Minimum OS requirement, used in copy and JSON-LD. */
export const MIN_IOS = '17';

/** Default date used by hand-built pages for dateModified / lastmod. */
export const SITE_UPDATED = '2026-10-21';

/**
 * Builds an App Store link with an App Store Connect campaign token so each
 * placement can be measured (e.g. appStoreLink('home_hero') -> ct=web_home_hero).
 * Apple allows campaign tokens up to 40 characters.
 */
export function appStoreLink(ct: string): string {
  const token = ('web_' + ct).toLowerCase().replace(/[^a-z0-9_]/g, '_').slice(0, 40);
  const url = new URL(APP_STORE_URL);
  url.searchParams.set('ct', token);
  url.searchParams.set('mt', '8');
  return url.toString();
}

export function absoluteUrl(path: string): string {
  return new URL(path, SITE_URL).toString();
}
