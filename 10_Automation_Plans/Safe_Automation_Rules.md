# Safe Automation Rules

Every future MoonBridge automation must follow these rules. No exceptions by default.

---

## Hard refusals

| Rule | Detail |
|------|--------|
| No whole-computer scanning | Stay inside `<MOONBRIDGE_ROOT>` |
| No hidden folders | Skip names starting with `.` unless explicitly approved |
| No symlink traversal | Treat symlinks as metadata or skip |
| No network access by default | curl, wget, APIs, cloud sync need approval |
| No destructive actions | Delete, move, rename, overwrite need Level 5 approval |
| No code execution without approval | npm, node, builds need Level 4 per command |

---

## Required design patterns

### Dry-run mode

Every automation must:

- Default to showing what it **would** do
- Require an explicit flag or approval for real execution
- Never surprise the human with silent changes

### Logging

Every automation must:

- Append to `scan_log.csv`, `import_log.csv`, or a dedicated log
- Record timestamp, path, action, dry-run flag, and approval note
- Leave an audit trail humans can review

### Rollback or non-destructive design

Prefer:

- Copy-first over move
- New files over overwrite
- Append-only logs
- Reversible folder creation over deletion

If destructive action is unavoidable, require Level 5 approval and document rollback.

---

## MoonPool and allowlist

- User files enter only through MoonPool (manual copy)
- Inventory only on exact allowlisted paths
- Metadata-only unless Level 2 approved for specific paths
- Do-not-scan zones never targeted

---

## Approval gates summary

| Action | Level |
|--------|-------|
| Structure / docs | 0 |
| Metadata inventory | 1 |
| Read contents | 2 |
| Copy import | 3 |
| Code execution | 4 |
| Destructive / network upload / permission changes | 5 |

---

## When automation should stop

- Path not on allowlist
- Path outside `<MOONBRIDGE_ROOT>`
- Sensitive filename flags (`.env`, keys, seeds)
- Unclear approval level
- Human said no

**False negatives (asking too much) are preferred over false positives (damaging files).**

---

See [AGENTS.md](../AGENTS.md) · [Approval_Level_Map.md](Approval_Level_Map.md)