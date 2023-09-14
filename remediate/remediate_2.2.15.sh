#!/usr/bin/env bash
#2.2.15 Ensure ypserv is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q ypserv >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete ypserv está instalado. Removiendo..${NC}"
    yum remove -y ypserv
else
    echo -e "${RED}El paquete ypserv no está instalado.${NC}"
    
fi

