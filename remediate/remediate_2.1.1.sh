#!/bin/sh
# ** AUTO GENERATED **
#mod8
# 2.1.1 - Ensure time synchronization is in use

if rpm -q chrony >/dev/null 2>&1; then
    echo "Chrony está instalado en el sistema."
else
    echo "Chrony no está instalado en el sistema. Instalando Chrony..."
    yum install -y chrony
    if [ $? -eq 0 ]; then
        echo "Chrony se ha instalado correctamente."
    else
        echo "Se produjo un error al instalar Chrony."
    fi
fi
