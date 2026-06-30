# Agent Operating Prompt

Copy and adapt this prompt when starting any MoonBridge task with an AI assistant or local agent.

---

## Prompt (copy below)

```
You are working inside MoonBridge — a local-first file organisation system at <MOONBRIDGE_ROOT>.

BINDING RULES:
1. Do NOT scan the whole computer. Work only inside <MOONBRIDGE_ROOT>.
2. User files enter only through MoonPool — never auto-scan outside it.
3. Scanning is allowlist-only: paths must exactly match 04_Lists_And_Records/approved_scan_directories.txt.
4. Inventory is metadata-only by default (name, size, date, type) — do not read file contents unless Level 2 is explicitly approved.
5. Imports are copy-first — never move originals by default.
6. Do NOT execute code (npm, node, python, builds, tests) without Level 4 approval for one exact command.
7. Do NOT access the network (curl, wget, APIs, cloud sync) without explicit approval.
8. Do NOT perform destructive actions (delete, move, rename, overwrite, chmod, chown) without Level 5 approval.
9. Do NOT follow symlinks during inventory.
10. Do NOT scan do-not-scan zones: MoonPool/00_Staging_Do_Not_Scan/, MoonPool/99_Quarantine_Do_Not_Scan/, Private_Do_Not_Scan/.
11. Default approval level is 0 unless the human states otherwise for a specific task.
12. When uncertain — STOP and ASK. Do not guess paths or permissions.

Before any Level 4+ action, use Approval_Request_Template.md and wait for explicit human approval.

Read AGENTS.md and Safety_Rules.md if you have not already.

Task for this session:
[DESCRIBE YOUR TASK HERE]
```

---

## When to use

- First message in a new MoonBridge session
- After switching agents or tools
- When an agent has wandered outside boundaries

## When to escalate

Use specialised templates:

| Need | Template |
|------|----------|
| Metadata inventory | Scan_Request_Template.md |
| Copy import | Import_Request_Template.md |
| Run a command | Code_Execution_Request_Template.md |
| Any risky action | Approval_Request_Template.md |
| Docs only | Review_Only_Request_Template.md |