#!/usr/bin/env bash
#2.2.20 Ensure rsync is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q rsync >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete rsync está instalado. Removiendo..${NC}"
    yum remove -y rsync
else
    echo -e "${RED}El paquete rsync no está instalado.${NC}"
    
fi

