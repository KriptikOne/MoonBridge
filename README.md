<p align="center">
  <img src="assets/brand/moonbridge-logo.png" alt="MoonBridge logo" width="220">
</p>

# MoonBridge

**A local-first file organisation system that prepares your files before agents touch them.**

MoonBridge helps you turn messy documents, assets, projects, notes, media, and archives into **structured, agent-readable local context** — safely, on your own machine.

It is a **bridge** between ordinary human file chaos and the organised boundaries that local agents, AI-assisted tools, and future autonomous workflows need to work well. The main problem is simple: agents perform poorly and unsafely when pointed at unstructured, scattered data. MoonBridge creates safe boundaries **before** automation begins.

The goal is **not** immediate full autonomy. The goal is to prepare clean local context so a future local agent can work safely and usefully — with your explicit approval at every risky step.

MoonBridge lives inside **`<MOONBRIDGE_ROOT>`** — the folder where you install or clone it. That may be a folder named MoonBridge in your home directory, but any location is fine.

---

## The problem MoonBridge helps solve

Most people's files are scattered across old machines, downloads folders, project folders, external drives, unfinished archives, and cloud sync folders. Names are inconsistent. Duplicates pile up. Sensitive material sits beside casual notes.

If agents are pointed at that chaos too early, they may:

- Miss important context
- Expose passwords, keys, or private material
- Duplicate or contradict earlier work
- Act on the wrong files or the wrong folders

MoonBridge does not fix everything automatically. It gives you a **deliberate workspace** where files enter only after you prepare them — so humans stay in control and agents know their limits.

---

## Why structured data matters for agents

Agents need more than raw folders. They need:

- **Clear boundaries** — what is in scope and what is off limits
- **Project context** — what belongs together and what stage it is in
- **Safe intake zones** — where new material lands before it is trusted
- **Allowlists** — exact paths that may be inventoried
- **Metadata-only defaults** — facts about files without opening contents
- **Approval gates** — human sign-off before risk

MoonBridge provides all of this through:

| Mechanism | Purpose |
|-----------|---------|
| **MoonPool** | Controlled intake — your real files enter here only after manual copy |
| **Allowlist-only scanning** | Only exact paths in `04_Lists_And_Records/approved_scan_directories.txt` may be inventoried |
| **Metadata-only inventory** | Record name, size, date, type — do not read document contents by default |
| **Copy-first imports** | Copy files in; never move originals unless you explicitly approve |
| **Do-not-scan zones** | Staging, quarantine, and `Private_Do_Not_Scan/` stay off limits |
| **Approval gates** | Code execution, network access, destructive actions, Git operations, permission changes, and cloud sync require explicit human approval |

Nothing performs whole-computer scanning. Common home-folder locations (`<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`, and the rest of your system) stay untouched unless **you** approve a specific action.

---

## The bridge model

```
messy files
    ↓
safe staging
    ↓
structured local context
    ↓
agent-readable projects
    ↓
future autonomous local workflows (approval-gated)
```

Advanced automation comes **later** — and only with explicit approval per action. See [AGENTS.md](AGENTS.md) for the sixteen laws.

---

## What is MoonBridge?

MoonBridge is a **folder-based operating layer** for your digital life:

- **Rules and safety** — clear policies so humans and agents know what is allowed
- **Indexes and templates** — find things and start new work consistently
- **Catalogs and logs** — track files, projects, and imports over time
- **MoonPool** — controlled intake for your real files (copy-in, never auto-scan)
- **Finished outputs and backups** — organised deliverables and snapshots

---

## Path examples

Throughout this documentation:

| Placeholder | Meaning |
|-------------|---------|
| **`<MOONBRIDGE_ROOT>`** | The MoonBridge root folder — where you install or clone the template (any location is fine) |
| **`<HOME>`** | Your user home directory (often `~` or `/Users/yourname` on Unix-like systems) |

Internal template paths such as `MoonPool/`, `MoonPool/03_Projects/`, `Approved_Batches/`, `Private_Do_Not_Scan/`, and `04_Lists_And_Records/approved_scan_directories.txt` are relative to `<MOONBRIDGE_ROOT>`.

---

## Start here

| Step | Document |
|------|----------|
| 1 | [How This System Works](00_Read_Me_First/How_This_System_Works.md) |
| 2 | [Quick Start](00_Read_Me_First/Quick_Start.md) |
| 3 | [Safety Rules](01_Rules_And_Safety/Safety_Rules.md) |
| 4 | [Glossary](00_Read_Me_First/Glossary.md) |

If you work with AI assistants, read [AGENTS.md](AGENTS.md) before any automated task.

---

## Top-level layout

```
<MOONBRIDGE_ROOT>/
├── 00_Read_Me_First/      ← onboarding and guides
├── 01_Rules_And_Safety/   ← policies and decisions
├── 02_Indexes/            ← navigation indexes
├── 03_Templates/          ← reusable document templates
├── 04_Lists_And_Records/  ← catalogs, logs, allowlists
├── 05_Helper_Tools/       ← safe shell scripts (review before running)
├── 06_Finished_Outputs/   ← polished deliverables
├── 07_Backups/            ← backup snapshots
├── MoonPool/              ← controlled file intake zone
├── Private_Do_Not_Scan/   ← sensitive material — never auto-scan
├── AGENTS.md              ← laws for AI assistants
├── VERSION.md             ← current system version
└── CHANGELOG.md           ← what changed and when
```

---

## Core principles

1. **Generic first** — no project is baked into the base structure; add your own folders later.
2. **Copy-first** — imports copy files; originals stay where you put them until you decide otherwise.
3. **Allowlist-only scanning** — only exact paths you list may be inventoried, and metadata only.
4. **Human approval for risk** — deletes, moves, network, code execution, and permission changes need your say-so.
5. **Portable** — plain folders, markdown, CSV, JSON, and POSIX shell scripts; no npm, Docker, or cloud required.

---

## MoonPool in one sentence

**MoonPool is where your files enter the system — after you manually prepare them — never your whole computer.**

See [MoonPool/README.md](MoonPool/README.md) for the intake workflow.

---

## Machine context

MoonBridge can start on your current machine and later move to a more powerful computer — no specific hardware or operating system required. See [Bridge To Future Machine](00_Read_Me_First/Bridge_To_Future_Machine.md).

---

## Project files

| Document | Purpose |
|----------|---------|
| [LICENSE](LICENSE) | MIT license |
| [CONTRIBUTING.md](CONTRIBUTING.md) | How to contribute safely |
| [SECURITY.md](SECURITY.md) | Responsible disclosure and safe use |
| [ROADMAP.md](ROADMAP.md) | Planned milestones |
| [PUBLICATION_CHECKLIST.md](PUBLICATION_CHECKLIST.md) | Maintainer checklist before going public |

---

## Version

See [VERSION.md](VERSION.md) for the current bootstrap version.

---

*MoonBridge — organise locally, safely, on your terms.*