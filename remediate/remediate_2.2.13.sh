#!/usr/bin/env bash
#2.2.13 Ensure squid is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q squid >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete squid está instalado. Removiendo..${NC}"
    yum remove -y squid
else
    echo -e "${RED}El paquete squid no está instalado.${NC}"
    
fi

