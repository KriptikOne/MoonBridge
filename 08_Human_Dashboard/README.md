# Human Dashboard

A **static, offline overview** and **action-planning surface** for MoonBridge.

## Contents

| File | Purpose |
|------|---------|
| [dashboard.html](dashboard.html) | Local HTML overview — open in any browser, works offline |
| [moonpool_auditor.html](moonpool_auditor.html) | **MoonPool Auditor Action Planner** — sample mode + pasted catalog mode; prepares approval records, does not execute them |
| [auditor_catalog_guide.md](auditor_catalog_guide.md) | How to use catalog-driven Auditor mode |
| [dashboard_data_example.json](dashboard_data_example.json) | Sample dashboard data only (not live) |
| [Dashboard_Guide.md](Dashboard_Guide.md) | How to use the dashboard and Auditor safely |

## dashboard.html vs moonpool_auditor.html

| Tool | Role |
|------|------|
| **dashboard.html** | Orientation map with links to documentation folders |
| **moonpool_auditor.html** | MoonPool Auditor Action Planner — human review and structured action-plan generation |

The **MoonPool Auditor** works from **built-in sample records** or **manually pasted catalog JSON** (copy from `sample_file_catalog.json` — no automatic file loading). It generates approval notes, quarantine notes, allowlist requests, copy-only import plans, and review summaries as Markdown and JSON. A human (or a separate approved helper, Grok session, or local agent) may review those plans later.

**Catalog mode is planning-only.** Pasted JSON is parsed in-browser only — not uploaded, stored, scanned, or persisted.

**The Auditor does not:** move, copy, delete, scan, upload, read file contents, load files from disk, edit allowlists, or execute commands.

## Important

Neither tool:

- Scans your computer
- Reads real file contents
- Uploads anything
- Runs automation
- Connects to the network

## Quick start

1. Open `dashboard.html` for orientation
2. Open `moonpool_auditor.html` to plan MoonPool review actions with sample data
3. Copy generated action plans into your workflow or [09_Agent_Prompts/](../09_Agent_Prompts/)
4. Follow [Human_First_Workflow.md](../10_Automation_Plans/Human_First_Workflow.md) for real work

See also: [09_Agent_Prompts/](../09_Agent_Prompts/) · [10_Automation_Plans/](../10_Automation_Plans/) · [11_Chronology/](../11_Chronology/) · [12_Review_Queue/](../12_Review_Queue/) · [13_Handover_Export/](../13_Handover_Export/) · [14_Local_Helper/](../14_Local_Helper/)