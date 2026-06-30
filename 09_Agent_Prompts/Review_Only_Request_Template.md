# Review Only Request Template

**Level 0 or Level 2 — documentation and structure review without risky actions.**

---

## Level 0 template (structure and docs)

```
REVIEW REQUEST — MoonBridge (Level 0)

Task type: Documentation and structure review only.

Scope:
<MOONBRIDGE_ROOT>/[folder or file paths to review]

I will:
- Read markdown, text, and template files you specify
- Suggest wording or structure improvements
- Create or edit docs ONLY if you approve each change

I will NOT:
- Scan the whole computer
- Inventory files without allowlist approval
- Read MoonPool user content without explicit path approval
- Execute code, access network, or perform destructive actions
- Follow symlinks into unknown locations

Please confirm this scope is approved for Level 0 review.
```

---

## Level 2 template (read non-sensitive contents on allowlist)

```
REVIEW REQUEST — MoonBridge (Level 2)

Task type: Read non-sensitive file contents on allowlisted paths.

Exact allowlisted paths:
<MOONBRIDGE_ROOT>/[paths — must match allowlist]

Allowlist verified: [yes / no]

I will:
- Read contents only in approved paths
- Summarise or help organise as you request
- Flag sensitive-looking material and stop if found

I will NOT:
- Read outside allowlisted paths
- Scan the whole computer
- Execute code or access network
- Perform destructive actions

Please confirm Level 2 read access for these exact paths.
```

---

## When to use Level 0 vs Level 2

| Level | Use for |
|-------|---------|
| 0 | README edits, index updates, template copies, folder structure |
| 2 | Reading document contents in an approved MoonPool batch |