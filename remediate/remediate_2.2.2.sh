#!/usr/bin/env bash
#2.2.2 Ensure xorg-x11-server-common is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q xorg-x11-server-common >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete xorg-x11-server-common está instalado. Removiendo..${NC}"
    yum remove -y xorg-x11-server-common
else
    echo -e "${RED}El paquete xorg-x11-server-common no está instalado.${NC}"
    
fi

