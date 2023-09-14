#!/bin/bash
#mod8
#3.1.1 Verify if IPv6 is enabled on the system
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para AddressFamily
desired_value="inet"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^AddressFamily" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro AddressFamily ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^AddressFamily/#AddressFamily/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#AddressFamily/a AddressFamily  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi

exit
