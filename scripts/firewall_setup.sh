#!/bin/bash

# Set default firewall policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh

# Enable the firewall
sudo ufw enable

# Show the rules
sudo ufw status verbose
