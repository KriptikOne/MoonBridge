# Agent Prompts

Reusable **prompt templates** for working with AI assistants or future local agents inside MoonBridge.

## Purpose

These prompts help agents:

- Stay inside `<MOONBRIDGE_ROOT>`
- Respect Approval Levels 0–5
- Ask before risky actions
- Use MoonPool and allowlists correctly
- Stop when uncertain

## Templates

| File | Use when |
|------|----------|
| [Agent_Operating_Prompt.md](Agent_Operating_Prompt.md) | Starting any MoonBridge task with an agent |
| [Approval_Request_Template.md](Approval_Request_Template.md) | Agent needs human OK for a risky action |
| [Scan_Request_Template.md](Scan_Request_Template.md) | Level 1 metadata-only inventory |
| [Import_Request_Template.md](Import_Request_Template.md) | Level 3 copy-only import |
| [Code_Execution_Request_Template.md](Code_Execution_Request_Template.md) | Level 4 command execution |
| [Review_Only_Request_Template.md](Review_Only_Request_Template.md) | Level 0 or 2 documentation review |
| [Public_Template_Sanitisation_Check.md](Public_Template_Sanitisation_Check.md) | Preparing a copy for public release |

## Rules for every prompt

1. Do not scan the whole computer
2. Use MoonPool for user file intake only
3. Allowlist-only scanning
4. Metadata-only by default
5. Copy-first imports
6. No code execution without approval
7. No network access without approval
8. No destructive actions without approval
9. Stop and ask when uncertain

See [AGENTS.md](../AGENTS.md) for the sixteen laws.

## MoonPool Auditor action plans

Generated plans from [moonpool_auditor.html](../08_Human_Dashboard/moonpool_auditor.html) (Markdown or JSON) can be pasted into an agent session as **structured context**.

The Auditor prepares approval records — it does not execute them. An agent receiving a pasted plan must still request explicit human confirmation before any risky action.

Agents may also receive **catalog excerpts** as context. Agents must **not** infer approval from catalog presence alone. Catalog records do not grant permission to scan, read, move, copy, or execute anything.

## Chronology records as context

Agents may receive **chronology records** as context — date fields, confidence labels, Review Queue flags, or handover summaries.

Agents must **not** infer approval from chronology fields. Chronology describes dates and uncertainty; it does not grant permission to act.

Agents must treat **inferred dates as unverified** unless both `verifiedDate` is set and human confirmation is documented. `dateConfidence: verified` applies only after explicit human review.

## Local Helper suggestions as context

Agents may receive **Local Helper suggestions** as context — Suggested Summary, Suggested Tags, Suggested Date, Suggested Risk, and related helper fields.

Agents must treat helper output as **suggested, not verified**.

Agents must **not** infer approval from helper fields. `humanApproved: false` means no human has confirmed the suggestion.

Agents must **not** use helper suggestions as permission to scan, move, copy, delete, upload, edit allowlists, or run commands.

## Planning-only modules

MoonBridge ships documentation and static tools only. Chronology, Review Queue, Handover Export, and Optional Local Helper planning do **not** run automatically. Helper suggestions are suggested, not verified.

## Not an agent system

These prompts **do not** make MoonBridge an agent. They prepare safe instructions for humans who choose to use AI tools later.