# Erebyx Arche — Discourse theme

Custom Discourse theme for **arche.erebyx.com**. Matches the visual language of erebyx.com (marketing) and app.erebyx.com (dashboard) so members move between surfaces without context-switching.

## What this theme provides

- **Brand color tokens** (violet `#7B2FBE` + blue `#4D8BF5` + gold milestone accent + light-violet glow)
- **Typography stack** matching site: Zen Dots (display), Pathway Gothic One (body), Space Grotesk (technical)
- **Wire-card styling** for topic list + category cards (matches `PricingPage` / `FAQ` / `/continuum` chrome)
- **Genesis Arche group flair** — violet username color + subtle glow on every post by `genesis_arche` group members
- **Milestone badges** with gold accent ("Crossed the Threshold", "Lit a Star", "First Memory", etc.)
- **Greek meander dividers** (toggleable via theme setting)
- **Custom header** — links to Dashboard / Continuum / Thesis
- **Custom footer** — branded chrome replacing default "Powered by Discourse"
- **Two color schemes:** Erebyx Cosmic (dark, default) + Erebyx Dawn (light, optional)
- **Mobile + desktop optimized** — backdrop-filter perf hints, larger tap targets

## Theme settings (admin-tunable)

After install, configure under **Admin → Customize → Themes → Erebyx Arche → Settings**:

| Setting | Default | Purpose |
|---|---|---|
| `brand_violet` | `#7B2FBE` | Primary brand color |
| `brand_blue` | `#4D8BF5` | Secondary brand color |
| `brand_violet_light` | `#c4b5fd` | Highlights, hover, glow |
| `brand_gold` | `#D4A437` | Milestone / founding accents |
| `constellation_glow_strength` | `12` | Glow size in px |
| `show_meander_dividers` | `true` | Greek meander pattern on dividers |
| `genesis_group_color` | `#c4b5fd` | Username + flair color for `genesis_arche` group |

## Install (admin UI)

1. **Admin → Customize → Themes → Install** → "From a git repository"
2. URL: `https://github.com/ProjectErebyx/erebyx-discourse-theme`
3. Branch: `main`
4. Save → Set as default theme

Updates pull from git — push to repo, then click "Update from Git" in admin.

## File layout

```
erebyx-discourse-theme/
├── about.json          theme metadata + color schemes
├── settings.yml        admin-configurable settings
├── README.md           this file
├── LICENSE             MIT
├── common/
│   ├── common.scss     core styles, typography, brand tokens
│   ├── header.html     custom header nav
│   └── footer.html     custom footer chrome
├── desktop/
│   └── desktop.scss    desktop-only polish (>=1024px)
└── mobile/
    └── mobile.scss     mobile-only adjustments (<768px)
```

## Iteration

Push changes to `main` → click "Update from Git" in admin. Live within seconds.

For experimental changes, work on a branch and switch the theme to that branch in admin → Themes → Branch.

## Credits

Designed by **Siarrah** + **ZENN**.
Built for **Erebyx** — memory infrastructure for AI counterparts.

🤘 \m/
