# Decision Log

Record important policy decisions, exceptions, and structural changes here.

---

## How to use this log

When you or an agent makes a non-default choice, add an entry:

| Field | Description |
|-------|-------------|
| Date | YYYY-MM-DD |
| Decision | What was decided |
| Reason | Why |
| Approval level | Level used |
| Paths affected | Exact paths if any |
| Reversible? | Yes/no and how |

---

## Entries

### 2026-06-30 — Initial bootstrap (Level 0)

**Decision:** Create MoonBridge filesystem with empty allowlist and placeholder scripts.

**Reason:** Establish safe generic structure before any user content or scanning.

**Paths affected:** `<MOONBRIDGE_ROOT>/` (entire tree created)

**Reversible:** Yes — folders can be removed manually if needed (Level 5 approval).

---

### 2026-06-30 — No destructive actions during bootstrap

**Decision:** Bootstrap used only Level 0 actions — no delete, move, or rename of existing material.

**Reason:** Level 0 bootstrap prohibits destructive actions; unknown prior content must be preserved until reviewed.

**Paths affected:** `<MOONBRIDGE_ROOT>/` (structure created alongside any pre-existing content)

**Reversible:** Human may reorganise later with explicit Level 5 approval.

---

## Template for new entries

```
### YYYY-MM-DD — Short title

**Decision:**

**Reason:**

**Approval level:**

**Paths affected:**

**Reversible:**
```

---

*Keep this log honest and minimal — one line decisions are fine.*