#!/usr/bin/env bash
#2.2.1 Ensure xinetd is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q xinetd >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete xinetd está instalado. Removiendo..${NC}"
    dnf remove -y xinetd
else
    echo -e "${RED}El paquete xinetd no está instalado.${NC}"
    
fi

