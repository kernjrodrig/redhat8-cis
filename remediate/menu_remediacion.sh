#!/usr/bin/env bash
#Color:
GREEN='\033[0;32m'
RED='\033[0;31m'
AZUL='\033[0;34m'
NC='\033[0m' # Sin color
AMARILLO='\033[0;33m'
# Función para mostrar el menú
show_menu() {
    clear
    echo "==============================="
    echo -e "  ${GREEN}CentOS 8 Hardenig Scripts ${NC}   "
    echo "==============================="
    echo "0. Concede Permisos a los script e instala comandos cis"
    echo "1. Help check"
    echo -e "${AMARILLO}2. Ejecutar la secuencia de Hardening ${NC}"
    echo "3. Ejecutar Auditoria"
    echo "4. Captura"
    echo "5. RPM-QA ALL"
    echo "10. Salir"
    echo "==============================="
    echo
}

# Función para leer la selección del usuario
read_option() {
    echo -n "Seleccione una opción: "
    read -r option
}

# Ciclo principal del menú
while true; do
    show_menu
    read_option

    case $option in
        0)
            echo "Se agregaron los permiso y se instalaros los comandos (cis cis-cd cis-rm) Para acceder al menu"
            dos2unix /tmp/redhat8-cis/remediate/*
            dos2unix /tmp/redhat8-cis/config/comandos-cis.sh
            chmod +x /tmp/redhat8-cis/remediate/*
            chmod +x /tmp/redhat8-cis/config/comandos-cis.sh
            sh /tmp/redhat8-cis/config/comandos-cis.sh
            source ~/.bashrc
            ;;
        1)
            echo "Ha seleccionado la Opción 1"
            /tmp/redhat8-cis/remediate/hc_2023.sh
            ;;
        2)
            echo "Ha seleccionado la Opción 2"
            /tmp/redhat8-cis/remediate/disparador.sh
            ;;
        3)
            echo "Ha seleccionado la Opción 3"
            /tmp/redhat8-cis/remediate/auditoria.sh
            ;;
         
        4)
            echo "Se tomo capturas ."
            /tmp/redhat8-cis/remediate/captura.sh
            ;;
        5)
            echo "consulta de apps"
            yum list installed | less >> /tmp/redhat8-cis/packinstall_`hostname`_`date +%A%d%B`.txt
            ;;
        10)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opción inválida. Por favor, seleccione nuevamente."
            ;;
    esac

    # Pausa para que el usuario pueda ver la salida antes de mostrar el menú nuevamente
    read -rp "Presione Enter para continuar..."
done
