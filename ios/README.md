# Velcrypt for iOS

**Well Encrypted. Truly Private.** A native SwiftUI vault for private photos, videos and documents.

- Swift · SwiftUI · CryptoKit · Keychain · iOS 17+
- No third-party dependencies
- Architecture and security model: [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md)

## Project layout

```
ios/
├── project.yml            XcodeGen spec (the .xcodeproj is generated, not committed)
├── Velcrypt/
│   ├── App/               Entry point, root routing, lifecycle locking
│   ├── DesignSystem/      Colors, typography, buttons, cards, logo, haptics
│   ├── Onboarding/        5-step first-launch flow (creates the first pattern)
│   ├── Authentication/    UnlockPattern, PatternGrid, VaultKeyring, VaultSession, lock screen
│   ├── Encryption/        AES-GCM + HKDF (CryptoKit), PBKDF2 (CommonCrypto)
│   ├── SecureStorage/     Keychain SecretStore, VaultFileStore
│   ├── Vault/             Dashboard, item grids, notes, VaultStore and VaultLibrary
│   ├── Albums/            Album list and management
│   ├── MediaImport/       Photos, Files and camera import
│   ├── MediaViewer/       Photo and video viewer
│   ├── Backup/            Password-protected backup and restore
│   ├── Settings/          Settings, change pattern, app icons, delete/erase vaults
│   └── Resources/         Asset catalog, String Catalogs (11 languages)
└── VelcryptTests/         Unit tests (crypto, patterns, keyring, storage, notes, backup)
```

## Building without a Mac (GitHub Actions)

Every push touching `ios/` runs **iOS CI**: it generates the project, then builds and runs
the tests on a macOS runner with the latest stable Xcode.

### One-time TestFlight setup

1. **Register the app**
   - [developer.apple.com → Identifiers](https://developer.apple.com/account/resources/identifiers/list):
     register the App ID `com.velcrypt.app`. If that ID is taken, change `PRODUCT_BUNDLE_IDENTIFIER`
     in `project.yml`.
   - [App Store Connect → Apps → +](https://appstoreconnect.apple.com/apps): create a new iOS app
     with that bundle ID. The name must be unique on the App Store.
2. **Create an API key** in App Store Connect → Users and Access → Integrations → App Store Connect API.
   Give it the **Admin** role, which cloud-managed signing needs to create certificates. Download the `.p8` (you can only download it once).
3. **Add repository secrets** (GitHub → Settings → Secrets and variables → Actions):

   | Secret | Value |
   |---|---|
   | `APPLE_TEAM_ID` | Team ID from developer.apple.com → Membership |
   | `ASC_KEY_ID` | The key ID |
   | `ASC_ISSUER_ID` | The issuer ID shown above the keys list |
   | `ASC_KEY_P8_BASE64` | `base64` of the .p8 file (PowerShell: `[Convert]::ToBase64String([IO.File]::ReadAllBytes("AuthKey_XXXX.p8"))`) |

4. GitHub → Actions → **iOS TestFlight** → *Run workflow*. After Apple processes the build
   (about 5–15 min), it appears in TestFlight on your iPhone. The build number is the workflow run number.

### With a Mac (optional)

```sh
brew install xcodegen
cd ios && xcodegen generate && open Velcrypt.xcodeproj
```

## Milestones

| # | Scope | Status |
|---|---|---|
| 1 | Project, design system, navigation, onboarding | ✅ |
| 2 | 5×5 pattern unlock, one vault per pattern, key hierarchy, auto-lock | ✅ |
| 3 | Photo/video/document import, encrypted storage, viewer, albums, camera, notes, encrypted backup | ✅ |
| 4 | Full settings, error handling, accessibility pass, integration tests | ⏳ |
| 5 | StoreKit 2, paywall, duress pattern (Premium) | ⏳ |

## Backlog

- **Share extension** ("Share → Velcrypt" from Photos, Safari and other apps). This needs:
  - an App Group container and Keychain sharing with the main app
  - normal signing, which in turn needs at least one registered device
  - migrating vault storage into the App Group container
- **Duress pattern** (Premium). A designated pattern opens a chosen vault and removes access to all other vaults.
- **StoreKit 2 paywall** (Milestone 5).

## Known limitations before App Store submission

- `ITSAppUsesNonExemptEncryption = false`: the app only uses Apple's built-in encryption to protect the user's own data. Confirm this export-compliance answer before release.
