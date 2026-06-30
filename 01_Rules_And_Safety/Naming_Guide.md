# Naming Guide

Consistent names make MoonBridge searchable by humans and safe for scripts.

---

## General principles

1. **Be descriptive** — `2026-06_ClientLogo_Export` beats `final2`
2. **Use dates for batches** — `YYYY-MM_Description` at the start
3. **Avoid spaces in batch folder names** — use underscores or hyphens
4. **No secrets in names** — never put passwords or keys in filenames
5. **ASCII preferred** — avoids cross-machine encoding issues

---

## MoonPool batch folders

Recommended pattern:

```
YYYY-MM_ShortDescription
```

Examples:

```
2026-06_Invoice_Archive
2026-07_Podcast_Raw_Takes
2026-08_Brand_Fonts_v2
```

Inside `Approved_Batches/`:

```
MoonPool/04_Images/Approved_Batches/2026-06_Product_Photos/
```

---

## Project folders

```
YYYY-MM_ProjectName
```

Add a `Project_Template.md` copy renamed to match:

```
2026-07_Website_Redesign/project_notes.md
```

---

## File naming

| Type | Pattern | Example |
|------|---------|---------|
| Document | `YYYY-MM-DD_Topic_Version` | `2026-06-30_Proposal_v1.pdf` |
| Image export | `ProjectName_Size_Format` | `Logo_1200px_PNG.png` |
| Audio | `Project_TrackNumber_Title` | `Album01_03_Sunrise.wav` |
| Video | `Project_Date_Scene` | `Doc_2026-06-30_Interview.mp4` |
| Backup | `YYYY-MM-DD_MoonBridge_Snapshot` | `2026-06-30_MoonBridge_Snapshot/` |

---

## Version suffixes

Use clear version markers:

- `_v1`, `_v2`, `_v3` — drafts
- `_FINAL` — only when truly final (sparingly)
- `_DRAFT` — work in progress

Avoid: `final`, `final_FINAL`, `copy`, `copy 2`

---

## What to avoid

| Avoid | Why |
|-------|-----|
| Leading `.` | Hidden files; scripts may skip |
| `/` in names | Path separator conflicts |
| `~` in names | Confused with home directory |
| Very long names (>80 chars) | Path length limits on older systems |
| Emoji-only names | Cross-platform issues |

---

## Allowlist paths

When adding to `approved_scan_directories.txt`, use **full absolute paths**:

```
<MOONBRIDGE_ROOT>/MoonPool/01_Documents/Approved_Batches/2026-06_Test
```

No trailing slashes required but be consistent.

---

## Index entries

In `02_Indexes/`, use the same names as folders so cross-references stay obvious.

---

*Adjust these conventions for your workflow — then document changes in [Decision_Log.md](Decision_Log.md).*