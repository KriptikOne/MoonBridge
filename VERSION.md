# MoonBridge Version

## Current version

**0.2.0-usability** — Human usability and agent preparation layer (Level 0)

## Release date

2026-06-30

## Environment

- Platform: any local machine (no specific model or OS required)
- Designed for portability across machines and operating systems

## What this version includes

- Everything from **0.1.0-bootstrap** (folder structure, MoonPool, safety rules, catalogs, helper scripts)
- **08_Human_Dashboard/** — static offline `dashboard.html` and sample data (overview only)
- **09_Agent_Prompts/** — reusable prompt templates with approval gates
- **10_Automation_Plans/** — future automation planning docs (ideas only)
- Public usability improvements: cross-platform path placeholders, human-first workflow, approval level map
- Blank catalogs (CSV), logs, and classification rules (JSON) — unchanged from bootstrap
- Safe placeholder shell scripts (review-first, not auto-executed)
- Empty allowlist for future approved scan directories

## What this version does not include

- No working automation
- No autonomous agents
- No automatic scanning, importing, or code execution
- No git repository
- No package managers or Node projects
- No cloud sync
- No live dashboard data — `dashboard.html` does not read files or connect to the network

## Versioning scheme

- **0.x.y** — Bootstrap and documentation phases
- **1.0.0** — First stable local workflow (allowlists in use, imports tested)
- **Major** — Structural changes that require migration notes in CHANGELOG.md

## Next planned milestones

1. **0.3.0** — Optional sample project packs (fictional data only)
2. **0.4.0** — Stronger validation scripts (dry-run, allowlist checks)
3. **1.0.0** — Copy-import workflow validated; catalogs populated with human-approved data

See [CHANGELOG.md](CHANGELOG.md) for detailed history.