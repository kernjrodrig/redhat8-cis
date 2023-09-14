#!/usr/bin/env bash
#2.2.6 Ensure bind is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q bind >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete bind está instalado. Removiendo..${NC}"
    yum remove -y bind
else
    echo -e "${RED}El paquete bind no está instalado.${NC}"
    
fi

