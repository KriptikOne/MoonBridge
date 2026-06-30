# Bridge To Future Machine

MoonBridge can start on **the machine you have now** and grow later on **a more powerful computer** — without depending on any specific hardware, operating system, or toolchain.

---

## Your current machine (bootstrap)

Use whatever computer you have today. No particular model, chip, or OS version is required.

| Role | What this machine is for |
|------|--------------------------|
| Structure | Create folders, rules, templates, and blank catalogs |
| Safe staging | Manual file organisation in MoonPool |
| Light tooling | POSIX shell scripts with no modern dependencies |
| Small inventories | Metadata-only inventories on allowlisted paths |

### What this machine does well

- Create plain folders and markdown documentation
- Manual file organisation in MoonPool
- Light shell scripts (POSIX bash, no modern dependencies)
- Small metadata inventories on allowlisted paths

### What this machine should not do (yet)

- Heavy media transcoding or batch image processing
- Large-scale indexing across thousands of files
- Running modern Node/Electron/Docker toolchains without explicit approval
- Assuming Cursor, Homebrew, or current Node.js are available

---

## Future machine (expansion)

When you move to a more powerful computer, MoonBridge can take on heavier work — **only with your explicit approval**.

| Role | What a future machine may add |
|------|-------------------------------|
| Scale | Faster metadata inventories on large allowlisted batches |
| Builds | Approved code project builds and tests |
| Media | Media processing pipelines |
| AI-assisted workflows | Richer local AI-assisted organisation |
| Extensions | Additional local tools and project-specific folders |

**None of these are built into the bootstrap.** Only placeholders and documentation sections exist now.

---

## No hard dependencies

MoonBridge does **not** require:

- Any specific hardware model or manufacturer
- Any specific operating system
- Node, npm, Docker, Homebrew, Cursor, or cloud services

Everything in MoonBridge uses:

- Plain folders
- Markdown, CSV, JSON
- Portable shell scripts for Unix-like systems
- No hard-coded machine-specific paths
- No dependency on npm, Docker, Homebrew, or cloud services

Any expansion beyond structure and documentation requires **explicit approval** per action (see [AGENTS.md](../AGENTS.md)).

---

## Portability and migration

### Migration steps (when ready)

1. **Copy** the entire `<MOONBRIDGE_ROOT>` folder to the new machine (USB drive, local transfer, etc.)
2. Verify `approved_scan_directories.txt` paths still match (update username or home directory if needed)
3. Re-read [AGENTS.md](../AGENTS.md) and [Safety_Rules.md](../01_Rules_And_Safety/Safety_Rules.md)
4. Expand tools only with explicit Approval Level 4+ approval per command
5. Update [VERSION.md](../VERSION.md) and [CHANGELOG.md](../CHANGELOG.md)

### Path updates after migration

If `<MOONBRIDGE_ROOT>` changes on the new machine (different install path or username), update allowlist entries:

```
# Before (old machine)
<MOONBRIDGE_ROOT>/MoonPool/...

# After (new machine)
<MOONBRIDGE_ROOT>/MoonPool/...
```

---

## Division of labour

| Task | Current machine | Future machine |
|------|-----------------|----------------|
| Create folder structure | Yes | Optional refresh |
| Write rules and templates | Yes | Extend |
| Manual MoonPool organisation | Yes | Yes |
| Metadata inventory (small) | Yes | Yes (large) |
| Media processing | Manual/light | Automated (approved) |
| Code project builds | Only with approval | With approval |
| AI-assisted workflows | Basic | Advanced (approved) |

---

## What stays the same on both machines

- Never perform whole-computer scanning outside MoonBridge
- MoonPool is the only user-content intake zone
- Allowlist-only scanning
- Copy-first imports
- Human approval for destructive, network, and execution actions
- Do-not-scan zones remain off limits

---

## Placeholder for future expansion

When you move to a more powerful machine, consider documenting here:

- [ ] Migration date and verification checklist
- [ ] Updated tool versions (if any approved)
- [ ] New helper scripts added post-migration
- [ ] Performance notes for large batch inventories

---

*Start on the machine you have. Grow on a stronger one — on your terms.*