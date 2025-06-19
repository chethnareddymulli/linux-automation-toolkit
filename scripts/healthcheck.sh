#!/bin/bash
echo "===  SYSTEM HEALTH CHECK:  $(date) ==="
uptime
df -h
free -m
ps aux --sort=-%mem | head -6
