#!/bin/bash
#mod8
#5.2.10 Ensure SSH PermitUserEnvironment is disabled (Automated)

# Check if the PermitUserEnvironment parameter exists in the /etc/ssh/sshd_config file
if ! grep -q "PermitUserEnvironment" /etc/ssh/sshd_config; then
  # The parameter does not exist, so add it
  echo "PermitUserEnvironment no" >> /etc/ssh/sshd_config
else
  # The parameter already exists, so check if it is commented out
  if grep -q "#PermitUserEnvironment" /etc/ssh/sshd_config; then
    # The parameter is commented out, so uncomment it
    sed -i 's/#PermitUserEnvironment/PermitUserEnvironment/' /etc/ssh/sshd_config
  fi
fi
