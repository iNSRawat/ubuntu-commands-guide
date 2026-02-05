#!/usr/bin/env bash

# Simple CSV processor using csvkit/jq/coreutils
# Demonstrates:
#   - Counting rows
#   - Selecting columns
#   - Filtering lines

set -euo pipefail

CSV_FILE="${1:-}"

if [ -z "$CSV_FILE" ] || [ ! -f "$CSV_FILE" ]; then
  echo "Usage: $0 path/to/file.csv"
  exit 1
fi

echo ">> File: $CSV_FILE"

echo ">> Number of lines:"
wc -l "$CSV_FILE"

echo ">> Preview (head):"
head "$CSV_FILE"

if command -v csvcut >/dev/null 2>&1; then
  echo ">> Columns:"
  csvcut -n "$CSV_FILE"
else
  echo ">> Install csvkit for richer CSV commands (sudo apt install csvkit)"
fi
