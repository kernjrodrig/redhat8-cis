#!/bin/bash
#mod8
#5.2.19 Ensure SSH LoginGraceTime is set to one minute or less
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valor deseado para LoginGraceTime
desired_value="60"

# Verificar si el parámetro está configurado correctamente
current_value=$(grep "^LoginGraceTime" "$config_file" | awk '{print $2}')

if [ "$current_value" == "$desired_value" ]; then
    echo "El parámetro LoginGraceTime ya está configurado correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar el parámetro existente
    sed -i "s/^LoginGraceTime/#LoginGraceTime/g" "$config_file"

    # Insertar el nuevo parámetro después del parámetro comentado
    sed -i "/^#LoginGraceTime/a LoginGraceTime  $desired_value" "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit