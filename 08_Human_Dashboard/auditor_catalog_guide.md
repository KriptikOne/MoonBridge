# Auditor Catalog Guide

How to use **catalog-driven mode** in the MoonPool Auditor Action Planner.

---

## Core principle

The catalog is a **decision aid**, not a scanner.

It helps you review structured metadata labels and prepare action plans. It does not read file contents, scan folders, or execute changes.

---

## Getting started

1. Open `moonpool_auditor.html` locally (offline)
2. Default mode shows **built-in sample records**
3. To try catalog mode, open [sample_file_catalog.json](../04_Lists_And_Records/sample_file_catalog.json) in a text editor
4. Copy the entire JSON
5. Paste into the **Catalog Input** textarea in the Auditor
6. Click **Load Catalog Text**

Status should read: *Catalog loaded for planning. No files were read or changed.*

---

## Later: private catalogs

After you run an **approved Level 1 metadata-only inventory** on an exact allowlisted path, you may export or hand-build a private catalog following [file_catalog_schema.md](../04_Lists_And_Records/file_catalog_schema.md).

Paste that JSON into the Auditor the same way. Keep private catalogs **private** unless you intentionally share them.

The Auditor:

- Parses pasted text with `JSON.parse` only
- Does not fetch files from disk
- Does not store pasted text (no localStorage)
- Clears catalog view when you click **Reset to Sample Data**

---

## Workflow

| Step | Action |
|------|--------|
| 1 | Load sample or pasted catalog |
| 2 | Browse zones in the sidebar |
| 3 | Select a record in Columns, List, or Grid view |
| 4 | Review Inspector metadata |
| 5 | Click **Prepare…** to generate an action plan |
| 6 | Copy Markdown or JSON for your records |
| 7 | Paste into a Grok session, agent prompt, or manual log |

---

## What generated plans are not

- **Not automatic approval** — catalog presence does not grant permission
- **Not execution orders** — a helper, agent, or script must wait for human confirmation
- **Not allowlist updates** — humans edit `approved_scan_directories.txt` separately

Every plan includes `generated_plan_only: true` and `files_changed: false`.

---

## Safety reminders

- Do not paste secrets into the catalog textarea
- Do not treat high-risk filename flags as proof of content — metadata only
- Quarantine records should use **Prepare Quarantine Note**, not direct moves
- Allowlist requests require human addition of exact paths after cleansing

---

## Related

- [Dashboard_Guide.md](Dashboard_Guide.md)
- [09_Agent_Prompts/](../09_Agent_Prompts/)
- [Human_First_Workflow.md](../10_Automation_Plans/Human_First_Workflow.md)