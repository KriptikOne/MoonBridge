# How This System Works

MoonBridge is a **local folder system** that helps you organise files safely — without letting tools roam your entire computer.

---

## The big picture

```
Your computer (untouched by default)
        │
        ▼  you manually copy files in
   MoonPool  ← controlled intake
        │
        ▼  you organise + allowlist
   Working / Finished / Archive
        │
        ▼  polished deliverables
   06_Finished_Outputs
```

MoonBridge does **not** replace common home-folder locations (`<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`). It gives you a **second, deliberate workspace** where organisation rules are clear and agents know their limits.

---

## The two zones

### System zone (MoonBridge minus MoonPool)

Folders `00` through `07`, plus rules, indexes, templates, catalogs, and tools. These hold **documentation, structure, and records** — not raw dumps of your entire digital life.

### User-content zone (MoonPool only)

`<MOONBRIDGE_ROOT>/MoonPool` is the **only** place where your real files should enter the system. You bring files here manually (copy, never auto-scan from elsewhere).

---

## Batch lifecycle

Every MoonPool category folder (Documents, Images, Projects, etc.) uses the same substructure:

| Folder | Purpose |
|--------|---------|
| **Staging_Do_Not_Scan** *(MoonPool root only)* | Material being manually prepared. Must not be scanned. |
| **Approved_Batches** | Manually cleansed material. **Not** auto-approved for scanning — only exact child folders on the allowlist may be inventoried. |
| **Working** | Material you are actively organising right now. |
| **Finished** | Organised, usable material ready for daily use. |
| **Archive** | Kept for reference but not active. |
| **Quarantine_Do_Not_Scan** *(MoonPool root only)* | Suspicious, sensitive, broken, private, or uncertain material. Must not be scanned. |

### Lifecycle flow (typical)

1. **Receive** — Copy files into `00_Staging_Do_Not_Scan` or a category's `Working` folder.
2. **Cleanse** — Remove duplicates, rename clearly, delete junk *manually* (you decide).
3. **Approve** — Move cleansed batches into `Approved_Batches/Your_Batch_Name/`.
4. **Allowlist** — Add the **exact full path** to `04_Lists_And_Records/approved_scan_directories.txt`.
5. **Inventory** — Run metadata-only inventory (Level 1) on that exact path only.
6. **Organise** — Work in `Working`, finish in `Finished`, retire to `Archive`.
7. **Quarantine** — Anything uncertain goes to `99_Quarantine_Do_Not_Scan` until you decide.

---

## What scanning means here

**Scanning** = listing files and recording **metadata only** (name, size, date, extension, simple risk flags). It does **not** mean reading your documents, photos, or code.

Scanning is **opt-in per exact folder path**. The allowlist file is the gate.

---

## What importing means here

**Importing** = **copying** files from an approved source into an organised MoonBridge destination. Originals are never moved by default. The copy script defaults to **dry-run** until you explicitly approve a real copy.

---

## Approval levels (summary)

| Level | What |
|-------|------|
| 0 | Create structure, docs, blank catalogs |
| 1 | Metadata inventory on allowlisted paths only |
| 2 | Read non-sensitive contents on allowlisted paths |
| 3 | Copy-only import |
| 4 | Run code, builds, package managers |
| 5 | Delete, move, rename, overwrite, network upload |

Agents and scripts default to the **lowest** level. See [AGENTS.md](../AGENTS.md).

---

## Do-not-scan zones

Never scan these unless you document a rare, explicit exception:

- `MoonPool/00_Staging_Do_Not_Scan/`
- `MoonPool/99_Quarantine_Do_Not_Scan/`
- `Private_Do_Not_Scan/`

---

## Catalogs and indexes

- **Indexes** (`02_Indexes/`) — human-readable navigation (what exists, where to find it).
- **Catalogs** (`04_Lists_And_Records/*.csv`) — machine-friendly tables updated after approved inventories and imports.
- **Logs** — `import_log.csv` and `scan_log.csv` record what happened and when.

Start with indexes for browsing; use catalogs when you need sortable data.

---

## Templates

`03_Templates/` gives you consistent starting points for projects, notes, research, assets, clients, websites, audio, video, and code. Copy a template into `Working` when you start something new.

---

## Finished outputs

`06_Finished_Outputs/` is for **polished deliverables** — final PDFs, exported images, mastered audio, rendered video, published websites, and distribution zip files. Not for works-in-progress.

---

## Backups

`07_Backups/` holds snapshot copies of MoonBridge structure and key records. Use `05_Helper_Tools/backup_snapshot.sh` only after reviewing it; backups are copy-based.

---

## Who is this for?

Anyone who wants:

- A clear folder system that works across projects
- Safety rules for AI assistants
- No cloud dependency
- A path from your current machine to a more powerful one later

---

## Next steps

1. Read [Quick_Start.md](Quick_Start.md)
2. Read [Safety_Rules.md](../01_Rules_And_Safety/Safety_Rules.md)
3. Place your first files in `MoonPool/00_Staging_Do_Not_Scan/` manually
4. When a batch is clean, move it to `Approved_Batches` and add its exact path to the allowlist

See also: [Glossary.md](Glossary.md) · [Bridge_To_Future_Machine.md](Bridge_To_Future_Machine.md)