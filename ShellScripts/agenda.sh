#!/bin/bash
#
# Agenda de contactos
# Autor: Karel Rolando García Palomo
# Fecha: 17/01/2024

clear

while true ; do

	echo "MENÚ DE LA AGENDA"
	echo "a) Añadir otra entrada"
	echo "b) Buscar por DNI"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"

read -p "Introduce una de las opciones " option

   case $option in


	a)
		echo "Ha seleccionado añadir una nueva entrada"
		read -p "Introduce un DNI " dni
		if grep "^$dni" agenda.txt 2>/dev/null ; then
			echo "Error, el DNI $dni ya existe"
		else
			read -p "Introduce el nombre " nombre
			read -p "Introduce los apellidos " apellidos
			read -p "Introduce la localidad " localidad
			echo $dni: $nombre: $apellidos: $localidad >> agenda.txt
		fi
		;;
        b)
                echo "Ha seleccionado buscar por un DNI"
                read -p "Introduce un DNI " dni
		if grep "^$dni" agenda.txt 2>/dev/null; then
			nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
			apellidos=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
			direccion=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
			echo "La persona con DNI $dni es: $nombre $apellidos, y vive en $direccion"
		else
                        echo "Error, el DNI $dni no esxiste"
	         fi
           	 ;;
        c)
                echo "Ha seleccionado ver la agenda completa"
			if [ -s agenda.txt ]; then
			cat agenda.txt
			else
		echo "La agenda está vacía"
	        fi
		;;
        d)
                echo -n > agenda.txt
	        echo "Se han eliminado todas las entradas de la agedna"
                ;;
        e)
		echo "Ha seleccionado finalizar"
                exit
		;;
	*)
		echo "ERROR"
   esac

done
