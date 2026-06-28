import { defineConfig } from 'astro/config';

// Static output (the default) — builds to ./dist, served directly by
// Cloudflare Pages. No adapter or paid features required.
export default defineConfig({
  site: 'https://wearecrop.co.uk',
});
