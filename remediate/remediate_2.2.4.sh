#!/usr/bin/env bash
#2.2.4 Ensure cups is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q cups >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete cups está instalado. Removiendo..${NC}"
    yum remove -y cups
else
    echo -e "${RED}El paquete cups no está instalado.${NC}"
    
fi

