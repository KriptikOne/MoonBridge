# Human-First Workflow

The recommended sequence **before** any automation or agent-assisted work.

MoonBridge assumes humans prepare the ground first.

---

## The nine steps

### 1. Create structure

Install or clone MoonBridge to `<MOONBRIDGE_ROOT>`. Review the folder layout. Read [Quick_Start.md](../00_Read_Me_First/Quick_Start.md) and [Safety_Rules.md](../01_Rules_And_Safety/Safety_Rules.md).

**Level:** 0

---

### 2. Manually cleanse material

Gather a small batch of non-sensitive files from wherever they live today. Review them by hand. Remove duplicates, junk, and anything private.

**Do not** point tools at your whole computer.

---

### 3. Place clean material in MoonPool

Copy (don't move) cleansed files into:

- `MoonPool/00_Staging_Do_Not_Scan/` for initial prep, or
- A category folder's `Working/` while you organise

**Level:** 0 (manual copy by human)

---

### 4. Add exact approved batch folder to allowlist

When a batch is ready, move it to:

```
MoonPool/[category]/Approved_Batches/Your_Batch_Name/
```

Add the **exact full path** to:

```
04_Lists_And_Records/approved_scan_directories.txt
```

One path per line. No wildcards. No parent folders.

**Level:** 0 (human edits allowlist)

---

### 5. Run metadata-only inventory

Review `05_Helper_Tools/inventory_ALLOWLIST_ONLY.sh`. Request Level 1 approval. Run only on the exact allowlisted path.

**Level:** 1

---

### 6. Review catalog

Open `04_Lists_And_Records/file_catalog.csv`. Check file counts, risk flags, and batch name. Update indexes by hand if helpful.

**Level:** 0–2 (human review)

---

### 7. Plan copy-only import

If more files need to enter MoonBridge, plan a copy import. Use dry-run first.

**Level:** 3 (planning = 0; execution = 3 with approval)

---

### 8. Approve next step manually

Each new action needs its own approval:

- Read contents → Level 2
- Execute copy → Level 3
- Run code → Level 4
- Delete or move → Level 5

Use templates in [09_Agent_Prompts/](../09_Agent_Prompts/).

---

### 9. Only later consider automation

After boundaries are clean and catalogs are trustworthy:

- Read [Automation_Candidates.md](Automation_Candidates.md)
- Follow [Safe_Automation_Rules.md](Safe_Automation_Rules.md)
- Introduce agents with [Agent_Operating_Prompt.md](../09_Agent_Prompts/Agent_Operating_Prompt.md)

**Automation is not ready by default.**

---

## Workflow diagram

```
Structure (L0)
    → Manual cleanse (human)
    → MoonPool copy (human)
    → Allowlist (human)
    → Metadata inventory (L1, approved)
    → Review catalog (human)
    → Copy import plan (L3, dry-run)
    → Approve each next step
    → Consider automation later (approved)
```

---

## Open the dashboard

For orientation only (no live data): [dashboard.html](../08_Human_Dashboard/dashboard.html)

---

*Humans first. Structure second. Agents third — when you are ready.*