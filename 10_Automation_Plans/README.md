# Automation Plans

Documentation for **future automation ideas** — not working automation.

## Purpose

MoonBridge prepares structured local context so future local agents can work safely **later**, after human approval. This folder plans what might be possible — without implementing it now.

## Contents

| File | Purpose |
|------|---------|
| [Automation_Candidates.md](Automation_Candidates.md) | Public-safe future automation ideas |
| [Safe_Automation_Rules.md](Safe_Automation_Rules.md) | Rules every future automation must follow |
| [Future_Local_Agent_Notes.md](Future_Local_Agent_Notes.md) | How local agents should inherit boundaries |
| [Approval_Level_Map.md](Approval_Level_Map.md) | User-friendly Approval Levels 0–5 |
| [Human_First_Workflow.md](Human_First_Workflow.md) | Step-by-step human workflow before automation |

## Three categories

| Category | Meaning |
|----------|---------|
| **Safe now** | Manual actions, static dashboard, prompt templates |
| **Possible later with approval** | Scripted helpers with dry-run and allowlist gates |
| **Not allowed by default** | Whole-computer scan, auto-execution, network, destructive actions |

## Important

Nothing in this folder runs automatically. No scripts live here. No agents are deployed.

See [AGENTS.md](../AGENTS.md) · [08_Human_Dashboard/](../08_Human_Dashboard/) · [09_Agent_Prompts/](../09_Agent_Prompts/)