# Agent Prompts

Reusable **prompt templates** for working with AI assistants or future local agents inside MoonBridge.

## Purpose

These prompts help agents:

- Stay inside `<MOONBRIDGE_ROOT>`
- Respect Approval Levels 0–5
- Ask before risky actions
- Use MoonPool and allowlists correctly
- Stop when uncertain

## Templates

| File | Use when |
|------|----------|
| [Agent_Operating_Prompt.md](Agent_Operating_Prompt.md) | Starting any MoonBridge task with an agent |
| [Approval_Request_Template.md](Approval_Request_Template.md) | Agent needs human OK for a risky action |
| [Scan_Request_Template.md](Scan_Request_Template.md) | Level 1 metadata-only inventory |
| [Import_Request_Template.md](Import_Request_Template.md) | Level 3 copy-only import |
| [Code_Execution_Request_Template.md](Code_Execution_Request_Template.md) | Level 4 command execution |
| [Review_Only_Request_Template.md](Review_Only_Request_Template.md) | Level 0 or 2 documentation review |
| [Public_Template_Sanitisation_Check.md](Public_Template_Sanitisation_Check.md) | Preparing a copy for public release |

## Rules for every prompt

1. Do not scan the whole computer
2. Use MoonPool for user file intake only
3. Allowlist-only scanning
4. Metadata-only by default
5. Copy-first imports
6. No code execution without approval
7. No network access without approval
8. No destructive actions without approval
9. Stop and ask when uncertain

See [AGENTS.md](../AGENTS.md) for the sixteen laws.

## Not autonomous

These prompts **do not** make MoonBridge an agent. They prepare safe instructions for humans who choose to use AI tools later.