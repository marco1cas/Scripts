#Variables
 
$var = Get-Process 
$var

$string = "Hi"
Write-Output $string

[int]$integer = 23
Write-Output $integer


[bool]$bolean = $true
Write-Output $bolean


#Control de Flujo

# -Condicional 
$year = 22

if($year -gt 70) {

    'Es muy mayor de edad'

}elseif ($year -gt 21){

    'Es mayor de edad' 
       
}else {

    'Es menor de edad'
}

Write-Host $year

#  -ForEach-Object
$numeros = 1..5

$numeros | ForEach-Object {
    Write-Output ": $_"
}

#  -For
for ($i = 1; $i -le 5; $i++) {
    Write-Output "Contador: $i"
}

#- Switch
$dia = "Lunes"
switch ($dia) {
    "Lunes" { "Inicio de semana" }
    "Viernes" { "Fin de semana cerca" }
    default { "Día común" }
}

 
#  -Do-while y Do-Until
$contador = 1

do {
    Write-Output "El valor es $contador"
    $contador++
} while ($contador -le 3)


$contador = 1

do {
    Write-Output "El valor es $contador"
    $contador++
} until ($contador -gt 3)

#  -While 
$contador = 1

while ($contador -le 3) {
    Write-Output "El valor es $contador"
    $contador++
}

#  -Break,Continue, Return 
for ($i = 1; $i -le 5; $i++) {
    if ($i -eq 3) { 
        Write-Output "Interrumpiendo en $i con Break"
        break
    }
    elseif ($i -eq 2) {
        Write-Output "Saltando el valor $i con Continue"
        continue
    }
    Write-Output "Valor actual: $i"
}

<#Estructura de datos#>

#List
$arr = @(1,2,3,4)
Write-Output $arr


#Dic
$hash = @{
    Nombre='Marco'; Edad=23; 
}
Write-Output $hash


#Funciones

function Saludar {
    Write-Output "¡Hola, bienvenido!"
}


Saludar
