# MoonBridge Version

## Current version

**0.1.0-bootstrap** — Initial filesystem bootstrap (Level 0)

## Release date

2026-06-30

## Bootstrap environment

- Platform: any local machine (no specific model or OS required)
- Designed for portability across machines and operating systems

## What this version includes

- Complete top-level folder structure
- MoonPool intake area with standard substructure
- Safety rules, agent laws, and onboarding documents
- Blank catalogs (CSV), logs, and classification rules (JSON)
- Safe placeholder shell scripts (not executable by default)
- Empty allowlist for future approved scan directories

## What this version does not include

- No git repository
- No package managers or Node projects
- No automated scanning or indexing runs
- No cloud sync
- No single-project folders are baked into the base structure

## Versioning scheme

- **0.x.y** — Bootstrap and documentation phases
- **1.0.0** — First stable local workflow (allowlists in use, imports tested)
- **Major** — Structural changes that require migration notes in CHANGELOG.md

## Next planned milestones

1. **0.2.0** — First manually cleansed batch placed in MoonPool; allowlist entries added
2. **0.3.0** — First metadata-only inventory run (Level 1, approved paths only)
3. **1.0.0** — Copy-import workflow validated; catalogs populated

See [CHANGELOG.md](CHANGELOG.md) for detailed history.