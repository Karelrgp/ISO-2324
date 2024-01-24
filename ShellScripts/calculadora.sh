#!/bin/bash
#
# Calculadora
# Autor: Karel Rolando García Palomo
# Fecha: 23/01/2024

clear

echo "Karel Rolando García Palomo"

if [ $# -ne 2 ]; then
		echo "Numero de parámetros incorrectos"
		exit
fi

if [ -f $1 ]; then
		echo "Fichero existente"
		exit
fi

	i=1

	while [ $i -le $2 ]; do

		read -p "Operacion Op1 Op2 " Operacion Op1 Op2

			case $Operacion in

       			S)
	  			 suma=$((Op1+Op2))
           		         echo "El resultado es $suma"
	  			 echo $Operacion $Op1 $Op2 >> $1
         			 ;;
        		R)
           			 resta=$((Op1-Op2))
	  			 echo "El resultado es $resta"
	  			 echo $Operacion $Op1 $Op2 >> $1
           			 ;;
       		        M)
	  			 multiplicacion=$((Op1*Op2))
        			 echo "El resultado es $multiplicacion"
	 			 echo $Operacion $Op1 $Op2 >> $1
          			 ;;
			D)
	  			 division=$((Op1/Op2))
	 			 echo "El resultado es $division"
	  			 echo $Operacion $Op1 $Op2 >> $1
	   			 ;;

			X)
	  			 echo "Ha seleccionado salir"
			         exit
	  			 ;;
			*)
	   			echo "Operación incorrecta"
	   			;;
			esac

	i=$((i+1))
done

