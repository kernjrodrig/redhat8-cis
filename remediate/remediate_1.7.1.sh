#!/bin/sh
#mod8
#1.7.1 Ensure message of the day is configured properly


config_file="/etc/motd"

if [ -f "$config_file" ]; then
    rm -rf /etc/motd
    echo -e "El archivo $config_file ha sido Eliminado."

else
    echo -e "El archivo $config_file no existe."
    /usr/bin/ls "$config_file"
fi

exit