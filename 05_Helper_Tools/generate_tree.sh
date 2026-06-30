#!/bin/bash
# generate_tree.sh — Print folder tree of MoonBridge only
# Does NOT scan outside ~/MoonBridge.
# Portable shell script for Unix-like systems.
# Run with: bash generate_tree.sh
# Do NOT chmod +x without human review.

MOONBRIDGE_ROOT="${MOONBRIDGE_ROOT:-$HOME/MoonBridge}"
MAX_DEPTH="${MAX_DEPTH:-4}"

if [ ! -d "$MOONBRIDGE_ROOT" ]; then
    echo "ERROR: MoonBridge root not found: $MOONBRIDGE_ROOT" >&2
    exit 1
fi

echo "MoonBridge folder tree (max depth: $MAX_DEPTH)"
echo "Root: $MOONBRIDGE_ROOT"
echo "Generated: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# Use find limited to MoonBridge — no symlinks followed
find -P "$MOONBRIDGE_ROOT" -maxdepth "$MAX_DEPTH" 2>/dev/null | sort | while IFS= read -r line; do
    # Skip if somehow outside root
    case "$line" in
        "$MOONBRIDGE_ROOT"/*|"$MOONBRIDGE_ROOT")
            # Indent by depth
            rel="${line#$MOONBRIDGE_ROOT/}"
            if [ "$rel" = "$line" ]; then
                rel=""
            fi
            depth=0
            if [ -n "$rel" ]; then
                depth=$(echo "$rel" | tr -cd '/' | wc -c | tr -d ' ')
            fi
            indent=""
            i=0
            while [ "$i" -lt "$depth" ]; do
                indent="$indent  "
                i=$((i + 1))
            done
            name=$(basename "$line")
            if [ -d "$line" ]; then
                echo "${indent}${name}/"
            else
                echo "${indent}${name}"
            fi
            ;;
    esac
done