#!/bin/bash
#
# Entregable.4 Users
# Autor: Karel Rolando García Palomo
# Fecha: 02/02/2024

clear

if [ $# -gt 1 ]; then
                echo "Numero de parámetros incorrectos"
                exit
fi

fecha=$( date +%F)
hora=$( date +%H-%M)

echo "Informe de usuarios del dia $fecha a las $hora "

IFS=":"

while read user x uid gid g home sehell; do
		if [ $uid -ge $1 ]; then
		 echo $user - $uid
		fi
done < /etc/passwd

echo $fecha $hora - el usuario $user ha solicitado un informe de usuarios >> /temp/logeventos.txt
