# Review Queue

The **Review Queue** holds records that need **human attention** before approval, chronology export, allowlisting, import, or handover.

Nothing is added here automatically by default. Humans or approved workflows flag records using [Review_Queue_Rules.md](Review_Queue_Rules.md).

---

## Queue folders

| Folder | When to use |
|--------|-------------|
| [missing_dates/](missing_dates/) | No useful date found |
| [conflicting_dates/](conflicting_dates/) | Dates disagree across sources |
| [suspicious_file_dates/](suspicious_file_dates/) | Filesystem dates look like copy/migration/export |
| [needs_date_confirmation/](needs_date_confirmation/) | Plausible date exists but needs human confirmation |

---

## Templates

- [Review_Queue_Rules.md](Review_Queue_Rules.md) — flagging rules
- [Review_Queue_Record_Template.md](Review_Queue_Record_Template.md) — per-record template

---

## Safety

- Review Queue presence does **not** grant scan or execution permission
- Queues are **not** populated by automatic scanning in this template
- Human decision and `verifiedDate` are required for handover

See [11_Chronology/](../11_Chronology/) · [13_Handover_Export/](../13_Handover_Export/)