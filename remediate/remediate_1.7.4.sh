#!/usr/bin/env bash
#mod 8
#1.7.4 Ensure permissions on /etc/motd are configured
# Establecer el propietario y grupo del archivo /etc/motd como root:root
chown root:root /etc/motd

# Establecer los permisos en /etc/motd como u-x, go-wx
chmod u-x,go-wx /etc/motd