#!/bin/bash

# Verificar si un parámetro está configurado en el archivo de configuración
function is_parameter_set() {
    local parameter="$1"
    local config_file="/etc/sysctl.d/60-netipv4_sysctl.conf"
    
    # Verificar si el parámetro existe en el archivo de configuración
    if grep -q "^$parameter" "$config_file"; then
        return 0
    else
        return 1
    fi
}

# Agregar un parámetro al archivo de configuración
function add_parameter() {
    local parameter="$1"
    local value="$2"
    local config_file="/etc/sysctl.d/60-netipv4_sysctl.conf"
    
    # Agregar la configuración al archivo de configuración
    printf "%s = %s\n" "$parameter" "$value" >> "$config_file"
    
    # Recargar los parámetros del kernel
    sysctl -p "$config_file"
}

# Verificar y agregar parámetros si no existen
if ! is_parameter_set "net.ipv4.ip_forward"; then
    echo "Agregando net.ipv4.ip_forward = 0"
    add_parameter "net.ipv4.ip_forward" "0"
fi

if ! is_parameter_set "net.ipv4.icmp_echo_ignore_broadcasts"; then
    echo "Agregando net.ipv4.icmp_echo_ignore_broadcasts = 1"
    add_parameter "net.ipv4.icmp_echo_ignore_broadcasts" "1"
fi

if ! is_parameter_set "net.ipv4.icmp_ignore_bogus_error_responses"; then
    echo "Agregando net.ipv4.icmp_ignore_bogus_error_responses = 1"
    add_parameter "net.ipv4.icmp_ignore_bogus_error_responses" "1"
fi

echo "Configuración completa."

exit
