#!/bin/bash

# Sync Documents to backup location
rsync -av --delete ~/Documents/ ~/admin-projects/linux-automation-toolkit/backups/documents_backup/

# Log backup completion
echo "Backup completed at $(date)" >> ~/admin-projects/linux-automation-toolkit/logs/backup.log
