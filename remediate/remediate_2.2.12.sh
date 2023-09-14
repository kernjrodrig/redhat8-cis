#!/usr/bin/env bash
#2.2.12 Ensure samba is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q samba >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete samba está instalado. Removiendo..${NC}"
    yum remove -y samba
else
    echo -e "${RED}El paquete samba no está instalado.${NC}"
    
fi

