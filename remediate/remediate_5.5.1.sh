#!/bin/bash
#mod8
#5.5.1 Ensure password creation requirements are configured
# Ruta del archivo de configuración
config_file="/etc/security/pwquality.conf"

# Valores deseados para minlen y minclass
desired_minlen="14"
desired_minclass="4"

# Verificar si los parámetros están configurados correctamente
current_minlen=$(grep "^minlen" "$config_file" | awk -F'=' '{print $2}' | tr -d ' ')
current_minclass=$(grep "^minclass" "$config_file" | awk -F'=' '{print $2}' | tr -d ' ')

if [ "$current_minlen" == "$desired_minlen" ] && [ "$current_minclass" == "$desired_minclass" ]; then
    echo "Los parámetros minlen y minclass ya están configurados correctamente."
else
    echo "Aplicando cambios en el archivo de configuración..."

    # Comentar los parámetros existentes
    sed -i "s/^minlen/#minlen/g" "$config_file"
    sed -i "s/^minclass/#minclass/g" "$config_file"

    # Insertar los nuevos parámetros después de los parámetros comentados
    echo "minlen = $desired_minlen" >> "$config_file"
    echo "minclass = $desired_minclass" >> "$config_file"
    sh 5.5.1_audit.sh
    echo "Se han aplicado los cambios correctamente."
fi

exit