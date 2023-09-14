#!/bin/bash
# Instalador de Agent Trend Micro
# Descomprimir el archivo
tar -xf /tmp/redhat8-cis/Agent-RedHat_EL8-20.0.0.tar.gz

# Ir al directorio
cd /tmp/redhat8-cis/Agent-RedHat_EL8-20.0.0

# Instalar los RPM
rpm -Uvh Agent-Core-RedHat_EL8-20.0.0-2395.x86_64.rpm Agent-PGPCore-RedHat_EL8-20.0.0-2395.x86_64.rpm

# Mostrar la salida del RPM
rpm -qa | grep ds_agent

# Ejecutar los comandos
/opt/ds_agent/dsa_control -r
/opt/ds_agent/dsa_control -x dsm_proxy://10.255.202.80:3128
/opt/ds_agent/dsa_control -y relay_proxy://10.255.202.80:3128
/opt/ds_agent/dsa_control -a dsm://agents.deepsecurity.trendmicro.com:443/ "tenantID:3731C5CB-720C-A009-F827-183A05C16397" "token:A28FC43D-200A-F5FF-8BA1-88BB27ECC5B2"
