#!/bin/bash
#mod8
#5.2.17 Ensure SSH MaxStartups is configured
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para MaxStartups
desired_value="10:30:60"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^MaxStartups" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro MaxStartups ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^MaxStartups/#MaxStartups/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#MaxStartups/a MaxStartups  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit