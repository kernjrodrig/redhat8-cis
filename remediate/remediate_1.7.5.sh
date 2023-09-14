#!/usr/bin/env bash
#mod 8
#1.7.5 Ensure permissions on /etc/issue are configured
# Establecer el propietario y grupo del archivo /etc/issue como root:root
chown root:root /etc/issue

# Establecer los permisos en /etc/issue como u-x, go-wx
chmod u-x,go-wx /etc/issue