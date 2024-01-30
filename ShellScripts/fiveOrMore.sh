#!/bin/bash
#
# FiveOrMore
# Autor: Karel Rolando García Palomo
# Fecha: 29/01/2024

clear

echo "Karel Rolanfo García Palomo"

if [ $# -ne 2 ]; then
                echo "Numero de parámetros incorrectos"
                exit
fi

if [ ! -d $2 ]; then
		echo "El directorio no existe"
                exit
fi

ficheros=$(ls $2)
if [ -z $ficheros 2>/dev/null ]; then
	      echo "El directorio está vacío"
              exit
fi

ficheros=$( ls $2/*.txt)
for i in $ficheros; do
	if [ -f $i ];then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			#Parte 3
			echo $i
			echo $i >> $1
			#Parte 4
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero=$(cat $1 | wc -l)
echo $numero >> $1
