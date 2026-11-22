// Prepares an App Store version in App Store Connect, ready for "Submit for Review":
// creates the version if needed, fills Description and What's New for every locale from
// ios/docs/app-store/<locale>.md, sets the App Review notes from SUBMISSION.md and attaches the build.
// It never submits. Usage (env): ASC_KEY_ID, ASC_ISSUER_ID, ASC_KEY_P8 (PEM text), APP_ID, VERSION, BUILD.
import { createPrivateKey, sign } from "node:crypto";
import { readFileSync, readdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const { ASC_KEY_ID, ASC_ISSUER_ID, ASC_KEY_P8, APP_ID, VERSION, BUILD } = process.env;
for (const [k, v] of Object.entries({ ASC_KEY_ID, ASC_ISSUER_ID, ASC_KEY_P8, APP_ID, VERSION, BUILD })) {
  if (!v && !process.env.DRY_RUN) fail(`Missing ${k}`);
}
const docs = join(dirname(fileURLToPath(import.meta.url)), "..", "docs", "app-store");

function fail(message) {
  console.log(`::error title=App Store Connect::${message.replace(/%/g, "%25").replace(/\n/g, "%0A")}`);
  process.exit(1);
}

function token() {
  const b64 = (o) => Buffer.from(JSON.stringify(o)).toString("base64url");
  const now = Math.floor(Date.now() / 1000);
  const head = b64({ alg: "ES256", kid: ASC_KEY_ID, typ: "JWT" });
  const body = b64({ iss: ASC_ISSUER_ID, iat: now, exp: now + 1100, aud: "appstoreconnect-v1" });
  const sig = sign("sha256", Buffer.from(`${head}.${body}`), {
    key: createPrivateKey(ASC_KEY_P8),
    dsaEncoding: "ieee-p1363",
  }).toString("base64url");
  return `${head}.${body}.${sig}`;
}

async function api(method, path, data, { allowNotFound = false } = {}) {
  const res = await fetch(`https://api.appstoreconnect.apple.com${path}`, {
    method,
    headers: { Authorization: `Bearer ${token()}`, "Content-Type": "application/json" },
    body: data ? JSON.stringify({ data }) : undefined,
  });
  if (allowNotFound && res.status === 404) return { data: null };
  const text = await res.text();
  if (!res.ok) fail(`${method} ${path} → ${res.status}\n${text.slice(0, 1500)}`);
  return text ? JSON.parse(text) : {};
}

/** The text inside the first ``` block after a "## <title>" heading. */
function section(markdown, title) {
  const start = markdown.search(new RegExp(`^## ${title}\\b`, "m"));
  if (start < 0) return null;
  const match = markdown.slice(start).match(/```\n([\s\S]*?)\n```/);
  return match ? match[1].trim() : null;
}

/** Store copy per locale file, e.g. "sv.md" → { locale: "sv", attributes }. */
function storeCopy() {
  return readdirSync(docs).filter((f) => /^[a-z]{2}(-[A-Za-z]+)?\.md$/.test(f)).map((file) => {
    const md = readFileSync(join(docs, file), "utf8");
    const attributes = {
      description: section(md, "Description"),
      whatsNew: section(md, "What's New"),
      keywords: section(md, "Keywords"),
      promotionalText: section(md, "Promotional text"),
    };
    for (const [k, v] of Object.entries(attributes)) if (!v) fail(`${file}: no ${k} section`);
    return { locale: file.replace(/\.md$/, ""), attributes };
  });
}

function reviewNotes() {
  const notes = section(readFileSync(join(docs, "SUBMISSION.md"), "utf8"), "App Review notes");
  if (!notes || [...notes].length > 4000) fail(`Review notes missing or over 4,000 characters (${notes && [...notes].length}).`);
  return notes;
}

// DRY_RUN=1 only checks that every file parses, without calling App Store Connect.
if (process.env.DRY_RUN) {
  for (const { locale, attributes } of storeCopy()) {
    console.log(locale, Object.entries(attributes).map(([k, v]) => `${k} ${[...v].length}`).join(", "));
  }
  console.log(`notes ${[...reviewNotes()].length}`);
  process.exit(0);
}

// 1. The version: reuse an editable one with this number, or create it.
const versions = await api("GET", `/v1/apps/${APP_ID}/appStoreVersions?filter[platform]=IOS&limit=20`);
let version = versions.data.find((v) => v.attributes.versionString === VERSION);
const editable = ["PREPARE_FOR_SUBMISSION", "DEVELOPER_REJECTED", "REJECTED", "METADATA_REJECTED"];
if (version && !editable.includes(version.attributes.appStoreState)) {
  fail(`Version ${VERSION} is ${version.attributes.appStoreState} and can't be edited.`);
}
if (!version) {
  const other = versions.data.find((v) => editable.includes(v.attributes.appStoreState));
  if (other) fail(`Version ${other.attributes.versionString} is still being prepared. Delete it or use that number.`);
  version = (await api("POST", "/v1/appStoreVersions", {
    type: "appStoreVersions",
    attributes: { platform: "IOS", versionString: VERSION, releaseType: "MANUAL" },
    relationships: { app: { data: { type: "apps", id: APP_ID } } },
  })).data;
  console.log(`Created version ${VERSION}.`);
} else {
  console.log(`Using version ${VERSION} (${version.attributes.appStoreState}).`);
}

// 2. Description and What's New for every locale file.
const existing = (await api("GET", `/v1/appStoreVersions/${version.id}/appStoreVersionLocalizations?limit=50`)).data;
// A locale new to this version also needs its URLs (Support URL is required); reuse the English ones.
const english = existing.find((l) => l.attributes.locale === "en-US")?.attributes ?? {};
const urls = Object.fromEntries(["supportUrl", "marketingUrl"].filter((k) => english[k]).map((k) => [k, english[k]]));
for (const { locale, attributes } of storeCopy()) {
  const loc = existing.find((l) => l.attributes.locale === locale);
  if (loc) {
    await api("PATCH", `/v1/appStoreVersionLocalizations/${loc.id}`, {
      type: "appStoreVersionLocalizations", id: loc.id, attributes,
    });
  } else {
    await api("POST", "/v1/appStoreVersionLocalizations", {
      type: "appStoreVersionLocalizations",
      attributes: { locale, ...urls, ...attributes },
      relationships: { appStoreVersion: { data: { type: "appStoreVersions", id: version.id } } },
    });
  }
  console.log(`${locale}: description ${[...attributes.description].length}, what's new ${[...attributes.whatsNew].length}`);
}

// 3. App Review notes.
const notes = reviewNotes();
const detail = (await api("GET", `/v1/appStoreVersions/${version.id}/appStoreReviewDetail`, undefined, { allowNotFound: true })).data;
if (detail) {
  await api("PATCH", `/v1/appStoreReviewDetails/${detail.id}`, {
    type: "appStoreReviewDetails", id: detail.id, attributes: { notes },
  });
  console.log("Review notes updated.");
} else {
  console.log("::warning title=Review notes::No review details on this version yet. Paste the notes from SUBMISSION.md by hand.");
}

// 4. The build.
const builds = (await api("GET", `/v1/builds?filter[app]=${APP_ID}&filter[version]=${BUILD}&filter[preReleaseVersion.version]=${VERSION}&limit=5`)).data;
const build = builds[0];
if (!build) fail(`Build ${VERSION} (${BUILD}) not found.`);
if (build.attributes.processingState !== "VALID") fail(`Build ${BUILD} is ${build.attributes.processingState}.`);
await api("PATCH", `/v1/appStoreVersions/${version.id}/relationships/build`, { type: "builds", id: build.id });
console.log(`Attached build ${VERSION} (${BUILD}). Ready for "Submit for Review" in App Store Connect.`);
console.log(`::notice title=App Store Connect::Version ${VERSION} with build ${BUILD} is ready. Submit it for review in App Store Connect.`);
