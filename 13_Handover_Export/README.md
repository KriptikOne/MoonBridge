# Handover Export

**Handover Export** prepares structured outputs for later systems, people, archives, or agents.

It packages **reviewed information** for future use — chronology summaries, timeline JSON, and manifest templates. Nothing here runs automatically.

---

## Purpose

Handover Export helps you:

- Summarise date ranges and timeline events from reviewed catalog records
- Document missing, conflicting, and unverified dates before archive or migration
- Attach Review Queue summaries to a handover package
- Provide machine-readable JSON that future tools may consume **after human approval**

---

## What Handover Export does not do

- Does **not** grant permission to scan, read, move, copy, delete, execute, upload, or edit anything
- Does **not** replace human approval
- Does **not** generate exports automatically from filesystem scanning
- Does **not** populate Review Queues or verify dates by itself

Human verification remains final. Chronology fields describe dates and uncertainty — they are not approval tokens.

---

## Contents

| File | Purpose |
|------|---------|
| [chronology_summary.md](chronology_summary.md) | Template handover summary for chronology |
| [timeline_export_sample.json](timeline_export_sample.json) | Public-safe sample timeline export |
| [handover_manifest_template.json](handover_manifest_template.json) | Manifest template for a handover package |

---

## Related

- [11_Chronology/](../11_Chronology/) — date fields and confidence rules
- [12_Review_Queue/](../12_Review_Queue/) — records needing human attention
- [04_Lists_And_Records/file_catalog_schema.md](../04_Lists_And_Records/file_catalog_schema.md) — catalog + chronology fields

---

*Handover Export prepares information. Humans approve what happens next.*