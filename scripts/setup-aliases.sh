#!/bin/bash

# Setup Useful Bash Aliases for Ubuntu
# This script creates useful aliases for improved productivity

echo "Setting up useful bash aliases..."

# Backup existing bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    echo "Backing up existing .bash_aliases to .bash_aliases.backup"
    cp ~/.bash_aliases ~/.bash_aliases.backup
fi

# Create or append to .bash_aliases
cat >> ~/.bash_aliases << 'EOF'

# ========================================
# Navigation Aliases
# ========================================
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# ========================================
# Listing Aliases
# ========================================
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ltr='ls -ltr'
alias lt='ls -lt'

# ========================================
# Safety Aliases (interactive mode)
# ========================================
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ========================================
# System Update Aliases
# ========================================
alias update='sudo apt update && sudo apt upgrade'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias search='apt search'

# ========================================
# Python Aliases
# ========================================
alias py='python3'
alias python='python3'
alias pip='pip3'
alias ipy='ipython'
alias jn='jupyter notebook'
alias jl='jupyter lab'

# ========================================
# Git Aliases
# ========================================
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias glog='git log --oneline --graph --decorate'
alias gb='git branch'
alias gco='git checkout'

# ========================================
# Directory Operations
# ========================================
alias mkd='mkdir -pv'
alias rmd='rm -rf'

# ========================================
# System Information
# ========================================
alias ports='netstat -tulanp'
alias meminfo='free -h'
alias diskspace='df -h'
alias folders='du -h --max-depth=1'
alias myip='curl -s https://api.ipify.org'

# ========================================
# Process Management
# ========================================
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias topcpu='/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10'
alias topmem='/bin/ps -eo pmem,pid,user,args | sort -k 1 -r | head -10'

# ========================================
# File Operations
# ========================================
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'

# ========================================
# Data Science Specific
# ========================================
alias activate='source venv/bin/activate'
alias createvenv='python3 -m venv venv'
alias freeze='pip freeze > requirements.txt'
alias pipr='pip install -r requirements.txt'

# ========================================
# Utility Aliases
# ========================================
alias cls='clear'
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%Y-%m-%d"'

# ========================================
# Quick Edits
# ========================================
alias bashrc='nano ~/.bashrc'
alias aliases='nano ~/.bash_aliases'
alias reload='source ~/.bashrc'

EOF

echo ""
echo "Aliases added successfully to ~/.bash_aliases"
echo ""
echo "To activate the aliases, run: source ~/.bashrc"
echo "Or simply close and reopen your terminal."
echo ""
echo "To view all aliases, run: alias"
echo "To edit aliases, run: aliases"
echo ""
echo "Backup saved to ~/.bash_aliases.backup (if existed)"

# Source the bashrc to apply changes
echo "Would you like to reload bash configuration now? (y/n)"
read -r response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    source ~/.bashrc
    echo "Bash configuration reloaded!"
    echo "Aliases are now active."
else
    echo "Please run 'source ~/.bashrc' to activate aliases."
fi
