# Scan Policy

**MoonBridge never performs whole-computer scanning.**

This document defines what **scanning** means in MoonBridge and what is allowed.

---

## Definition

In MoonBridge, a **scan** is a **metadata-only inventory** of files and folders at an **exact allowlisted path**.

A scan is **not**:

- A whole-computer file search
- Reading document or media contents
- Opening PDFs, images, audio, or video
- Extracting EXIF or embedded metadata from file bytes
- Reading source code, `.env`, or config secrets
- Computing checksums by reading file contents
- Following symbolic links into other locations

---

## What metadata may be collected

| Field | Source |
|-------|--------|
| Full path | Filesystem listing |
| File name | Filesystem listing |
| Extension | Parsed from filename |
| File size | `stat` or equivalent |
| Modified date | `stat` or equivalent |
| Is folder | File type check |
| Detected file type | Extension / simple rules in `classification_rules.json` |
| Risk flags | Filename and path patterns only (e.g. `.env`, `seed`, `password`) |

Output goes to `04_Lists_And_Records/file_catalog.csv` and `scan_log.csv`.

---

## Allowlist requirement

Before any scan:

1. Human manually cleanses a batch
2. Human places it in `Approved_Batches/ExactBatchName/` (or another exact child path)
3. Human adds the **full path** to `approved_scan_directories.txt`
4. Human approves Level 1 inventory for that path only

The inventory script `inventory_ALLOWLIST_ONLY.sh` must **refuse** if the path is not an exact allowlist match.

---

## Refused paths (always)

The inventory script and any agent must refuse:

```
~
/
<HOME>
<HOME>/Desktop
<HOME>/Documents
<HOME>/Downloads
mounted drives (e.g. /media, /mnt, /Volumes)
..  (parent traversal)
```

Also refused:

- `<MOONBRIDGE_ROOT>` (root)
- `<MOONBRIDGE_ROOT>/MoonPool` (root)
- Any `Approved_Batches` folder itself (not a child batch inside it)
- `MoonPool/00_Staging_Do_Not_Scan/`
- `MoonPool/99_Quarantine_Do_Not_Scan/`
- `Private_Do_Not_Scan/`
- Hidden directories (`.git`, `.env` directories, etc.) — skip or flag, do not enter
- Any path not exactly listed in the allowlist file

---

## Symlinks

- Do **not** follow symlinks during traversal
- Record symlink as an entry with a flag, or skip entirely
- Never use symlinks to escape MoonBridge boundaries

---

## node_modules and .git

- Do not traverse `node_modules/` during inventory unless human explicitly allowlists that exact subpath (strongly discouraged)
- Do not scan `.git/` internals unless separately approved at Level 2+

---

## Risk flags (path/filename only)

Simple pattern matches — no file reading:

| Pattern | Flag |
|---------|------|
| `.env` | `env_file` |
| `id_rsa`, `*.pem`, `*.key` | `possible_key` |
| `seed`, `mnemonic`, `wallet` | `possible_crypto_secret` |
| `password`, `credential` | `possible_secret` |
| `node_modules` | `code_dependency_tree` |
| `package.json` | `code_project` |

Flags are hints for human review, not automated actions.

---

## Scan workflow

```
1. Batch cleansed manually
2. Path added to approved_scan_directories.txt
3. Human reviews inventory_ALLOWLIST_ONLY.sh
4. Run: bash 05_Helper_Tools/inventory_ALLOWLIST_ONLY.sh "/exact/path"
5. Review file_catalog.csv output
6. Append scan_log.csv entry
```

---

## What requires higher approval levels

| Action | Level |
|--------|-------|
| Metadata inventory | 1 |
| Read non-sensitive file contents | 2 |
| Copy import | 3 |
| Run scripts that execute project code | 4 |
| Delete/move/rename scanned files | 5 |

---

## No default scan targets

Scripts must **never** ship with fallback paths like common home-folder locations or `~`. Every run requires an explicit path argument that matches the allowlist.

---

See also: [Safety_Rules.md](Safety_Rules.md) · [AGENTS.md](../AGENTS.md)