@echo off
REM Script 3 suma de numeros por parametros
REM 
REM Autor: Karel Garcia Palomo
REM Fecha: 14-11-2023

set valor1=2
set valor2=5
set valor3=4

set/A suma=%valor1% + %valor2% + %valor3% 
echo la suma es %suma%

set/A division=%suma%/3
echo la media es %division% 
