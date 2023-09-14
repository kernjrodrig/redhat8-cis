#!/usr/bin/env bash
#2.2.8 Ensure vsftpd is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q vsftpd >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete vsftpd está instalado. Removiendo..${NC}"
    yum remove -y vsftpd
else
    echo -e "${RED}El paquete vsftpd no está instalado.${NC}"
    
fi

