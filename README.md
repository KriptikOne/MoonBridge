# MoonBridge

**A simple, portable, human-first local file organisation system.**

MoonBridge lives entirely inside `~/MoonBridge`. It is designed to work for anyone — creators, small businesses, families, researchers, artists, developers, or future AI-assisted workspaces — without locking you into one project or one machine.

---

## What is MoonBridge?

MoonBridge is a **folder-based operating layer** for your digital life:

- **Rules and safety** — clear policies so humans and agents know what is allowed
- **Indexes and templates** — find things and start new work consistently
- **Catalogs and logs** — track files, projects, and imports over time
- **MoonPool** — a controlled intake area for your real files (copy-in, never auto-scan)
- **Finished outputs and backups** — organised deliverables and snapshots

Nothing in MoonBridge performs whole-computer scanning automatically. Your home folder, Desktop, Documents, Downloads, and the rest of your machine stay untouched unless **you** explicitly approve a specific action.

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
MoonBridge/
├── 00_Read_Me_First/      ← onboarding and guides
├── 01_Rules_And_Safety/   ← policies and decisions
├── 02_Indexes/            ← navigation indexes
├── 03_Templates/          ← reusable document templates
├── 04_Lists_And_Records/  ← catalogs, logs, allowlists
├── 05_Helper_Tools/       ← safe shell scripts (review before running)
├── 06_Finished_Outputs/   ← polished deliverables
├── 07_Backups/            ← backup snapshots
├── MoonPool/              ← your controlled file intake zone
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

## Version

See [VERSION.md](VERSION.md) for the current bootstrap version.

---

*MoonBridge — organise locally, safely, on your terms.*