#!/bin/bash
#1.7.2 Ensure local login warning banner is configured properly

#mod8
#Respalda los archivos Originales

banner="
| |
| |  ooooooooo.   ooooooooo.     .oooooo.    .oooooo..o       .o.
| |  \`888   \`Y88. \`888   \`Y88.  d8P'  \`Y8b  d8P'    \`Y8      .888.
| |   888   .d88'  888   .d88' 888      888 Y88bo.          .8\"888.
| |   888ooo88P'   888ooo88P'  888      888  \`\"Y8888o.     .8' \`888.
| |   888          888\`88b.    888      888      \`\"Y88b   .88ooo8888.
| |   888          888  \`88b.  \`88b    d88' oo     .d8P  .8'     \`888.
| |  o888o        o888o  o888o  \`Y8bood8P'  8\"\"88888P'  o88o     o8888o
| | --------------------------------------------------------------------
| |
| | Este sistema esta restringido exclusivamente para usuarios autorizados,
| | el acceso sera monitoreado y grabado por razones de seguridad en todo momento.
| | Usuarios no autorizados seran sujetos a penalidades civiles, criminales
| | y de cualquier otra indole.
| |
| | Cualquier posible actividad criminal como fraude, falsificacion y filtrado
| | de informacion se tomaran las acciones correspondientes.
| |
"

# Verificar si el archivo /etc/issue existe
if [ -f "/etc/issue" ]; then
    echo "El archivo /etc/issue ya existe."
    echo "$banner" > /etc/issue
    echo "Se ha actualizado el archivo /etc/issue con el nuevo banner."
else
    echo "El archivo /etc/issue no existe. No se realizó ningún cambio."
fi

# Verificar si el archivo /etc/issue.net existe
if [ -f "/etc/issue.net" ]; then
    echo "El archivo /etc/issue.net ya existe."
    echo "$banner" > /etc/issue.net
    echo "Se ha actualizado el archivo /etc/issue.net con el nuevo banner."
else
    echo "El archivo /etc/issue.net no existe. No se realizó ningún cambio."
fi

exit
