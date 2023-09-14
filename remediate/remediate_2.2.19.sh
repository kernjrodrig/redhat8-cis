#!/usr/bin/env bash
#2.2.19 Ensure rpcbind is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q rpcbind >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete rpcbind está instalado. Removiendo..${NC}"
    yum remove -y rpcbind
else
    echo -e "${RED}El paquete rpcbind no está instalado.${NC}"
    
fi

