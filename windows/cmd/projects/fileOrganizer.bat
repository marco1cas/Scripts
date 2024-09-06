@echo off
echo //////////////////////////////
echo //// Organizer For Files ////
echo //////////////////////////////

:: expancion retardada de variables dentro de bucles
setlocal enabledelayedexpansion
:: %~dp0 obtiene la ruta actual de donde se ejecute el bat
set "fileExtend=%~dp0" 

mkdir "%fileExtend%docx"
mkdir "%fileExtend%pptx"
mkdir "%fileExtend%jpg"
mkdir "%fileExtend%xlsx"
mkdir "%fileExtend%pdf"
mkdir "%fileExtend%exe" 
:: (*.*) significa todos los archivos de la ruta
::  %%f obtiene la extension del archivo actual 
::  ~x extrae solo la extensión del archivo
:: !varBat! hace referencia a la expancion retardada
for %%f in (*.*) do (
    set "varBat=%%~xf"
    if /i "!varBat!" == ".docx" move "%%f" "%fileExtend%docx\"
    if /i "!varBat!" == ".pptx" move "%%f" "%fileExtend%pptx\"
    if /i "!varBat!" == ".jpg" move "%%f" "%fileExtend%jpg\"
    if /i "!varBat!" == ".xlsx" move "%%f" "%fileExtend%xlsx\"
    if /i "!varBat!" == ".pdf" move "%%f" "%fileExtend%pdf\"
    if /i "!varBat!" == ".exe" move "%%f" "%fileExtend%exe\"
)

