#!/usr/bin/env node
// Validates Velcrypt's String Catalogs.
//
//   node ios/scripts/validate-strings.mjs [--keys path/to/keys.json]
//
// Checks:
//   1. Localizable.xcstrings and InfoPlist.xcstrings parse as JSON.
//   2. Every key (from --keys if given, otherwise every key in the catalog) has all required locales.
//   3. Format specifiers in every value, plural form and substitution match the English source
//      (same count and types; positional specifiers such as %2$lld are resolved).
//   4. No translation is empty, and none is identical to English unless the key is allow-listed.
//   5. With --scan: static string literals passed to common SwiftUI initializers in ios/Velcrypt/**/*.swift
//      that are missing from Localizable.xcstrings are reported as warnings (heuristic; interpolated
//      strings are skipped because their keys contain %lld / %@ instead of the Swift expression).
// Exits with code 1 on any error.
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const LOCALES = ['es', 'de', 'fr', 'pt-BR', 'ja', 'ko', 'zh-Hans', 'it', 'nl', 'sv'];
const REQUIRED_PLURAL = {
  en: ['one', 'other'], es: ['one', 'other'], de: ['one', 'other'], fr: ['one', 'other'],
  'pt-BR': ['one', 'other'], it: ['one', 'other'], nl: ['one', 'other'], sv: ['one', 'other'],
  ja: ['other'], ko: ['other'], 'zh-Hans': ['other'],
};
const ALLOWED_PLURAL = { ja: ['other'], ko: ['other'], 'zh-Hans': ['other'] };
// Keys whose translation may legitimately equal the English text in some languages
// (shared loanwords, "OK", file-type words, pure format strings).
const SAME_AS_EN_OK = new Set([
  'OK', '%@ · %@', 'Album', 'Albums', '1 album', '1 item', 'Photo', 'Photo, %@', 'Photos', 'Documents',
  'Document, %@', 'Version', 'System', 'Videos', 'Video, %@, %@', 'Name', 'Info', 'Layout',
  '%lld albums', 'Import', 'Camera', 'Timer', 'Memo',
]);

const here = path.dirname(fileURLToPath(import.meta.url));
const resources = path.resolve(here, '../Velcrypt/Resources');
const keysArg = process.argv.indexOf('--keys');
const keysFile = keysArg > -1 ? process.argv[keysArg + 1] : null;

const errors = [];
const warnings = [];
const err = (m) => errors.push(m);

// Returns a sorted signature of format specifiers, e.g. ["1:lld", "2:@"].
function specs(str) {
  const re = /%(?:(\d+)\$)?(#@[A-Za-z0-9_]+@|[-+ #0]*\d*(?:\.\d+)?(?:hh|h|ll|l|q|z|t|j|L)?[@dDiuUxXoOfeEgGcCsSpaA%])/g;
  const out = [];
  let next = 1;
  let m;
  while ((m = re.exec(str))) {
    let type = m[2];
    if (type === '%') continue;
    type = type.replace(/^[-+ #0]*\d*(?:\.\d+)?/, '');
    const pos = m[1] ? Number(m[1]) : next++;
    out.push(`${pos}:${type}`);
  }
  return out.sort();
}
const same = (a, b) => a.length === b.length && a.every((x, i) => x === b[i]);

// Collects every (label, text, substitutions) leaf of one localization.
function leaves(loc) {
  const res = [];
  if (loc.stringUnit) res.push({ form: 'value', text: loc.stringUnit.value, subs: loc.substitutions });
  const plural = loc.variations?.plural;
  if (plural) for (const [form, v] of Object.entries(plural)) res.push({ form, text: v.stringUnit?.value });
  return res;
}

// Expands substitution tokens (%#@arg1@) into the substitution's own specifier for comparison.
function effectiveSpecs(text, subs) {
  if (!subs) return specs(text);
  let t = text;
  for (const [name, s] of Object.entries(subs)) t = t.replace(`%#@${name}@`, `%${s.argNum}$${s.formatSpecifier}`);
  return specs(t);
}

// A %#@name@ token does not advance Foundation's argument counter, so a plain %@ after it reads
// argument 1 again (an integer read as an object crashes). Other specifiers must be positional.
function checkPositionalWithSubs(key, lang, text, subs) {
  if (!subs) return;
  const rest = text.replace(/%#@[A-Za-z0-9_]+@/g, '').replace(/%%/g, '');
  if (/%(?!\d+\$)/.test(rest)) err(`${key} [${lang}]: specifiers next to a substitution must be positional (e.g. %2$@) in ${JSON.stringify(text)}`);
}

function checkCatalog(file, requiredKeys, { sourceIsKey }) {
  let cat;
  try {
    cat = JSON.parse(fs.readFileSync(file, 'utf8'));
  } catch (e) {
    err(`${path.basename(file)}: does not parse: ${e.message}`);
    return { keys: 0, cells: 0 };
  }
  if (cat.sourceLanguage !== 'en') err(`${path.basename(file)}: sourceLanguage must be "en"`);
  const strings = cat.strings ?? {};
  const keys = requiredKeys ?? Object.keys(strings);
  let cells = 0;
  let checked = 0;
  for (const key of keys) {
    const entry = strings[key];
    if (!entry) { err(`missing key: ${JSON.stringify(key)}`); continue; }
    if (entry.shouldTranslate === false) continue;
    checked++;
    const enLoc = entry.localizations?.en;
    const enText = enLoc?.stringUnit?.value ?? (sourceIsKey ? key : null);
    if (enText == null) { err(`${key}: no English source value`); continue; }
    const enSpecs = sourceIsKey ? specs(key) : specs(enText);
    const enLeaves = enLoc ? leaves(enLoc) : [];
    if (enLoc) {
      for (const l of enLeaves) {
        if (!same(effectiveSpecs(l.text, l.subs), enSpecs)) err(`${key} [en/${l.form}]: specifiers differ from key`);
      }
      checkSubs(key, 'en', enLoc, enSpecs);
    }
    for (const lang of LOCALES) {
      const loc = entry.localizations?.[lang];
      if (!loc) { err(`${key}: missing locale ${lang}`); continue; }
      cells++;
      const ls = leaves(loc);
      if (!ls.length) err(`${key} [${lang}]: no stringUnit or plural variations`);
      const plural = loc.variations?.plural;
      if (plural) checkPluralForms(key, lang, plural, 'plural');
      for (const l of ls) {
        if (!l.text || !l.text.trim()) { err(`${key} [${lang}/${l.form}]: empty`); continue; }
        if (!same(effectiveSpecs(l.text, l.subs), enSpecs)) {
          err(`${key} [${lang}/${l.form}]: specifiers ${JSON.stringify(effectiveSpecs(l.text, l.subs))} != source ${JSON.stringify(enSpecs)} in ${JSON.stringify(l.text)}`);
        }
      }
      checkSubs(key, lang, loc, enSpecs);
      // Identical-to-English check: a single value equal to the source, or every plural form equal to English.
      const enForms = new Set([enText, key, ...enLeaves.map((l) => l.text)]);
      const identical = ls.length > 0 && ls.every((l) => enForms.has(l.text));
      if (identical && !SAME_AS_EN_OK.has(key)) err(`${key} [${lang}]: identical to English`);
      else if (identical) warnings.push(`${key} [${lang}] identical to English (allow-listed)`);
    }
  }
  return { keys: checked, cells };
}

function checkPluralForms(key, lang, plural, where) {
  const forms = Object.keys(plural);
  for (const f of REQUIRED_PLURAL[lang] ?? ['other']) if (!forms.includes(f)) err(`${key} [${lang}] ${where}: missing "${f}"`);
  const allowed = ALLOWED_PLURAL[lang];
  if (allowed) for (const f of forms) if (!allowed.includes(f)) err(`${key} [${lang}] ${where}: "${f}" is not a CLDR category for ${lang}`);
}

function checkSubs(key, lang, loc, enSpecs) {
  if (!loc.substitutions) return;
  checkPositionalWithSubs(key, lang, loc.stringUnit?.value ?? '', loc.substitutions);
  for (const [name, s] of Object.entries(loc.substitutions)) {
    if (!loc.stringUnit?.value?.includes(`%#@${name}@`)) err(`${key} [${lang}]: substitution ${name} not referenced`);
    if (!enSpecs.includes(`${s.argNum}:${s.formatSpecifier}`)) err(`${key} [${lang}]: substitution ${name} argNum/formatSpecifier mismatch`);
    const plural = s.variations?.plural;
    if (!plural) { err(`${key} [${lang}]: substitution ${name} has no plural variations`); continue; }
    checkPluralForms(key, lang, plural, `substitution ${name}`);
    for (const [form, v] of Object.entries(plural)) {
      const t = v.stringUnit?.value ?? '';
      if (!t.trim()) err(`${key} [${lang}/${name}.${form}]: empty`);
      const count = (t.match(/%arg/g) ?? []).length;
      if (count !== 1) err(`${key} [${lang}/${name}.${form}]: must contain %arg exactly once`);
      if (specs(t.replace(/%arg/g, '')).length) err(`${key} [${lang}/${name}.${form}]: unexpected specifiers`);
    }
  }
}

let requiredKeys = null;
if (keysFile) requiredKeys = Object.keys(JSON.parse(fs.readFileSync(keysFile, 'utf8'))).filter((k) => k !== '%lld');

const loc = checkCatalog(path.join(resources, 'Localizable.xcstrings'), requiredKeys, { sourceIsKey: true });
const info = checkCatalog(path.join(resources, 'InfoPlist.xcstrings'), null, { sourceIsKey: false });

if (process.argv.includes('--scan')) scanSources();

function scanSources() {
  const cat = JSON.parse(fs.readFileSync(path.join(resources, 'Localizable.xcstrings'), 'utf8')).strings;
  const re = /\b(?:Text|Label|Button|Picker|Section|LabeledContent|navigationTitle|accessibilityLabel|accessibilityHint|alert|confirmationDialog|NavigationLink|TextField|Toggle|LocalizedStringKey|String\(localized:)\(?\s*"([^"\n]+)"/g;
  const missingKeys = new Set();
  const walk = (dir) => {
    for (const e of fs.readdirSync(dir, { withFileTypes: true })) {
      const p = path.join(dir, e.name);
      if (e.isDirectory()) walk(p);
      else if (p.endsWith('.swift')) {
        for (const m of fs.readFileSync(p, 'utf8').matchAll(re)) {
          const k = m[1];
          if (!k.includes('\\(') &&!(k in cat) && !/^[a-z0-9.]+$/.test(k) && !'Velcrypt'.includes(k)) missingKeys.add(`${k}  (${path.relative(resources, p)})`);
        }
      }
    }
  };
  walk(path.resolve(resources, '..'));
  console.log(`Source scan: ${missingKeys.size} literal(s) not in Localizable.xcstrings`);
  missingKeys.forEach((k) => console.log('  ? ' + k));
}

console.log(`Localizable.xcstrings: ${loc.keys} keys × ${LOCALES.length} locales = ${loc.cells} translations checked`);
console.log(`InfoPlist.xcstrings:   ${info.keys} keys × ${LOCALES.length} locales = ${info.cells} translations checked`);
console.log(`${warnings.length} allow-listed values identical to English`);
if (process.argv.includes('--verbose')) warnings.forEach((w) => console.log('  note: ' + w));
if (errors.length) {
  console.error(`\n${errors.length} error(s):`);
  errors.forEach((e) => console.error('  ✗ ' + e));
  process.exit(1);
}
console.log('OK: all checks passed');
