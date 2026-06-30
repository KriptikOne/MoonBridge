# Security Policy

MoonBridge is a **local-first filesystem template**. It is designed so that **nothing scans your computer by default** and **nothing leaves your machine** unless you explicitly approve it.

---

## What MoonBridge is not

- Not an auto-scanner of your home folder or common home-folder locations (`<HOME>/Desktop`, `<HOME>/Documents`, `<HOME>/Downloads`)
- Not a cloud sync or backup service
- Not a credential store
- Not a substitute for full-disk encryption, OS updates, or your own security practices

---

## Safe use of this template

1. Copy MoonBridge to `<MOONBRIDGE_ROOT>` on your own machine — the folder where you install or clone it (any location is fine)
2. Place real files only in `MoonPool` after manual review
3. Add exact paths to `approved_scan_directories.txt` before any metadata inventory
4. Review helper scripts before running them with `bash script.sh`
5. Keep secrets in `Private_Do_Not_Scan/` — never allowlist that zone

Scripts in `05_Helper_Tools/` are designed to be **allowlist-only** and **copy-first**. They must not ship with fallback paths outside MoonBridge.

---

## Never submit sensitive material publicly

When opening issues or pull requests, **do not include**:

| Never submit | Examples |
|--------------|----------|
| Passwords | Login credentials, PINs |
| Private keys | SSH keys, signing keys, `.pem` files |
| Recovery phrases | Wallet seeds, mnemonics |
| API keys | Tokens, `.env` contents |
| Identity documents | Passports, tax IDs, bank statements |
| Private files | Real client work, personal archives, quarantine contents |
| Full allowlists | Paths that reveal your username or private folder names |

Use fictional examples and placeholders instead.

---

## Reporting security concerns

If you believe MoonBridge documentation or scripts introduce an unsafe default:

1. **Do not** open a public issue with exploit details, real paths, or sensitive files
2. **Prefer** [GitHub Security Advisories](https://github.com/advisories) (if enabled for the repository) for responsible disclosure
3. **Alternatively**, open a **minimal** public issue describing the concern category only (e.g. "inventory script may traverse outside allowlist") without reproduction data

Include only what is needed for maintainers to understand and fix the issue.

---

## Script safety expectations

Contributors and maintainers must ensure:

- Inventory runs require an **exact allowlist match**
- Imports default to **dry-run**
- No whole-computer scanning
- No network access in base scripts
- No automatic `chmod`, `chown`, or destructive operations
- Symlinks are not followed during inventory

See [AGENTS.md](AGENTS.md) and [Scan_Policy.md](01_Rules_And_Safety/Scan_Policy.md).

---

## Your responsibilities as a user

- You control what enters MoonPool
- You control the allowlist
- You approve code execution, network use, and destructive actions
- You are responsible for backups and encryption on your own system

MoonBridge provides structure and rules — not automatic protection of files you choose to import.

---

## Supported versions

Security-related fixes apply to the latest published template version. See [VERSION.md](VERSION.md) and [CHANGELOG.md](CHANGELOG.md).

---

*Report responsibly. Protect your files. Keep public discussions free of secrets.*