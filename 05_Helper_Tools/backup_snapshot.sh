#!/bin/bash
# backup_snapshot.sh — Copy MoonBridge records to 07_Backups (copy-only)
# Does NOT scan outside MoonBridge. Does not delete old backups.
# Portable shell script for Unix-like systems.
# Run with: bash backup_snapshot.sh
# Real backup: bash backup_snapshot.sh --execute
# Do NOT chmod +x without human review.

set -e

MOONBRIDGE_ROOT="${MOONBRIDGE_ROOT:-$HOME/MoonBridge}"
BACKUP_ROOT="$MOONBRIDGE_ROOT/07_Backups"
DRY_RUN="yes"

usage() {
    echo "Usage: bash backup_snapshot.sh [--execute]"
    echo ""
    echo "Creates a timestamped copy of key MoonBridge records in 07_Backups/."
    echo "Default mode is DRY-RUN. Add --execute after human review."
    echo ""
    echo "Copies: 04_Lists_And_Records/, 02_Indexes/, VERSION.md, CHANGELOG.md"
    exit 1
}

while [ $# -gt 0 ]; do
    case "$1" in
        --execute)
            DRY_RUN="no"
            shift
            ;;
        --help|-h)
            usage
            ;;
        *)
            echo "Unknown option: $1" >&2
            usage
            ;;
    esac
done

TIMESTAMP=$(date '+%Y-%m-%d_%H%M%S')
SNAPSHOT_DIR="$BACKUP_ROOT/${TIMESTAMP}_MoonBridge_Snapshot"

echo "=== MoonBridge Backup Snapshot ==="
echo "Mode: $([ "$DRY_RUN" = "yes" ] && echo "DRY-RUN" || echo "EXECUTE")"
echo "Target: $SNAPSHOT_DIR"
echo ""

ITEMS_TO_COPY="
04_Lists_And_Records
02_Indexes
VERSION.md
CHANGELOG.md
AGENTS.md
"

if [ "$DRY_RUN" = "yes" ]; then
    echo "[DRY-RUN] Would create: $SNAPSHOT_DIR"
    for item in $ITEMS_TO_COPY; do
        src="$MOONBRIDGE_ROOT/$item"
        if [ -e "$src" ]; then
            echo "[DRY-RUN] Would copy: $src"
        else
            echo "[DRY-RUN] Skip (not found): $src"
        fi
    done
    echo ""
    echo "Add --execute after human approval to perform backup."
    exit 0
fi

mkdir -p "$SNAPSHOT_DIR"

for item in $ITEMS_TO_COPY; do
    src="$MOONBRIDGE_ROOT/$item"
    if [ -e "$src" ]; then
        if [ -d "$src" ]; then
            cp -RP "$src" "$SNAPSHOT_DIR/"
            echo "Copied directory: $item"
        else
            cp -P "$src" "$SNAPSHOT_DIR/"
            echo "Copied file: $item"
        fi
    fi
done

echo ""
echo "Backup complete: $SNAPSHOT_DIR"