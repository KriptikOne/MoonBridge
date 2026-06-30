# Glossary

Plain-language definitions for MoonBridge terms.

---

## A

**Allowlist**  
A list of **exact folder paths** that are approved for metadata-only inventory. Stored in `04_Lists_And_Records/approved_scan_directories.txt`. If a path is not on the list, inventory scripts must refuse.

**Approval Level**  
A numbered scale (0–5) defining what actions are permitted. Level 0 = structure only; Level 5 = destructive operations. See [AGENTS.md](../AGENTS.md).

**Approved_Batches**  
A subfolder inside each MoonPool category where manually cleansed material lives. The folder itself is **not** auto-approved for scanning — only exact child paths on the allowlist.

**Archive**  
A MoonPool subfolder for material you want to keep but are not actively using.

**Asset**  
Any file or media item you track — image, audio, video, document, font, etc.

---

## B

**Batch**  
A group of related files processed together through the MoonBridge lifecycle (staging → approved → working → finished → archive).

**Bootstrap**  
The initial creation of empty folders, starter documents, and safe placeholder scripts (Approval Level 0).

---

## C

**Catalog**  
A CSV file in `04_Lists_And_Records/` that records structured data about files, assets, or projects.

**Code project**  
A folder containing development files such as `package.json`, lockfiles, `node_modules`, `.git`, or `.env`. Treated as high-risk for automatic execution.

**Copy-first**  
The rule that imports **copy** files rather than moving originals. Safer and reversible.

---

## D

**Dry-run**  
A script mode that shows what it *would* do without actually copying or changing files. Default for `copy_import_COPY_ONLY.sh`.

---

## F

**Finished**  
A MoonPool subfolder for organised material ready for regular use. Also `06_Finished_Outputs/` for polished deliverables.

---

## I

**Import**  
Copying files from an approved source path into an organised destination inside MoonBridge. Logged in `import_log.csv`.

**Inventory**  
Collecting **metadata only** about files in an allowlisted folder — not reading contents.

---

## M

**Metadata**  
Facts about a file without opening it: path, name, extension, size, modified date, type guess, folder flag, simple risk flags.

**MoonBridge**  
The entire `~/MoonBridge` filesystem organisation system.

**MoonPool**  
The controlled user-content intake zone at `~/MoonBridge/MoonPool`. The only place your real files should enter the system.

---

## Q

**Quarantine**  
`MoonPool/99_Quarantine_Do_Not_Scan/` — for suspicious, sensitive, broken, or uncertain material. Never scan by default.

---

## S

**Scan**  
In MoonBridge, means metadata-only directory listing of an **exact allowlisted path** — not a whole-computer search and not reading file contents.

**Staging**  
`MoonPool/00_Staging_Do_Not_Scan/` — first landing zone for files being manually prepared. Never scan.

**Symlink**  
A symbolic link. MoonBridge tools must not follow symlinks during inventory.

---

## W

**Working**  
A MoonPool subfolder for material you are actively organising.

---

## Z

**Do-not-scan zone**  
Folders that must never be inventoried unless you document a rare explicit exception: Staging, Quarantine, and `Private_Do_Not_Scan/`.

---

*Add your own terms here as your workflow evolves.*