#!/bin/bash
#update parches
# Guardar la salida en el archivo "informe.txt"
exec &> /tmp/redhat8-cis/captura.txt

# Comandos a ejecutar y guardar en el archivo
echo "=== Uptime ==="
uptime

echo "=== Fecha ==="
date

echo "=== Versión de Kernel ==="
uname -a

echo "=== Versión de Red Hat ==="
cat /etc/redhat-release

echo "=== Información del sistema ==="
cat /etc/os-release