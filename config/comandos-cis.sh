#!/bin/bash

bashrc_file="/root/.bashrc"
tmp_cis_dir="/tmp/redhat8-cis"

# Verificar si los aliases ya existen en el archivo ~/.bashrc
if grep -q "alias cis='sudo $tmp_cis_dir/remediate/menu_remediacion.sh'" "$bashrc_file" &&
   grep -q "alias cis-cd='cd $tmp_cis_dir'" "$bashrc_file" &&
   grep -q "alias cis-rm='rm -rf $tmp_cis_dir'" "$bashrc_file"; then
  echo "Los aliases ya existen en el archivo $bashrc_file."
else
  # Agregar los aliases al archivo ~/.bashrc
  echo "alias cis='sudo $tmp_cis_dir/remediate/menu_remediacion.sh'" >> "$bashrc_file"
  echo "alias cis-cd='cd $tmp_cis_dir'" >> "$bashrc_file"
  echo "alias cis-rm='rm -rf $tmp_cis_dir'" >> "$bashrc_file"
  

  # Cargar los cambios en el archivo ~/.bashrc
  source "$bashrc_file"

  echo "Se han agregado los aliases al archivo $bashrc_file."
fi

