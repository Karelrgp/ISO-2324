@echo off
REM Estructura condicional
REM 
REM Autor: Karel Garcia Palomo
REM Fecha: 20-11-2023

:inicio

set /p archivo="Dime el nombre de un archivo"

if exist %archivo% (echo "El archivo existe" 
 
goto inicio) 

else (echo "el archivo no existe,se creará"

goto nuevo)

:nuevo
type nul > %archivo%


