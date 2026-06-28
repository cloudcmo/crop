# CROP

Marketing site for CROP — built with [Astro](https://astro.build), hosted on Cloudflare Pages.

## How it works

- **Design lives in tokens.** All brand decisions (colour, fonts, type scale,
  spacing) live in [`src/styles/tokens.css`](src/styles/tokens.css). These are
  placeholder values today; when Dave delivers his Figma design system, his real
  values drop in there and the whole site re-themes. Nothing else changes.
- **Pages** live in `src/pages/` (one `.astro` file per route).
- **Reusable bits** (layout, components) live in `src/layouts/` and `src/components/`.
- **Static assets** (images, favicon) go in `public/`.

## Local development

Requires [Node.js](https://nodejs.org) (LTS).

```
npm install      # once
npm run dev      # live preview at http://localhost:4321
npm run build    # production build into ./dist
npm run preview  # preview the production build locally
```

## Deployment

Pushed to GitHub → Cloudflare Pages builds automatically.

- **Build command:** `npm run build`
- **Output directory:** `dist`
- `main` → production (wearecrop.co.uk)
- `staging` → preview deploy

## Branch workflow

Helper scripts in the repo root:

- `deploy-staging.sh` — commit + push current work to `staging`
- `deploy-main.sh` — promote tested `staging` to live `main`
- `reset-staging-to-main.sh` — discard staging changes, reset to match `main`
