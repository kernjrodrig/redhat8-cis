#!/usr/bin/env bash
#2.2.9 Ensure tftp-server is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q tftp-server >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete tftp-server está instalado. Removiendo..${NC}"
    yum remove -y tftp-server
else
    echo -e "${RED}El paquete tftp-server no está instalado.${NC}"
    
fi

