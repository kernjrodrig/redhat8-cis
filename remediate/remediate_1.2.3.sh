#!/bin/bash
#mod8
#1.2.3 Ensure gpgcheck is globally activated (Automated)
# Set gpgcheck to 1 in the [main] section of /etc/dnf/dnf.conf
sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' /etc/dnf/dnf.conf

# Find any failing files in /etc/yum.repos.d/* and set gpgcheck to 1
for repo_file in /etc/yum.repos.d/*; do
  if ! dnf repolist --verbose "$repo_file"; then
    echo "Found failing repo file: $repo_file"
    sed -i 's/^gpgcheck\s*=\s*.*/gpgcheck=1/' "$repo_file"
  fi
done