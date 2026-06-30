# Code Project Safety

MoonBridge treats software development folders as **high-risk** by default.

---

## What is a code project?

A folder is a code project if it contains any of:

| Indicator | Examples |
|-----------|----------|
| Package manifests | `package.json`, `Cargo.toml`, `pyproject.toml`, `go.mod` |
| Lock files | `package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`, `bun.lockb` |
| Dependencies | `node_modules/`, `vendor/` |
| Environment secrets | `.env`, `.env.local`, `.env.production` |
| Version control | `.git/` |
| Build output | `dist/`, `build/`, `.next/` (metadata flag only) |

Detection uses **path and filename only** during inventory — no reading file contents.

---

## Default mode: do nothing automatic

For code projects, agents and scripts must **not**:

- Run `npm`, `npx`, `yarn`, `pnpm`, or `bun`
- Run `node`, `python`, or other interpreters on project code
- Run `vite`, `next`, `react-scripts`, or dev servers
- Run `npm install`, `npm test`, `npm run build`, `npm start`
- Execute any binary from the project
- Traverse `node_modules/` during inventory
- Read `.env` or credential files
- Inspect `.git/` internals
- Follow symlinks into dependency trees

---

## Approved execution mode

A code project may be installed, built, tested, or run **only** when the human gives explicit approval for **one exact command in one exact folder**.

### Required disclosure before approval

1. **Project folder** — full path
2. **Exact command** — copy-paste ready
3. **Why** — purpose of the command
4. **Files affected** — what may be created or modified
5. **Risk notes** — e.g. runs third-party install scripts
6. **Network** — will it download packages?
7. **Third-party code** — will it execute dependencies?

### Approval scope

- Approval is **single-use** — one command, one folder, one time
- Does not grant permanent permission for future commands

---

## Inventory rules for code projects

At Level 1 (metadata only):

- Record top-level manifest files and folder structure
- Flag `code_project`, `node_modules_present`, `env_file_present` from names only
- Do **not** descend into `node_modules/` unless exact subpath is allowlisted (discouraged)
- Do **not** read `.env`, source files, or lockfile contents

---

## Importing code projects

Use copy-only import (`copy_import_COPY_ONLY.sh`):

1. Dry-run first
2. Copy project into `MoonPool/08_Websites_And_Code/` or `03_Projects/`
3. Do **not** run install automatically after copy
4. Human decides when/if to run install on new machine

---

## Secrets in code projects

If inventory flags `.env` or key-like filenames:

- Do not read them
- Do not copy them to Finished Outputs without human review
- Consider quarantining if accidentally imported

---

## Placeholder for future machine workflows

On a more powerful computer, you may later approve:

- [ ] Isolated project builds in designated folders
- [ ] Test runs with network disabled
- [ ] Dependency audits (with approval)

Document each exception in [Decision_Log.md](Decision_Log.md).

---

See also: [AGENTS.md](../AGENTS.md) · [03_Templates/Code_Project_Template.md](../03_Templates/Code_Project_Template.md)