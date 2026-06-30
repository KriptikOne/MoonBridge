# Changelog

All notable changes to the MoonBridge filesystem organisation system are documented here.

Format based on [Keep a Changelog](https://keepachangelog.com/). This project uses simple date-based entries during bootstrap.

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
- No git initialised
- No package managers or network access used
- Scripts created as review-first placeholders (not chmod +x)
- `approved_scan_directories.txt` created empty with explanatory comments only

### Notes

- Bootstrap used Level 0 actions only — no destructive operations
- Designed for portability from your current machine to a more powerful computer later

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

## [Unreleased]

### Added

- **Optional Local Helper planning layer** — docs, operating modes, suggestion fields, sample output, safety checklist, and human review template in `14_Local_Helper/`
- Documentation updates in README, Main Index, file catalog schema, Agent Prompts, and Future Local Agent Notes

### Added (prior unreleased)

- **Chronology Core Phase 2** — Review Queue and Handover Export support for Chronology Core
- `12_Review_Queue/Review_Queue_Rules.md` — flagging rules for date issues needing human attention
- `12_Review_Queue/Review_Queue_Record_Template.md` — per-record review template
- `13_Handover_Export/` — chronology summary template, timeline export sample, handover manifest template
- Documentation links in README, Main Index, file catalog schema, Human Dashboard, Agent Prompts, and Automation Plans

### Added (earlier unreleased)

- `08_Human_Dashboard/moonpool_auditor.html` — initial MoonPool Auditor Action Planner (sample data only; generates Markdown/JSON action plans; no file operations)
- Catalog-driven Auditor support — pasted JSON only via Catalog Input panel (no fetch, FileReader, or persistence)
- `04_Lists_And_Records/sample_file_catalog.json` — public sample catalog
- `04_Lists_And_Records/file_catalog_schema.md` — catalog schema documentation
- `08_Human_Dashboard/auditor_catalog_guide.md` — catalog mode guide

### Notes

- Auditor prepares approval records — does not move, copy, scan, edit allowlists, or execute commands
- Drag-and-drop is visual planning only; no FileReader or filesystem APIs

### Planned

- Add first allowlisted scan directory after manual cleansing
- Run first Level 1 metadata-only inventory on approved path only
- First copy-only import with dry-run approval
- v0.3 sample project packs (fictional data only)