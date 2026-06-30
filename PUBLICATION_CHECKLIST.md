# Publication Checklist

Use this list **before** making the MoonBridge public repository visible. Complete every item; skip none.

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
- [ ] No `.git` internals inspected during sanitisation without need
- [ ] **Fresh Git history** will be initialised only after this checklist passes
- [ ] Plan: push to a **private** remote first, review online, then switch to public

---

## 3. Paths and usernames

- [ ] No real usernames or machine-specific paths in active paths
- [ ] Allowlist examples use `/Users/yourname/...` placeholders only
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

Run a keyword check for private or machine-specific terms. Confirm **zero matches** in active content:

- [ ] Private project codenames (search for known private names from your working copy)
- [ ] Machine-specific details (hardware model names, OS version names, personal target hardware)
- [ ] Real usernames or home paths (e.g. `/Users/yourname` used as an active path, not a placeholder)
- [ ] Personal sovereign stack, private agent system, crypto-specific project names

---

## 7. Core documentation review

- [ ] [README.md](README.md) — generic, local-first, safety model clear
- [ ] [LICENSE](LICENSE) — MIT, Copyright (c) 2026 MoonBridge contributors
- [ ] [SECURITY.md](SECURITY.md) — responsible disclosure, no secrets in issues
- [ ] [CONTRIBUTING.md](CONTRIBUTING.md) — safety-first contribution rules
- [ ] [ROADMAP.md](ROADMAP.md) — generic milestones only
- [ ] [AGENTS.md](AGENTS.md) — sixteen laws intact; whole-computer scanning rule clear
- [ ] [VERSION.md](VERSION.md) and [CHANGELOG.md](CHANGELOG.md) — accurate bootstrap version

---

## 8. Safety model intact

Confirm these are still explicit in docs and scripts:

- [ ] No whole-computer scanning
- [ ] MoonPool as controlled intake
- [ ] Allowlist-only scanning
- [ ] Metadata-only inventory
- [ ] Copy-first imports
- [ ] Approval before code execution
- [ ] Approval before network actions
- [ ] Approval before destructive actions
- [ ] Approval before Git operations
- [ ] Approval before cloud sync actions
- [ ] Approval before permission changes

---

## 9. Scripts and permissions

- [ ] Helper scripts are review-first (not blindly executable)
- [ ] Scripts remain allowlist-only and copy-first
- [ ] No `chmod +x` applied during template packaging
- [ ] No shell script edits with personal or machine-specific wording

---

## 10. Final steps (after checklist passes)

- [ ] Initialise **fresh** Git repository
- [ ] First commit contains only reviewed public template
- [ ] Push to **private** remote
- [ ] Review repository online (file tree, README render, no leaked paths)
- [ ] Make repository **public**
- [ ] Tag release `v0.1.0-bootstrap` if appropriate

---

## Sign-off

| Field | Value |
|-------|-------|
| Reviewer | |
| Date | |
| Version | 0.1.0-bootstrap |
| Notes | |

---

*Publish only when every box is checked.*