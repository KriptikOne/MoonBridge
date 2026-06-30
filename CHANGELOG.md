# Changelog

All notable changes to the MoonBridge filesystem organisation system are documented here.

Format based on [Keep a Changelog](https://keepachangelog.com/). This project uses simple date-based entries during bootstrap.

---

## [Unreleased]

### Planned

- Public repo consolidation pass (navigation, link checks, publication checklist alignment) — documentation only
- Catalog generation workflow documentation
- Timeline renderer (future)
- Approved Local Helper implementation (future, optional)
- Dry-run executor design (future, approval-gated)
- Deeper validation tooling (future)

---

## [0.6.0-local-helper-planning] — 2026-06-30

### Added

- **14_Local_Helper/** — Optional Local Helper planning layer
- `Local_Helper_Principles.md`, `Operating_Modes.md` — Basic Mode and Assisted Mode
- `local_helper_output_fields.json`, `local_helper_sample_output.json` — suggestion field schema and samples
- `Local_Helper_Safety_Checklist.md`, `Local_Helper_Review_Template.md` — human review templates
- Documentation updates in README, Main Index, file catalog schema, Agent Prompts, Future Local Agent Notes, ROADMAP

### Notes

- Local Helper is **planning documentation only** — no helper code, model integration, or automation ships
- Helper suggestions are suggested, not verified; `humanApproved` remains false until human confirms
- Basic Mode remains fully valid without AI or model use

---

## [0.5.0-chronology-core] — 2026-06-30

### Added

- **11_Chronology/** — Chronology Core: date field definitions, confidence rules, sample reports, timeline events
- **12_Review_Queue/** — Review Queue rules, record template, queue folder READMEs
- **13_Handover_Export/** — chronology summary template, timeline export sample, handover manifest template
- Chronology fields section in `file_catalog_schema.md`
- Documentation links in README, Main Index, Human Dashboard, Agent Prompts

### Notes

- Chronology is documentation and schema only — no scanning engine, no automatic date inference
- Review Queue is human-prepared — not auto-populated
- Handover Export packages reviewed information — does not grant permission to act

---

## [0.4.0-catalog-auditor] — 2026-06-30

### Added

- Catalog-driven Auditor support — pasted JSON only via Catalog Input panel
- `04_Lists_And_Records/sample_file_catalog.json` — public sample catalog
- `04_Lists_And_Records/file_catalog_schema.md` — catalog schema documentation
- `08_Human_Dashboard/auditor_catalog_guide.md` — catalog mode guide

### Notes

- Catalog JSON parsed in-browser only — no fetch, FileReader, persistence, or disk loading
- Catalog presence does not grant approval to scan, read, move, copy, or execute

---

## [0.3.0-auditor] — 2026-06-30

### Added

- `08_Human_Dashboard/moonpool_auditor.html` — MoonPool Auditor Action Planner
- Sample/mock MoonPool navigation; Columns, List, Grid views
- Inspector pane and Generated Action Plan panel (Markdown + JSON)
- Prepare approval, quarantine, allowlist, import, and review plans — **no execution**

### Notes

- Auditor prepares action plans — does not move, copy, scan, edit allowlists, or run commands
- Drag-and-drop is visual planning only

---

## [0.2.0-usability] — 2026-06-30

### Added

- `08_Human_Dashboard/` — static offline `dashboard.html`, example JSON, dashboard guide
- `09_Agent_Prompts/` — operating prompt, approval/scan/import/code/review templates, sanitisation check
- `10_Automation_Plans/` — automation candidates, safe rules, future agent notes, approval map, human-first workflow
- README section: human usability and future automation
- Quick Start next steps pointing to dashboard, prompts, and human-first workflow
- Main Index entries for new folders

### Notes

- Dashboard is static HTML only — no scanning, network, scripts, or automation
- Automation plans are documentation only — no scripts or running agents added
- Safety model unchanged: whole-computer scanning refused, MoonPool intake, allowlist-only, approval gates

---

## [0.1.0-bootstrap] — 2026-06-30

### Added

- Root documents: `README.md`, `AGENTS.md`, `VERSION.md`, `CHANGELOG.md`
- `00_Read_Me_First/` — onboarding guides, glossary, bridge-to-future-machine notes
- `01_Rules_And_Safety/` — safety rules, scan policy, agent rules, code project safety, naming guide, decision log
- `02_Indexes/` — main, project, asset, people/client, and topic indexes
- `03_Templates/` — project, notes, research, asset, client, website, audio, video, and code templates
- `04_Lists_And_Records/` — blank CSV catalogs, logs, empty allowlist, classification rules JSON
- `05_Helper_Tools/` — placeholder scripts: `generate_tree.sh`, `backup_snapshot.sh`, `inventory_ALLOWLIST_ONLY.sh`, `copy_import_COPY_ONLY.sh`
- `06_Finished_Outputs/` — documents, images, audio, video, websites, zip files
- `07_Backups/` — backup snapshot destination
- `Private_Do_Not_Scan/` — sensitive material zone (README only)
- `MoonPool/` — controlled intake with 14 category folders and standard batch lifecycle subfolders
- `README.md` in every folder

### Safety

- No whole-computer scanning performed during bootstrap
- No package managers or network access used
- Scripts created as review-first placeholders (not chmod +x)
- `approved_scan_directories.txt` created empty with explanatory comments only

### Notes

- Bootstrap used Level 0 actions only — no destructive operations
- Designed for portability from your current machine to a more powerful computer later