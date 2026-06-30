# File Catalog Schema

Documentation for MoonBridge catalog-style JSON used with the MoonPool Auditor and future metadata inventories.

---

## What the catalog is

A **structured list of reviewed items** — each record describes one file or folder the human has already decided to track. Fields are metadata labels only (name, zone, size label, risk flag, review status).

Typical sources:

- **Public sample:** `sample_file_catalog.json` (fictional records for learning)
- **Private catalog:** produced later by an approved Level 1 metadata-only inventory on an exact allowlisted path
- **Manual catalog:** hand-authored JSON following this schema

---

## What the catalog is not

- Not a whole-computer scan result
- Not file content or extracted text
- Not automatic approval for agents or scripts
- Not a live filesystem mirror
- Not a substitute for `approved_scan_directories.txt`

Catalogs do **not** grant permission to scan, read, move, copy, or execute anything.

---

## Safety rules

| Rule | Detail |
|------|--------|
| No content reading by default | Records use labels and paths — not document bodies |
| No whole-computer scanning | Catalogs cover explicit MoonPool-related items only |
| No parent-folder scanning | Each record must refer to a reviewed item or exact batch folder |
| Explicit paths only | Use `mock_path` or `approved_path` for one item or batch |
| Public examples | Use `<MOONBRIDGE_ROOT>` placeholders |
| Private catalogs | Keep real user catalogs private unless intentionally shared |

---

## Top-level fields

| Field | Required | Description |
|-------|----------|-------------|
| `moonbridge_catalog_version` | yes | Schema version string (e.g. `"0.1"`) |
| `catalog_type` | yes | e.g. `manual_sample_catalog`, `metadata_inventory` |
| `generated_by` | yes | How the catalog was created |
| `scan_scope` | yes | What was in scope — must not imply whole-computer scan |
| `root_placeholder` | yes | Usually `"<MOONBRIDGE_ROOT>"` |
| `records` | yes | Array of record objects |

---

## Record fields

| Field | Required | Description |
|-------|----------|-------------|
| `id` | yes | Unique record id (e.g. `sample-001`) |
| `name` | yes | File or folder name |
| `item_type` | yes | e.g. document, image, folder, archive, spreadsheet |
| `zone` | yes | MoonPool zone label (see zone names below) |
| `mock_path` or `approved_path` | yes | Full path with `<MOONBRIDGE_ROOT>` in public examples |
| `size_label` | no | Human-readable size (not read from disk by Auditor) |
| `modified_label` | no | Human-readable date label |
| `risk` | no | `low`, `medium`, `high` — from filename/path rules only |
| `review_status` | no | e.g. pending review, in progress, organised |
| `recommended_next_step` | no | Suggested human action |
| `notes` | no | Reviewer notes |

### Zone names (Auditor mapping)

| Zone string | Auditor key |
|-------------|-------------|
| `00_Staging_Do_Not_Scan` | staging |
| `Approved_Batches` | approved |
| `Working` | working |
| `Finished` | finished |
| `Archive` | archive |
| `99_Quarantine_Do_Not_Scan` | quarantine |

---

## How this connects to the Auditor

The [MoonPool Auditor](../08_Human_Dashboard/moonpool_auditor.html) can:

1. Display **built-in sample records** (default mode), or
2. Accept **pasted catalog JSON** in the Catalog Input panel (parsed in-browser only)

The Auditor uses catalog records to:

- Show items in Columns, List, and Grid views
- Populate the Inspector with metadata labels
- Generate Markdown and JSON **action plans**

The Auditor **does not**:

- Load files from disk automatically
- Scan folders
- Execute plans
- Edit the allowlist
- Treat catalog presence as approval

See [auditor_catalog_guide.md](../08_Human_Dashboard/auditor_catalog_guide.md).

---

## Chronology fields

Catalog records may include optional chronology fields alongside standard metadata. See [11_Chronology/chronology_record_fields.md](../11_Chronology/chronology_record_fields.md) and [catalogue_chronology_extension.json](../11_Chronology/catalogue_chronology_extension.json) for examples.

| Field | Description |
|-------|-------------|
| `fileCreatedDate` | Date the file was created on the current filesystem |
| `fileModifiedDate` | Last modified date from filesystem metadata |
| `importedDate` | Date MoonBridge added the record to the audit or catalogue |
| `documentDate` | Date found inside the document, if available |
| `eventDate` | Real-world date the file appears to concern |
| `inferredDate` | Date guessed from filename, folder name, metadata, or content |
| `verifiedDate` | Date confirmed by a human |
| `dateConfidence` | `unknown`, `low`, `medium`, `high`, or `verified` |
| `dateSource` | Where the date came from |
| `chronologyNotes` | Human-readable notes about conflicts or assumptions |

### Chronology safety

- Chronology fields **do not grant approval** to scan, read, move, copy, delete, execute, or edit anything
- `verifiedDate` requires **human confirmation** — do not set from inferred clues alone
- `inferredDate` is **not verified** — treat as a clue until a human sets `verifiedDate`
- `dateConfidence` must be **explicit** on every record that includes chronology fields

---

## Local Helper suggestion fields

Catalog records may include optional Local Helper suggestion fields when Assisted Mode is used in the future. See [14_Local_Helper/](../14_Local_Helper/) and [local_helper_output_fields.json](../14_Local_Helper/local_helper_output_fields.json).

| Field | Description |
|-------|-------------|
| `localHelperEnabled` | Whether Assisted Mode suggestions apply to this record |
| `helperSuggestedSummary` | Suggested short summary — not verified |
| `helperSuggestedTags` | Suggested tag list — not verified |
| `helperSuggestedCollection` | Suggested collection name — not verified |
| `helperSuggestedRisk` | Suggested risk note — not verified |
| `helperSuggestedDate` | Suggested date clue — not verified |
| `helperDateSource` | Where the helper derived the date clue |
| `helperConfidence` | `unknown`, `low`, `medium`, or `high` — helper confidence only |
| `humanApproved` | `false` until a human explicitly confirms suggestions |

### Local Helper safety

- Helper suggestions are **not verified** — do not copy to `verifiedDate` or chronology verified fields without human review
- `humanApproved` must remain **`false`** until a human confirms each accepted suggestion
- Helper fields **do not grant** scan, move, copy, delete, upload, execution, or allowlist permission

---

## Related files

- [sample_file_catalog.json](sample_file_catalog.json) — public sample
- [file_catalog.csv](file_catalog.csv) — CSV format for approved inventories (blank in template)
- [Scan_Policy.md](../01_Rules_And_Safety/Scan_Policy.md) — metadata-only rules