# Dashboard Guide

How to use the MoonBridge human dashboard without weakening safety rules.

---

## What the dashboard is

`dashboard.html` is a **static local HTML file**. It gives you:

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