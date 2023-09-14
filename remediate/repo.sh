#!/bin/bash

# Ruta del archivo redhat.repo
repo_file="/etc/yum.repos.d/redhat.repo"

# Verificar si el archivo existe y es legible
if [ ! -e "$repo_file" ] || [ ! -r "$repo_file" ]; then
  echo "El archivo $repo_file no existe o no es legible."
  exit 1
fi

# Verificar si el archivo es escribible
if [ ! -w "$repo_file" ]; then
  echo "El archivo $repo_file no es escribible. Por favor, ejecuta el script con permisos de superusuario (root)."
  exit 1
fi

# Buscar la línea con "enabled=1" y cambiarla a "enabled=0"
sed -i 's/enabled = 1/enabled = 0/' "$repo_file"

# Verificar si se realizó el cambio correctamente
if grep -q "enabled = 0" "$repo_file"; then
  echo "Se ha actualizado el archivo $repo_file. El parámetro 'enabled' está ahora en 0."
else
  echo "No se pudo encontrar la configuración 'enabled=1' en el archivo $repo_file."
fi

# Crear el archivo local.repo
local_repo_file="/etc/yum.repos.d/local.repo"

# Verificar si el archivo local.repo ya existe
if [ -e "$local_repo_file" ]; then
  echo "El archivo $local_repo_file ya existe. No se creará un nuevo repositorio."
  exit 1
fi

# Crear el contenido del archivo local.repo
local_repo_content="[repo-BaseOS]
name=rhel-8-for-x86_64-baseos-rpms
baseurl=http://10.255.202.138/repo/rhel-8-for-x86_64-baseos-rpms
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release

[AppSteam]
name=rhel-8-for-x86_64-appstream-rpms
baseurl=http://10.255.202.138/repo/rhel-8-for-x86_64-appstream-rpms
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
"

# Guardar el contenido en el archivo local.repo
echo "$local_repo_content" | sudo tee "$local_repo_file" > /dev/null

echo "Se ha creado el archivo $local_repo_file con el nuevo repositorio."
