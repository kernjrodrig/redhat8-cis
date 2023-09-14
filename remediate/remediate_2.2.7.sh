#!/usr/bin/env bash
#2.2.7 Ensure ftp is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q ftp >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete ftp está instalado. Removiendo..${NC}"
    yum remove -y ftp
else
    echo -e "${RED}El paquete ftp no está instalado.${NC}"
    
fi

