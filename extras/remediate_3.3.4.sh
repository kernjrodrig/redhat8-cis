#!/bin/bash
#3.3.4 Ensure suspicious packets are logged
#mod8
# Función para verificar si un parámetro está configurado correctamente
function is_parameter_set() {
    local parameter="$1"
    local value="$2"

    # Obtener el valor actual del parámetro
    local current_value=$(sysctl -n "$parameter" 2>/dev/null)

    # Comprobar si el valor coincide
    if [ "$current_value" == "$value" ]; then
        return 0
    else
        return 1
    fi
}

# Verificar si los parámetros están configurados correctamente
if is_parameter_set "net.ipv4.conf.all.log_martians" "1" && \
   is_parameter_set "net.ipv4.conf.default.log_martians" "1"; then
    echo "Los parámetros ya están configurados correctamente."
else
    echo "Aplicando los cambios..." 
    # Bloqueo del archivo para escritura
    (
    flock -x 200
    # Agregar la configuración al archivo de configuración
    printf "net.ipv4.conf.all.log_martians = 1\nnet.ipv4.conf.default.log_martians = 1\n" >> /etc/sysctl.d/60-netipv4_sysctl.conf

    # Recargar los parámetros del kernel
    sysctl -p /etc/sysctl.d/60-netipv4_sysctl.conf

    echo "Los cambios se han aplicado correctamente."
    ) 200>/tmp/lockfile
fi

# Ejecutar el comando para establecer los parámetros del kernel activos
sysctl -w net.ipv4.route.flush=1

exit
