# Crop website

The website for Crop, the branding studio (Carl + Dave).

This is **v1: a plain, structural skeleton**. The aim is to get the right
content in the right order, push it to staging, and react to it. It is not
designed. Dave will build the real identity in Figma and we will skin this
over the top.

## What is here

```
index.html    The whole site, one page, semantic and commented by section
styles.css    Deliberately plain styles, all driven by CSS variables in :root
robots.txt    Blocks indexing while we are on staging (remove for production)
README.md     This file
```

The page is a single static HTML file with one stylesheet. No build step, no
framework, no dependencies. Open `index.html` in a browser to view it.

## Sections, in order

1. Hero, the organising idea
2. What we do, the two core services plus the network
3. The name, why "Crop" (design read and strategy read)
4. Approach, discover / crop / build
5. Studio, Carl and Dave
6. Proof, combined clients and testimonials
7. Contact

## For Dave (re-skinning)

Everything visual is in `styles.css` behind the variables at the top
(`:root`). Change colour, type and spacing there and most of the page moves
with it. The markup in `index.html` is plain and labelled, so you can restyle
without rewriting structure. If you want to rebuild from your Figma, keep the
section ids (`#services`, `#name`, `#approach`, `#studio`, `#proof`,
`#contact`) so the nav still works.

## Copy rules (keep these)

- No em-dashes. Use commas, full stops or brackets.
- British spelling (organise, colour, behaviour).
- No emoji.

## Placeholders to replace before production

- **Email:** `hello@crop.studio` appears in the contact section and footer. Swap
  for the real address.
- **Footer / social links:** add real links once they exist.
- **Domain:** set in your host once chosen.

## Pushing to staging

It is a static site, so any static host works. Cloudflare Pages is the easy
path (same pattern as the Adzuna site):

```bash
git init
git add .
git commit -m "Crop website v1 skeleton"
# create the repo, then connect it to Cloudflare Pages
# Build command: none.  Output directory: /  (the repo root)
```

`robots.txt` currently blocks search engines so the staging draft stays
private. Delete it (or relax it) when we go live. If you want the staging URL
password protected, we can reuse the Cloudflare `functions/_middleware.js`
gate from the Adzuna setup.
