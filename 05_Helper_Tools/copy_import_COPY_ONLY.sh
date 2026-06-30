#!/bin/bash
# copy_import_COPY_ONLY.sh — MoonBridge copy-only import
# NEVER moves originals. Refuses overwrites. Defaults to dry-run.
# Portable shell script for Unix-like systems.
# Run with: bash copy_import_COPY_ONLY.sh --source "/path" --dest "/MoonBridge/dest"
# Real copy: bash copy_import_COPY_ONLY.sh --source "/path" --dest "/MoonBridge/dest" --execute
# Do NOT chmod +x without human review.

set -e

MOONBRIDGE_ROOT="${MOONBRIDGE_ROOT:-$HOME/MoonBridge}"
IMPORT_LOG="$MOONBRIDGE_ROOT/04_Lists_And_Records/import_log.csv"

DRY_RUN="yes"
SOURCE=""
DEST=""

usage() {
    echo "Usage: bash copy_import_COPY_ONLY.sh --source <path> --dest <path> [--execute]"
    echo ""
    echo "Copy-only import into MoonBridge. Default mode is DRY-RUN."
    echo ""
    echo "Options:"
    echo "  --source <path>   Explicit approved source path (required)"
    echo "  --dest <path>     Destination inside MoonBridge (required)"
    echo "  --execute         Perform real copy (requires human approval)"
    echo ""
    echo "Safety:"
    echo "  - Never moves originals"
    echo "  - Refuses to overwrite existing files"
    echo "  - Destination must be inside MoonBridge"
    echo "  - Source must not be ~, /, mounted or external drive paths, Desktop, Documents, Downloads"
    echo "  - Does not follow symlinks for copying"
    exit 1
}

log_action() {
    local timestamp action src dst count dry approved notes
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    action="$1"
    src="$2"
    dst="$3"
    count="$4"
    dry="$5"
    approved="$6"
    notes="$7"
    echo "$timestamp,$action,$src,$dst,$count,$dry,$approved,$notes" >> "$IMPORT_LOG"
}

normalize_path() {
    local target="$1"
    if [ ! -e "$target" ]; then
        echo "ERROR: Path does not exist: $target" >&2
        exit 1
    fi
    if [ -d "$target" ]; then
        cd -P "$target" && pwd -P
    else
        cd -P "$(dirname "$target")" && pwd -P
    fi
}

validate_source() {
    local path="$1"

    case "$path" in
        *..*)
            echo "REFUSED: Parent traversal not allowed in source." >&2
            exit 1
            ;;
    esac

    path=$(normalize_path "$path")

    # Refuse dangerous sources
    case "$path" in
        "/"|"$HOME"|"$HOME/Desktop"|"$HOME/Documents"|"$HOME/Downloads")
            echo "REFUSED: Source is a blocked system or home path." >&2
            exit 1
            ;;
    esac

    case "$path" in
        /Volumes/*)
            echo "REFUSED: Source under mounted or external drive paths requires explicit human approval outside this script." >&2
            exit 1
            ;;
    esac

    echo "$path"
}

validate_dest() {
    local path="$1"

    case "$path" in
        *..*)
            echo "REFUSED: Parent traversal not allowed in destination." >&2
            exit 1
            ;;
    esac

    # Destination may not exist yet — check parent
    local parent
    parent=$(dirname "$path")
    if [ ! -d "$parent" ]; then
        echo "ERROR: Destination parent does not exist: $parent" >&2
        exit 1
    fi

    local normalized_parent
    normalized_parent=$(cd -P "$parent" && pwd -P)
    local full_dest="$normalized_parent/$(basename "$path")"

    case "$full_dest" in
        "$MOONBRIDGE_ROOT"/*)
            ;;
        * )
            echo "REFUSED: Destination must be inside MoonBridge: $MOONBRIDGE_ROOT" >&2
            exit 1
            ;;
    esac

    echo "$full_dest"
}

copy_item() {
    local src="$1"
    local dst="$2"
    local count=0

    if [ -d "$src" ]; then
        if [ "$DRY_RUN" = "yes" ]; then
            echo "[DRY-RUN] Would create directory: $dst"
            echo "[DRY-RUN] Would copy contents from: $src"
            count=$(find -P "$src" -type f 2>/dev/null | wc -l | tr -d ' ')
        else
            if [ -e "$dst" ]; then
                echo "REFUSED: Destination already exists: $dst" >&2
                exit 1
            fi
            mkdir -p "$dst"
            # cp -R without following symlinks on source: copy as files
            cp -RP "$src"/. "$dst"/
            count=$(find -P "$dst" -type f 2>/dev/null | wc -l | tr -d ' ')
            echo "Copied directory: $src -> $dst ($count files)"
        fi
    elif [ -f "$src" ]; then
        if [ "$DRY_RUN" = "yes" ]; then
            echo "[DRY-RUN] Would copy file: $src -> $dst"
            count=1
        else
            if [ -e "$dst" ]; then
                echo "REFUSED: Would overwrite existing file: $dst" >&2
                exit 1
            fi
            mkdir -p "$(dirname "$dst")"
            cp -P "$src" "$dst"
            count=1
            echo "Copied file: $src -> $dst"
        fi
    else
        echo "REFUSED: Source is not a regular file or directory (symlink-only?)." >&2
        exit 1
    fi

    echo "$count"
}

# --- Parse arguments ---
while [ $# -gt 0 ]; do
    case "$1" in
        --source)
            SOURCE="$2"
            shift 2
            ;;
        --dest)
            DEST="$2"
            shift 2
            ;;
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

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
    usage
fi

VALIDATED_SOURCE=$(validate_source "$SOURCE")
VALIDATED_DEST=$(validate_dest "$DEST")

echo "=== MoonBridge Copy Import ==="
echo "Mode: $([ "$DRY_RUN" = "yes" ] && echo "DRY-RUN" || echo "EXECUTE")"
echo "Source: $VALIDATED_SOURCE"
echo "Destination: $VALIDATED_DEST"
echo ""

if [ "$DRY_RUN" = "yes" ]; then
    echo "No files will be copied. Add --execute after human approval."
    echo ""
fi

FILE_COUNT=$(copy_item "$VALIDATED_SOURCE" "$VALIDATED_DEST")

log_action "copy_import" "$VALIDATED_SOURCE" "$VALIDATED_DEST" "$FILE_COUNT" "$DRY_RUN" "human_pending" "copy_only_no_overwrite"

echo ""
echo "Logged to: $IMPORT_LOG"