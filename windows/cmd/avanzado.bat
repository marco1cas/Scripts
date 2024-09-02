@echo off
rem ///////////////////////////////////////////////////////
rem ////////// Resumen Avanzado de Batch  ////////////////
rem //////////////////////////////////////////////////////

rem Expresiones Regulares en Batch
:: findstr permite buscar cadenas en archivos y soporta expresiones regulares
findstr /R "error" Prueba.txt
::  puedes combinar multiples cadenas de busqueda usando /C para cadenas exactas
findstr /C:"error" /C:"Error" /C:"ErrOr" Prueba.txt

rem Arrays Simulados
set valor[0]=manzana
set valor[1]=banana
set valor[2]=cereza

echo %valor[0]%
echo %valor[1]%
echo %valor[2]%

rem  Automatizar Tareas Comunes
set origen=C:\MisDocumentos
set destino=D:\Backup
xcopy %origen% %destino% /E /I /Y
echo copia de seguridad/Redirigir archivos a otra
:: Limpiar archivos temporales
set directorio=C:\Temp
del /Q %directorio%\*.tmp
echo ././././...Nice..../././.

rem schtasks permite programar la ejecucion de scripts en momentos especificos
:: Ejecutar un script a la Hora que quieras
schtasks /create /tn "Copi" /tr "C:\ruta" /sc daily /st 02:00
:: Ejecutar un script cada semana
schtasks /create /tn "limpiarTemp" /tr "C:\ruta" /sc weekly /d SUN /st 03:00

rem Manejo avanzado de archivos
:: renombrar archivos dentro de una carpeta
:: renombra todos los archivos a Archivo_1.txt Archivo_2.txt
setlocal enabledelayedexpansion
set contador=1

for %%f in (C:\Carpeta\*.txt) do (
    ren "%%f" "Archivo_!contador!.txt"
    set /A contador+=1
)
echo done it....

:: mover archivos a otra carpeta
move C:\Carpeta\*.txt D:\OtraCarpeta\
echo done it....

rem Combinar archivos 
copy C:\Carpeta\*.txt C:\ArchivoCombinado.txt
echo done it....
