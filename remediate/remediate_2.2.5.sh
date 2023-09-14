#!/usr/bin/env bash
#2.2.5 Ensure dhcp-server is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q dhcp-server >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete dhcp-server está instalado. Removiendo..${NC}"
    yum remove -y dhcp-server
else
    echo -e "${RED}El paquete dhcp-server no está instalado.${NC}"
    
fi

