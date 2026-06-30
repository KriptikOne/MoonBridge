# Safety Rules

These rules protect your computer, your privacy, and your files. They apply to **humans and AI assistants** equally.

---

## Golden rule

**MoonBridge never performs whole-computer scanning.** Only exact, allowlisted paths inside MoonPool may be inventoried — metadata only.

---

## Hard prohibitions (default)

| Never | Details |
|-------|---------|
| Scan home folder | No `~`, `$HOME`, or broad traversal |
| Scan common home-folder locations | `<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`, and similar paths are off limits |
| Scan mounted drives or external drives | **Default: refused** — unless you explicitly approve a specific path outside MoonBridge |
| Scan system folders | OS system directories (e.g. `/System`, `/Library` on some platforms) |
| Scan hidden folders | Names starting with `.` (except documented MoonBridge internals) |
| Follow symlinks | Treat as metadata or skip |
| Read file contents during inventory | Metadata only |
| Move files on import | Copy-first always |
| Delete without approval | Level 5 — explicit human OK required |
| Overwrite without backup | Create backup first or refuse |
| Initialise git automatically | Wait for explicit approval |
| Run package managers automatically | npm, yarn, pip, brew, etc. |
| Access network automatically | curl, wget, APIs, cloud sync |
| Change permissions | chmod, chown, ACLs |
| Touch secrets | Wallet seeds, passwords, keys, bank files, identity docs |

---

## Approved zones

| Zone | Purpose | Auto-scan? |
|------|---------|------------|
| `00`–`07` system folders | Docs, indexes, catalogs, tools | No user-file scanning |
| `MoonPool/` | User file intake | **No** — root not scannable |
| `MoonPool/*/Approved_Batches/` | Cleansed batches | **No** — only exact child paths on allowlist |
| `Private_Do_Not_Scan/` | Sensitive material | **Never** by default |
| `00_Staging_Do_Not_Scan/` | Raw intake prep | **Never** |
| `99_Quarantine_Do_Not_Scan/` | Uncertain material | **Never** |

---

## Allowlist gate

The only file that grants scan permission:

```
04_Lists_And_Records/approved_scan_directories.txt
```

Requirements:

- Full absolute path, one per line
- Exact match only — no wildcards, no parent paths
- Human must add entries manually after cleansing a batch

---

## Copy-first imports

1. Source path must be explicitly provided
2. Destination must be inside MoonBridge
3. Script defaults to dry-run
4. Real copy requires explicit `--execute` or equivalent flag after human review
5. Never overwrite existing files without approval
6. Log every action in `import_log.csv`

---

## Sensitive material

If a file or folder appears to contain:

- Passwords, API keys, recovery phrases
- Financial or identity documents
- Private correspondence you did not intend to organise

→ Move to `Private_Do_Not_Scan/` or `99_Quarantine_Do_Not_Scan/`  
→ Do **not** allowlist  
→ Do **not** read contents in automated workflows

---

## Code project folders

Folders with `package.json`, lockfiles, `node_modules`, `.git`, `.env`, etc. are **code projects**.

- Do not run install/build/test/dev without explicit per-command approval
- Do not read `.env` or credential files
- During inventory: metadata only, flag as code project

See [Code_Project_Safety.md](Code_Project_Safety.md).

---

## When agents must stop and ask

- Path outside `<MOONBRIDGE_ROOT>`
- Path not on allowlist
- MoonPool root or Approved_Batches root (not exact child)
- Task requires reading file contents
- Task requires network or code execution
- Task would modify or delete existing files
- Approval level unclear or exceeded
- Anything feels sensitive or ambiguous

---

## Human responsibilities

1. Manually cleanse files before allowlisting
2. Review scripts before running with `bash script.sh`
3. Keep allowlist minimal — smallest path that covers the batch
4. Update indexes and catalogs after organised work
5. Document exceptions in [Decision_Log.md](Decision_Log.md)

---

## Related documents

- [AGENTS.md](../AGENTS.md)
- [Scan_Policy.md](Scan_Policy.md)
- [Agent_Rules.md](Agent_Rules.md)
- [Code_Project_Safety.md](Code_Project_Safety.md)