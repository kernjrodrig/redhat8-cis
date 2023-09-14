#!/bin/bash
#1.1.7.2 && 1.1.7.3 1.1.7.4_5 Ensure nodev,setuid,usrquota,grpquota option set on /home partition
#mod 8
fstab_file="/etc/fstab"
var_log_entry="/home"

# Verificar si existe la partición /home en /etc/fstab
if grep -q "$var_log_entry" "$fstab_file"; then
  # Verificar si ya se ha aplicado la remediación
  if grep -q "$var_log_entry.*nodev,setuid,usrquota,grpquota" "$fstab_file"; then
    echo "La remediación para la partición $var_log_entry ya se ha aplicado en $fstab_file."
  else
    # Agregar 'nodev,setuid,usrquota,grpquota' a las opciones de montaje de la partición /home
    sudo sed -i "s|^.*$var_log_entry.*|& nodev,setuid,usrquota,grpquota|" "$fstab_file"
    echo "Se ha aplicado la remediación para la partición $var_log_entry en $fstab_file."
    
    # Remontar la partición /home
    sudo mount -o remount,nodev,setuid,usrquota,grpquota "$var_log_entry"
    echo "Se ha vuelto a montar la partición $var_log_entry con las opciones 'noexec' 'nosuid' y 'nodev'."
  fi
else
  echo "La partición $var_log_entry no está configurada en $fstab_file."
fi

mount -o remount /home