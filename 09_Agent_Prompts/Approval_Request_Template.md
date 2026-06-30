# Approval Request Template

Use when an agent needs human approval before a risky action.

---

## Template

```
APPROVAL REQUEST — MoonBridge

Requested approval level: [0 / 1 / 2 / 3 / 4 / 5]

Exact folder:
<MOONBRIDGE_ROOT>/[path]

Exact command or action:
[paste exact command or describe exact action]

Reason:
[why this is needed]

Files affected:
[what may be created, modified, or read]

Network risk: [yes / no — describe if yes]
Code execution risk: [yes / no — describe if yes]
Destructive risk: [yes / no — describe if yes]

Rollback plan:
[how to undo or recover if something goes wrong]

Approval scope:
[one command / one folder / one session — NOT permanent]

I will wait for your explicit approval before proceeding.
```

---

## Level guide

| Level | Examples |
|-------|----------|
| 0 | Create docs, folders, blank catalogs |
| 1 | Metadata inventory on allowlisted path |
| 2 | Read non-sensitive contents on allowlist |
| 3 | Copy-only import (dry-run first) |
| 4 | npm install, node, builds, tests |
| 5 | Delete, move, rename, overwrite, chmod, network upload |

---

## Agent rules

- One approval = one action. Do not assume future permission.
- If any risk field is "yes", explain it plainly.
- If the human says no, stop and suggest a safer alternative.
- Never bundle multiple risky actions into one approval request.