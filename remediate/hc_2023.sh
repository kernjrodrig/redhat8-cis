#!/bin/sh
touch hc_`hostname`_`date +%F`hc.txt
#cp -p /etc/ssh/sshd_config /etc/ssh/sshd_config.orig
printf "Audit RHEL\n">>hc_`hostname`_`date +%F`hc.txt
printf "Fecha:`date` \n">>hc_`hostname`_`date +%F`hc.txt
printf "Hostname:`hostname`\n">>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Versión de OS\n">>hc_`hostname`_`date +%F`hc.txt
cat /etc/os-release>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Versión de Kernel\n">>hc_`hostname`_`date +%F`hc.txt
uname -a>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Numero de serie\n">>hc_`hostname`_`date +%F`hc.txt
dmidecode -s system-serial-number>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Espacio utilizado\n">>hc_`hostname`_`date +%F`hc.txt
free -m>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Configuración de interfaces\n">>hc_`hostname`_`date +%F`hc.txt
ip a >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Información de sockets\n">>hc_`hostname`_`date +%F`hc.txt
ss -t >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Espacio en disco de unidades montadas\n">>hc_`hostname`_`date +%F`hc.txt
df -h >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "lista de bloque de dispositivos\n">>hc_`hostname`_`date +%F`hc.txt
lsblk>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Dispositivos disponibles\n">>hc_`hostname`_`date +%F`hc.txt
blkid>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Información del procesador\n">>hc_`hostname`_`date +%F`hc.txt
lscpu>>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Procesos\n">>hc_`hostname`_`date +%F`hc.txt
ps -aux >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Configuración del archivo fstab\n">>hc_`hostname`_`date +%F`hc.txt
cat /etc/fstab >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Status del firewall\n">>hc_`hostname`_`date +%F`hc.txt
systemctl status firewalld >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Status del firewall\n">>hc_`hostname`_`date +%F`hc.txt
systemctl >>hc_`hostname`_`date +%F`hc.txt
printf "\n================================================================================\n">>hc_`hostname`_`date +%F`hc.txt
printf "Status del firewall\n">>hc_`hostname`_`date +%F`hc.txt
systemctl --type=service --state=running >>hc_`hostname`_`date +%F`hc.txt
