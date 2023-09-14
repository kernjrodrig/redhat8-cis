#!/bin/bash
#mod8
#5.2.18 Ensure SSH MaxSessions is set to 10 or less
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para MaxSessions
desired_value="10"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^MaxSessions" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro MaxSessions ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^MaxSessions/#MaxSessions/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#MaxSessions/a MaxSessions  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit