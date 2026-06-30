# MoonBridge Version

## Current version

**0.6.0-local-helper-planning** — Public local-first file audit, catalogue, chronology, handover, and preflight template (Level 0 documentation and static tools)

## Release date

2026-06-30

## Environment

- Platform: any local machine (no specific model or OS required)
- Designed for portability across machines and operating systems
- Local-first, offline-friendly, no network required

## What this version includes

### Core structure (from 0.1.0-bootstrap)

- Folder structure, MoonPool categories, safety rules, agent laws
- Blank CSV catalogs, logs, empty allowlist, classification rules JSON
- Review-first helper shell scripts (placeholders — read before running)
- `README.md` in every top-level folder

### Usability layer (from 0.2.0-usability)

- **08_Human_Dashboard/** — static offline `dashboard.html` and dashboard guide
- **09_Agent_Prompts/** — reusable prompt templates with approval gates
- **10_Automation_Plans/** — future automation planning docs (documentation-only)

### MoonPool Auditor (from 0.3.0-auditor)

- **moonpool_auditor.html** — MoonPool Auditor Action Planner (static local HTML)
- Built-in sample records; human review and structured action-plan generation
- **No execution** — prepares Markdown/JSON plans only

### Catalog-driven Auditor (from 0.4.0-catalog-auditor)

- Manually pasted catalog JSON via Catalog Input panel (in-browser parse only)
- `sample_file_catalog.json`, `file_catalog_schema.md`, `auditor_catalog_guide.md`
- **No automatic file loading**, no fetch, no FileReader, no persistence

### Chronology Core (from 0.5.0-chronology-core)

- **11_Chronology/** — date fields, confidence rules, sample reports, timeline events
- **12_Review_Queue/** — human review templates for date uncertainty
- **13_Handover_Export/** — chronology handover templates and sample exports

### Optional Local Helper planning (from 0.6.0-local-helper-planning)

- **14_Local_Helper/** — principles, Basic Mode / Assisted Mode, suggestion fields, safety checklist, human review template
- **Planning documentation and schema only** — no helper code, no model integration

## What this version does not include

- No real filesystem scanning engine
- No real import, move, copy, delete, or rename engine
- No real allowlist editor in the Auditor
- No timeline renderer
- No Local Helper or model implementation
- No automation executor
- No working agents or background automation
- No package managers, Node projects, or cloud sync
- No network access in dashboard or Auditor by default

## Versioning scheme

| Tag | Meaning |
|-----|---------|
| **0.1.0-bootstrap** | Empty public template structure |
| **0.2.0-usability** | Human dashboard, agent prompts, automation plans |
| **0.3.0-auditor** | MoonPool Auditor Action Planner |
| **0.4.0-catalog-auditor** | Catalog-driven Auditor (pasted JSON) |
| **0.5.0-chronology-core** | Chronology, Review Queue, Handover Export |
| **0.6.0-local-helper-planning** | Optional Local Helper planning docs |
| **1.0.0** | First stable local workflow (allowlists in use, imports tested) |

See [CHANGELOG.md](CHANGELOG.md) for detailed history · [ROADMAP.md](ROADMAP.md) for planned work.