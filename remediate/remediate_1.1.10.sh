#!/bin/bash
#  - 1.1.10 Disable USB Storage
#mod8
usb_storage_conf="/etc/modprobe.d/usb_storage.conf"

# Verificar si el archivo existe
if [ ! -f "$usb_storage_conf" ]; then
    echo "El archivo $usb_storage_conf no existe. Creando archivo..."

    # Crear el archivo y agregar el parámetro
    echo "install usb-storage /bin/true" > "$usb_storage_conf"

    echo "Archivo creado y parámetro agregado."
else
    echo "El archivo $usb_storage_conf ya existe. No se realizaron cambios."
fi

# Quitar el módulo usb-storage
echo "Ejecutando 'rmmod usb-storage'..."
rmmod usb-storage

echo "Comando 'rmmod usb-storage' ejecutado."


exit