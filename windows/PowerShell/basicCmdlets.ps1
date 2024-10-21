Get-Help Get-Process -Parameter * 
<#
Get-Process -Name opera, spotify <-- filtrado por nombre o nombres 
Get-Process -id 2240 <-- filtrado por id
Get-Process -Name notepad -ComputerName server1231 <-- obtiene procesos en una pc remota
Get-Process -Name opera -FileVersionInfo <-- muestra informacion detallada de la version del archivo
Get-Process -Name spotify -Module <-- muestra todos los modulos (dll y bibliotecas)
Get-Process -Name Spotify -IncludeUserName <-- muestra el nombre del usuario (mode admin)
#>

Get-Help Get-Member -Parameter *
<#
Get-Process | Get-Member -Force <-- muestra propiedades de los procesos en ejecucion
Get-Member -InputObject (Get-Process) <-- obtiene los miembros de la coleccion de procesos como un todo
Get-Process | Get-Member -MemberType Property <-- muestra solo las propiedades de los procesos
[system.dateTime] | Get-Member -Static <-- obtiene unicamente los miembros estaticos de un objeto
Get-Process | Get-Member -View Base <-- muestra solo las propiedades base definidas en el objeto .net
[System.Math] | Get-Member -Static -MemberType Method <-- muestra los metodos estaticos de la clase Math
#>

Get-Help Get-service -Parameter * 
<#
Get-Service -Name SysMain, Themes <-- filtrado por nombre o nombres 
Get-Service -ComputerName server123 <--- obtiene los servicios en un pc remota
Get-Service -Name WSearch -DependentServices <-- muestra los servicios que dependen del servicio especificado (WSearch)
Get-Service -DisplayName "Windows*" <-- obtiene servicios filtrando por su nombre, usa comodines "*" npara mostrar la palabra que comience en "Windows
Get-Service -DisplayName "*Update*" <-- para mosrtar los servicios que contengan "update"
Get-Service -Name * -Exclude "wuauserv" <-- excluye de la lista de servicios al servicio de windows update (wuaserv)
Get-Service -Name * -Exclude "w*" <-- exclute de la lista a nombres que empiezen con W
Get-Service -Name * -Include "w*" <-- incluye solo servicios que empiezen con W 

$servicio1 = Get-Service -Name "wuauserv"
Get-Service -InputObject $servicio1 <-- con este ejemplo obtendremos informacion detallada sobre ese servicio

Get-Service -Name "a*" <-- obtiene servicios por su nombre 
Get-Service -Name wuauserv -RequiredServices <-- obtiene servicios que son necesarios para que funcione un servicio
#>

Get-Help Get-Command -Parameter * 
<#
Get-Command -CommandType Cmdlet <-- obtiene los cmdlets disponibles
Get-Command -Module Microsoft.PowerShell.Management <-- obtener los comandos del modulo escrito
Get-Command -ParameterName name <-- obtiene comandos que tienen los parametros como name
Get-Command Get-Service -Syntax <-- muestra la sintaxis del comando Get-Service
Get-Command -Verb get <-- obtiene todos los comandos cuyo verbo es get
Get-Command -Noun Process <-- obtiene todos los comandos relacionados con process
Get-Command -ListImported <-- obtiene los comandos de los modulos importados 
Get-Command -Name Get-Process -Force <-- obtiene el comando Get-Process incluso si esta oculto
#>

Get-Help Get-Alias -Parameter *
<#
Get-Alias -Definition Get-ChildItem <-- muestra todos los alias que tiene el cmdlet
Get-Alias -Exclude "g*" <-- muestra todos los alias excepto los que comiencen en g
Get-Alias -Scope global <-- Este comando mostrará los alias definidos en el ámbito global
#>


