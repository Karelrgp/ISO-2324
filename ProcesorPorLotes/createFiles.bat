@echo off
REM Estructura condicional
REM 
REM Karel Garcia Palomo
REM 15-11-2023

title Estructura condicional
echo Pulsa 1 para crear archivo txt
echo Pulsa 2 para crear archivo bat

set /P num=
if %num% == 1 goto archivotxt
if %num% == 2 goto archivobat
:archivotxt 
echo Ha seleccionado crear un archivo txt
set /P nombre="Introduzca el nombre de su archivo"
set /P ruta="escriba su ruta"
type nul > %ruta%\%nombre%.txt
exit
:archivobat
echo Ha selecionado crear un archivo bat
set /P nombre="Introduzca el nombre de su archivo"
set /P ruta="escriba su ruta"
type nul > %ruta%\%nombre%.bat
exit
