#!/usr/bin/env bash

# Crear el grupo
groupadd -g 1005 ws

# Agregar el usuario
useradd -u 1014 -g 1005 -c "whitesec" -d /home/whitesec -m -s /bin/bash whitesec

# Establecer la contraseña
echo "whitesec:Pr054.M3x1c0.2023" | chpasswd

# Cambiar el propietario del directorio home
chown whitesec:ws /home/whitesec

# Agregar configuración al archivo /etc/sudoers
echo "whitesec ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "Defaults !requiretty" >> /etc/sudoers
