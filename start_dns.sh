#!/bin/bash
echo "Cloning the GitHub repository into /etc/dns"
git clone https://github.com/jahnavi-h-B/dns-config-repo.git /etc/dns || echo "Git clone failed"

# Ensure correct ownership and permissions
chown -R root:root /etc/dns

# Now start the DNS server
echo "Starting DNS service..."
exec /bin/dns-server
