# Erebyx Arche — Discourse theme

The Discourse theme behind [arche.erebyx.com](https://arche.erebyx.com), the Genesis Arche community for Erebyx.

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
- **Custom header** linking to Dashboard / Continuum / Thesis
- **Custom footer** replacing the default "Powered by Discourse" chrome
- **Two color schemes** — Erebyx Cosmic (dark, default) and Erebyx Dawn (light)
- **Mobile + desktop optimized** — backdrop-filter perf hints, larger tap targets

## Install

### 1. Install the theme

In your Discourse admin:

1. **Admin → Customize → Themes → Install** → "From a git repository"
2. URL: `https://github.com/ProjectErebyx/erebyx-discourse`
3. Branch: `main`
4. Save → **Set as default theme**

### 2. Install required theme components

Erebyx Arche composes **four** official Discourse-team theme components for full visual fidelity. Install each the same way (Admin → Customize → Themes → Install → From a git repository), then attach them as components of *Erebyx Arche*:

| Component | Repo | Why we use it |
|---|---|---|
| **Brand Header** | `https://github.com/discourse/discourse-brand-header.git` | **REQUIRED** — top nav strip. Without this, `common/header.html` falls back to a bare/mobile-looking layout. |
| Category Banners | `https://github.com/discourse/discourse-category-banners.git` | Sigil-driven category header art |
| Showcased Categories | `https://github.com/discourse/discourse-showcased-categories.git` | Featured-categories layout on home |
| Versatile Banner | `https://github.com/discourse/discourse-versatile-banner.git` | Genesis Arche announcement banner |

These are MIT/Apache-licensed and Discourse-team-maintained — safe to add.

The parent theme + component pulls from the public URL on demand and on Discourse's periodic remote-theme refresh.

## Live deployment on arche.erebyx.com

This repo is the source of truth for the live theme on `arche.erebyx.com`. Every push to `main` triggers a GitHub Action (`.github/workflows/sync-theme.yml`) that calls the Discourse admin API to update the theme in place — no manual "Update from Git" click, no duplicate theme records.

Sync latency: typically 5–15 seconds from push to visible on the forum.

## Settings (admin-tunable)

Under **Admin → Customize → Themes → Erebyx Arche → Settings**:

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
erebyx-discourse/
├── about.json          theme metadata + color schemes
├── settings.yml        admin-configurable settings
├── common/
│   ├── common.scss     core styles, typography, brand tokens
│   ├── header.html     custom header nav
│   └── footer.html     custom footer chrome
├── desktop/
│   └── desktop.scss    desktop-only polish (>= 1024px)
├── mobile/
│   └── mobile.scss     mobile-only adjustments (< 768px)
└── .github/workflows/
    └── sync-theme.yml  auto-sync to arche.erebyx.com on push to main
```

## Contributing

Visual polish is owned by **Siarrah**; theme wiring + structure is owned by **ZENN + Mikey**. See [`CONTRIBUTING.md`](CONTRIBUTING.md) before opening a PR — brand-color and typography decisions go through Siarrah, not random PRs.

The theme is MIT-licensed — fork it, adapt it for your own forum. The colors and brand identity (Nyx Violet, Architect Blue, Arche Amber, "Erebyx", "Arche", "Nyx") are part of the Erebyx brand and shouldn't be carried into derivatives.

## Credits

Designed by **Siarrah** and **ZENN**.
Built for **Erebyx** — memory infrastructure for AI counterparts.

🤘 \m/
