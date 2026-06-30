# Local Helper Safety Checklist

Use this checklist before enabling any future Local Helper or Assisted Mode workflow. All items must pass. This template ships no running helper — the checklist applies to future implementation only.

---

## Scope and scanning

- [ ] **Exact approved folder only** — helper input limited to paths on `approved_scan_directories.txt` or human-supplied catalog records
- [ ] **No whole-computer scanning** — refuse home folder, Desktop, Documents, Downloads, mounts, and system paths
- [ ] **No parent-folder scanning** — only exact allowlisted child paths, not parent directories

---

## Network and execution

- [ ] **No network by default** — local/offline first; external calls require explicit human approval per action
- [ ] **No command execution** — helper does not run shell, npm, node, or package managers

---

## File actions

- [ ] **No file moves**
- [ ] **No file copies**
- [ ] **No deletes**
- [ ] **No renames**
- [ ] **No uploads**

---

## Approvals and review

- [ ] **No final approvals** — helper does not set `humanApproved: true` or `verifiedDate` by itself
- [ ] **Suggestions clearly marked** — Suggested Summary, Suggested Tags, Suggested Date, Suggested Risk
- [ ] **Human review required** — every suggestion reviewed before catalog or handover use
- [ ] **Approval level preserved** — MoonBridge Levels 0–5 unchanged
- [ ] **Output logged as suggested, not verified** — chronology and catalog fields distinguish clue from confirmation

---

## Framing

- [ ] Helper does **not** replace human review or MoonBridge rules
- [ ] Helper does **not** act as the main intelligence layer
- [ ] Basic Mode remains valid without the helper

---

## Sign-off (human)

| Field | Value |
|-------|-------|
| Reviewer | — |
| Date | — |
| Approved scope (exact paths) | — |
| Mode | Basic / Assisted |
| Notes | — |

---

*The Local Helper may suggest. The human or rule system approves.*