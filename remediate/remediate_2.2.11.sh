#!/usr/bin/env bash
#2.2.11 Ensure dovecot cyrus-imapd is not installed
#mod8
##Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # Sin color


# Verificar si xinetd está instalado
if rpm -q dovecot cyrus-imapd >/dev/null 2>&1; then
    echo -e "${GREEN}El paquete dovecot cyrus-imapd está instalado. Removiendo..${NC}"
    yum remove -y dovecot cyrus-imapd
else
    echo -e "${RED}El paquete dovecot cyrus-imapd no está instalado.${NC}"
    
fi

