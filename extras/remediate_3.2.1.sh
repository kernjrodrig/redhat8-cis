#!/usr/bin/env bash
# 3.2.1 Ensure IP forwarding is disabled (Automated)
#mod8
# Función para verificar si el parámetro está configurado correctamente
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
if is_parameter_set "net.ipv4.ip_forward" "0"; then
    echo "El parámetro net.ipv4.ip_forward ya está configurado correctamente."
else
    echo "Aplicando la solución..."

    # Agregar la configuración al archivo de configuración
    printf "net.ipv4.ip_forward = 0\n" >> /etc/sysctl.d/60-netipv4_sysctl.conf

    # Recargar los parámetros del kernel
    sysctl -p /etc/sysctl.d/60-netipv4_sysctl.conf

    echo "La solución se ha aplicado correctamente."
fi


exit
