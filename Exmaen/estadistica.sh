#!/bin/bash
#
# Ejercicio 3 Estadistica
# Autor: Karel Rolando García Palomo
# Fecha: 06/03/2024

clear

if [ $# != 1 ];then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ ! -f $1 ];then
	echo "El fichero no existe"
else
	if [ ! -s $1 ];then
		echo "El fichero esta vacío"
	else
		cant=$( wc -l  $1  | cut -f 1 -d " " )
		notas=$( cut -f 3 -d " " $1 )
		alumno=$( cut -f 1 -d " " $1 )
		linea=$( grep "$notas" $1 | cut -f 1 -d " " )
		echo "El fichero tiene $cant alumnos"
		echo "Los alumnos con un 10 son $linea "
		echo "Los alumnos con un 8 son $linea"
		exit
	fi
fi


