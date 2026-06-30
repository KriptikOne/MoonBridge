# Chronology Record Fields

Standard date fields for catalogue and chronology records.

Chronology records describe dates and uncertainty. They do not grant permission for any filesystem or agent action.

---

## Field object

```json
{
  "fileCreatedDate": null,
  "fileModifiedDate": null,
  "importedDate": null,
  "documentDate": null,
  "eventDate": null,
  "inferredDate": null,
  "verifiedDate": null,
  "dateConfidence": "unknown",
  "dateSource": "unknown",
  "chronologyNotes": ""
}
```

---

## Field definitions

| Field | Description |
|-------|-------------|
| `fileCreatedDate` | Date the file was created on the **current filesystem** |
| `fileModifiedDate` | Last modified date from **filesystem metadata** |
| `importedDate` | Date MoonBridge added the record to the audit or catalogue |
| `documentDate` | Date found **inside the document**, if available |
| `eventDate` | Real-world date the file **appears to concern** |
| `inferredDate` | Date guessed from filename, folder name, metadata, or content |
| `verifiedDate` | Date **confirmed by a human** |
| `dateConfidence` | `unknown`, `low`, `medium`, `high`, or `verified` |
| `dateSource` | Where the date came from (e.g. `filesystem`, `filename`, `document_text`, `human_verified`) |
| `chronologyNotes` | Human-readable notes about conflicts, copies, or assumptions |

---

## Guidance

- **Filesystem dates are useful but not always authoritative.** After copying, syncing, exporting, or migration, created and modified dates may reflect the transfer — not when the content originated.
- **`importedDate` is an audit trail date**, not necessarily the date the file is about. It records when MoonBridge catalogued the item.
- **`verifiedDate` should only be set after human confirmation.** Use it when a reviewer has explicitly approved a date for handover or archive use.
- **`inferredDate` should never be treated as verified.** A guess from a filename or folder name remains a clue until a human sets `verifiedDate` and `dateConfidence: verified`.

See [date_confidence_rules.md](date_confidence_rules.md).