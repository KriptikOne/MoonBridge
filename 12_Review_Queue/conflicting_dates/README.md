# Conflicting Dates

Place records here when **filesystem, filename, document, event, or inferred dates disagree**.

---

## Typical signals

- `documentDate` differs from `fileCreatedDate` by years
- Filename date conflicts with metadata date
- Two inferred dates from folder vs filename clash
- Version file appears older than earlier version (e.g. `design_final_v3.ai` older than `design_final_v1.ai`)

---

## Manual next step

1. Document conflict in `chronologyNotes`
2. Set `dateConfidence` no higher than `medium` until resolved
3. Human picks `verifiedDate` or leaves Review Required
4. Export to handover only after human confirmation

*No automatic conflict detection runs in this template.*