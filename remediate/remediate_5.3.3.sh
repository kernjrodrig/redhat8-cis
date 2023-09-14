#!/bin/bash
#mod8
#5.3.3 Ensure sudo log file exists

# Ruta del archivo sudoers
sudoers_file="/etc/sudoers"

# Verificar si el parámetro ya existe en el archivo
if grep -q "^Defaults\s\+logfile=\"/var/log/sudo.log\"" "$sudoers_file"; then
    echo "El parámetro Defaults logfile="/var/log/sudo.log" ya está configurado en el archivo sudoers."
else
    echo "Agregando el parámetro Defaults logfile="/var/log/sudo.log" al archivo sudoers..."

    # Agregar el parámetro al final del archivo
    echo "Defaults logfile=\"/var/log/sudo.log\"" >> "$sudoers_file"

    echo "Se ha agregado el parámetro correctamente."
fi


exit