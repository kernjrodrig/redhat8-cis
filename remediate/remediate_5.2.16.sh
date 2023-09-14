#!/bin/bash
#mod8
#5.2.16 Ensure SSH MaxAuthTries is set to 4 or less
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para MaxAuthTries
desired_value="4"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^MaxAuthTries" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro MaxAuthTries ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^MaxAuthTries/#MaxAuthTries/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#MaxAuthTries/a MaxAuthTries  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit