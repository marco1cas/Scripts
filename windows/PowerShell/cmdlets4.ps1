<# 
Formato, Alias, Proveedores, Comparacion 

-Formato (formatear) la salida para obtener una presentacion mas legible

Get-Process | Sort-Object CPU -Descending | Format-Table Name, CPU -AutoSize <-- formatea como una tabla despues de haber ordenado los procesos 
por uso de CPU. (Format-Table <es un cmdlet> formatea datos en forma de tabla, -AutoSize Ajusta el ancho de las columnas ) 

Get-Service | Sort-Object Status, DisplayName | Format-Table DisplayName, Status, StartType -AutoSize <-- mostrar la información de los servicios con Get-Service ajustando las columnas para una presentación ordenada

-Alias  nombres abreviados para comandos largos o cmdlets

gcm == Get-Command
ps == Get-process
gsv == get-service 
gm == Get-Member
gal == Get-Alias
ft == Format-Table

ps | Sort-Object PM -Descending | ft Name, CPU, PM -AutoSize


-Proveedores  permiten acceder a diferentes tipos de datos como si fueran sistemas de archivos

Get-PSProvider (obtiene los proveedores de PowerShell en la sesión actual. Se puede obtener una determinada unidad de disco o todas las unidades de la sesión.)

set-location C:\\Users\Usuario\Documents <-- Cmabia a la unidad de archivos 

dir HKCU:\\Software <-- Explora el registro de Windows


-Operadores de Comparacion

5 -eq 5 (igual a)
2 -ne 1 (no igual a)
10 -gt 9 (Mayor que)
2 -lt 10 (Menor que)
'Powershell' -like 'Power*' (Coincidencia con comodines)
#>




