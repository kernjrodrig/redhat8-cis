#!/bin/bash
#mod8
#5.2.5 Ensure SSH LogLevel is appropriate
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para LogLevel
desired_value="INFO"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^LogLevel" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro LogLevel ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^LogLevel/#LogLevel/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#LogLevel/a LogLevel  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi
exit