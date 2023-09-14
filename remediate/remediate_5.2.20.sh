#!/bin/bash
#mod8
#5.2.20 Ensure SSH Idle Timeout Interval is configured
# Ruta del archivo de configuración
config_file="/etc/ssh/sshd_config"

# Valores deseados para ClientAliveInterval y ClientAliveCountMax
desired_ClientAliveInterval="300"
desired_ClientAliveCountMax="0"

# Verificar si los parámetros están configurados correctamente
current_ClientAliveInterval=$(grep "^ClientAliveInterval" "$config_file" | awk  '{print $2}' | tr -d ' ')
current_ClientAliveCountMax=$(grep "^ClientAliveCountMax" "$config_file" | awk  '{print $2}' | tr -d ' ')

if [ "$current_ClientAliveInterval" == "$desired_ClientAliveInterval" ] && [ "$current_ClientAliveCountMax" == "$desired_ClientAliveCountMax" ]; then
    echo "Los parámetros ClientAliveInterval y ClientAliveCountMax ya están configurados correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar los parámetros existentes
    sed -i "s/^ClientAliveInterval/#ClientAliveInterval/g" "$config_file"
    sed -i "s/^ClientAliveCountMax/#ClientAliveCountMax/g" "$config_file"

    # Insertar los nuevos parámetros después de los parámetros comentados
    echo "ClientAliveInterval  $desired_ClientAliveInterval" >> "$config_file"
    echo "ClientAliveCountMax  $desired_ClientAliveCountMax" >> "$config_file"

    echo "Se han aplicado los cambios correctamente."
fi


exit