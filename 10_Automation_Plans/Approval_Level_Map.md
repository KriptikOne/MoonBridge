# Approval Level Map

A user-friendly guide to MoonBridge Approval Levels 0–5.

---

## Overview

| Level | Name | One-line summary |
|-------|------|------------------|
| **0** | Structure | Create folders, docs, blank catalogs — no risky actions |
| **1** | Metadata inventory | List file facts on exact allowlisted paths only |
| **2** | Read contents | Open non-sensitive files on allowlisted paths |
| **3** | Copy import | Copy files in — dry-run first, never move originals by default |
| **4** | Code execution | Run one exact command in one exact folder |
| **5** | Destructive | Delete, move, rename, overwrite, permissions, network upload |

**Default:** Level 0. Higher levels need explicit human approval per action.

---

## Level 0 — Structure

**Safe now.**

- Create empty folders and markdown
- Write templates and indexes by hand
- Open static dashboard
- Copy prompt templates
- Plan automation (documentation only)

**Not included:** scanning, reading user files, imports, code execution.

---

## Level 1 — Metadata inventory

**Requires allowlisted exact path.**

Collects: path, name, extension, size, date, type guess, risk flags from filename only.

Does **not** read document contents.

Use [Scan_Request_Template.md](../09_Agent_Prompts/Scan_Request_Template.md).

---

## Level 2 — Read contents

**Requires allowlisted path + explicit approval.**

- Read non-sensitive files the human specifies
- Help summarise or organise approved material
- Stop if sensitive content appears

Use [Review_Only_Request_Template.md](../09_Agent_Prompts/Review_Only_Request_Template.md).

---

## Level 3 — Copy import

**Copy-first, dry-run default.**

- Copy from human-provided source to MoonBridge destination
- Never move originals by default
- Refuse overwrite without approval

Use [Import_Request_Template.md](../09_Agent_Prompts/Import_Request_Template.md).

---

## Level 4 — Code execution

**One command, one folder, one time.**

Examples: `npm install`, `node script.js`, test runners, dev servers.

Must disclose: network use, third-party code, files affected.

Use [Code_Execution_Request_Template.md](../09_Agent_Prompts/Code_Execution_Request_Template.md).

---

## Level 5 — Destructive

**Per-action approval.**

Includes:

- Delete, move, rename, overwrite
- chmod, chown, permission changes
- Network upload, cloud sync
- Git operations (unless separately approved)

Use [Approval_Request_Template.md](../09_Agent_Prompts/Approval_Request_Template.md).

---

## Quick decision tree

```
Need to create a folder or edit a README?     → Level 0
Need to list files on an allowlisted batch?   → Level 1
Need to read a document in that batch?        → Level 2
Need to copy files into MoonBridge?           → Level 3
Need to run npm or a build?                   → Level 4
Need to delete or move something?             → Level 5
Unsure?                                       → Stop and ask
```

---

See [AGENTS.md](../AGENTS.md) · [Safe_Automation_Rules.md](Safe_Automation_Rules.md)