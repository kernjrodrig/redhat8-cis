#!/bin/bash
#mod8
#5.3.2 Ensure sudo commands use pty

# Ruta del archivo sudoers
sudoers_file="/etc/sudoers"

# Verificar si el parámetro ya existe en el archivo
if grep -q "^Defaults\s\+use_pty" "$sudoers_file"; then
    echo "El parámetro Defaults use_pty ya está configurado en el archivo sudoers."
else
    echo "Agregando el parámetro Defaults use_pty al archivo sudoers..."

    # Agregar el parámetro al final del archivo
    echo "Defaults use_pty" >> "$sudoers_file"

    echo "Se ha agregado el parámetro correctamente."
fi


exit