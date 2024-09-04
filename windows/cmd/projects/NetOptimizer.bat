@echo off 

echo //////////////////////////////
echo //// Solve Network Problems ////
echo //////////////////////////////

start cmd /k "ipconfig /all"

echo Limpiando cache de DNS...
ipconfig /flushdns
echo.

echo Actualizando el registro de DNS...
ipconfig /registerdns
echo.

echo Liberando tu direccion IP...
ipconfig /release
echo.

echo Renovando una nueva IP...
ipconfig /renew
echo.

echo Reiniciando Winsock para resolver problemas de conexion...
netsh winsock reset
echo.

echo ./././././.Finalizado./././././././
pause
exit

