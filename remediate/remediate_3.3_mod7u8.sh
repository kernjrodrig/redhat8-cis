#!/bin/bash

# Verificar si el archivo /etc/sysctl.d/60-netipv4_sysctl.conf existe
if [ -f /etc/sysctl.d/60-netipv4_sysctl.conf ]; then
    # Obtener la fecha actual
    date=$(date +%Y%m%d%H%M%S)
    # Renombrar el archivo existente
    mv /etc/sysctl.d/60-netipv4_sysctl.conf /etc/sysctl.d/60-netipv4_sysctl.conf.back_$date
    # Copiar el archivo desde la raíz del script al directorio /etc/sysctl.d/
    cp /tmp/redhat8-cis/config/60-netipv4_sysctl.conf /etc/sysctl.d/
    # Recargar los parámetros del kernel
    sysctl -p /etc/sysctl.d/60-netipv4_sysctl.conf
fi

# Verificar si el archivo /etc/sysctl.d/60-netipv6_sysctl.conf existe
if [ -f /etc/sysctl.d/60-netipv6_sysctl.conf ]; then
    # Obtener la fecha actual
    date=$(date +%Y%m%d%H%M%S)
    # Renombrar el archivo existente
    mv /etc/sysctl.d/60-netipv6_sysctl.conf /etc/sysctl.d/60-netipv6_sysctl.conf.back_$date
    # Copiar el archivo desde la raíz del script al directorio /etc/sysctl.d/
    cp /tmp/redhat8-cis/config/60-netipv6_sysctl.conf /etc/sysctl.d/
    # Recargar los parámetros del kernel
    sysctl -p /etc/sysctl.d/60-netipv6_sysctl.conf
fi

# Si el archivo 60-netipv4_sysctl.conf no existe, copie el que está en /tmp/redhat8-cis/config/60-netipv4_sysctl.conf
if [ ! -f /etc/sysctl.d/60-netipv4_sysctl.conf ]; then
    cp /tmp/redhat8-cis/config/60-netipv4_sysctl.conf /etc/sysctl.d/
fi

# Si el archivo 60-netipv6_sysctl.conf no existe, copie el que está en /tmp/redhat8-cis/config/60-netipv6_sysctl.conf
if [ ! -f /etc/sysctl.d/60-netipv6_sysctl.conf ]; then
    cp /tmp/redhat8-cis/config/60-netipv6_sysctl.conf /etc/sysctl.d/
fi
