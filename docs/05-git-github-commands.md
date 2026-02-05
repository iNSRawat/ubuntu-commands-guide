# Git & GitHub Commands

Essential Git commands for version control and GitHub workflows.

## Git Basics

### Setup
```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --list
```

### Initialize Repository
```bash
git init
git clone https://github.com/user/repo.git
```

### Basic Workflow
```bash
git status
git add file.txt
git add .
git commit -m "Commit message"
git push origin main
git pull origin main
```

## Branching

```bash
git branch
git branch feature-branch
git checkout feature-branch
git checkout -b new-branch
git merge feature-branch
git branch -d feature-branch
```

## Remote Operations

```bash
git remote -v
git remote add origin https://github.com/user/repo.git
git push -u origin main
git fetch origin
git pull
```

## History & Logs

```bash
git log
git log --oneline
git log --graph --decorate
git diff
git show commit-hash
```

## Undoing Changes

```bash
git reset HEAD file.txt
git checkout -- file.txt
git revert commit-hash
git reset --hard HEAD~1
```

## GitHub Specific

### SSH Setup
```bash
ssh-keygen -t ed25519 -C "your@email.com"
cat ~/.ssh/id_ed25519.pub
# Add to GitHub Settings > SSH Keys
```

### Clone with SSH
```bash
git clone git@github.com:user/repo.git
```

---

**Previous**: [Data Science Commands](04-data-science-commands.md)
