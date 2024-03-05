# Entregable 2
# Karel García Palomo
# 04/03/2024
import os
import shutil

arch = []
carp = []

fichero = open("rutas.txt", "+r")
lines = fichero.readlines()
for i in lines:
    ruta = i.strip()
    if os.path.isfile(ruta):
        arch.append(ruta)

    elif os.path.isdir(ruta):
        carp.append(ruta)

print("A- Eliminar archivo")
print("B- Informacion del directorio")
print("C- Copiar archivo")
print("D- Ver lista ")
print("E- Salir")

while True:
    opt = input("Ingresa la opcion ")
    if opt == "A":
        fichero = input("Ingresa el nombre del archivo ")
        os.system(f'rm {fichero}')
        arch.remove(fichero)
    elif opt == "B":
        directorio = input("Ingrese un directorio: ")
        info = os.system(f'ls {directorio}')
        print(info)
    elif opt == "C":
        nombre = input("Ingresa el nombre del archivo: ")
        destino = input("Ingresa el nombre del destino: ")
        shutil.copy(f"{nombre}", f"{destino}")
    elif opt == "D":
        print("1- Lista de ficheros ")
        print("2- Lista de directorios")
        opt1 = input("Ingresa tu opción: ")
        if opt1 == "1":
            print(arch)
        elif opt1 == "2":
            print(carp)
    elif opt == "E":
        exit()

fichero.close()
