#!/bin/bash
#mod8
#5.6.1.1 Ensure password expiration is 365 days or less (
# Ruta del archivo de configuración
config_file="/etc/login.defs"

# Valor deseado para PASS_MAX_DAYS
desired_value="365"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^PASS_MAX_DAYS" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro PASS_MAX_DAYS ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^PASS_MAX_DAYS/#PASS_MAX_DAYS/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#PASS_MAX_DAYS/a PASS_MAX_DAYS  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit