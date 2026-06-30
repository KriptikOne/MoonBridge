# Future Local Agent Notes

MoonBridge is intended to **prepare structured local context** before more capable local agents or autonomous workflows are introduced.

---

## Core principle

A local agent should **inherit clear boundaries** — not discover them by guessing.

If an agent must infer where files live, what is sensitive, and what is approved, it will eventually:

- Scan too broadly
- Read the wrong material
- Execute unsafe commands
- Duplicate human work

MoonBridge front-loads that structure so the agent starts with a map, not a mystery.

---

## What the agent should receive

| Input | Source |
|-------|--------|
| Scope boundary | `<MOONBRIDGE_ROOT>` only |
| Intake rules | MoonPool manual copy workflow |
| Scan permission | Exact allowlist entries only |
| Project context | Indexes, catalogs, templates |
| Risk policy | AGENTS.md sixteen laws |
| Approval workflow | 09_Agent_Prompts/ templates |

---

## What the agent should not do by default

- Treat the whole computer as searchable
- Auto-ingest from common home-folder locations
- Read Private_Do_Not_Scan or quarantine zones
- Run installs, builds, or network calls without per-command approval
- Assume past approval applies to new commands

---

## Introduction sequence (recommended)

1. Human organises material using [Human_First_Workflow.md](Human_First_Workflow.md)
2. Human adds allowlisted paths after cleansing
3. Human runs metadata-only inventory with approval
4. Human reviews catalogs and indexes
5. Human provides [Agent_Operating_Prompt.md](../09_Agent_Prompts/Agent_Operating_Prompt.md) to the agent
6. Agent works inside boundaries; requests approval for each escalation

---

## Not autonomous yet

MoonBridge does **not** ship a running local agent. These notes describe how a future agent should behave when you choose to introduce one — after your data boundaries are clean and approved.

---

*Structure first. Agents second. Autonomy last — and only with approval.*