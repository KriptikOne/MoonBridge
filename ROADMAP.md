# MoonBridge Roadmap

A simple plan for the public template. Dates are tentative; scope may shift based on community feedback.

---

## v0.1 — Empty public template *(complete)*

- Complete folder structure and MoonPool categories
- Safety rules, agent laws, and onboarding docs
- Blank CSV catalogs, empty allowlist, classification rules JSON
- Review-first helper scripts (allowlist-only, copy-first)
- MIT license and contribution/security docs

**Goal:** Anyone can copy the template and start organising locally without tools or cloud dependencies.

---

## v0.2 — Human usability + agent preparation layer *(current)*

- Static human dashboard (`08_Human_Dashboard/dashboard.html`) — offline, no automation
- Agent prompt templates (`09_Agent_Prompts/`) — approval-gated workflows
- Automation planning docs (`10_Automation_Plans/`) — ideas only, not implemented
- Human-first workflow and approval level map
- Cross-platform path placeholders (`<MOONBRIDGE_ROOT>`, `<HOME>`)

**Goal:** First-time users can orient quickly; future agents inherit clear boundaries — but **no working automation ships in this release**.

**Not included in v0.2:** live scanning, auto-indexing, running agents, or background automation.

### MoonPool Auditor Action Planner *(current)*

- Initial `moonpool_auditor.html` — OS-style local utility for action-plan generation
- Sample/mock MoonPool navigation; Columns, List, Grid views
- Inspector pane and Generated Action Plan panel (Markdown + JSON)
- Prepare approval, quarantine, allowlist, import, and review plans — **no execution**
- **Catalog-driven display** — paste catalog JSON manually (`sample_file_catalog.json` as public example)

**Future (not yet built):**

- Private catalogs from approved metadata-only inventories (human exports JSON for paste)
- Approved local helper executor that runs only human-confirmed plans — **execution does not exist today**

---

## v0.3 — Optional sample project packs

- Generic sample templates (e.g. creative project, client folder, research batch)
- Example index entries using fictional data only
- Documented allowlist examples (commented, not active)
- No real user content or private project names

**Goal:** Show how MoonPool batch lifecycle works without shipping real archives.

---

## v0.4 — Stronger validation scripts

- Path validation helpers (refuse non-allowlisted paths)
- Dry-run reporting improvements
- Optional checksum or manifest steps (with explicit approval gates)
- Better scan_log and import_log append behaviour

**Goal:** Scripts fail safely and predictably; humans stay in the loop.

---

## Future — Optional AI-assisted workflows

Always **approval-gated**:

- Metadata summaries after Level 1 inventory (human-reviewed)
- Suggested folder names or tags (never auto-applied)
- Assisted index updates from allowlisted paths only
- No whole-computer scanning, no unsupervised imports, no network by default

**Goal:** AI helpers respect the same sixteen laws as every other tool.

---

## Out of scope (by design)

- Cloud sync as a built-in feature
- Whole-computer search
- Automatic package installs or builds
- Bundled private or single-user project stacks
- Crypto-specific or sovereign-system integrations

---

## How to influence the roadmap

Open an issue or discussion with:

- The problem you are trying to solve
- How it fits the safety model
- Whether it stays local-first and tool-neutral

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

*MoonBridge grows slowly, safely, and on your terms.*