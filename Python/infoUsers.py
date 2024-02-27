# Entregable GitHub infoUsers
# Autor: Karel Rolando García Palomo
# Fecha 26/02/2024

import os
import sys
import platform

uid = os.getuid()
print(uid)

if uid != 0:
    print("No eres root")
    exit()

print("1- Mostrar información del SSOO y de la CPU")
print("2- Introduce el nombre de un usuario")
print("3- Crear un directorio")
print("4- Salir")

opcion = int(input("Introduce una de los opciones anteriores "))

if opcion == 1:
    print("Ha seleccionado mostrar información del SSOO y de la CPU")
    l = os.name
    k = sys.platform
    cpu_info = platform.processor()
    print("SSOO:", l, k, "CPU:", cpu_info)
else:
    if opcion == 2:
        print("Ha seleccionado ver la información de un usuario")
        r = open("/etc/passwd", "r")
        enc = False
        usuario = input("Dime un usuario ")
        lines = r.readlines()
        for i in lines:
            if usuario in i:
                enc = True
        if enc == True:
            print("El usuario " + usuario + " ya existe")
        else:
            os.system("useradd -m " + usuario)
        r.close()
    else:
        if opcion == 3:
            print("Ha seleccionado crear un diredctorio")
            dir=input("Introduce el nombre del directorio ")
            if os.path.exists(dir):
                print("El direcotrio ya existe")
            else:
                os.makedirs(dir)
                print("El directorio no existía, se ha creado")

        else:
            if opcion == 4:
                print("Ha seleccionado salir")
            else:
                exit()
