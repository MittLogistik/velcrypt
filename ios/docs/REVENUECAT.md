# RevenueCat setup (from version 1.2)

Velcrypt uses the RevenueCat SDK (`purchases-ios-spm`, pinned in `project.yml`) for purchases, remotely designed paywalls, A/B tests and sales charts. This page lists what has to exist in RevenueCat and App Store Connect for the app code to work. The code is in `Velcrypt/Premium/`.

## How the app uses RevenueCat

| Thing in RevenueCat | Value the app expects |
|---|---|
| Entitlement identifier | `velcrypt_private_photo_vault_pro` |
| Products | `com.velcrypt.app.premium.yearly`, `com.velcrypt.app.premium.weekly`, `com.velcrypt.app.premium.lifetime` |
| API key | Public App Store SDK key (`appl_...`), set as `REVENUECAT_API_KEY` in `project.yml` |

- **Premium is on** when RevenueCat's `velcrypt_private_photo_vault_pro` entitlement is active **or** StoreKit has a verified entitlement for one of the three products. StoreKit works offline and covers purchases made in 1.0 and 1.1. On first launch of 1.2, those earlier purchases are sent to RevenueCat once (`syncPurchases`), without a sign-in prompt.
- **Paywall:** the app always shows the paywall of the **current offering** (`Offerings.current`), never a hard-coded offering, so experiments decide which variant a user sees. If the current offering has no paywall, or RevenueCat doesn't answer within 4 seconds, the app shows its built-in paywall, which sells the same products through RevenueCat.
- **Without a valid key** (`appl_REPLACE_ME`), the app runs on StoreKit alone, exactly like 1.1.
- **Privacy:** the app uses anonymous app user IDs (it never calls `logIn`), turns off automatic device identifier collection and never sends vault data. See the App Privacy section in `app-store/SUBMISSION.md`.

## One-time setup

### 1. Project and app

1. <https://app.revenuecat.com> → **Create new project** → name it `Velcrypt`.
2. **Apps & providers** → **+ New** → **App Store**.
3. App name `Velcrypt`, Bundle ID `com.velcrypt.app`.

### 2. In-App Purchase key (lets RevenueCat validate purchases)

1. App Store Connect → **Users and Access** → **Integrations** → **In-App Purchase** → **Generate In-App Purchase Key** (or "+"). Name it `RevenueCat`.
2. Download the `.p8` file (it can only be downloaded once). Note the **Key ID** and, at the top of the page, the **Issuer ID**.
3. RevenueCat → the Velcrypt App Store app → **In-app purchase key configuration** → upload the `.p8`, enter the Key ID and Issuer ID → **Save**.

### 3. App Store Connect API key (lets RevenueCat import products)

Optional, but it saves typing. RevenueCat → app settings → **App Store Connect API** → upload an App Store Connect API key with the *App Manager* role (Users and Access → Integrations → App Store Connect API). The key used by the GitHub workflows works, but a separate key named `RevenueCat` is easier to revoke.

### 4. App Store Server Notifications (renewals, refunds and cancellations arrive at once)

1. RevenueCat → app settings → **Apple Server to Server notification settings** → copy the URL.
2. App Store Connect → Velcrypt → **App Information** → **App Store Server Notifications**.
3. Paste the URL under **Production Server URL** and **Sandbox Server URL**, version **Version 2** → **Save**.

### 5. Products and the entitlement

1. RevenueCat → **Product catalog** → **Products** → **+ New** → **Import** and pick the three products (or add them by identifier).
2. **Entitlements** → **+ New** → identifier `velcrypt_private_photo_vault_pro` (exactly that), description `Velcrypt Premium`.
3. Open the entitlement → **Attach** → select all three products.

### 6. Default offering

1. **Offerings** → **+ New** → identifier `default`, description `Yearly, weekly, lifetime`.
2. Add packages: **Annual** (`$rc_annual`) → yearly product, **Weekly** (`$rc_weekly`) → weekly, **Lifetime** (`$rc_lifetime`) → lifetime.
3. Make it the **current** offering ("Make current" / the star).

### 7. Paywall

1. Open the `default` offering → **Paywall** → **Create paywall**, pick a template and design it in the editor.
2. App Review (Guideline 3.1.2) needs all of these on every paywall:
   - each plan's price and period, and the trial's length and what it costs afterwards,
   - auto-renewal wording, e.g. "Subscriptions renew automatically unless cancelled at least 24 hours before the end of the current period. Payment is charged to your Apple Account.",
   - a **Restore Purchases** button,
   - links to Terms `https://velcrypt.app/terms/` and Privacy `https://velcrypt.app/privacy/`,
   - a close button. The app asks for one (`displayCloseButton`), but templates in the new editor take theirs from the design, so add one there.
3. Add localizations for the 13 App Store languages (de, en, es, es-MX, fr, it, ja, ko, nl, pt-BR, sv, zh-Hans), or the paywall shows English.
4. **Publish** the paywall. Until a paywall is published, the app shows its built-in paywall.

### 8. Put the API key in the app

1. RevenueCat → **Project settings** → **API keys** → copy the **App Store** public key (starts with `appl_`).
2. Replace `appl_REPLACE_ME` in `ios/project.yml` (`REVENUECAT_API_KEY`) and commit. The key is public by design. Never put the *secret* key (`sk_...`) in the app.

## A/B tests (Experiments)

An experiment compares **offerings**: each variant is an offering with its own paywall, prices or plans.

1. **Offerings** → open `default` → **Duplicate**, e.g. `default_v2`, and change its paywall (or its packages).
2. **Experiments** → **+ New experiment** → pick `default` as variant A and `default_v2` as variant B. Choose the audience (all new customers, or a country) and the share of users.
3. **Start**. New users are split between A and B. Results (conversion, trial starts, revenue per user) appear under the experiment. Let it run for a few weeks before you decide, since annual plans and the 3-day trial take time to show their value.

Every variant must still meet the App Review list in step 7.

## Testing

- TestFlight purchases are sandbox purchases. In RevenueCat, switch on **Sandbox data** (top right) to see them in Customers and Charts.
- A purchase in TestFlight should appear under **Customers** within seconds with the `velcrypt_private_photo_vault_pro` entitlement active.
- To test the built-in fallback, unpublish the paywall or turn on flight mode before opening the paywall.

## Version 1.2 release order

1. Steps 1–8 above, with at least the `default` offering and the `velcrypt_private_photo_vault_pro` entitlement. The paywall itself can be published later.
2. Put the real API key in `project.yml`, then build to TestFlight (`v1.2.0` tag) and test a sandbox purchase and Restore Purchases.
3. Update **App Privacy** in App Store Connect (see `app-store/SUBMISSION.md`).
4. Submit 1.2 (`store-1.2.0-<build>` tag, then "Submit for Review").
5. When 1.2 is live, merge the `website/revenuecat-privacy` branch to `main` so the website's privacy policy and claims match the app.
