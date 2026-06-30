# Optional Local Helper

The **Local Helper** is an optional future local or offline assistant that may suggest summaries, tags, risk notes, collection names, likely document types, review priority, and date clues.

**MoonBridge must work without it.** Basic Mode is fully valid. Assisted Mode adds suggestions only — never final decisions.

---

## Core rule

**The Local Helper may suggest.**  
**The human or rule system approves.**

Helper output is **suggested, not verified**. Human approval remains final.

---

## What the Local Helper may do (when implemented)

- Suggest short file or folder summaries
- Suggest possible tags and collection names
- Suggest risk notes and review priority
- Suggest likely document type and date clues
- Support human review — not replace it

All suggestions stay inside approved MoonBridge boundaries and approval levels.

---

## What the Local Helper must not do

- Make final decisions or approve records by itself
- Perform file actions (move, copy, delete, rename, upload)
- Scan unapproved folders or the whole computer
- Run commands or grant permission to act
- Send data to external services by default
- Act as the main intelligence layer for MoonBridge

---

## Operating modes

| Mode | Description |
|------|-------------|
| **Basic Mode** | No AI or model use — inventory, metadata, chronology, review queues, handover |
| **Assisted Mode** | Optional local/offline helper enabled — all output marked suggested |

See [Operating_Modes.md](Operating_Modes.md).

---

## Contents

| File | Purpose |
|------|---------|
| [Local_Helper_Principles.md](Local_Helper_Principles.md) | What may be suggested vs what is forbidden |
| [Operating_Modes.md](Operating_Modes.md) | Basic Mode and Assisted Mode |
| [local_helper_output_fields.json](local_helper_output_fields.json) | Field structure template |
| [local_helper_sample_output.json](local_helper_sample_output.json) | Public-safe sample suggestions |
| [Local_Helper_Safety_Checklist.md](Local_Helper_Safety_Checklist.md) | Pre-use safety checklist |
| [Local_Helper_Review_Template.md](Local_Helper_Review_Template.md) | Human review template for suggestions |

---

## Status in this template

This folder is **planning and schema only**. No helper code, model integration, scanners, or automation ships in this release.

---

*MoonBridge works in Basic Mode today. Assisted Mode is optional for the future.*