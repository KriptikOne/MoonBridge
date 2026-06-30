# Automation Candidates

Public-safe examples of automation that **might** be built later — with explicit approval. **None are implemented in this folder.**

---

## Safe now (manual / static)

| Candidate | Status | Notes |
|-----------|--------|-------|
| Open static dashboard | Available | `08_Human_Dashboard/dashboard.html` — no automation |
| Use prompt templates | Available | `09_Agent_Prompts/` — human copies prompts |
| Fill indexes by hand | Available | Level 0 |
| Copy templates into MoonPool | Available | Level 0 |

---

## Possible later with approval

| Candidate | Level | Requirements |
|-----------|-------|--------------|
| Validate folder structure | 0–1 | Check expected folders exist; no file content reading |
| Check allowlist is empty or explicit | 1 | Read allowlist file only; report active entries |
| Generate folder tree | 0–1 | `generate_tree.sh` inside `<MOONBRIDGE_ROOT>` only |
| Create dashboard from manual sample data | 0 | Human provides JSON; no auto-scan |
| Suggest project categories from metadata catalogs | 1–2 | After approved inventory; human reviews suggestions |
| Prepare copy-only import plans | 3 | Dry-run only until human approves execute |
| Identify missing README files | 1 | Metadata-only listing inside MoonBridge structure |
| Produce onboarding checklists | 0 | Generate markdown from template; human reviews |

Every candidate above must:

- Default to dry-run
- Log actions to CSV or markdown
- Refuse whole-computer scanning
- Require explicit approval before execute mode

---

## Not allowed by default

| Candidate | Why refused |
|-----------|-------------|
| Whole-computer file search | Violates core safety model |
| Auto-scan MoonPool root | Only exact allowlisted children |
| Auto-read document contents | Level 2+ per path |
| Auto npm install / builds | Level 4 per command |
| Auto delete / move / rename | Level 5 per action |
| Background network sync | Level 4+ with approval |
| Symlink traversal | Boundary escape risk |
| Hidden folder scanning | Off limits by default |

---

## Before any automation ships

1. User has organised and approved clean data boundaries
2. Allowlist reflects exact cleansed batches only
3. Human has reviewed script source
4. Dry-run tested and logged
5. Documented in Decision_Log.md and CHANGELOG.md

---

*Plan safely. Implement slowly. Automate only after humans prepare the ground.*