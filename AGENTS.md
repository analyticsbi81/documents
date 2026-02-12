# AGENTS.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

Docsify-based documentation site for Business Intelligence procurement requirements ("Licitação Angra dos Reis"). The documentation organizes 58 procurement items into functional groups.

## Development Commands

```bash
# Start development server (builds and runs Docker container)
./run.sh
# Or manually:
docker compose up --build

# Rebuild without cache (to update docsify-cli version)
docker compose build --no-cache && docker compose up
```

The site is accessible at `http://localhost:3000` with live reload enabled.

## Architecture

```
docs/                    # Docsify source files (mounted as volume)
├── index.html           # Docsify configuration and plugins
├── README.md            # Homepage content
├── _sidebar.md          # Navigation sidebar
├── _navbar.md           # Top navigation bar
├── assets/
│   ├── notion.css       # Custom "Notion-like" theme
│   └── theme-toggle.js  # Light/dark mode toggle
└── grupos/              # Documentation pages by requirement group
    ├── fontes-dados.md
    ├── relatorios.md
    ├── dashboards.md
    └── ...

references/              # Source reference materials (extraction specs, PDFs)
```

## Content Editing

- **Homepage**: `docs/README.md`
- **Navigation**: `docs/_sidebar.md` (sidebar), `docs/_navbar.md` (top bar)
- **Requirement groups**: `docs/grupos/*.md`
- **Theme/styling**: `docs/assets/notion.css`
- **Docsify config**: `docs/index.html` (plugins, search, theme settings)

## Language

All documentation content is in **Brazilian Portuguese**.
