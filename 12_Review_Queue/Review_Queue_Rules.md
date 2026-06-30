# Review Queue Rules

Flagging rules for records that need **human attention** before chronology export, handover, or archive use.

The Review Queue records uncertainty. It does **not** approve actions. It does **not** perform actions. Human review is required.

---

## When to flag a record

Use these rules when a human reviewer or approved workflow identifies a date issue. Nothing is added to the queue automatically by default in this template.

### No useful date found

- All chronology date fields are null or empty
- `dateConfidence` is `unknown`
- Filename, folder name, and filesystem metadata provide no usable clue

**Typical queue folder:** [missing_dates/](missing_dates/)

---

### Filesystem date conflicts with document date

- `documentDate` and `fileCreatedDate` or `fileModifiedDate` disagree by a significant margin
- Document text suggests one period; filesystem metadata suggests another

**Typical queue folder:** [conflicting_dates/](conflicting_dates/)

---

### File created date appears to be a later copy date

- `fileCreatedDate` clusters on a migration, export, backup, or sync day
- Created date is much later than `documentDate`, `eventDate`, or `inferredDate`
- Many files share the same suspicious created timestamp

**Typical queue folder:** [suspicious_file_dates/](suspicious_file_dates/)

---

### Filename date conflicts with metadata date

- Filename implies one year or month; filesystem or document fields imply another
- Inferred date from filename does not match `fileModifiedDate` or `documentDate`

**Typical queue folder:** [conflicting_dates/](conflicting_dates/)

---

### Modified date is older or newer than expected

- `fileModifiedDate` is older than `fileCreatedDate` without explanation
- Modified date predates the inferred content period
- Modified date is unexpectedly recent for archival material

**Typical queue folder:** [suspicious_file_dates/](suspicious_file_dates/) or [conflicting_dates/](conflicting_dates/)

---

### Folder contains files from a wide time range

- A single folder or batch spans many years with no clear collection period
- Chronology clusters suggest unrelated time periods grouped together

**Typical queue folder:** [needs_date_confirmation/](needs_date_confirmation/)

---

### Possible original / copy / export sequence is unclear

- Copy chain is unknown — unclear which file is the original
- Export or sync may have reset filesystem dates
- Multiple versions exist without a verified timeline

**Typical queue folder:** [suspicious_file_dates/](suspicious_file_dates/) or [conflicting_dates/](conflicting_dates/)

---

### Version naming conflicts with chronology

- Version numbers or suffixes imply a sequence that filesystem or inferred dates contradict
- A later version file appears older than an earlier version file

**Example:** `design_final_v3.ai` appears older than `design_final_v1.ai`.

**Typical queue folder:** [conflicting_dates/](conflicting_dates/)

---

## What the queue does not do

| The queue does | The queue does not |
|----------------|-------------------|
| Record uncertainty for human attention | Approve scans, reads, moves, copies, or deletes |
| Suggest issue types and affected fields | Populate itself from automatic scanning |
| Point reviewers to chronology fields | Set `verifiedDate` without a human |
| Support handover preparation | Grant allowlist or execution permission |

---

## After human review

1. Update `chronologyNotes` with the decision and sources checked
2. Set `verifiedDate` and `dateConfidence: verified` only after explicit human confirmation
3. Leave `inferredDate` unverified unless a human confirms it
4. Remove or archive the queue entry in your workflow when resolved

See [Review_Queue_Record_Template.md](Review_Queue_Record_Template.md) · [11_Chronology/](../11_Chronology/) · [13_Handover_Export/](../13_Handover_Export/)