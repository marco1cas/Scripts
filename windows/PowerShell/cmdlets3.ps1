<#
Comandos unicos de una linea y canalizacion

-Comandos Unicos de una linea son los que se ejecutan directamente en la terminal (get-help, get-process, get-service)
para saber mas utiliza Get-Command


-La canalización (|) es una técnica que te permite pasar la salida de un cmdlet como entrada de otro cmdlet

Get-Process | Sort-Object CPU -Descending <-- ordenar de forma decendente los procesos que gasten mas CPU
(get-process y sort-object son cmdlets, CPU es una propiedad de get-process y -descending parametro de sort-object)


-Scritp Block ejecuta operaciones dentro de la canalizacion usando llaves actua como un filtro avanzado 


Get-Service | Where-Object {$_.Status -eq 'Running'} <-- Obtenemos todos los servicios que esten running

(Get-Service y Where-Object(seleciona objetos basandose en sus valores de propiedad) son cmdlets, {$_.Status} {} bloque 
$_ representa servicios individualmente, Status propiedad de Get-Service, -eq es un parametro de Where-Object  indica si el 
valor "Running" es true y los mostrara )


(Ejemplos Script Block)
Get-Process | Where-Object {$_.CPU -gt 90} | Select-Object Name, CPU <-- filtra procesos con uso de cpu mayor a 90

Get-Service | Where-Object {$_.Status -eq 'Running'} <-- muestra los servicios que estan en running


#> 
