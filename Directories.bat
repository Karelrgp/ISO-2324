@echo off
REM Estructura condicional
REM 
REM Karel Garcia Palomo
REM 15-11-2023

echo Pulsa 1 para crear un fichero nuevo.
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta usuario.
echo Pulsa 3 para mostrar los archivos con extensión txt.
echo Pulsa 4 para crear los directorios aldredoff, marianapg, ramonam.
echo Pulsa 5 para copiar el contenido de la carpeta usuaio al la carperta copiar.

set /P num=
if %num% == 1 goto fichero
if %num% == 2 goto arbol
if %num% == 3 goto mostrartxt
if %num% == 4 goto directorio
if %num% == 5 goto copiar

:fichero
echo Ha seleccionado crear un n uevo fichero.
set /P nombre="Introduzca el nombre de su fichero"
type nul >%nombre%.txt
exit

:arbol
echo Ha seleccionado ver el arbol de directorios de la carpeta usuario.
tree %USERPROFILE%
pause
exit

:mostrartxt
echo Ha seleccionado ver los archivos txt
dir *.txt
pause
exit

:directorio
echo Ha seleccionado crear los directorios alfredoff, marianapg y ramonam.
mkdir alfredoff marianapg ramonam
exit

:copiar
echo Ha seleccionado copiar el contenido de la carpeta usuario a la carpeta copiar.
xcopy %USERPROFILE% C:\Copiar /E
exit
