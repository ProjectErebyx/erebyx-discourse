# Contributing to EREBYX Arche

Thanks for the interest. A few ground rules before you open a PR.

## Ownership

- **Visual polish** — colors, type scale, spacing, the *feel* of cards and threads — is owned by **Siarrah**. Don't change brand tokens, typography choices, or layout densities without coordinating with her first. A PR that "tweaks" Nyx Violet will be closed.
- **Theme wiring + structure** — settings, header/footer templates, file organization, the sync pipeline — is owned by **ZENN + Mikey**.

The theme is MIT-licensed so you can fork and adapt for your own forum. If you want to *contribute to the upstream EREBYX Arche theme*, the boundaries above apply.

## What we accept

- Bug fixes (rendering glitches, accessibility issues, broken mobile behavior)
- Performance improvements that don't change the visual output
- Compatibility patches for new Discourse releases
- Doc improvements in `README.md` / this file

## What we don't accept

- Brand color or typography changes
- Removing the Genesis Arche group flair, milestone badges, or other EREBYX-specific identity surfaces
- Adding tracking / analytics / third-party scripts
- Whitespace-only or formatting-only commits

## How to work on it

1. Fork this repo
2. Clone your fork
3. Install the theme in your own Discourse instance from your fork's URL (Admin → Customize → Themes → Install → From a git repository)
4. Iterate — push to your fork's branch, click "Update from Git" in your Discourse admin to pull
5. Once it works on your side, open a PR against `main` here

For a local Discourse dev environment, follow [Discourse's dev setup guide](https://meta.discourse.org/t/install-discourse-for-development-using-docker/102009).

## Coding style

- SCSS — match existing structure in `common/common.scss`; keep brand tokens at the top, components below
- HTML templates — use Discourse's `<script type="text/x-handlebars">` connector pattern for outlets
- No JavaScript unless absolutely necessary; if added, it goes under `javascripts/discourse/` per Discourse's theme spec
- Don't introduce npm / build tooling — the theme stays buildless

Before opening a PR, compile the SCSS and check for whitespace errors:

```bash
npx --yes sass common/common.scss:/tmp/erebyx-common.css desktop/desktop.scss:/tmp/erebyx-desktop.css mobile/mobile.scss:/tmp/erebyx-mobile.css --no-source-map
git diff --check
```

For layout work, include screenshots or notes from phone, tablet, medium
desktop, and wide desktop checks.

## Licensing

By contributing, you agree your contributions are licensed under the MIT license (same as the rest of the repo). See [`LICENSE`](LICENSE).

## Reporting issues

Open a GitHub issue with:

- Discourse version (`Admin → Dashboard → About`)
- Browser + OS
- What you expected
- What happened
- Screenshot if visual

---

🤘 \m/
