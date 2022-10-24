#!/bin/sh

# Add FQDN to /etc/hosts for sendmail to work
echo "$(cat /etc/hosts | tail -n1 | awk '{print $1" "$2" "$2".localdomain"}')" >> /etc/hosts

# Use the sqlite3 driver
export database__client=sqlite3
export database__connection__filename=/var/lib/ghost/content/data/ghost.db

/usr/local/bin/docker-entrypoint.sh node current/index.js
