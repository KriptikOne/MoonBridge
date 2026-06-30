# Chronology

**Chronology is a core MoonBridge feature** for placing files, folders, catalogue records, collections, projects, and archives in time.

---

## Purpose

Chronology helps organise when material belongs — without scanning, inferring, or acting on files by itself.

MoonBridge separates:

| Date type | Meaning |
|-----------|---------|
| Filesystem dates | Created or modified on the current system |
| Document dates | Dates found inside a file, when available |
| Event dates | Real-world dates the material appears to concern |
| Inferred dates | Clues from filename, folder name, or metadata labels |
| Verified dates | Dates a human has confirmed |

Chronology supports:

- Migration readiness
- Archive preparation
- Audit trails
- Review queues
- Handover exports

---

## Simple flow

```
catalogue record
    ↓
chronology fields
    ↓
date confidence
    ↓
review queue if uncertain
    ↓
timeline export / handover summary
```

Chronology records describe dates and uncertainty. Human verification remains final.

---

## What Chronology does not do

- Does **not** scan folders or files by itself
- Does **not** infer dates automatically without a defined, human-supplied source
- Does **not** replace human verification
- Does **not** grant approval to scan, read, move, copy, delete, execute, upload, or edit anything

Filesystem dates may be misleading after copying, syncing, exporting, or migration. Guessed dates are not verified dates. Date confidence must be explicit.

---

## Contents

| File | Purpose |
|------|---------|
| [chronology_record_fields.md](chronology_record_fields.md) | Field definitions |
| [date_confidence_rules.md](date_confidence_rules.md) | Confidence levels |
| [chronology_event_schema.json](chronology_event_schema.json) | Timeline event example |
| [chronology_report_template.md](chronology_report_template.md) | Report template |
| [chronology_report_sample.md](chronology_report_sample.md) | Sample report |
| [chronology_events_sample.json](chronology_events_sample.json) | Sample timeline export |
| [catalogue_chronology_extension.json](catalogue_chronology_extension.json) | Catalog + chronology sample |

---

## Related

- [12_Review_Queue/](../12_Review_Queue/) — human attention for uncertain dates (human-prepared, not auto-populated)
- [13_Handover_Export/](../13_Handover_Export/) — handover templates for reviewed chronology
- [04_Lists_And_Records/file_catalog_schema.md](../04_Lists_And_Records/file_catalog_schema.md) — catalog chronology fields

---

*Dates are evidence. Verification is human. Chronology is documentation-only — no scanning engine.*