@echo off
rem ///////////////////////////////////////////////////////
rem //////////  Resumen Intermedio de Batch  /////////////
rem //////////////////////////////////////////////////////

rem Operadores numéricos: NEQ (diferente), LSS (menor), LEQ (menor o igual), 
rem GTR (mayor), GEQ (mayor o igual)

:: Anidación de Condicionales
set /p age=Edad: 
if %age% GEQ 18 (
    if %age% LEQ 65 (
        echo Eres mayor
    ) else (
        echo Eres un adulto mayor
    )
) else (
    echo Eres menor
)

:: Bucle FOR: Iteracion sobre una simulacion de una lista de elementos
set lista=manzana naranja platano
for %%a in (%lista%) do (
    echo Fruta: %%a
)

:: Bucle FOR /F: Procesamiento de lineas de un archivo
rem Este ejemplo asume que hay un archivo llamado 'archivo.txt'
rem con varias lineas. Cambia 'archivo.txt' por un archivo válido.
for /f "tokens=*" %%a in (archivo.txt) do (
    echo Línea: %%a
)

:: Goto: Control del flujo del script
echo Script
goto :skip
echo Esto no se ejecuta
:skip
echo Esto sí se ejecutara

:: Bucle manual con GOTO
set contador=1
:loop
if %contador% LEQ 5 (
    echo Iteracion %contador%
    set /a contador+=1
    goto :loop
)

:: Call: Llamada a subrutina
call :hello
echo Fin del script
goto :EOF

:hello
echo hola
goto :EOF

:: Choice: Seleccion de opciones
choice /c ABC /m "Selecciona una opción (A,B,C): "
if errorlevel 3 (
    echo C
) else if errorlevel 2 (
    echo B
) else if errorlevel 1 (
    echo A
)

:: Alcance de variables: Uso de setlocal y endlocal
set global=valorGlobal
setlocal
set global=valorLocal
echo Dentro de setlocal: %global%
endlocal 
echo Después de endlocal: %global%

pause
