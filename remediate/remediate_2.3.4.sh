#!/bin/sh
# ** AUTO GENERATED **

# 2.3.4 - Ensure telnet client is not installed (Scored)

# Verificar si xinetd está instalado
if rpm -q telnet >/dev/null 2>&1; then
    echo " El paquete telnet está instalado. Removiendo."
    yum remove -y telnet
else
    echo  "El paquete telnet no está instalado. "
    
fi
