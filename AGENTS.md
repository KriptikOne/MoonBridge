# AGENTS.md — Laws for AI Assistants

**Every AI agent, assistant, or automated tool working in or around MoonBridge must follow these laws.**

MoonBridge is a **local filesystem organisation system** inside `<MOONBRIDGE_ROOT>` only. These rules exist to protect the user's computer, privacy, and files.

---

## The sixteen laws

### 1. Never scan outside MoonBridge (no whole-computer scanning)
The default rule is **absolute refusal** of whole-computer scanning. Do not enumerate, inventory, search, or traverse the user's home folder, common home-folder locations (`<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`), external or mounted drives, system folders, hidden folders, parent directories, or any path outside `<MOONBRIDGE_ROOT>`.

Any exception outside MoonBridge must be **rare**, **exact-path-specific**, **manually approved**, **documented**, and **never treated as permanent permission**.

### 2. Never scan outside MoonPool
Within MoonBridge, the only future user-content zone for file operations is `<MOONBRIDGE_ROOT>/MoonPool`. Do not treat other MoonBridge folders as places to ingest or scan user files without explicit approval.

### 3. Never scan the MoonPool root by default
`<MOONBRIDGE_ROOT>/MoonPool` itself is not a scan target. Only **exact child paths** that the human has approved may be considered.

### 4. Never scan Approved_Batches folders by default
`Approved_Batches/` directories are staging areas for cleansed material, but **the folder itself is not approved for scanning**. Only **exact child folders inside** an `Approved_Batches` directory may be scanned — and only if allowlisted.

### 5. Only scan exact child directories listed in the allowlist
The sole source of truth for approved scan paths is:

```
04_Lists_And_Records/approved_scan_directories.txt
```

A path must appear **exactly** (full path, one per line) to be eligible for metadata-only inventory. No wildcards. No parent paths. No implicit children.

### 6. Reject broad and dangerous paths
Always refuse paths such as:

- `~` or `$HOME`
- `/`
- `<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`
- mounted drives (e.g. `/media`, `/mnt`, `/Volumes` on some Unix-like systems)
- Parent directories (`..`)
- Hidden folders (names starting with `.`)
- System folders
- `<MOONBRIDGE_ROOT>` root as a scan target
- `<MOONBRIDGE_ROOT>/MoonPool` root as a scan target
- Any `Approved_Batches` root folder as a scan target

### 7. Do not follow symlinks
When listing or inventorying, never follow symbolic links. Treat symlinks as metadata entries only, or skip them.

### 8. Inventory scripts may collect metadata only
Approved inventory may record only:

- file path, name, extension, size, modified date
- detected file type (from extension or simple rules)
- whether the entry is a folder
- simple risk flags based on **path or filename only**

### 9. No reading or interpreting during inventory
During inventory, do **not**:

- read file contents
- open documents, images, audio, or video
- interpret PDFs, spreadsheets, or source code
- read `.env`, credentials, keys, or config secrets
- summarise or analyse file contents
- compute checksums by reading file contents

### 10. Import actions must be copy-only
Never move originals as the default import behaviour. Copy files into organised destinations. Log imports. Prefer dry-run first.

### 11. Destructive operations require explicit human approval
Delete, move, rename, overwrite, chmod, chown, ACL changes, network upload, external sync, and any irreversible change require **explicit human approval** for that exact action.

### 12. Code projects require explicit approval before execution
If a folder contains `package.json`, lockfiles, `node_modules`, `.env`, `.git`, or similar development artefacts, treat it as a **code project**. Do not run `npm`, `node`, `yarn`, `pnpm`, `bun`, build tools, test runners, or dev servers without explicit approval for **that exact command in that exact folder**.

### 13. Network access requires explicit human approval
No `curl`, `wget`, `git clone`, API calls, package installs, or cloud sync without explicit approval. State whether the command may access the network and execute third-party code.

### 14. Cloud sync actions require explicit human approval
Do not assume cloud sync folders (Dropbox, Google Drive, OneDrive, or similar) are safe or approved.

### 15. Permission changes require explicit human approval
Do not run `chmod`, `chown`, or modify ACLs or extended attributes without explicit approval.

### 16. If unsure, stop and ask
Stop and ask the human when:

- a path is outside MoonBridge
- a path is not on the allowlist
- a path points to MoonPool root rather than an exact approved child
- a path points to an `Approved_Batches` root rather than an exact child
- a file appears sensitive
- a command would execute code or touch the network
- a command would modify existing files
- the task requires reading file contents
- the task exceeds the approved **Approval Level**

---

## Git operations

Do not initialise Git, inspect `.git` internals, or perform Git operations unless explicitly approved by the user for a specific action.

---

## Approval levels

| Level | Allowed actions |
|-------|-----------------|
| **0** | Create empty folders, starter markdown, blank catalogs/logs, safe placeholder scripts |
| **1** | Metadata-only inventory of **exact allowlisted** folders |
| **2** | Read non-sensitive file contents inside **exact allowlisted** folders |
| **3** | Copy-only import into organised folders |
| **4** | Code execution, package managers, builds, tests, local servers |
| **5** | Destructive actions: delete, move, rename, overwrite, chmod, upload, sync |

**Default to the lowest level.** Higher levels require explicit human approval per action, not permanent permission.

---

## Do-not-scan zones

These areas must **never** be scanned unless the human explicitly overrides with a documented exception:

- `MoonPool/00_Staging_Do_Not_Scan/`
- `MoonPool/99_Quarantine_Do_Not_Scan/`
- `Private_Do_Not_Scan/`

---

## Before running any command (Level 4+)

Show the human:

1. The exact project or folder path
2. The exact command
3. Why you want to run it
4. What files it may create or change
5. Risk notes
6. Whether it may access the network
7. Whether it may execute third-party code

Wait for explicit approval. Approval applies only to that one command.

---

## Related documents

- [Safety Rules](01_Rules_And_Safety/Safety_Rules.md)
- [Scan Policy](01_Rules_And_Safety/Scan_Policy.md)
- [Agent Rules](01_Rules_And_Safety/Agent_Rules.md)
- [Code Project Safety](01_Rules_And_Safety/Code_Project_Safety.md)

---

*When in doubt: stop, ask, and protect the user's files.*