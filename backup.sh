  #!/bin/bash

# Define variables
PROJECT_DIR="/home/devops/academy/project"
BACKUP_DIR="/home/devops/academy/backup"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/project_backup_$TIMESTAMP.tar.gz"

# Check if project and backup directory exists
if [ ! -d "$PROJECT_DIR" ] && [ ! -d "$BACKUP_DIR" ]; then
    echo "❌ Error: Project directory/backup directory $PROJECT_DIR $BACKUP_DIR does not exist."
    exit 1
fi

# Attempt to create compressed backup
if tar -czf "$BACKUP_FILE" -C "$PROJECT_DIR" .; then
    echo "✅ Backup successful: $BACKUP_FILE"
else
    echo "❌ Error: Backup failed during compression."
    exit 1
fi
