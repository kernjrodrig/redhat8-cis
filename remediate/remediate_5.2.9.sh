#!/bin/bash
#mod8
#5.2.9 Ensure SSH PermitEmptyPasswords is disabled
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para PermitEmptyPasswords
desired_value="no"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^PermitEmptyPasswords" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro PermitEmptyPasswords ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^PermitEmptyPasswords/#PermitEmptyPasswords/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#PermitEmptyPasswords/a PermitEmptyPasswords  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi

exit