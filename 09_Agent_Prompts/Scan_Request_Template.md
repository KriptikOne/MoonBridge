# Scan Request Template

**Level 1 only — metadata-only inventory on an exact allowlisted path.**

---

## Template

```
SCAN REQUEST — MoonBridge (Level 1)

I am requesting metadata-only inventory approval.

Exact allowlisted path:
<MOONBRIDGE_ROOT>/MoonPool/[category]/Approved_Batches/[batch_name]/

Allowlist verification:
- [ ] Path exactly matches one line in approved_scan_directories.txt
- [ ] Path is NOT MoonPool root
- [ ] Path is NOT an Approved_Batches root (must be exact child batch)
- [ ] Path is NOT in a do-not-scan zone

What will be collected (metadata only):
- File path, name, extension, size, modified date
- Folder flag, detected type, simple risk flags from filename only

What will NOT happen:
- No whole-computer scanning
- No reading file contents
- No following symlinks
- No network access

Proposed command (after your approval):
bash <MOONBRIDGE_ROOT>/05_Helper_Tools/inventory_ALLOWLIST_ONLY.sh "<exact_allowlisted_path>"

Output:
- 04_Lists_And_Records/file_catalog.csv
- 04_Lists_And_Records/scan_log.csv

I will wait for explicit approval before running any inventory.
```

---

## Prerequisites

1. Batch manually cleansed by human
2. Exact path added to allowlist by human
3. Human has reviewed inventory_ALLOWLIST_ONLY.sh

## If path is not on allowlist

Stop. Ask the human to add the exact path first. Do not scan anyway.