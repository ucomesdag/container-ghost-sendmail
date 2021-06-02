#!/bin/sh

# Add FQDN to /etc/hosts for sendmail to work
echo "$(cat /etc/hosts | tail -n1 | awk '{print $1" "$2" "$2".localdomain"}')" >> /etc/hosts

/usr/local/bin/docker-entrypoint.sh node current/index.js
