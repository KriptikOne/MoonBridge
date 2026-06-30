# Import Request Template

**Level 3 only — copy-first import with dry-run default.**

---

## Template

```
IMPORT REQUEST — MoonBridge (Level 3)

I am requesting copy-only import approval.

Source path (explicit, human-provided):
[exact source path outside or inside MoonBridge]

Destination (inside MoonBridge):
<MOONBRIDGE_ROOT>/[destination path]

Mode:
- [ ] Dry-run first (default — show what would happen)
- [ ] Execute copy (only after dry-run review and explicit --execute approval)

Safety confirmations:
- [ ] Source is NOT whole-computer scan
- [ ] Source is NOT common home-folder location without approval
- [ ] Import will COPY only — originals will NOT be moved
- [ ] Script will refuse to overwrite existing files
- [ ] No symlinks followed for copying

Proposed command (dry-run):
bash <MOONBRIDGE_ROOT>/05_Helper_Tools/copy_import_COPY_ONLY.sh --source "[source]" --dest "<MOONBRIDGE_ROOT>/[dest]"

Proposed command (execute — only after dry-run approval):
bash <MOONBRIDGE_ROOT>/05_Helper_Tools/copy_import_COPY_ONLY.sh --source "[source]" --dest "<MOONBRIDGE_ROOT>/[dest]" --execute

Files affected:
[list expected copies]

Rollback plan:
[copies can be deleted manually with Level 5 approval; originals remain at source]

I will wait for explicit approval before any real copy.
```

---

## Rules

- Never move originals by default
- Always dry-run first unless human explicitly skips (discouraged)
- Log to import_log.csv after approved copy
- Stop if source looks sensitive — suggest quarantine instead