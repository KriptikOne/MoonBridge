# Date Confidence Rules

How MoonBridge labels date reliability.

Date confidence must be explicit. Guessed dates are not verified dates. Human verification remains final.

---

## Confidence levels

| Level | Meaning |
|-------|---------|
| **unknown** | No useful date found |
| **low** | Weak clue, such as a vague folder name or unclear filename |
| **medium** | Plausible clue, such as a filename or folder context |
| **high** | Strong clue, such as visible document text or reliable metadata — still not verified until a human confirms |
| **verified** | Confirmed by a human |

---

## Core rules

1. **Guessed dates are not verified dates** — `inferredDate` never implies `verifiedDate`
2. **Filesystem dates may be copy dates** — created or modified after migration does not mean the content is new
3. **Human-confirmed dates** should set `verifiedDate` and `dateConfidence: verified`
4. **Chronology does not grant approval** for scan, read, move, copy, delete, execute, upload, or edit actions

---

## Example 1

Filename suggests a month but nothing is verified:

```json
{
  "inferredDate": "2022-03",
  "dateConfidence": "medium",
  "dateSource": "filename",
  "chronologyNotes": "Filename includes March 2022, but no verified document date found."
}
```

---

## Example 2

Document text conflicts with filesystem metadata:

```json
{
  "documentDate": "2018-06-14",
  "fileCreatedDate": "2024-09-02",
  "dateConfidence": "high",
  "dateSource": "visible document text",
  "chronologyNotes": "Filesystem date appears to be from a later copy or migration."
}
```

---

## When confidence is uncertain

Records with low or conflicting confidence may be flagged for human review in a future Review Queue phase. Chronology labels uncertainty; it does not resolve it automatically.