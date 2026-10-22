# velcrypt.app

Marketing website for **Velcrypt**, a private, encrypted photo, video and document vault for iPhone.

The site is a static [Astro](https://astro.build) 7 build. It uses plain CSS, ships no client JavaScript except on the two tool pages, and builds the content model with i18n in mind.

## Run and build

```bash
npm install
npm run dev        # http://localhost:4321
npm run build          # content check + clean static build into dist/
npm run preview        # serve dist/ locally
npm run check          # astro check (types + content)
npm run check:content  # fast frontmatter/limits/duplicates check for every locale
npm run check:dist     # post-build audit: one H1, title ≤60, unique titles/descriptions per locale,
                       # internal links + anchors, JSON-LD, reciprocal hreflang, sitemap coverage
npm run csp-hash       # recompute the CSP hash of the inline theme script into public/_headers
```

`npm run build` runs `astro build --force`, so the content cache never keeps stale localized links after a slug changes.

Requires Node 22.12 or later. Node 24 is recommended and is the version used to build.

Run these asset scripts only when the brand changes. Their outputs are committed to `public/`, so the CI build doesn't need them.

```bash
npm run icons      # favicons, apple-touch-icon, press assets (from ../ios AppIcon-1024.png)
npm run og         # Open Graph images (SVG -> PNG) in public/og/
```

## Launch switch: `APP_LIVE` and the App Store URL

Everything lives in `src/config/site.ts`:

- `APP_STORE_URL`: the single App Store link, currently a placeholder (`id0000000000`).
- `APP_LIVE = false`:
  - CTAs read "Coming soon to the App Store" and "Get notified" and link to `/support/#get-notified`, which offers a mailto.
  - The MobileApplication JSON-LD carries no download URL.
  - llms.txt says "coming soon".

To launch, set `APP_STORE_URL` to the real listing, set `APP_LIVE = true` and rebuild. Every CTA then links to the store with a campaign token, for example `?ct=web_home_hero`, `web_header`, `web_footer` or `web_gu_<guide-id>`, via `appStoreLink()`.

## Project structure

```
src/
  config/site.ts              # SITE_URL, APP_LIVE, APP_STORE_URL, emails
  content.config.ts           # content schema (zod): title ≤60, description ≤155, answer, keyFacts, faq, howTo…
  content/<collection>/<locale>/<slug>.md
      pages/     → /security/, /pricing/, /faq/, /about/, /support/, /privacy/, /terms/, /press/
      features/  → /features/<slug>/
      guides/    → /guides/<slug>/
      useCases/  → /use-cases/<slug>/
      compare/   → /compare/<slug>/
      tools/     → /tools/<slug>/   (article text; the widget is in components/tools/)
  i18n/
    locales.mjs               # 30 locales; 11 active (en, es, de, fr, pt-br, it, nl, sv, ja, ko, zh-hans)
    sections.mjs              # translated section folders per locale
    static-routes.mjs         # home + hubs; URLs derived for every active locale
    registry.mjs              # pageId → URL per locale (hreflang, sitemap, links)
    copy/<locale>.ts          # all UI, home, hub, 404 and tool strings per locale (shape of copy/en.ts)
    ui.ts                     # t(locale, key) helper over copy/*.ts
  lib/
    remark-id-links.mjs       # resolves [text](id:page-id) links; unknown ids fail the build
    schema.ts                 # JSON-LD builders (Organization, WebSite, MobileApplication, Article, FAQPage, HowTo, BreadcrumbList…)
    llms.ts                   # builds /llms.txt, /llms-full.txt and /<locale>/llms*.txt from content
    theme.ts                  # inline no-flash theme script (its hash is in public/_headers)
    integrations.mjs          # moves /<locale>/404/index.html to /<locale>/404.html after build
  views/                      # HomeView, HubView, EntryView, NotFoundView (locale-aware)
  pages/
    [...path].astro           # single router: home, hubs, every entry and localized 404s in all locales
    [lang]/llms.txt.ts, [lang]/llms-full.txt.ts
    sitemap.xml.ts, robots.txt.ts, llms.txt.ts, llms-full.txt.ts, 404.astro
public/
  _headers, _redirects, favicons, og/, press/
scripts/                      # icon + OG generators, content/dist checks, keyword map, CSP hash
```

Every page gets these automatically:
- a unique title and description, with build warnings past 60/155 characters (the schema rejects longer ones)
- a canonical URL
- OG and Twitter tags
- hreflang links plus x-default
- one H1
- breadcrumbs (visible and as JSON-LD)
- a direct-answer and key-facts box
- an FAQ section whose questions are headings, plus FAQPage JSON-LD
- related links
- an App Store CTA band

## Add a guide

1. Create `src/content/guides/en/<slug>.md`. The filename must equal `pageId`.
2. Copy the frontmatter from an existing guide. The required fields are `pageId`, `title`, `description`, `h1`, `navTitle`, `answer`, `keyFacts`, `primaryKeyword`, `datePublished`, `dateModified`, `summary` and `category`. Add `faq` (4–6 items) and `related` (pageIds). Use `howTo` only for genuinely step-by-step content.
3. Link to other pages with `[text](id:other-page-id)` or `(id:security#anchor)`. Never hard-code URLs.
4. Run `npm run build`. Schema violations and broken id links fail the build.
5. The guide is added automatically to the guides hub, the footer (if its `order` is in the top 14), the sitemap, `llms.txt` and `llms-full.txt`.

Content rules (honesty):
- No prices, ratings, user counts, "military-grade", "unhackable" or audit claims.
- Mark planned features "coming soon" or "planned".
- Add `<!-- TODO verify -->` next to any competitor claim that isn't certain.

## Add a language

1. In `src/i18n/locales.mjs`, set `active: true` for the locale (for example `pl`).
2. Add its translated section folders in `src/i18n/sections.mjs` (for example `guides: { pl: 'poradniki' }`).
3. Create `src/i18n/copy/pl.ts` with the same shape as `copy/en.ts` (UI, home page, hubs, 404, tool UI, llms summary). It is picked up automatically, and missing keys fall back to English.
4. Add translated Markdown files under `src/content/<collection>/pl/<localized-slug>.md`. Keep the same `pageId` as the English file and use a keyword-localized slug. On the security page, keep `<a id="what-velcrypt-does-not-protect-against"></a>` directly above that H2.
5. Run `npm run build`, then `npm run check:dist`. These are all generated automatically:
   - home and hub URLs
   - hreflang tags with `x-default`, in `<head>` and in `sitemap.xml`
   - the language switcher entries
   - `/pl/llms.txt` and `/pl/404.html`

   `id:` links resolve to the same locale and fall back to English.

## Themes, language switcher, footer

- **Themes:** dark is the default. Light follows `prefers-color-scheme`, and the header toggle saves the choice in `localStorage` (`velcrypt-theme`). All colours are CSS custom properties in `src/styles/global.css`; the light palette is under `[data-theme='light']` and the matching media query.
- **No theme flash:** a tiny inline `<head>` script (`src/lib/theme.ts`) applies the saved theme before the page renders. Its SHA-256 hash is whitelisted in the CSP in `public/_headers`. If you change the script, run `npm run csp-hash`.
- **Language dropdown:** `src/components/LangSwitcher.astro` is a `<details>` menu that works without JavaScript. A small script closes it on Esc or a click outside.
- **Footer starfield:** `src/components/Starfield.astro` is a seeded SVG generated at build time. It animates with CSS only and shows a static fallback when reduced motion is on.

See `SEO-PLAN.md` for the locale priority order and slug guidelines.

## Cloudflare Pages deployment

| Setting | Value |
|---|---|
| Framework preset | Astro |
| Build command | `npm run build` |
| Build output directory | `dist` |
| Root directory | `website` |
| Node version | `24` (set `NODE_VERSION=24` as an environment variable, or rely on `.nvmrc`) |

- `public/_headers` sets the security headers:
  - HSTS
  - a strict CSP (`script-src 'self'`; scripts are never inlined)
  - `X-Frame-Options DENY`
  - nosniff
  - a Referrer-Policy and a Permissions-Policy
  - COOP

  It also sets caching: immutable for `/_astro/*`, revalidate for HTML.
- `public/_redirects` holds legacy paths.
- Redirect `www` to the apex with a Cloudflare Redirect Rule.
- Cloudflare serves `404.html` automatically.
- After the first deploy, submit `https://velcrypt.app/sitemap.xml` in Google Search Console and Bing Webmaster Tools.

## Open TODOs

- Legal review of `/privacy/` and `/terms/`. Both are marked as drafts on the page and with `<!-- TODO: legal review -->`.
- Founder and company details on `/about/` (`<!-- TODO: add founder/company details -->`).
- Verify competitor claims on the `/compare/` pages and in `best-private-photo-vault-apps-iphone` and `calculator-vault-apps-explained`. Search the source for `TODO verify`.
- Localized pages carry `<!-- TODO verify iOS label -->` wherever a translated iOS menu label is uncertain. Check them on a device in each language.
- Replace the `APP_STORE_URL` placeholder and flip `APP_LIVE` at launch. Create the support, press and privacy mailboxes.
