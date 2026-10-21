# velcrypt.com

Marketing website for **Velcrypt**, a private, encrypted photo, video and document vault for iPhone.

The site is a static [Astro](https://astro.build) 7 build. It uses plain CSS, ships no client JavaScript except on the two tool pages, and builds the content model with i18n in mind.

## Run and build

```bash
npm install
npm run dev        # http://localhost:4321
npm run build      # static output in dist/
npm run preview    # serve dist/ locally
npm run check      # astro check (types + content)
```

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
    locales.mjs               # 30 locales, only `en` active
    sections.mjs              # translated section folders per locale
    static-routes.mjs         # hand-built pages (home, hubs) with per-locale paths
    registry.mjs              # pageId → URL per locale (hreflang, sitemap, links)
    ui.ts                     # UI strings per locale
  lib/
    remark-id-links.mjs       # resolves [text](id:page-id) links; unknown ids fail the build
    schema.ts                 # JSON-LD builders (Organization, WebSite, MobileApplication, Article, FAQPage, HowTo, BreadcrumbList…)
    llms.ts                   # builds /llms.txt and /llms-full.txt from content
  pages/
    index.astro, features/, guides/, use-cases/, compare/, tools/   # home + hubs
    [...path].astro           # renders every Markdown entry in every active locale
    sitemap.xml.ts, robots.txt.ts, llms.txt.ts, llms-full.txt.ts, 404.astro
public/
  _headers, _redirects, favicons, og/, press/
scripts/                      # icon + OG image generators (sharp)
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

1. In `src/i18n/locales.mjs`, set `active: true` for the locale, for example `de`.
2. Add translated section folders in `src/i18n/sections.mjs` (for example `guides: { de: 'anleitungen' }`) and UI strings in `src/i18n/ui.ts`.
3. Add translated Markdown files under `src/content/<collection>/de/<localized-slug>.md`. Keep the same `pageId` as the English file and use a keyword-localized slug.
4. For hand-built pages (home, hubs), create `src/pages/de/…` files and add their paths to `src/i18n/static-routes.mjs`.
5. Build. hreflang tags in `<head>` and in `sitemap.xml`, including `x-default`, are generated from shared `pageId`s, and only for pages that exist in each locale. `id:` links resolve to the same locale and fall back to English.

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
- After the first deploy, submit `https://velcrypt.com/sitemap.xml` in Google Search Console and Bing Webmaster Tools.

## Open TODOs

- Legal review of `/privacy/` and `/terms/`. Both are marked as drafts on the page and with `<!-- TODO: legal review -->`.
- Founder and company details on `/about/` (`<!-- TODO: add founder/company details -->`).
- Verify competitor claims on the `/compare/` pages and in `best-private-photo-vault-apps-iphone` and `calculator-vault-apps-explained`. Search the source for `TODO verify`.
- Replace the `APP_STORE_URL` placeholder and flip `APP_LIVE` at launch. Create the support, press and privacy mailboxes.
