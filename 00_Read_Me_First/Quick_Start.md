# Quick Start

Get MoonBridge working in five calm steps. No scanning, no package managers, no rush.

---

## Step 1 — Understand the boundary

MoonBridge lives at:

```
~/MoonBridge
```

Your computer outside this folder is **off limits** to automated tools. Only `MoonPool` inside MoonBridge receives your files — and only when **you** put them there.

---

## Step 2 — Read the essentials (10 minutes)

| Read | Why |
|------|-----|
| [How_This_System_Works.md](How_This_System_Works.md) | Understand MoonPool and the batch lifecycle |
| [AGENTS.md](../AGENTS.md) | Laws for any AI assistant you use |
| [Safety_Rules.md](../01_Rules_And_Safety/Safety_Rules.md) | What is never allowed by default |

---

## Step 3 — Add your first files manually

1. Open your file manager and go to `~/MoonBridge/MoonPool/00_Staging_Do_Not_Scan/`
2. **Copy** (don't move) a small test folder of non-sensitive files into Staging
3. Review the files — remove anything private, broken, or uncertain

> **Tip:** Start with 5–10 files you don't mind experimenting with.

---

## Step 4 — Choose a category and subfolder

Pick the MoonPool category that fits your material, for example:

| If your files are… | Use |
|--------------------|-----|
| PDFs, Word docs | `MoonPool/01_Documents/` |
| Text notes, ideas | `MoonPool/02_Notes_And_Ideas/` |
| Project folders | `MoonPool/03_Projects/` |
| Photos, graphics | `MoonPool/04_Images/` |
| Music, podcasts | `MoonPool/05_Audio/` |

Inside that category, use:

- `Working/` — while you organise
- `Approved_Batches/YourBatchName/` — after manual cleansing
- `Finished/` — when done
- `Archive/` — when retired

---

## Step 5 — Allowlist before any inventory

Before any tool lists your files, add the **exact full path** to:

```
04_Lists_And_Records/approved_scan_directories.txt
```

Example (only after you create the folder):

```
/Users/yourname/MoonBridge/MoonPool/01_Documents/Approved_Batches/2026-06_Test_Batch
```

One path per line. No wildcards. No parent folders.

Then review and run (only when ready):

```bash
bash 05_Helper_Tools/inventory_ALLOWLIST_ONLY.sh "/full/path/to/exact/batch"
```

---

## Common first tasks

| I want to… | Do this |
|------------|---------|
| Start a new project | Copy `03_Templates/Project_Template.md` into `MoonPool/03_Projects/Working/` |
| Track what I have | Fill in `02_Indexes/Main_Index.md` by hand first |
| Import files safely | Review `05_Helper_Tools/copy_import_COPY_ONLY.sh` (dry-run default) |
| Keep secrets separate | Use `Private_Do_Not_Scan/` — never allowlist it |
| Quarantine uncertain files | Use `MoonPool/99_Quarantine_Do_Not_Scan/` |

---

## What not to do yet

- Do not scan Desktop, Documents, or Downloads
- Do not run inventory without an allowlisted exact path
- Do not run `npm install` or any code project without explicit approval
- Do not chmod scripts blindly — read them first, run with `bash script.sh`

---

## When you move to a new machine

Copy the entire `~/MoonBridge` folder to the new computer. See [Bridge_To_Future_Machine.md](Bridge_To_Future_Machine.md).

---

*You're ready. Start small, stay safe, expand when it feels right.*