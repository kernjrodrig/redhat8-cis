#!/bin/bash
#mod8
#5.5.2 Ensure lockout for failed password attempts is configured
# Ruta del archivo de configuración
config_file="/etc/security/faillock.conf"

# Valores deseados para deny y unlock_time
desired_deny="5"
desired_unlock_time="900"

# Verificar si los parámetros están configurados correctamente
current_deny=$(grep "^deny" "$config_file" | awk -F'=' '{print $2}' | tr -d ' ')
current_unlock_time=$(grep "^unlock_time" "$config_file" | awk -F'=' '{print $2}' | tr -d ' ')

if [ "$current_deny" == "$desired_deny" ] && [ "$current_unlock_time" == "$desired_unlock_time" ]; then
    echo "Los parámetros deny y unlock_time ya están configurados correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar los parámetros existentes
    sed -i "s/^deny/#deny/g" "$config_file"
    sed -i "s/^unlock_time/#unlock_time/g" "$config_file"

    # Insertar los nuevos parámetros después de los parámetros comentados
    echo "deny = $desired_deny" >> "$config_file"
    echo "unlock_time = $desired_unlock_time" >> "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit