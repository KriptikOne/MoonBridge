# Helper Tools

Safe shell scripts for MoonBridge. **Review before running.** Not chmod +x by default.

Run with: `bash script_name.sh`

| Script | Purpose |
|--------|---------|
| [generate_tree.sh](generate_tree.sh) | Print MoonBridge folder tree only |
| [backup_snapshot.sh](backup_snapshot.sh) | Snapshot records to 07_Backups (dry-run default) |
| [inventory_ALLOWLIST_ONLY.sh](inventory_ALLOWLIST_ONLY.sh) | Metadata inventory — allowlisted paths only |
| [copy_import_COPY_ONLY.sh](copy_import_COPY_ONLY.sh) | Copy-only import — dry-run default |

None of these scripts scan common home-folder locations or your computer outside `<MOONBRIDGE_ROOT>`.
