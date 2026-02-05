# Advanced Ubuntu Commands

Powerful commands for system administration and advanced workflows.

## Shell Scripting

### Variables and Input
```bash
#!/bin/bash
VAR="value"
echo $VAR
read -p "Enter name: " name
echo "Hello $name"
```

### Conditionals
```bash
if [ -f file.txt ]; then
    echo "File exists"
fi

if [ $age -gt 18 ]; then
    echo "Adult"
else
    echo "Minor"
fi
```

### Loops
```bash
for i in {1..5}; do
    echo "Number $i"
done

while read line; do
    echo "$line"
done < file.txt
```

## System Administration

### systemctl - Service Management
```bash
sudo systemctl start service
sudo systemctl stop service
sudo systemctl restart service
sudo systemctl status service
sudo systemctl enable service
sudo systemctl disable service
systemctl list-units
```

### cron - Scheduled Tasks
```bash
crontab -e
crontab -l

# Format: minute hour day month weekday command
0 * * * * /path/to/script.sh
*/5 * * * * /path/to/command
```

### rsync - Advanced File Sync
```bash
rsync -av source/ destination/
rsync -avz --progress source/ user@remote:/path/
rsync -av --exclude='*.log' source/ dest/
```

## Advanced Text Processing

### find - Advanced File Search
```bash
find . -name "*.py"
find . -type f -mtime -7
find . -size +100M
find . -name "*.log" -delete
find . -type f -exec chmod 644 {} \;
```

### xargs - Build Commands
```bash
find . -name "*.txt" | xargs grep "pattern"
ls | xargs -I {} echo "File: {}"
```

---

**Previous**: [Intermediate Commands](02-intermediate-commands.md) | **Next**: [Data Science Commands](04-data-science-commands.md)
