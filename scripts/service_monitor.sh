#!/bin/bash

SERVICE="ssh"

if ! systemctl is-active --quiet $SERVICE; then
  echo "$(date): $SERVICE is down. Restarting..." >> ~/admin-projects/linux-automation-toolkit/logs/service_monitor.log
  sudo systemctl restart $SERVICE
fi
