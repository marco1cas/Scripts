@echo off
rem ///////////////////////////////////////////////////////
rem //////////  Resumen Basico de Batch  /////////////////
rem //////////////////////////////////////////////////////

rem mostrar un mensaje en la consola
echo mensaje en consola

rem (set /p) se utiliza para asignar valores a una variable solicitando un valor al usuario
set /p nombre=Nombre: 
echo hi %nombre%!

rem Validacion simple solicitando al usuario si desea continuar
set /p continuar=Quieres seguir con el script ?(s/n): 
rem /i en el if ignora las diferencias entre mayusculas y minusculas al comparar cadenas
if /i "%continuar%"=="s" (
    echo Nice, Seguimos...
) else (
    echo haz decidido salir.... %nombre%!
    exit /b  
    rem (exit /b) termina el script sin cerrar la ventana de la consola
)

rem El bucle for /l permite iterar sobre un rango de números
for /l %%i in (1,1,5) do (
    echo %%i
)

rem (pause) se utiliza para pausar la ejecución del script y mostrar "Presione cualquier tecla para continuar..."
pause

:: Simular funciones en batch usando subrutinas
:: Las subrutinas son secciones del script que puedes llamar con "call"
:: Aquí se llama a la subrutina "sumar" con los parámetros 5 y 3
call :sumar 5 3

rem Definición de la subrutina "sumar"
rem %1 y %2 son los parámetros que se pasan a la subrutina. ponerlo junto al archivo (main.bat 2 2)
rem set /a permite realizar operaciones aritméticas
:sumar
set /a resultado=%1 + %2
echo La suma de %1 y %2 es: %resultado%
goto :EOF  rem Goto :EOF regresa al final del script después de ejecutar la subrutina

