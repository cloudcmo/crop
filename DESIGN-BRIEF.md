# Crop website — design brief for Dave

Hi Dave. The Crop site is already built and live on staging as a plain,
deliberately undesigned skeleton. It exists so your design can drop straight in.

The trick is this: the whole site reads its look from one small set of
"design tokens", which you can think of as the master Colour Styles, Text Styles
and spacing values. If you build those in Figma and design one pass of the
homepage on top of the existing structure, Carl pours your values into the site
and the entire thing re-skins. No development work needed from you, and no
rebuilding the page. You design it once, properly, and it flows everywhere.

Here is what makes that effortless.

## 1. A "Foundations" page (this is the bit that powers everything)

Set these up as proper Figma **Styles / Variables**, not one-off fills, because
each one maps to a single value in the site.

**Colour styles (seven of them):**

- Background, the main page colour
- Surface, for cards and raised panels (sits on top of the background)
- Text, the main heading and body colour
- Muted, secondary text such as captions and sublines
- Hairline, thin lines and borders
- Accent, the one brand colour, used sparingly
- On-accent, the colour of text or icons that sit on top of the accent

**Type:**

- Two typefaces: one for headings, one for body. If they are Google Fonts, just
  tell Carl the names. If they are licensed, send the font files.
- The weights you are using for each
- A text scale, set up as Text Styles: Hero (the huge line), Section heading,
  Intro / lead, Body, and Small / eyebrow (the little uppercase labels)

**Spacing and shape:**

- A simple spacing scale, for example 4, 8, 16, 32, 64, 128. This is the rhythm
  everything sits on, the gaps and the padding.
- A corner radius for cards and buttons

## 2. One designed homepage

Design the actual homepage at **1440px wide**, and a **390px** mobile version if
you have time, using the styles above. You only need to design ONE of each
repeating element; Carl repeats them in code. Please include:

- The CROP logo lockup, with the strapline sitting under it
- The top navigation bar
- The hero: big headline, sub line, and two buttons
- The two services, Brand strategy and Brand identity
- The network block (the "senior studio, serious network" section)
- The work grid: just design ONE tile, there is a row of them
- The studio block: the two of us, each with a square photo crop
- One testimonial card
- The contact / call-to-action at the bottom

## 3. A few small things that make it slot in cleanly

- Use your Colour and Text **Styles** everywhere, rather than picking one-off
  colours, so the design maps to the site one to one.
- Use **Auto Layout** where it feels natural. It mirrors how the page reflows.
- No need to build, prototype or export anything technical. Just design it and
  share the Figma link (view access is fine). Carl handles the translation into
  the live site.

## Reference

The current skeleton is live on staging (Carl has the link). It already has all
the content, structure and section order in place, so you are designing over a
finished layout rather than starting from a blank page. Match that structure,
make it beautiful, and we are golden.
