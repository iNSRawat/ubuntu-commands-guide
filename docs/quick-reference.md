# Ubuntu Commands Quick Reference

A cheat sheet for the most commonly used Ubuntu commands.

## Navigation

| Command | Description | Example |
|---------|-------------|----------|
| `pwd` | Print working directory | `pwd` |
| `ls` | List files | `ls -lah` |
| `cd` | Change directory | `cd ~/Documents` |
| `cd ..` | Go up one level | `cd ..` |
| `cd ~` | Go to home | `cd ~` |

## File Operations

| Command | Description | Example |
|---------|-------------|----------|
| `touch` | Create file | `touch file.txt` |
| `mkdir` | Create directory | `mkdir -p dir/subdir` |
| `cp` | Copy | `cp -r source dest` |
| `mv` | Move/rename | `mv old.txt new.txt` |
| `rm` | Remove | `rm -rf directory` |
| `cat` | View file | `cat file.txt` |
| `less` | View file paginated | `less file.txt` |
| `head` | First lines | `head -n 20 file.txt` |
| `tail` | Last lines | `tail -f log.txt` |

## File Permissions

| Command | Description | Example |
|---------|-------------|----------|
| `chmod` | Change permissions | `chmod 755 script.sh` |
| `chown` | Change owner | `chown user:group file` |
| `ls -l` | View permissions | `ls -l file.txt` |

### Permission Numbers
- 7 = rwx (read, write, execute)
- 6 = rw- (read, write)
- 5 = r-x (read, execute)
- 4 = r-- (read only)

## System Information

| Command | Description | Example |
|---------|-------------|----------|
| `whoami` | Current user | `whoami` |
| `hostname` | Computer name | `hostname` |
| `uname -a` | System info | `uname -a` |
| `df -h` | Disk space | `df -h` |
| `du -sh` | Directory size | `du -sh folder` |
| `free -h` | Memory usage | `free -h` |
| `top` | Process monitor | `top` |
| `htop` | Better process monitor | `htop` |

## Process Management

| Command | Description | Example |
|---------|-------------|----------|
| `ps aux` | List processes | `ps aux \| grep python` |
| `kill` | Kill process | `kill 1234` |
| `kill -9` | Force kill | `kill -9 1234` |
| `killall` | Kill by name | `killall firefox` |
| `bg` | Background job | `bg` |
| `fg` | Foreground job | `fg` |
| `jobs` | List jobs | `jobs` |

## Package Management (apt)

| Command | Description | Example |
|---------|-------------|----------|
| `sudo apt update` | Update package list | `sudo apt update` |
| `sudo apt upgrade` | Upgrade packages | `sudo apt upgrade` |
| `sudo apt install` | Install package | `sudo apt install vim` |
| `sudo apt remove` | Remove package | `sudo apt remove vim` |
| `sudo apt autoremove` | Remove unused deps | `sudo apt autoremove` |
| `apt search` | Search packages | `apt search python` |

## Network Commands

| Command | Description | Example |
|---------|-------------|----------|
| `ping` | Test connectivity | `ping google.com` |
| `curl` | Transfer data | `curl https://api.github.com` |
| `wget` | Download file | `wget https://example.com/file.zip` |
| `ip a` | Show IP addresses | `ip a` |
| `netstat` | Network statistics | `netstat -tuln` |
| `ss` | Socket statistics | `ss -tuln` |

## Search and Find

| Command | Description | Example |
|---------|-------------|----------|
| `find` | Find files | `find . -name "*.txt"` |
| `grep` | Search in files | `grep "error" log.txt` |
| `grep -r` | Recursive search | `grep -r "TODO" .` |
| `locate` | Quick find | `locate filename` |
| `which` | Find command path | `which python3` |

## Text Processing

| Command | Description | Example |
|---------|-------------|----------|
| `cat` | Concatenate files | `cat file1 file2` |
| `sort` | Sort lines | `sort file.txt` |
| `uniq` | Remove duplicates | `sort file.txt \| uniq` |
| `wc` | Word count | `wc -l file.txt` |
| `cut` | Cut columns | `cut -d',' -f1 data.csv` |
| `awk` | Text processing | `awk '{print $1}' file.txt` |
| `sed` | Stream editor | `sed 's/old/new/g' file.txt` |

## Compression

| Command | Description | Example |
|---------|-------------|----------|
| `tar -czf` | Create tar.gz | `tar -czf archive.tar.gz folder/` |
| `tar -xzf` | Extract tar.gz | `tar -xzf archive.tar.gz` |
| `zip` | Create zip | `zip -r archive.zip folder/` |
| `unzip` | Extract zip | `unzip archive.zip` |

## Git Commands

| Command | Description | Example |
|---------|-------------|----------|
| `git init` | Initialize repo | `git init` |
| `git clone` | Clone repo | `git clone <url>` |
| `git status` | Check status | `git status` |
| `git add` | Stage changes | `git add .` |
| `git commit` | Commit changes | `git commit -m "message"` |
| `git push` | Push to remote | `git push origin main` |
| `git pull` | Pull from remote | `git pull` |
| `git branch` | List branches | `git branch` |
| `git checkout` | Switch branch | `git checkout -b new-branch` |

## Python/Data Science

| Command | Description | Example |
|---------|-------------|----------|
| `python3` | Run Python | `python3 script.py` |
| `pip3 install` | Install package | `pip3 install pandas` |
| `pip3 list` | List packages | `pip3 list` |
| `python3 -m venv` | Create venv | `python3 -m venv myenv` |
| `source venv/bin/activate` | Activate venv | `source myenv/bin/activate` |
| `deactivate` | Deactivate venv | `deactivate` |
| `jupyter notebook` | Start Jupyter | `jupyter notebook` |

## Keyboard Shortcuts

| Shortcut | Description |
|----------|-------------|
| `Ctrl+C` | Stop current process |
| `Ctrl+Z` | Suspend process |
| `Ctrl+D` | Exit/logout |
| `Ctrl+L` | Clear screen |
| `Ctrl+R` | Search history |
| `Ctrl+A` | Move to start of line |
| `Ctrl+E` | Move to end of line |
| `Tab` | Auto-complete |
| `↑/↓` | Navigate history |

## Useful Aliases

Add these to `~/.bashrc` or `~/.bash_aliases`:

```bash
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias update='sudo apt update && sudo apt upgrade'
alias py='python3'
alias ipy='ipython'
```

## Pipe Operators

| Operator | Description | Example |
|----------|-------------|----------|
| `\|` | Pipe output | `ls \| grep txt` |
| `>` | Redirect (overwrite) | `echo "text" > file.txt` |
| `>>` | Redirect (append) | `echo "text" >> file.txt` |
| `&&` | Run if previous succeeds | `mkdir dir && cd dir` |
| `\|\|` | Run if previous fails | `cd dir \|\| mkdir dir` |
| `;` | Run regardless | `cd dir ; ls` |

## Wildcards

| Wildcard | Description | Example |
|----------|-------------|----------|
| `*` | Match any characters | `ls *.txt` |
| `?` | Match single character | `ls file?.txt` |
| `[abc]` | Match any of a,b,c | `ls file[123].txt` |
| `[!abc]` | Match except a,b,c | `ls file[!0].txt` |

## Environment Variables

| Command | Description | Example |
|---------|-------------|----------|
| `export` | Set variable | `export PATH=$PATH:/new/path` |
| `echo $VAR` | Print variable | `echo $HOME` |
| `env` | List all variables | `env` |
| `printenv` | Print environment | `printenv PATH` |

## Common Paths

| Path | Description |
|------|-------------|
| `/` | Root directory |
| `~` | Home directory |
| `.` | Current directory |
| `..` | Parent directory |
| `/etc` | Configuration files |
| `/var/log` | Log files |
| `/usr/bin` | User binaries |
| `/tmp` | Temporary files |

---

**Tip**: Use `man <command>` or `<command> --help` for more details on any command!
