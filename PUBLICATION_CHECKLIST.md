# Publication Checklist

Use this list **before** making the MoonBridge public repository visible or tagging a release. Complete every item; skip none.

**Target release:** `0.6.0-local-helper-planning` (public local-first audit, catalogue, chronology, handover, and preflight template)

---

## 1. Personal and private content

- [ ] No personal files (documents, images, audio, video, archives)
- [ ] No real client work, family archives, or private correspondence
- [ ] No contents in `Private_Do_Not_Scan/` beyond template README placeholders
- [ ] No quarantine or staging material with real data
- [ ] No personal project names in docs, indexes, catalogs, or filenames

---

## 2. Git and history

- [ ] No `.git` directory from a private working copy (or history has been reviewed)
- [ ] Fresh Git history initialised only after this checklist passes
- [ ] Plan: push to a **private** remote first, review online, then switch to public

---

## 3. Paths and usernames

- [ ] No real usernames or machine-specific paths in active paths
- [ ] Allowlist examples use `<MOONBRIDGE_ROOT>/...` placeholders only
- [ ] No machine-specific home paths in CSV, JSON, or logs
- [ ] No private machine hostnames or internal network paths

---

## 4. Allowlist and MoonPool

- [ ] `04_Lists_And_Records/approved_scan_directories.txt` has **no active approved paths** (comments only)
- [ ] `file_catalog.csv`, `scan_log.csv`, and `import_log.csv` are empty or template-only
- [ ] MoonPool contains **only empty template folders** and README files
- [ ] No approved batch folders with real filenames

---

## 5. Secrets and sensitive material

- [ ] No passwords, API keys, tokens, or `.env` files
- [ ] No private keys, wallet seeds, recovery phrases, or mnemonics
- [ ] No identity or financial documents
- [ ] Generic security warnings in docs are fine — real secrets are not

---

## 6. Keyword review

Confirm **zero matches** for private or machine-specific terms in active content:

- [ ] Private project codenames
- [ ] Machine-specific details (hardware model names, OS version names)
- [ ] Real usernames or home paths as active allowlist entries
- [ ] Personal agent system or private stack names

Placeholders `<MOONBRIDGE_ROOT>` and `<HOME>` in docs are fine.

---

## 7. Core documentation review

- [ ] [README.md](README.md) — generic, local-first, safety model clear, module definitions present
- [ ] [LICENSE](LICENSE) — MIT, Copyright (c) 2026 MoonBridge contributors
- [ ] [SECURITY.md](SECURITY.md) — responsible disclosure, no secrets in issues
- [ ] [CONTRIBUTING.md](CONTRIBUTING.md) — safety-first contribution rules
- [ ] [ROADMAP.md](ROADMAP.md) — shipped vs planned milestones accurate
- [ ] [AGENTS.md](AGENTS.md) — sixteen laws intact; whole-computer scanning rule clear
- [ ] [VERSION.md](VERSION.md) — `0.6.0-local-helper-planning` with accurate includes/excludes
- [ ] [CHANGELOG.md](CHANGELOG.md) — entries through `0.6.0-local-helper-planning`; Unreleased is planned work only

---

## 8. Static tools — dashboard and Auditor

- [ ] `dashboard.html` — static local HTML; no network, no automation
- [ ] `moonpool_auditor.html` — planning-only; no file operations
- [ ] Auditor uses built-in sample records and/or **manually pasted catalog JSON**
- [ ] No `fetch`, `XMLHttpRequest`, `FileReader`, `localStorage`, or file-picker APIs in Auditor
- [ ] No external scripts, fonts, APIs, analytics, or CDNs in dashboard or Auditor
- [ ] Action plans are **prepared, not run** — wording says no execution

---

## 9. Module maturity wording

- [ ] **Chronology** — documentation-only; does not claim scanning or automatic inference
- [ ] **Review Queue** — human-prepared; does not claim automatic population
- [ ] **Handover Export** — templates only; does not grant permission to act
- [ ] **14_Local_Helper/** — docs and schema only; no helper/model implementation
- [ ] No claims that helper runs, scans, reads, approves, or moves files

---

## 10. Folder README coverage

Confirm `README.md` exists in:

- [ ] `00_Read_Me_First` through `14_Local_Helper`
- [ ] `MoonPool/`
- [ ] `Private_Do_Not_Scan/`

---

## 11. Safety model intact

- [ ] No whole-computer scanning
- [ ] MoonPool as controlled intake
- [ ] Allowlist-only scanning
- [ ] Metadata-only inventory
- [ ] Copy-first imports
- [ ] Approval before code execution, network, destructive actions, Git, cloud sync, permission changes
- [ ] No automation by default

---

## 12. Scripts and permissions

- [ ] Helper scripts are review-first (not blindly executable)
- [ ] Scripts remain allowlist-only and copy-first
- [ ] No `chmod +x` applied during template packaging

---

## 13. Final steps (after checklist passes)

- [ ] Initialise or verify Git repository
- [ ] Commit contains only reviewed public template
- [ ] Push to **private** remote (if first publish)
- [ ] Review repository online (file tree, README render, no leaked paths)
- [ ] Make repository **public** (when ready)
- [ ] Tag `v0.6.0-local-helper-planning` if appropriate

---

## Sign-off

| Field | Value |
|-------|-------|
| Reviewer | |
| Date | |
| Version | 0.6.0-local-helper-planning |
| Notes | |

---

*Publish only when every box is checked.*