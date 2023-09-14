#!/bin/bash
#mod8
#5.2.15 Ensure SSH warning banner is configured
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para Banner
desired_value="/etc/issue.net"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^Banner" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro Banner ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^Banner/#Banner/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#Banner/a Banner  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit