# Operating Modes

MoonBridge supports two operating modes. **Basic Mode is not inferior or incomplete.** Assisted Mode is optional.

---

## Basic Mode

No AI or model use. MoonBridge works fully in Basic Mode.

| Capability | Notes |
|------------|-------|
| File inventory | Metadata-only on exact allowlisted paths — human approval required |
| Metadata collection | Path, name, extension, size, modified date — no content reading by default |
| Hashing / checksums | With explicit human approval when reading file bytes |
| File type detection | From extension or simple rules |
| Duplicate detection | Human-reviewed classification rules |
| Simple catalogue records | Manual or approved inventory exports |
| Chronology from filesystem metadata | Plus human-supplied document and verified dates |
| Review queues | Human-flagged date issues |
| Handover exports | Reviewed chronology summaries and timeline JSON |

Basic Mode does **not** require a Local Helper, local model, or network access.

---

## Assisted Mode

Optional local or offline helper enabled. All helper output is **suggested, not verified**.

| Capability | Notes |
|------------|-------|
| Suggested summaries | Short file or folder descriptions |
| Suggested tags | Possible thematic labels |
| Suggested risk notes | Possible sensitivity flags |
| Suggested collection grouping | Possible collection names |
| Suggested document dates | Possible date clues — not verified |
| Suggested event dates | Possible real-world date hints |
| Suggested review priority | Review Required vs routine — human confirms |

### Assisted Mode rules

- **Optional** — disable the helper and remain in Basic Mode at any time
- **Does not override approval levels** — Levels 0–5 still apply
- **Does not grant permission** to scan, read, move, copy, delete, upload, or execute
- **Does not replace** Review Queue, chronology verification, or handover human sign-off
- **Marked suggested** — every helper field uses Suggested framing until Human Approved

---

## Choosing a mode

| Situation | Recommended mode |
|-----------|------------------|
| No local model available | Basic Mode |
| Prefer no AI involvement | Basic Mode |
| Want draft summaries or tags for human review | Assisted Mode (when implemented) |
| Uncertain about a suggestion | Basic Mode or reject helper output |

---

## Future implementation

Assisted Mode remains **planning only** in this template. No helper code, model integration, or automatic suggestion pipeline ships today.

When implemented, a future helper should:

- Run local or offline by default
- Consume only human-approved or allowlisted inputs
- Write suggestions to catalog fields with `humanApproved: false`
- Log output as suggested, not verified

See [Local_Helper_Principles.md](Local_Helper_Principles.md) · [Local_Helper_Safety_Checklist.md](Local_Helper_Safety_Checklist.md)