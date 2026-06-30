#!/bin/bash
# inventory_ALLOWLIST_ONLY.sh — MoonBridge metadata-only inventory
# Requires exact allowlisted path. Refuses all other paths.
# Portable shell script for Unix-like systems.
# Run with: bash inventory_ALLOWLIST_ONLY.sh "/exact/allowlisted/path"
# Do NOT chmod +x without human review.

set -e

MOONBRIDGE_ROOT="${MOONBRIDGE_ROOT:-$HOME/MoonBridge}"
ALLOWLIST_FILE="$MOONBRIDGE_ROOT/04_Lists_And_Records/approved_scan_directories.txt"
CATALOG_FILE="$MOONBRIDGE_ROOT/04_Lists_And_Records/file_catalog.csv"
SCAN_LOG="$MOONBRIDGE_ROOT/04_Lists_And_Records/scan_log.csv"

# --- Refused path patterns ---
REFUSE_EXACT_PATHS="/ /Volumes $HOME $HOME/Desktop $HOME/Documents $HOME/Downloads $MOONBRIDGE_ROOT $MOONBRIDGE_ROOT/MoonPool"

REFUSE_SUFFIXES="Approved_Batches 00_Staging_Do_Not_Scan 99_Quarantine_Do_Not_Scan"

DO_NOT_SCAN_ZONES="00_Staging_Do_Not_Scan 99_Quarantine_Do_Not_Scan Private_Do_Not_Scan"

usage() {
    echo "Usage: bash inventory_ALLOWLIST_ONLY.sh <exact_allowlisted_path>"
    echo ""
    echo "MoonBridge metadata-only inventory. Path must exactly match"
    echo "an entry in approved_scan_directories.txt."
    echo ""
    echo "This script will REFUSE:"
    echo "  - ~, /, mounted or external drive paths, Desktop, Documents, Downloads"
    echo "  - MoonBridge root, MoonPool root"
    echo "  - Approved_Batches root folders"
    echo "  - Do-not-scan zones"
    echo "  - Hidden folders"
    echo "  - Any path not on the allowlist"
    exit 1
}

normalize_path() {
    # Resolve to absolute path without following symlinks (cd -P)
    local target="$1"
    if [ ! -e "$target" ]; then
        echo "ERROR: Path does not exist: $target" >&2
        exit 1
    fi
    local dir
    if [ -d "$target" ]; then
        dir=$(cd -P "$target" && pwd -P)
    else
        dir=$(cd -P "$(dirname "$target")" && pwd -P)
    fi
    echo "$dir"
}

is_refused_exact() {
    local path="$1"
    for refused in $REFUSE_EXACT_PATHS; do
        if [ "$path" = "$refused" ]; then
            return 0
        fi
    done
    return 1
}

is_refused_suffix() {
    local path="$1"
    local base
    base=$(basename "$path")
    for suffix in $REFUSE_SUFFIXES; do
        if [ "$base" = "$suffix" ]; then
            return 0
        fi
    done
    return 1
}

is_do_not_scan_zone() {
    local path="$1"
    for zone in $DO_NOT_SCAN_ZONES; do
        case "$path" in
            *"/$zone"*|*"/$zone/"*)
                return 0
                ;;
        esac
    done
    return 1
}

is_hidden_path() {
    local path="$1"
    local part
    local old_ifs="$IFS"
    IFS='/'
    for part in $path; do
        case "$part" in
            .|..|'')
                ;;
            .* )
                IFS="$old_ifs"
                return 0
                ;;
        esac
    done
    IFS="$old_ifs"
    return 1
}

is_on_allowlist() {
    local path="$1"
    if [ ! -f "$ALLOWLIST_FILE" ]; then
        echo "ERROR: Allowlist file not found: $ALLOWLIST_FILE" >&2
        exit 1
    fi
    while IFS= read -r line || [ -n "$line" ]; do
        # Skip empty lines and comments
        case "$line" in
            ''|'#'*)
                continue
                ;;
        esac
        if [ "$line" = "$path" ]; then
            return 0
        fi
    done < "$ALLOWLIST_FILE"
    return 1
}

get_extension() {
    local name="$1"
    case "$name" in
        *.* )
            echo "${name##*.}" | tr '[:upper:]' '[:lower:]'
            ;;
        * )
            echo ""
            ;;
    esac
}

get_file_type() {
    local ext="$1"
    case "$ext" in
        jpg|jpeg|png|gif|webp|svg|bmp|tiff|ico|heic) echo "image" ;;
        mp3|wav|flac|aac|m4a|ogg|aiff|wma) echo "audio" ;;
        mp4|mov|avi|mkv|webm|m4v|wmv) echo "video" ;;
        pdf|doc|docx|txt|rtf|odt|pages|md) echo "document" ;;
        csv|xls|xlsx|ods|numbers|tsv) echo "spreadsheet" ;;
        zip|tar|gz|bz2|7z|rar) echo "archive" ;;
        js|ts|py|rb|go|rs|java|c|cpp|html|css|json|xml|yaml|yml|sh) echo "code" ;;
        psd|ai|sketch|fig|xd|indd|eps) echo "design" ;;
        ttf|otf|woff|woff2|eot) echo "font" ;;
        "") echo "unknown" ;;
        *) echo "other" ;;
    esac
}

get_risk_flags() {
    local path="$1"
    local name="$2"
    local flags=""
    local lower
    lower=$(echo "$name" | tr '[:upper:]' '[:lower:]')

    case "$name" in
        .env|.env.local|.env.production)
            flags="env_file"
            ;;
    esac

    case "$lower" in
        *password*|*credential*|*secret*|*token*)
            if [ -n "$flags" ]; then flags="$flags;possible_secret"; else flags="possible_secret"; fi
            ;;
        *seed*|*mnemonic*|*wallet*|*recovery*)
            if [ -n "$flags" ]; then flags="$flags;possible_crypto_secret"; else flags="possible_crypto_secret"; fi
            ;;
    esac

    case "$name" in
        package.json)
            if [ -n "$flags" ]; then flags="$flags;code_project"; else flags="code_project"; fi
            ;;
        id_rsa|*.pem|*.key)
            if [ -n "$flags" ]; then flags="$flags;possible_key"; else flags="possible_key"; fi
            ;;
    esac

    case "$path" in
        */node_modules/*)
            if [ -n "$flags" ]; then flags="$flags;code_dependency_tree"; else flags="code_dependency_tree"; fi
            ;;
    esac

    echo "$flags"
}

validate_path() {
    local path="$1"

    if [ -z "$path" ]; then
        usage
    fi

    # Reject parent traversal
    case "$path" in
        *..*)
            echo "REFUSED: Parent directory traversal (..) is not allowed." >&2
            exit 1
            ;;
    esac

    path=$(normalize_path "$path")

    if is_refused_exact "$path"; then
        echo "REFUSED: Path is in the blocked exact-path list." >&2
        exit 1
    fi

    if is_refused_suffix "$path"; then
        echo "REFUSED: Cannot scan Approved_Batches or do-not-scan folder roots." >&2
        echo "         Allowlist an exact child batch folder instead." >&2
        exit 1
    fi

    if is_do_not_scan_zone "$path"; then
        echo "REFUSED: Path is in a do-not-scan zone." >&2
        exit 1
    fi

    if is_hidden_path "$path"; then
        echo "REFUSED: Hidden folders are not allowed." >&2
        exit 1
    fi

    # Must be under MoonBridge
    case "$path" in
        "$MOONBRIDGE_ROOT"/*)
            ;;
        * )
            echo "REFUSED: Path must be inside MoonBridge: $MOONBRIDGE_ROOT" >&2
            exit 1
            ;;
    esac

    if ! is_on_allowlist "$path"; then
        echo "REFUSED: Path is not on the allowlist." >&2
        echo "         Add exact path to: $ALLOWLIST_FILE" >&2
        exit 1
    fi

    echo "$path"
}

inventory_directory() {
    local scan_path="$1"
    local scan_date
    scan_date=$(date '+%Y-%m-%d %H:%M:%S')
    local file_count=0
    local folder_count=0
    local batch_name
    batch_name=$(basename "$scan_path")

    echo "Scanning (metadata only): $scan_path"
    echo "Output catalog: $CATALOG_FILE"
    echo ""

    # Use find with safety limits — no symlink follow (-P where supported)
    while IFS= read -r item; do
        local item_path="$item"
        local item_name
        item_name=$(basename "$item_path")
        local is_folder="false"
        local size_bytes="0"
        local mod_date=""
        local ext=""
        local file_type=""
        local risk=""

        if [ -d "$item_path" ]; then
            is_folder="true"
            folder_count=$((folder_count + 1))
            size_bytes="0"
        elif [ -f "$item_path" ]; then
            file_count=$((file_count + 1))
            size_bytes=$(stat -f '%z' "$item_path" 2>/dev/null || echo "0")
        elif [ -L "$item_path" ]; then
            # Symlink — record but do not follow
            file_count=$((file_count + 1))
            is_folder="false"
            size_bytes="0"
            risk="symlink"
        else
            continue
        fi

        mod_date=$(stat -f '%Sm' -t '%Y-%m-%d %H:%M:%S' "$item_path" 2>/dev/null || echo "")
        ext=$(get_extension "$item_name")
        file_type=$(get_file_type "$ext")
        if [ -z "$risk" ]; then
            risk=$(get_risk_flags "$item_path" "$item_name")
        fi

        # Escape commas in path for CSV
        local csv_path
        csv_path=$(echo "$item_path" | sed 's/,/\\,/g')

        echo "$csv_path,$item_name,$ext,$size_bytes,$mod_date,$is_folder,$file_type,$risk,$scan_date,$batch_name" >> "$CATALOG_FILE"

    done < <(find -P "$scan_path" 2>/dev/null | sort)

    # Append scan log
    echo "$scan_date,$scan_path,$file_count,$folder_count,yes,no,human_pending,bootstrap_inventory" >> "$SCAN_LOG"

    echo ""
    echo "Done. Files: $file_count  Folders: $folder_count"
    echo "Logged to: $SCAN_LOG"
}

# --- Main ---
if [ $# -lt 1 ]; then
    usage
fi

APPROVED_PATH=$(validate_path "$1")
inventory_directory "$APPROVED_PATH"