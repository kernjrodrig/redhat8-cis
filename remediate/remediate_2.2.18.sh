#!/usr/bin/env bash
#2.2.18 Ensure nfs-utils is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q nfs-utils >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete nfs-utils está instalado. Removiendo..${NC}"
    yum remove -y nfs-utils
else
    echo -e "${RED}El paquete nfs-utils no está instalado.${NC}"
    
fi

