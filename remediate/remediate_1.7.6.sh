#!/usr/bin/env bash
#mod 8
#1.7.6 Ensure permissions on /etc/ssue.net are configured
# Establecer el propietario y grupo del archivo /etc/ssue.net como root:root
chown root:root /etc/issue.net

# Establecer los permisos en /etc/issue como u-x, go-wx
chmod u-x,go-wx /etc/issue.net