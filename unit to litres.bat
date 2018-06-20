@echo off
title unit converter
color 0e
cls

:main
cls
echo.
echo.
echo [ * ] From litre to mm3, cm3, m3, km3, in3, ft3, mile3
echo [ / ] From mm3, cm3, m3, km3, in3, ft3, mile3 to litre
set /p unit=[ * / ] 


echo.
echo.
echo first unit of measurment?
echo.
echo [ 1 ] mm3	[ 2 ] cm3	[ 3 ] meter3
echo [ 4 ] in3	[ 5 ] ft3
echo.
echo.
set /p unit1=[ # ] 
if %unit1%==1 goto mm
if %unit1%==2 goto cm
if %unit1%==3 goto m
if %unit1%==4 goto in
if %unit1%==5 goto ft

echo.
echo PLEASE ENTER A VALID ANSWER
timeout 1 > nul
goto main


:mm

set /p var=Enter mm3: 
set /a m=%var%%unit%10
set /a c=%m%%unit%1000
echo.

echo %c%
echo.
echo.
echo.
pause

:cm


set /p var=Enter cm3: 
set /a c=%var%%unit%1000
echo.

echo %c%
echo.
echo.
echo.
pause

:m

set /p var=Enter m3: 
set /a c=%var%%unit%0.0010000
echo.

echo %c%
echo.
echo.
echo.
pause


:in

set /p var=Enter in3: 
set /a c=%var%%unit%61.024
echo.
echo %var% in3 to litres is

echo.
echo.
echo.
pause


:ft

set /p var=Enter ft3: 
set /a c=%var%%unit%0.035315
echo.

echo %c%
echo.
echo.
echo.
pause