#!/usr/bin/env bash
#2.2.14 Ensure net-snmp is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q net-snmp >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete net-snmp está instalado. Removiendo..${NC}"
    yum remove -y net-snmp
else
    echo -e "${RED}El paquete net-snmp no está instalado.${NC}"
    
fi

