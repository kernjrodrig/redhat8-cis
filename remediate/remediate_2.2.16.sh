#!/usr/bin/env bash
#2.2.15 Ensure telnet-server is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q telnet-server >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete telnet-server está instalado. Removiendo..${NC}"
    yum remove -y telnet-server
else
    echo -e "${RED}El paquete telnet-server no está instalado.${NC}"
    
fi

