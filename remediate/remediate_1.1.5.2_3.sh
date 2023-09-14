#!/bin/bash
#1.1.5.2 && 1.1.5.3 Ensure noexec,nodev option set on /var/log partition
#mod 8
fstab_file="/etc/fstab"
var_log_entry="/var/log"

# Verificar si existe la partición /var/log en /etc/fstab
if grep -q "$var_log_entry" "$fstab_file"; then
  # Verificar si ya se ha aplicado la remediación
  if grep -q "$var_log_entry.*noexec,nodev" "$fstab_file"; then
    echo "La remediación para la partición $var_log_entry ya se ha aplicado en $fstab_file."
  else
    # Agregar 'noexec,nodev' a las opciones de montaje de la partición /var/log
    sudo sed -i "s|^.*$var_log_entry.*|& noexec,nodev|" "$fstab_file"
    echo "Se ha aplicado la remediación para la partición $var_log_entry en $fstab_file."
    
    # Remontar la partición /var/log
    sudo mount -o remount,noexec,nodev "$var_log_entry"
    echo "Se ha vuelto a montar la partición $var_log_entry con las opciones 'noexec' y 'nodev'."
  fi
else
  echo "La partición $var_log_entry no está configurada en $fstab_file."
fi
