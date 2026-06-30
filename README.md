<p align="center">
  <img src="assets/brand/moonbridge-logo.png" alt="MoonBridge logo" width="220">
</p>

# MoonBridge

**A local-first file organisation system that prepares your files before agents touch them.**

MoonBridge helps you turn messy documents, assets, projects, notes, media, and archives into **structured, agent-readable local context** — safely, on your own machine.

It is a **bridge** between ordinary human file chaos and the organised boundaries that local agents and AI-assisted tools need to work well — safely, on your machine, with human approval at every risky step. The main problem is simple: agents perform poorly and unsafely when pointed at unstructured, scattered data. MoonBridge creates safe boundaries **before** any later approved workflow begins.

The goal is **not** unsupervised automation. The goal is to prepare clean local context that humans can review — and that supports later approved workflows only when you explicitly allow each step.

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
later approved workflows (human-led, approval-gated)
```

Later automation comes **only** with explicit approval per action. See [AGENTS.md](AGENTS.md) for the sixteen laws.

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

## Human usability and future automation

MoonBridge now includes a **usability and preparation layer** — for humans first, agents later:

| Folder | Purpose |
|--------|---------|
| [08_Human_Dashboard/](08_Human_Dashboard/) | Static offline overview (`dashboard.html`) and **MoonPool Auditor Action Planner** (`moonpool_auditor.html`) |
| [09_Agent_Prompts/](09_Agent_Prompts/) | Reusable prompt templates with approval gates |
| [10_Automation_Plans/](10_Automation_Plans/) | Future automation ideas — planning docs only |

**Nothing in these folders runs automation by default.** The dashboard does not scan, read, or upload. The **MoonPool Auditor** is static local HTML — planning-only, no execution:

| Auditor input | What happens |
|---------------|--------------|
| Built-in sample records | Default mode — review mock items and prepare action plans |
| Manually pasted catalog JSON | Copy from `sample_file_catalog.json` (or your human-prepared export) into the Catalog Input panel — parsed in-browser only |

The Auditor **prepares** review notes, allowlist requests, and copy-only import plans as Markdown and JSON. It does **not** run them, scan disk, load files automatically, or edit the allowlist. Prompt templates reinforce safety rules. Automation plans are **documentation-only** — they describe what might be possible later, after you organise data and approve each step.

MoonBridge prepares structured context for **human-led** review and for later approved workflows.

---

## Chronology Core

**Chronology is a core MoonBridge planning module.** It helps humans place files, folders, catalogue records, collections, and projects in time — documentation and schema only, no scanning engine.

Chronology **documents** multiple date types: filesystem dates, document dates, event dates, inferred dates, and human-verified dates. **Date confidence** and **date source** are explicit on every record.

- **[11_Chronology/](11_Chronology/)** — date field definitions, confidence rules, sample reports, and timeline events
- **[12_Review_Queue/](12_Review_Queue/)** — flags missing, conflicting, and suspicious dates for human attention
- **[13_Handover_Export/](13_Handover_Export/)** — chronology summaries and timeline JSON for reviewed handover packages

Chronology does **not** grant approval or perform actions. Review queues record uncertainty; they are not populated automatically. Handover exports package reviewed information for future use — human verification remains final.

### Planning modules

| Module | Status in template |
|--------|-------------------|
| File Inventory | Planning docs and allowlist workflow |
| Metadata Audit | Level 1 metadata-only inventory (approval-gated) |
| Duplicate Detection | Classification rules and human review |
| Catalogue Records | `sample_file_catalog.json` and schema |
| Digest Notes | Templates and indexes |
| Review Queue | [12_Review_Queue/](12_Review_Queue/) |
| Chronology | [11_Chronology/](11_Chronology/) |
| Handover Export | [13_Handover_Export/](13_Handover_Export/) |
| Optional Local Helper | [14_Local_Helper/](14_Local_Helper/) |

---

## Optional Local Helper

The **Optional Local Helper** is a planning layer for a future local or offline assistant. MoonBridge works fully in **Basic Mode** without AI or model use.

| Mode | Description |
|------|-------------|
| **Basic Mode** | Inventory, metadata, chronology, review queues, handover — no helper required |
| **Assisted Mode** | Optional local/offline suggestions for summaries, tags, risk notes, dates, and review priority |

- **[14_Local_Helper/](14_Local_Helper/)** — principles, operating modes, suggestion fields, safety checklist, human review template

Suggested outputs are **not verified**. Human approval remains final. The Local Helper does **not** run actions, scan folders, or grant permission to scan, move, copy, delete, upload, or execute.

**The Local Helper may suggest. The human or rule system approves.**

This template ships **planning docs only** — no helper code, model integration, or automation.

---

## New user path

A canonical sequence for first-time users:

| Step | Action |
|------|--------|
| 1 | Read this README |
| 2 | Open [Quick Start](00_Read_Me_First/Quick_Start.md) |
| 3 | Open [Human Dashboard](08_Human_Dashboard/dashboard.html) (static local HTML) |
| 4 | Use [MoonPool](MoonPool/README.md) manually — copy files in; never whole-computer scan |
| 5 | Review [MoonPool Auditor](08_Human_Dashboard/moonpool_auditor.html) — sample mode or pasted catalog JSON |
| 6 | Try [sample catalog](04_Lists_And_Records/sample_file_catalog.json) in Auditor catalog mode (paste by hand) |
| 7 | Understand [Chronology](11_Chronology/) — date fields and confidence (documentation-only) |
| 8 | Use [Review Queue](12_Review_Queue/) when dates are uncertain — human-prepared flags |
| 9 | Use [Handover Export](13_Handover_Export/) templates when packaging reviewed chronology |
| 10 | Read [Optional Local Helper](14_Local_Helper/) planning **only if needed** — not required for Basic Mode |

---

## Module definitions

Short, safety-bounded descriptions of each major module:

**MoonPool** — Controlled file intake inside `<MOONBRIDGE_ROOT>`. Your real files enter only after you manually copy them. MoonPool is not your whole computer.

**Human Dashboard** — Static local HTML overview (`dashboard.html`). Orientation and links only — no scanning, network, or automation.

**MoonPool Auditor** — Static local HTML Action Planner (`moonpool_auditor.html`). Uses built-in sample records or manually pasted catalog JSON. Prepares action plans as Markdown/JSON; does not execute them or grant approval.

**Catalog records** — Structured metadata lists (`sample_file_catalog.json`, schema in `file_catalog_schema.md`). Human-prepared or from approved Level 1 inventory. Catalog presence does not grant permission to act.

**Chronology** — Documentation-only date fields, confidence rules, sample reports, and timeline JSON. Helps humans record dates and uncertainty. No scanning or automatic inference engine.

**Review Queue** — Documentation and templates for date issues needing human attention. Human-prepared flags only — not auto-populated.

**Handover Export** — Templates and sample JSON for packaging reviewed chronology. Prepares information for later use; does not grant permission to act.

**Optional Local Helper planning** — Future optional local/offline suggestion layer (`14_Local_Helper/`). Planning docs and schema only — no helper or model ships. Basic Mode works without it.

**Automation Plans** — Documentation-only ideas for future approval-gated workflows. No executor, scripts, or running agents in this folder.

---

## Start here

| Step | Document |
|------|----------|
| 1 | [How This System Works](00_Read_Me_First/How_This_System_Works.md) |
| 2 | [Quick Start](00_Read_Me_First/Quick_Start.md) |
| 3 | [Human Dashboard](08_Human_Dashboard/dashboard.html) |
| 4 | [Safety Rules](01_Rules_And_Safety/Safety_Rules.md) |
| 5 | [Glossary](00_Read_Me_First/Glossary.md) |

If you work with AI assistants, read [AGENTS.md](AGENTS.md) and [09_Agent_Prompts/](09_Agent_Prompts/) before any automated task.

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
├── 08_Human_Dashboard/    ← static offline overview
├── 09_Agent_Prompts/      ← safe prompt templates
├── 10_Automation_Plans/   ← future automation planning (not implemented)
├── 11_Chronology/         ← date fields, confidence, sample timelines
├── 12_Review_Queue/       ← human review for date issues
├── 13_Handover_Export/    ← chronology handover templates
├── 14_Local_Helper/       ← optional helper planning (docs only)
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

See [VERSION.md](VERSION.md) for the current version (`0.6.0-local-helper-planning`).

---

*MoonBridge — organise locally, safely, on your terms.*