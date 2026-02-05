#!/usr/bin/env bash

# Batch rename files using a pattern
# Example:
#   ./batch-rename.sh "IMG_" "photo_" .jpg

set -euo pipefail

OLD_PREFIX="${1:-}"
NEW_PREFIX="${2:-}"
EXT="${3:-}"

if [ -z "$OLD_PREFIX" ] || [ -z "$NEW_PREFIX" ] || [ -z "$EXT" ]; then
  echo "Usage: $0 OLD_PREFIX NEW_PREFIX EXT"
  echo "Example: $0 IMG_ photo_ .jpg"
  exit 1
fi

counter=1

for file in "${OLD_PREFIX}"*"${EXT}"; do
  [ -e "$file" ] || continue
  new_name="${NEW_PREFIX}${counter}${EXT}"
  echo "Renaming: $file -> $new_name"
  mv "$file" "$new_name"
  counter=$((counter + 1))
done

echo "Done."
