import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';
import { z } from 'astro/zod';

/**
 * Content model. Files live at src/content/<collection>/<locale>/<slug>.md.
 * - The folder gives the locale, the filename gives the localized URL slug.
 * - `pageId` is the stable cross-locale id: the English file and its
 *   translations share it, which is how hreflang alternates are generated.
 * - Internal links in Markdown use `[text](id:<pageId>)` and are resolved
 *   to the right localized URL at build time (unknown ids fail the build).
 */

const faqItem = z.object({ q: z.string().min(3), a: z.string().min(5) });

const base = z.object({
  pageId: z.string().regex(/^[a-z0-9-]+$/),
  /** <title> (brand suffix is NOT added automatically). Max 60 chars. */
  title: z.string().min(4).max(60),
  /** Meta description, max 155 chars. */
  description: z.string().min(50).max(155),
  /** The single H1. */
  h1: z.string().min(2),
  /** Short label for breadcrumbs, cards and footer links. */
  navTitle: z.string().min(2).max(48),
  /** Direct 1-2 sentence answer shown first on the page (AI-extraction friendly). */
  answer: z.string().min(20).max(420),
  /** Short TL;DR bullets, 3-6 items. */
  keyFacts: z.array(z.string()).min(3).max(7),
  primaryKeyword: z.string(),
  keywords: z.array(z.string()).default([]),
  datePublished: z.coerce.date(),
  dateModified: z.coerce.date(),
  faq: z.array(faqItem).default([]),
  /** Grouped FAQs (used by the FAQ page). */
  faqGroups: z.array(z.object({ title: z.string(), items: z.array(faqItem) })).default([]),
  /** Optional HowTo schema; only for genuinely step-by-step content. */
  howTo: z
    .object({
      name: z.string(),
      totalTime: z.string().optional(),
      steps: z.array(z.object({ name: z.string(), text: z.string() })).min(2),
    })
    .optional(),
  /** pageIds of related pages for the "Related" block. */
  related: z.array(z.string()).default([]),
  /** Optional OG image path under /og/. Defaults to the section image. */
  ogImage: z.string().optional(),
  /** Article schema (guides etc.) vs WebPage schema. */
  schemaType: z.enum(['Article', 'WebPage', 'AboutPage', 'ContactPage', 'FAQPage']).default('Article'),
  /** Order within hubs (lower first). */
  order: z.number().default(100),
  draft: z.boolean().default(false),
});

const loader = (dir: string) => glob({ pattern: '**/*.md', base: `./src/content/${dir}` });

export const collections = {
  pages: defineCollection({ loader: loader('pages'), schema: base }),
  features: defineCollection({
    loader: loader('features'),
    schema: base.extend({
      status: z.enum(['available', 'coming-soon']).default('available'),
      /** One-line card summary for hubs. */
      summary: z.string().max(160),
    }),
  }),
  guides: defineCollection({
    loader: loader('guides'),
    schema: base.extend({
      category: z.enum(['hiding', 'apple', 'choosing', 'security', 'practical']),
      summary: z.string().max(160),
    }),
  }),
  useCases: defineCollection({
    loader: loader('useCases'),
    schema: base.extend({
      group: z.enum(['everyday', 'travel', 'sensitive', 'professional']),
      summary: z.string().max(160),
    }),
  }),
  compare: defineCollection({
    loader: loader('compare'),
    schema: base.extend({
      competitor: z.string(),
      lastChecked: z.string(),
      summary: z.string().max(160),
    }),
  }),
  tools: defineCollection({
    loader: loader('tools'),
    schema: base.extend({
      summary: z.string().max(160),
      toolName: z.string(),
    }),
  }),
};
