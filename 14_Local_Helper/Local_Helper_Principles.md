# Local Helper Principles

Planning rules for an optional local or offline helper. These principles apply to any future implementation — nothing here runs automatically in this template.

---

## What the Local Helper may suggest

| Suggestion type | Example use |
|-----------------|-------------|
| Short file summaries | One-line description from filename, path label, or human-approved content |
| Folder summaries | What a batch or collection appears to contain |
| Possible tags | Thematic labels for catalog records |
| Possible collection names | Grouping hints for indexes or handover |
| Possible risk notes | Sensitivity or handling flags from path/filename rules |
| Likely document type | Spreadsheet, image, archive, notes — from extension or labels |
| Possible date clues | Suggested dates from filename or metadata — not verified |
| Possible sensitivity level | low / medium / high — for human review |
| Possible review priority | Review Required vs routine — human confirms |

All output uses **Suggested** framing: Suggested Summary, Suggested Tags, Suggested Date, Suggested Risk, Helper Confidence, Human Approved.

---

## What the Local Helper must not do

| Forbidden action | Reason |
|------------------|--------|
| Scan unapproved folders | Only exact allowlisted paths may be inventoried — with human approval |
| Run commands | Level 4+ requires per-command human approval |
| Move files by itself | Destructive / filesystem changes need explicit approval |
| Copy files by itself | Imports are copy-only and human-approved |
| Delete files | Never without explicit human approval |
| Rename files | Never without explicit human approval |
| Approve records by itself | Human approval remains final |
| Replace human review | Helper supports review; it does not close it |
| Act as the main intelligence layer | MoonBridge rules, allowlists, and humans lead |
| Send data to external services by default | Local/offline first; network requires explicit approval |
| Ignore MoonBridge approval levels | Levels 0–5 always apply |

---

## Suggested vs verified

| Label | Meaning |
|-------|---------|
| Suggested | Helper or model output — treat as a clue |
| Verified | Human confirmed — use for handover or approved status |
| Human Approved | Explicit human sign-off on a specific suggestion |

`helperSuggestedDate` is **not** `verifiedDate`. `humanApproved` must remain `false` until a human confirms.

---

## Related

- [Operating_Modes.md](Operating_Modes.md)
- [Local_Helper_Safety_Checklist.md](Local_Helper_Safety_Checklist.md)
- [AGENTS.md](../AGENTS.md) — sixteen laws
- [11_Chronology/](../11_Chronology/) — date confidence rules