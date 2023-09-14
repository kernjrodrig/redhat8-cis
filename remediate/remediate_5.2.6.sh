#!/bin/bash
#mod8
#5.2.6 Ensure SSH PAM is enabled
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para UsePAM
desired_value="yes"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^UsePAM" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro UsePAM ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^UsePAM/#UsePAM/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#UsePAM/a UsePAM  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit