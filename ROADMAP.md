# MoonBridge Roadmap

A simple plan for the public template. Dates are tentative; scope may shift based on community feedback.

**Current public release:** `0.6.0-local-helper-planning` — see [VERSION.md](VERSION.md).

---

## Shipped — public template maturity

### v0.1.0-bootstrap *(complete)*

- Complete folder structure and MoonPool categories
- Safety rules, agent laws, and onboarding docs
- Blank CSV catalogs, empty allowlist, classification rules JSON
- Review-first helper scripts (allowlist-only, copy-first)
- MIT license and contribution/security docs

### v0.2.0-usability *(complete)*

- Static human dashboard (`dashboard.html`) — offline, no automation
- Agent prompt templates (`09_Agent_Prompts/`)
- Automation planning docs (`10_Automation_Plans/`) — documentation-only
- Human-first workflow and approval level map
- Cross-platform path placeholders (`<MOONBRIDGE_ROOT>`, `<HOME>`)

### v0.3.0-auditor *(complete)*

- [moonpool_auditor.html](08_Human_Dashboard/moonpool_auditor.html) — MoonPool Auditor Action Planner
- Built-in sample records; Columns, List, Grid views; Inspector and action-plan panels
- Prepares approval, quarantine, allowlist, import, and review plans — **no execution**

### v0.4.0-catalog-auditor *(complete)*

- Catalog-driven Auditor — **manually pasted catalog JSON** only
- [sample_file_catalog.json](04_Lists_And_Records/sample_file_catalog.json), [file_catalog_schema.md](04_Lists_And_Records/file_catalog_schema.md)
- [auditor_catalog_guide.md](08_Human_Dashboard/auditor_catalog_guide.md)

### v0.5.0-chronology-core *(complete)*

- [11_Chronology/](11_Chronology/) — date fields, confidence rules, sample reports, timeline events
- [12_Review_Queue/](12_Review_Queue/) — human review for date uncertainty
- [13_Handover_Export/](13_Handover_Export/) — handover templates and sample exports

**Not included:** chronology scanning engine, auto-populated review queues, auto-generated timeline exports.

### v0.6.0-local-helper-planning *(complete — planning only)*

- [14_Local_Helper/](14_Local_Helper/) — principles, Basic Mode / Assisted Mode, suggestion fields, safety checklist
- **Documentation and schema only** — no helper code, no model integration, no helper execution

**Not included:** helper scanning, helper file reads, helper approvals, helper file actions, external data sending.

---

## Planned — future work (approval-gated)

| Area | Status | Notes |
|------|--------|-------|
| Catalog generation workflow | Planned | Human-approved metadata inventory → export JSON for Auditor paste |
| Timeline renderer | Planned | Visual timeline from human-prepared exports — not shipped |
| Optional Local Helper implementation | Future, optional | Local/offline suggestions only; human review required |
| Dry-run executor design | Future | Plans human-reviewed first; execution approval-gated |
| Real file operation helper | Future | Copy-first imports only with explicit per-action approval |
| Deeper validation tooling | Future | Allowlist checks, dry-run reporting improvements |
| Sample project packs | Future (v0.3 packs) | Fictional data only |

**Automation remains future and approval-gated.** No executor, scanner engine, or autonomous approval ships in the current template.

---

## Future — optional assisted workflows

Always **human-led** and **approval-gated**:

- Metadata summaries after Level 1 inventory (human-reviewed)
- Suggested folder names or tags (never auto-applied)
- Assisted index updates from allowlisted paths only
- Local Helper suggestions consumed only after human review
- No whole-computer scanning, no unsupervised imports, no network by default

---

## Out of scope (by design)

- Cloud sync as a built-in feature
- Whole-computer search
- Automatic package installs or builds
- Bundled private or single-user project stacks
- Autonomous approval or unsupervised file operations

---

## How to influence the roadmap

Open an issue or discussion with:

- The problem you are trying to solve
- How it fits the safety model
- Whether it stays local-first and tool-neutral

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

*MoonBridge grows slowly, safely, and on your terms.*