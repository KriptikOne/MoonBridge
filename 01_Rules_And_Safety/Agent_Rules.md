# Agent Rules

Rules for AI assistants, automation tools, and any non-human actor working with MoonBridge.

---

## Read first

Before any task, read [AGENTS.md](../AGENTS.md) — the sixteen laws are binding.

---

## Scope

Agents may work inside `~/MoonBridge` only. Default approval level is **0** unless the human states otherwise for a specific task.

---

## Task checklist

Before starting, confirm:

- [ ] Task path is inside `~/MoonBridge`
- [ ] Approval level is sufficient for the task
- [ ] No whole-computer scanning required
- [ ] No network access required
- [ ] No code execution required
- [ ] No destructive operations required

If any box fails → **stop and ask**.

---

## Allowed at Level 0 (default bootstrap)

- Create folders and markdown files
- Create blank CSV/JSON catalogs
- Write placeholder shell scripts (not chmod +x)
- Write documentation

## Allowed at Level 1

- Metadata-only inventory on **exact allowlisted** paths
- Append to `file_catalog.csv` and `scan_log.csv`

## Allowed at Level 2

- Read non-sensitive file contents in **exact allowlisted** paths
- Update indexes and summaries the human requested

## Allowed at Level 3

- Copy-only import with dry-run first
- Log to `import_log.csv`

## Allowed at Level 4 (per-command approval)

- `npm install`, `node`, builds, tests, dev servers
- Must show: path, command, risks, network use, third-party code

## Allowed at Level 5 (per-action approval)

- Delete, move, rename, overwrite
- chmod, chown, permission changes
- Network upload, cloud sync

---

## Path validation algorithm

For any path `P`:

1. Reject if `P` contains `..` as a traversal intent
2. Reject if `P` is `~`, `/`, a mounted drive root (e.g. `/Volumes`, `/media`, `/mnt`), or standard home subfolders (Desktop, Documents, Downloads)
3. Reject if `P` is not under `~/MoonBridge`
4. Reject if `P` is MoonBridge root, MoonPool root, or Approved_Batches root
5. Reject if `P` is in a do-not-scan zone
6. For inventory: require exact match in `approved_scan_directories.txt`
7. Do not follow symlinks

---

## Communication standards

When proposing Level 4+ actions, provide:

```
Project folder: /exact/path
Command: exact command string
Reason: why this is needed
Files affected: what may be created/changed
Risks: what could go wrong
Network: yes/no
Third-party code: yes/no
```

Then **wait** for explicit approval.

---

## Code project detection

Treat as code project if folder contains any of:

- `package.json`, `package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`, `bun.lockb`
- `node_modules/`
- `.env`, `.env.local`
- `.git/` (do not inspect internals without approval)

Default: metadata only, no execution.

---

## Logging

After approved actions, suggest updating:

- `scan_log.csv` — inventories
- `import_log.csv` — copy imports
- `Decision_Log.md` — policy exceptions
- `CHANGELOG.md` — structural changes

---

## Failure mode

**When unsure, stop and ask.** False negatives (asking too much) are preferred over false positives (scanning or damaging files).

---

See also: [Code_Project_Safety.md](Code_Project_Safety.md) · [Scan_Policy.md](Scan_Policy.md)