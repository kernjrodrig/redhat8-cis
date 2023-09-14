#!/bin/bash
#1.1.6.2 && 1.1.6.3 1.1.6.4 Ensure noexec,nodev,nosuid option set on /var/log/audit partition
#mod 8
fstab_file="/etc/fstab"
var_log_entry="/var/log/audit"

# Verificar si existe la partición /var/log/audit en /etc/fstab
if grep -q "$var_log_entry" "$fstab_file"; then
  # Verificar si ya se ha aplicado la remediación
  if grep -q "$var_log_entry.*noexec,nodev,nosuid" "$fstab_file"; then
    echo "La remediación para la partición $var_log_entry ya se ha aplicado en $fstab_file."
  else
    # Agregar 'noexec,nodev' a las opciones de montaje de la partición /var/log/audit
    sudo sed -i "s|^.*$var_log_entry.*|& noexec,nodev,nosuid|" "$fstab_file"
    echo "Se ha aplicado la remediación para la partición $var_log_entry en $fstab_file."
    
    # Remontar la partición /var/log/audit
    sudo mount -o remount,noexec,nodev,nosuid "$var_log_entry"
    echo "Se ha vuelto a montar la partición $var_log_entry con las opciones 'noexec' 'nosuid' y 'nodev'."
  fi
else
  echo "La partición $var_log_entry no está configurada en $fstab_file."
fi
