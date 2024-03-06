#!/bin/bash
#
# Ejercicio 3
# Autor: Karel Rolando García Palomo
# Fecha: 06/03/2024

clear

read -p "Introduce el nombre de un fichero " op

if [ -f $op ]; then
	echo "El fichero ya existe"
	read -p "Deseas sobreescribirlo? " op1
	if [ $op1 == "no" ];then
		exit
	else
		if [ $op1 == "si" ];then
			read -p "introduce el nobre del alumno, apellido y nota" no ap not
			if [ $not -ge 0 ] && if [ $not -le 10 ];then
				echo "$no $ap : $not" >> op
			else
				echo "La nota no es correcta"
				exit
			fi
		else
		exit
		fi
	fi
else
	echo "opcion no válida"
	exit
fi
