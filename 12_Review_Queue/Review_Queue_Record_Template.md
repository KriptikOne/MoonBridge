# Review Queue Record Template

Per-record template for human review of chronology issues.

Copy this block for each flagged item. Fill by hand from catalog or chronology exports. The queue records uncertainty — it does not approve or perform actions.

---

## Record

| Field | Value |
|-------|-------|
| **Record id** | `catalog-record-___` |
| **Item name** | *(filename or folder name)* |
| **Issue type** | *(e.g. missing_date, conflicting_dates, suspicious_file_date, needs_date_confirmation, version_naming_conflict)* |
| **Queue folder** | *(e.g. missing_dates, conflicting_dates, suspicious_file_dates, needs_date_confirmation)* |

---

## Issue detail

| Field | Value |
|-------|-------|
| **Affected date fields** | *(e.g. fileCreatedDate, documentDate, inferredDate)* |
| **Why review is required** | *(plain English explanation)* |
| **Suggested next human action** | *(e.g. confirm document date, reject filesystem date, leave unknown)* |

---

## Chronology context

| Field | Value |
|-------|-------|
| **fileCreatedDate** | — |
| **fileModifiedDate** | — |
| **importedDate** | — |
| **documentDate** | — |
| **eventDate** | — |
| **inferredDate** | — |
| **verifiedDate** | — |
| **dateConfidence** | `unknown` / `low` / `medium` / `high` / `verified` |
| **dateSource** | *(e.g. filesystem, filename, visible document text, human_verified)* |

---

## Human decision

| Field | Value |
|-------|-------|
| **Human decision** | *(pending / confirmed / rejected / deferred)* |
| **Final verified date** | — *(set only after human confirmation)* |
| **Notes** | *(conflicts resolved, assumptions, copy chain, version sequence)* |

---

## Example (fictional)

| Field | Value |
|-------|-------|
| **Record id** | `catalog-record-010` |
| **Item name** | `design_final_v3.ai` |
| **Issue type** | `version_naming_conflict` |
| **Queue folder** | `conflicting_dates` |
| **Affected date fields** | `fileModifiedDate`, `inferredDate` |
| **Why review is required** | `design_final_v3.ai` appears older than `design_final_v1.ai` — version naming conflicts with chronology |
| **Suggested next human action** | Compare file dates and version history; set verifiedDate only after human confirms sequence |
| **dateConfidence** | `medium` |
| **dateSource** | `filename` |
| **Human decision** | `pending` |
| **Final verified date** | — |
| **Notes** | Filename suggests v3 is latest; filesystem dates suggest opposite order |

---

*Review Queue presence does not grant permission to scan, read, move, copy, delete, execute, or edit anything.*