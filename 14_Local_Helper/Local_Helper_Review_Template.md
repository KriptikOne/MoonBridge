# Local Helper Review Template

Human review template for helper suggestions. Copy per record. Helper output is **suggested, not verified** until a human confirms.

---

## Record

| Field | Value |
|-------|-------|
| **Record id** | `catalog-record-___` |
| **Item name** | *(filename or folder name)* |
| **Helper suggestion reviewed** | yes / no / deferred |

---

## Suggested fields (from helper)

| Field | Value |
|-------|-------|
| **Suggested summary** | — |
| **Suggested tags** | — |
| **Suggested date** | — |
| **Suggested risk** | — |
| **Helper confidence** | `unknown` / `low` / `medium` / `high` |
| **Helper date source** | — |

---

## Human decisions

| Question | Answer |
|----------|--------|
| **Human accepts summary?** | yes / no / edit |
| **Human accepts tags?** | yes / no / edit |
| **Human accepts date?** | yes / no / edit |
| **Human accepts risk note?** | yes / no / edit |
| **Human edits required** | — |
| **Human approval status** | `pending` / `approved` / `rejected` |

---

## Final human-approved fields

Set only after explicit review. Do not copy helper suggestions verbatim without checking.

| Field | Value |
|-------|-------|
| **Approved summary** | — |
| **Approved tags** | — |
| **verifiedDate** (if date accepted) | — |
| **Approved risk note** | — |
| **`humanApproved`** | `false` until human sets `true` |

---

## Reviewer notes

*(Why accepted or rejected, conflicts with chronology, Review Queue flags, handover impact.)*

---

## Example (fictional)

| Field | Value |
|-------|-------|
| **Record id** | `catalog-record-sample-001` |
| **Item name** | `Example_Project_Brief.pdf` |
| **Suggested summary** | Sample project brief document — suggested from filename only |
| **Suggested date** | `2022-03` |
| **Helper confidence** | `medium` |
| **Human accepts date?** | no — defer to Review Queue |
| **Human approval status** | `pending` |
| **Reviewer notes** | Helper date is a clue only. Do not set verifiedDate from helperSuggestedDate. |

---

*Helper suggestions do not grant scan, move, copy, delete, upload, execution, or allowlist permission.*