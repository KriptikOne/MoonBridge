# Code Execution Request Template

**Level 4 only — one exact command in one exact folder, with explicit human approval.**

---

## Template

```
CODE EXECUTION REQUEST — MoonBridge (Level 4)

Project folder:
<MOONBRIDGE_ROOT>/[exact project path]

Exact command (copy-paste ready):
[full command string]

Reason:
[why this command is needed]

Files that may be created or modified:
[list expected changes]

Network access: [yes / no]
  If yes: [what will be downloaded]

Third-party code execution: [yes / no]
  If yes: [what dependencies or scripts may run]

Risks:
[e.g. install scripts, build artifacts, lockfile changes]

Rollback plan:
[how to undo — e.g. delete node_modules, restore from backup]

Approval scope:
ONE command, ONE folder, ONE time — not permanent permission.

I will NOT run this command until you explicitly approve.
```

---

## Default refusal

Without Level 4 approval, do **not** run:

- `npm`, `npx`, `yarn`, `pnpm`, `bun`
- `node`, `python`, interpreters on project code
- Build tools, test runners, dev servers
- Any binary from a code project folder

## Code project indicators

Treat as high-risk if folder contains `package.json`, lockfiles, `node_modules/`, `.env`, `.git/`, etc.

See [Code_Project_Safety.md](../01_Rules_And_Safety/Code_Project_Safety.md).