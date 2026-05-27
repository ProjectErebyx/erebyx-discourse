# EREBYX Arche — Discourse theme

The Discourse theme behind [arche.erebyx.com](https://arche.erebyx.com), the Genesis Arche community for EREBYX.

Matches the visual language of `erebyx.com` (marketing) and `app.erebyx.com` (dashboard) so members move between surfaces without a context switch.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Discourse](https://img.shields.io/badge/Discourse-theme-000)](https://meta.discourse.org/)

---

## What this theme provides

- **Brand color tokens** — Nyx Violet (`#7503E0`), Architect Blue (`#4492FC`), Arche Amber (`#FAB232`), and a light-violet glow palette
- **Typography stack** — Fireside / Outfit display, Outfit body, Architects Daughter accent, JetBrains / Fira mono
- **Wire-card styling** for topic lists and category cards (matches the dashboard `PricingPage` / `FAQ` / `/continuum` chrome)
- **Genesis Arche group flair** — violet username color + subtle glow on every post by `genesis_arche` group members
- **Milestone badges** with gold accent ("Crossed the Threshold", "Lit a Star", "First Memory", …)
- **Greek meander dividers** (toggleable via theme setting)
- **Custom header** linking to the dashboard, Arche home, threads, members, Field Notes, Signal Room, and social profiles
- **Custom footer** replacing the default "Powered by Discourse" chrome
- **Two color schemes** — EREBYX Cosmic (dark, default) and EREBYX Dawn (light)
- **Mobile + desktop optimized** — backdrop-filter perf hints, larger tap targets

## Install

### 1. Install the theme

In your Discourse admin:

1. **Admin → Customize → Themes → Install** → "From a git repository"
2. URL: `https://github.com/ProjectErebyx/erebyx-discourse-theme`
3. Branch: `main`
4. Save → **Set as default theme**

### 2. Optional companion components

EREBYX Arche is self-contained: the navbar, Genesis banner, room map, footer,
and key discovery-page polish live in this repo. If your forum uses the same
content surfaces, these official Discourse-team components can be attached for
additional fidelity:

| Component | Repo | Why we use it |
|---|---|---|
| Brand Header | `https://github.com/discourse/discourse-brand-header.git` | Optional compatibility with forums already using Brand Header. The theme also ships its own connector navbar and native fallback. |
| Category Banners | `https://github.com/discourse/discourse-category-banners.git` | Sigil-driven category header art |
| Showcased Categories | `https://github.com/discourse/discourse-showcased-categories.git` | Featured-categories layout on home |
| Versatile Banner | `https://github.com/discourse/discourse-versatile-banner.git` | Genesis Arche announcement banner |

These are MIT/Apache-licensed and Discourse-team-maintained — safe to add.

Discourse pulls the parent theme and any attached components from their public
URLs on demand and during periodic remote-theme refreshes.

## Local validation

The theme is intentionally buildless, but SCSS should compile before a push:

```bash
npx --yes sass common/common.scss:/tmp/erebyx-common.css desktop/desktop.scss:/tmp/erebyx-desktop.css mobile/mobile.scss:/tmp/erebyx-mobile.css --no-source-map
git diff --check
```

For visual changes, check at least phone, tablet, medium desktop, and wide
desktop widths on `/latest` before merging.

## Live deployment on arche.erebyx.com

This repo is the source of truth for the live theme on `arche.erebyx.com`. Every push to `main` triggers a GitHub Action (`.github/workflows/sync-theme.yml`) that calls the Discourse admin API to update the theme in place — no manual "Update from Git" click, no duplicate theme records.

Sync latency: typically 5–15 seconds from push to visible on the forum.

## Settings (admin-tunable)

Under **Admin → Customize → Themes → EREBYX Arche → Settings**:

| Setting | Default | Purpose |
|---|---|---|
| `brand_violet` | `#7503E0` | Nyx Violet — primary energy moments |
| `brand_blue` | `#4492FC` | Architect Blue — used in gradients with violet |
| `brand_violet_light` | `#c4b5fd` | Highlights, hover, glow |
| `brand_gold` | `#FAB232` | Arche Amber — milestones, founding badges |
| `constellation_glow_strength` | `12` | Glow size in px |
| `show_meander_dividers` | `true` | Greek meander section dividers |
| `show_starfield_backdrop` | `true` | Ambient starfield behind topic pages |
| `genesis_group_color` | `#c4b5fd` | Username + flair color for `genesis_arche` group members |
| `genesis_total_seats` | `2000` | Total Genesis Arche seat count shown in the banner |

## File layout

```
erebyx-discourse-theme/
├── about.json          theme metadata + color schemes
├── settings.yml        admin-configurable settings
├── common/
│   ├── common.scss     core styles, typography, brand tokens
│   └── header.html     custom header nav
├── desktop/
│   └── desktop.scss    desktop-only polish (>= 1024px)
├── mobile/
│   └── mobile.scss     mobile-only adjustments (< 768px)
└── .github/workflows/
    └── sync-theme.yml  auto-sync to arche.erebyx.com on push to main
```

## Contributing

Visual polish is owned by **Siarrah**; theme wiring + structure is owned by **ZENN + Mikey**. See [`CONTRIBUTING.md`](CONTRIBUTING.md) before opening a PR — brand-color and typography decisions go through Siarrah, not random PRs.

The theme is MIT-licensed — fork it, adapt it for your own forum. The colors and brand identity (Nyx Violet, Architect Blue, Arche Amber, "EREBYX", "Arche", "Nyx") are part of the EREBYX brand and shouldn't be carried into derivatives.

## Credits

Designed by **Siarrah** and **ZENN**.
Built for **EREBYX** — memory infrastructure for AI counterparts.

🤘 \m/
