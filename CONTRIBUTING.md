# Contributing to MoonBridge

Thank you for helping improve MoonBridge — a **local-first, human-first file organisation template** that keeps your real files under your control.

---

## Project purpose

MoonBridge provides:

- A safe folder structure (`~/MoonBridge`)
- A controlled intake zone (`MoonPool`)
- Rules for humans and AI assistants
- Blank catalogs, templates, and portable helper scripts

It is **not** a cloud service, sync tool, or auto-scanner. It is a template you copy and adapt on your own machine.

---

## How to suggest improvements

1. **Read first** — [README.md](README.md), [AGENTS.md](AGENTS.md), and [Safety_Rules.md](01_Rules_And_Safety/Safety_Rules.md)
2. **Open an issue** — describe the problem or idea in plain language
3. **Open a pull request** — keep changes focused; one concern per PR when possible

Small fixes (typos, clearer wording, better examples) are welcome.

---

## Safety-first design principles

All contributions must respect MoonBridge's core model:

| Principle | Meaning |
|-----------|---------|
| No whole-computer scanning | Tools stay inside `~/MoonBridge` |
| MoonPool intake only | User files enter only via manual copy |
| Allowlist-only scanning | Metadata inventory on exact listed paths only |
| Metadata only | No reading file contents during inventory |
| Copy-first imports | Never move originals by default |
| Approval gates | Code execution, network, destructive actions, Git, cloud sync, and permission changes require explicit human approval |

Do **not** propose features that weaken these defaults.

---

## What not to submit

- **Personal data** — real names, addresses, client lists, or private archives
- **Secrets** — passwords, API keys, private keys, recovery phrases, wallet seeds, `.env` files
- **Real MoonPool contents** — use fictional examples only
- **Private project names** — keep wording generic and template-friendly
- **Machine-specific paths** — use placeholders like `/Users/yourname/MoonBridge/...`

If you need an example, invent a neutral batch name such as `2026-06_Test_Batch`.

---

## Wording guidelines

- Prefer **generic** language: "your computer", "local workflow", "approved code projects"
- Keep the names **MoonBridge** and **MoonPool**
- Avoid baking in one user's projects, tools, or hardware
- Security warnings about sensitive files are encouraged — they protect everyone

---

## Structure and tooling

- Keep the layout **local-first** and **tool-neutral** — plain folders, markdown, CSV, JSON, POSIX shell
- Do not add package managers, Docker, or cloud dependencies to the base template
- Helper scripts must remain **allowlist-only** and **copy-first**
- Scripts should stay portable (POSIX bash, no hard-coded usernames)

---

## Pull request expectations

A good contribution:

- [ ] Explains what changed and why
- [ ] Does not include personal files or secrets
- [ ] Preserves the safety model
- [ ] Uses generic public-template wording
- [ ] Updates [CHANGELOG.md](CHANGELOG.md) for notable structural or policy changes

Maintainers may ask for revisions. When in doubt, open an issue before a large change.

---

## Questions

Open a GitHub issue with the `question` label, or start a discussion if enabled. Do not paste sensitive material into public threads.

---

*Thank you for keeping MoonBridge safe, portable, and useful for everyone.*