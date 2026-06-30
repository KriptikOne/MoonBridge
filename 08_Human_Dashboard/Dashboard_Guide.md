# Dashboard Guide

How to use the MoonBridge human dashboard without weakening safety rules.

---

## What the dashboard is

`dashboard.html` is a **static local HTML file**. It gives you:

- The MoonBridge logo and branded overview (loads `../assets/brand/moonbridge-logo.png` locally only)
- A visual summary of the MoonBridge flow
- Quick links to documentation folders
- A reminder of safety boundaries
- An offline-friendly starting point for new users

## What the dashboard is not

- Not a live status monitor
- Not connected to your files
- Not an agent or automation tool
- Not a server or web application

The dashboard never reads `dashboard_data_example.json` automatically. That JSON file is **sample data only** for humans who want to sketch a future dashboard layout manually.

---

## MoonPool Auditor Action Planner

`moonpool_auditor.html` is the **initial MoonPool Auditor** — an Action Planner for human review.

### What it does

- Shows sample MoonPool zones and mock items (no real scanning)
- Lets you select items and inspect mock metadata
- Generates structured **action plans** (Markdown and JSON) for:
  - Approval notes
  - Quarantine notes
  - Allowlist requests
  - Copy-only import plans
  - Review summaries

### What it does not do

- Move, copy, delete, or rename files
- Read dropped file contents or real paths
- Edit `approved_scan_directories.txt`
- Execute commands or grant approval by itself

### Action-planning flow

1. Open `moonpool_auditor.html` locally
2. Select a sample zone and item in the browser pane
3. Review mock details in the Inspector
4. Choose **Prepare…** to generate an action plan
5. Copy Markdown or JSON for human review
6. Paste into a Grok session, agent prompt, or manual workflow — execution requires separate human approval

Drag-and-drop is **visual planning only** — dropped files are counted but not read or stored.

---

## Catalog-driven Auditor mode

1. Open `sample_file_catalog.json` in a text editor (do not expect the Auditor to load it automatically)
2. Copy the full JSON and paste into the **Catalog Input** textarea in `moonpool_auditor.html`
3. Click **Load Catalog Text** — status should confirm planning-only load
4. Review records in Columns, List, or Grid view
5. Prepare action plans — copy Markdown or JSON for human review
6. Click **Reset to Sample Data** to return to built-in samples

**Do not treat generated plans as execution.** Human confirmation is required before any helper, agent, or script acts. Catalog presence does not grant approval.

---

## How to open it

1. Navigate to `<MOONBRIDGE_ROOT>/08_Human_Dashboard/`
2. Double-click `dashboard.html` or open it from your browser's File menu
3. Works fully offline — no internet required

---

## Safe usage rules

| Do | Don't |
|----|-------|
| Use it to learn the folder structure | Expect live file counts or scan results |
| Follow links to read markdown docs | Paste secrets into the HTML file |
| Share the template publicly as-is | Embed remote scripts, fonts, or analytics |
| Update indexes and catalogs by hand after real work | Treat the example JSON as real system state |

---

## Relating dashboard to real work

After reading the dashboard:

1. Read [Quick_Start.md](../00_Read_Me_First/Quick_Start.md)
2. Place cleansed files in `MoonPool/` manually
3. Add exact batch paths to the allowlist before any inventory
4. Use [09_Agent_Prompts/](../09_Agent_Prompts/) when working with AI assistants
5. Read [10_Automation_Plans/](../10_Automation_Plans/) before considering future automation

---

## Customising later (with approval)

You may later create your own dashboard data from **manually reviewed** catalogs — never from whole-computer scanning. Any future automation that builds a dashboard must:

- Use metadata-only, allowlisted sources
- Default to dry-run
- Require explicit human approval
- Stay offline with no external dependencies

---

*The dashboard orients humans. MoonPool and the allowlist protect your files.*