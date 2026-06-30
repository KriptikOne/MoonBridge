# Suspicious File Dates

Place records here when **file created/modified dates** look like copy, migration, export, backup, or sync dates — not original creation.

---

## Typical signals

- `fileCreatedDate` and `fileModifiedDate` identical on large archives
- Created date matches bulk migration day for many files
- Modified date older than created date unexpectedly
- Dates cluster on OS install or backup restore day

---

## Manual next step

1. Note likely copy chain in `chronologyNotes`
2. Prefer `documentDate` or `eventDate` if human-approved to read
3. Do not treat filesystem date as original date without review
4. Flag for [needs_date_confirmation/](../needs_date_confirmation/) when a better date is proposed

*Filesystem metadata labels only — no content reading by default.*