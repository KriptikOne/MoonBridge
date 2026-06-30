# Public Template Sanitisation Check

Use before publishing a MoonBridge copy as a public open-source template.

---

## Checklist

### Private and personal content

- [ ] No private project names (search your working copy for known private codenames)
- [ ] No real usernames in active paths or allowlist entries
- [ ] No real home paths — use `<MOONBRIDGE_ROOT>` and `<HOME>` in docs
- [ ] No machine-specific details (hardware models, OS version names, personal targets)
- [ ] No personal archives, client work, or family material in MoonPool
- [ ] No contents in `Private_Do_Not_Scan/` beyond template placeholders

### Secrets

- [ ] No passwords, API keys, tokens, or `.env` files
- [ ] No private keys, wallet seeds, recovery phrases, or mnemonics
- [ ] No identity or financial documents
- [ ] Generic security warnings in docs are OK — real secrets are not

### Allowlist and MoonPool

- [ ] `approved_scan_directories.txt` has no active approved paths (comments only)
- [ ] `file_catalog.csv`, `scan_log.csv`, `import_log.csv` are empty or template-only
- [ ] MoonPool contains only empty template folders and README files
- [ ] No real files inside `Approved_Batches/` folders

### Scripts

- [ ] Helper scripts do not execute commands by default (dry-run / review-first)
- [ ] Scripts remain allowlist-only and copy-first
- [ ] No `chmod +x` applied in the template package
- [ ] Shell comments use platform-neutral wording

### Public project files

- [ ] README explains problem, safety model, and bridge concept
- [ ] LICENSE present (MIT)
- [ ] CONTRIBUTING.md present
- [ ] SECURITY.md present
- [ ] ROADMAP.md present
- [ ] PUBLICATION_CHECKLIST.md present
- [ ] AGENTS.md sixteen laws intact

### Dashboard and prompts

- [ ] `dashboard.html` is static — no external scripts, fonts, APIs, or network calls
- [ ] `dashboard_data_example.json` is clearly sample-only
- [ ] Agent prompts use `<MOONBRIDGE_ROOT>` placeholders
- [ ] Automation plans document ideas only — no working automation shipped

### Keyword search

Run a text search for private terms from your working copy. Confirm zero matches in active content.

---

## Sign-off

| Field | Value |
|-------|-------|
| Reviewer | |
| Date | |
| Version | |
| Safe to publish | yes / no |

---

*Sanitise before you publish. Protect future users and yourself.*