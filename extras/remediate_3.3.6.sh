#!/bin/bash
#3.3.6 Ensure bogus ICMP responses are ignored
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

# Verificar si el parámetro está configurado correctamente
if is_parameter_set "net.ipv4.icmp_ignore_bogus_error_responses" "1"; then
    echo "El parámetro ya está configurado correctamente."
else
    echo "Aplicando el cambio..."
    # Bloqueo del archivo para escritura
    (
    flock -x 200
    # Agregar la configuración al archivo de configuración
    printf "net.ipv4.icmp_ignore_bogus_error_responses = 1\n" >> /etc/sysctl.d/60-netipv4_sysctl.conf

    # Recargar los parámetros del kernel
    sysctl -p /etc/sysctl.d/60-netipv4_sysctl.conf

    echo "El cambio se ha aplicado correctamente."
    ) 200>/tmp/lockfile
fi

# Ejecutar el comando para establecer los parámetros del kernel activos
sysctl -w net.ipv4.route.flush=1


exit