#!/usr/bin/env bash

# Apply recommended Git configuration for Ubuntu Commands Guide
# Usage:
#   chmod +x config/gitconfig.sh
#   ./config/gitconfig.sh

set -euo pipefail

echo ">> Setting global Git configuration..."

git config --global init.defaultBranch main
git config --global core.editor "nano"
git config --global pull.rebase false
git config --global push.default current

# Helpful aliases
git config --global alias.st "status"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.cm "commit -m"
git config --global alias.df "diff"
git config --global alias.lg "log --oneline --graph --decorate --all"

echo ">> Done. Current git config:"
git config --list
