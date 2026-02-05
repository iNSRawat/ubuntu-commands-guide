#!/usr/bin/env bash

# Example Git workflow script
#
# Usage:
#   ./git-workflow.sh "your commit message"

set -euo pipefail

COMMIT_MSG="${1:-"Update"}"

echo ">> git status"
git status

echo ">> git add ."
git add .

echo ">> git commit -m \"$COMMIT_MSG\""
git commit -m "$COMMIT_MSG" || {
  echo "No changes to commit."
  exit 0
}

echo ">> git pull --rebase"
git pull --rebase || true

echo ">> git push"
git push

echo ">> Done."
