# Ubuntu Commands Guide 🐧

A comprehensive guide to essential Ubuntu commands, organized by skill level and use case. Perfect for beginners learning Linux on WSL or native Ubuntu, and experienced users looking for quick reference.

## 📚 Table of Contents

- [Getting Started](#-getting-started)
- [Repository Structure](#-repository-structure)
- [Documentation](#-documentation)
- [Scripts](#%EF%B8%8F-scripts)
- [Examples](#-examples)
- [Contributing](#-contributing)
- [License](#-license)

## 🚀 Getting Started

This repository contains:
- Organized command documentation from beginner to advanced levels
- Complete Docker & WSL2 setup and commands
- Practical shell scripts for common tasks
- Real-world examples and use cases
- Configuration templates

### Prerequisites

- Ubuntu 20.04 LTS or later (also works on WSL2 on Windows)
- Basic familiarity with terminal/command line
- Text editor (vim, nano, or VS Code)

## 📁 Repository Structure

```
ubuntu-commands-guide/
├── README.md
├── docs/
│   ├── 01-beginner-commands.md
│   ├── 02-intermediate-commands.md
│   ├── 03-advanced-commands.md
│   ├── 04-data-science-commands.md
│   ├── 05-git-github-commands.md
│   ├── 06-docker-commands.md       ← NEW
│   └── quick-reference.md
├── scripts/
│   ├── setup-aliases.sh
│   ├── install-ds-stack.sh
│   └── backup-script.sh
├── examples/
│   ├── batch-rename.sh
│   ├── csv-processor.sh
│   └── git-workflow.sh
└── config/
    ├── bashrc-template
    ├── bash_aliases
    └── gitconfig.sh
```

## 📖 Documentation

### Command Categories

1. **[Beginner Commands](docs/01-beginner-commands.md)**
   - File and directory operations
   - Basic system commands (echo, clear, history, sudo)
   - Text viewing and editing
   - Package management basics
   - WSL-specific commands & keyboard shortcuts

2. **[Intermediate Commands](docs/02-intermediate-commands.md)**
   - Process management
   - Permissions and ownership
   - Network commands (ssh, scp, curl, wget)
   - System monitoring
   - Aliases, environment variables, tmux/screen, lsof

3. **[Advanced Commands](docs/03-advanced-commands.md)**
   - Shell scripting (functions, error handling)
   - System administration & journalctl logs
   - Advanced find, awk, pipes
   - Disk usage & cleanup

4. **[Data Science Commands](docs/04-data-science-commands.md)**
   - Python environment setup (System Python + venv)
   - Virtual environment management
   - Core DS library installation (numpy, pandas, sklearn, xgboost, streamlit)
   - Jupyter notebook setup
   - Docker for data science

5. **[Git & GitHub Commands](docs/05-git-github-commands.md)**
   - Repository management
   - Branching and merging
   - Remote operations
   - git stash, tags, .gitignore templates
   - SSH troubleshooting & DS workflow

6. **[Docker Commands](docs/06-docker-commands.md)** ✨ New
   - Docker Engine installation on Ubuntu/WSL2
   - Container management (run, stop, rm, exec, logs)
   - Image commands (pull, build, push, tag)
   - Dockerfile essentials with Streamlit/DS example
   - Docker Compose setup
   - Volumes, networking, cleanup
   - Common DS/ML Docker Hub images

## 🛠️ Scripts

### Available Scripts
- **setup-aliases.sh**: Set up useful bash aliases for productivity
- **install-ds-stack.sh**: Install complete data science stack (Python, Jupyter, pandas, etc.)
- **backup-script.sh**: Automated backup script for important directories

### Usage
```bash
# Make scripts executable
chmod +x scripts/*.sh

# Run a script
./scripts/setup-aliases.sh
```

## 💡 Examples

Practical examples for common tasks:
- **batch-rename.sh**: Rename multiple files based on patterns
- **csv-processor.sh**: Process CSV files with command-line tools
- **git-workflow.sh**: Common Git workflows automated

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

For major changes:
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 Quick Reference

For a quick command reference, see [quick-reference.md](docs/quick-reference.md)

Includes cheat sheets for:
- Navigation, file ops, permissions, networking
- WSL-specific commands
- Docker quick reference table
- tmux keyboard shortcuts
- Useful one-liners for data science

## 🎯 Use Cases

This guide is perfect for:
- Data science students and professionals using WSL2/Ubuntu
- Developers containerizing apps with Docker
- System administrators
- Anyone learning Linux command line from scratch

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

**iNSRawat**
- GitHub: [@iNSRawat](https://github.com/iNSRawat)

## ⭐ Show Your Support

Give a ⭐️ if this project helped you!

---
*Last Updated: March 2026*
