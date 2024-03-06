#!/bin/bash
#
# Ejercicio 4
# Autor: Karel Rolando García Palomo
# Fecha: 06/03/2024

clear

if [ $# != 1 ]; then
	echo "Número de parámetro incorrecto"
	exit
fi

if [ $1 == "crear" ]; then
	sudo mkdir /BAK 2>/dev/null
	echo "Se ha creado la carpea"
	else
	if [ $1 == "borrar" ];then
		sudo rmdir /BAK 2>/dev/null
		echo "Se ha eliminado la carpeta"
		else
			echo "Error"
	fi
fi
