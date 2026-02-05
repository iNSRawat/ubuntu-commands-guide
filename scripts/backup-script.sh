#!/usr/bin/env bash

# Simple backup script
# - Compresses a source directory into a timestamped archive
# - Stores backups in a target backup directory
#
# Usage:
#   chmod +x scripts/backup-script.sh
#   ./scripts/backup-script.sh /path/to/source /path/to/backup

set -euo pipefail

SOURCE_DIR="${1:-}"
BACKUP_DIR="${2:-}"

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
  echo "Usage: $0 /path/to/source /path/to/backup"
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory does not exist: $SOURCE_DIR"
  exit 1
fi

mkdir -p "$BACKUP_DIR"

TIMESTAMP="$(date +%F_%H-%M-%S)"
BASENAME="$(basename "$SOURCE_DIR")"
ARCHIVE_NAME="${BASENAME}_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${BACKUP_DIR}/${ARCHIVE_NAME}"

echo ">> Creating backup of ${SOURCE_DIR} at ${ARCHIVE_PATH}"
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_DIR")" "$BASENAME"

echo ">> Backup completed."
echo "File: ${ARCHIVE_PATH}"
