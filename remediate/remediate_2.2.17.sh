#!/bin/bash
# 2.2.17 - Ensure mail transfer agent is configured for local-only mode
#mod8

config_dir="/etc/postfix"
config_file="$config_dir/main.cf"

# Verificar si el directorio existe
if [ ! -d "$config_dir" ]; then
    echo "El directorio $config_dir no existe. Creando directorio..."
    mkdir "$config_dir"
    echo "Directorio creado: $config_dir"
fi

# Verificar si el archivo ya existe
if [ -f "$config_file" ]; then
    echo "El archivo $config_file ya existe."
else
    echo "inet_interfaces = loopback-only" >> "$config_file"
    echo "El archivo $config_file ha sido creado."
fi

# Reiniciar el servicio postfix
echo "Reiniciando el servicio postfix..."
systemctl restart postfix

# Mostrar la ubicación del archivo
echo "El directorio fue creado en: $config_dir"

# Mostrar el contenido del archivo
echo "Y el parámetro agregado es:"
cat "$config_file"

exit