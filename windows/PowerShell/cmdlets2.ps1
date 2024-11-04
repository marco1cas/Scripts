# Propiedades y Metodos (Get-Member)
<#
$proces = Get-Process Notion # obtenemos "Notion" como Objeto
$proces | Get-Member # Mostramos las propiedades y metodos del objeto

# Ojo solo en la terminal Administrador Powersehll 

(ejemplo servicios)

(propiedades)
$servicio = Get-Service -Name "wuauserv"

$servicio.Status        # Muestra el estado actual del servicio (Running, Stopped)
$servicio.ServiceType   # Tipo de servicio
$servicio.DisplayName   # Nombre descriptivo del servicio


(metodos)

$servicio.Start()       # Inicia el servicio
$servicio.Stop()        # Detiene el servicio
$servicio.WaitForStatus('Running')  # Espera hasta que el servicio esté en estado "Running"
$servicio.Refresh()     # Actualiza la información del servicio en el objeto


(ejemplo procesos)
(propiedades)

$proceso1 = Get-Process -Name notepad

$proceso1.Id              # Muestra el ID del proceso, un identificador único
$proceso1.ProcessName     # Muestra el nombre del proceso (por ejemplo, "notepad")
$proceso1.StartTime       # Muestra la hora en la que se inició el proceso

(metodos)

$proceso1.Kill()             # Termina el proceso inmediatamente
$proceso1.Refresh()          # Actualiza el objeto del proceso con la información más reciente
$proceso1.CloseMainWindow()  # Cierra la ventana principal del proceso 
#>
