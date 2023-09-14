#!/bin/bash
#mod8
#Disparador de script en cadena:
#Depurar los logs
rm -rf informe.log
# Lista de scripts a ejecutar
scripts=(
   "/tmp/redhat8-cis/remediate/remediate_1.1.10.sh"
   "/tmp/redhat8-cis/remediate/remediate_1.2.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.1.1.1.sh"
    # "/tmp/redhat8-cis/remediate/remediate_1.1.5.2_3.sh"
    # "/tmp/redhat8-cis/remediate/remediate_1.1.6.2_3_4.sh"
    #/tmp/redhat8-cis/remediate/ "/tmp/redhat8-cis/remediate/remediate_1.1.7.2_3_4_5.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.1.9.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.7.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.7.2_3.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.7.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.7.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_1.7.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.1.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.11.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.12.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.13.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.14.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.15.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.16.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.17.sh"
    #"/tmp/redhat8-cis/remediate/remediate_2.2.18.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.19.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.20.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.2.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.7.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.8.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.2.9.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.2.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_2.3.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_3.1.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_3.1.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_3.3_mod7u8.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.2.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.1.7.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.15.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.16.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.17.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.18.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.19.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.20.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.9.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.2.10.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.3.2.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.3.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.5.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.5.2.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.5.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.5.4_Part2.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.5.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_5.6.1.1.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.10.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.3.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.4.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.5.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.6.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.7.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.8.sh"
    "/tmp/redhat8-cis/remediate/remediate_6.1.9.sh"
    "/tmp/redhat8-cis/remediate/remediate_remedi01.sh"
    "/tmp/redhat8-cis/remediate/auditoria.sh"
    # Agrega aquí más scripts que deseas ejecutar
)

# Ruta del archivo de informe
log_file="informe.log"

# Función para ejecutar un script y registrar el resultado en el informe
ejecutar_script() {
    local script="$1"

    echo "Ejecutando $script..."
    echo "=====================================" >> "$log_file"
    echo "Script: $script" >> "$log_file"
    echo "Fecha y hora: $(date)" >> "$log_file"

    # Ejecutar el script y guardar la salida en el informe
    if output=$(bash "$script" 2>&1); then
        echo "Estado: Ejecutado correctamente" >> "$log_file"
    else
        echo "Estado: Error al ejecutar" >> "$log_file"
        echo "Error: $output" >> "$log_file"
    fi

    echo "=====================================" >> "$log_file"
    echo >> "$log_file"
}

# Limpiar el archivo de informe si existe
> "$log_file"

# Ejecutar cada script de la lista
for script in "${scripts[@]}"; do
    ejecutar_script "$script"
done

echo "Todos los scripts han sido ejecutados. El informe se ha guardado en $log_file."
