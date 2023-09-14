#!/usr/bin/env bash
# 1.1.1.1 - Ensure mounting of cramfs filesystems is disabled (Scored)
#mod8

# Ruta del archivo de configuración
conf_file="/etc/modprobe.d/cramfs.conf"

# Verificar si el archivo de configuración ya existe
if [ -f "$conf_file" ]; then
  # Verificar si la información ya está presente en el archivo
  if grep -q "install cramfs /bin/false" "$conf_file" && grep -q "blacklist cramfs" "$conf_file"; then
    echo "La información ya está presente en $conf_file. No se realizarán cambios."
    exit 0
  fi
fi

# Agregar la información al archivo de configuración
echo "install cramfs /bin/false" | sudo tee -a "$conf_file"
echo "blacklist cramfs" | sudo tee -a "$conf_file"

# Descargar el módulo cramfs
sudo modprobe -r cramfs
