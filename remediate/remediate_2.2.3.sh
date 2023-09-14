#!/usr/bin/env bash
#2.2.3 Ensure avahi is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q avahi >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete avahi está instalado. Removiendo..${NC}"
    yum remove -y avahi
else
    echo -e "${RED}El paquete avahi no está instalado.${NC}"
    
fi

