# 🛠️ Linux System Administration & Automation Toolkit

This project is a comprehensive Linux system administration and automation toolkit built using Bash scripts. It is designed to automate common sysadmin tasks such as health monitoring, user management, backup operations, service monitoring, log rotation, and firewall setup.

---

## 📁 Folder Structure

linux-automation-toolkit/
├── scripts/ # Bash automation scripts
├── logs/ # Generated logs
├── backups/ # Auto-created file backups
├── reports/ # Documentation




---

## ⚙️ Features Implemented

| Feature                    | Description                                                                 |
|---------------------------|-----------------------------------------------------------------------------|
| ✅ Health Monitoring       | RAM, CPU, disk usage, and top processes logged weekly                       |
| ✅ Log Rotation            | Automatically compresses and manages logs with `logrotate`                 |
| ✅ User Management         | Adds users and forces password change on first login                        |
| ✅ Automatic Backups       | Uses `rsync` to backup important files and folders                          |
| ✅ Service Monitoring      | Auto-restarts failed services like `ssh`                                    |
| ✅ Firewall Hardening      | Applies `ufw` rules to secure Linux systems                                 |
| ✅ Automation with Cron    | All scripts run automatically on schedule via `cron`                        |

---

## 🔧 Scripts Breakdown

### `healthcheck.sh`
- Checks RAM, disk usage, CPU load, top 5 memory-consuming processes.
- Appends the data to `logs/health.log`

### `logrotate-health.conf`
- Rotates `health.log` every 7 days
- Keeps 7 backups and compresses old logs

### `user_manager.sh`
- Adds a user and forces password reset at first login

### `backup.sh`
- Backs up the user’s `Documents` directory using `rsync`
- Logs backup date/time to `logs/backup.log`

### `service_monitor.sh`
- Monitors `ssh` service
- Restarts it if down, logs events to `logs/service_monitor.log`

### `firewall_setup.sh`
- Configures UFW to block all incoming traffic except SSH

---

## 🕒 Cron Job Schedule

The following `cron` jobs are configured to run every **Thursday at 6:43 PM**:

```cron
43 18 * * 4 /home/parrot/admin-projects/linux-automation-toolkit/scripts/healthcheck.sh >> /home/parrot/admin-projects/linux-automation-toolkit/logs/health.log
43 18 * * 4 /home/parrot/admin-projects/linux-automation-toolkit/scripts/backup.sh >> /home/parrot/admin-projects/linux-automation-toolkit/logs/backup.log
43 18 * * 4 /home/parrot/admin-projects/linux-automation-toolkit/scripts/service_monitor.sh >> /home/parrot/admin-projects/linux-automation-toolkit/logs/service_monitor.log 



👨‍💻 Tools & Technologies Used

Bash Scripting
rsync
logrotate
cron
ufw
systemctl


