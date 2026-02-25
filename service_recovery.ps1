# Service Recovery Script
# Checks if a service is running and restarts it if stopped

$serviceName = "Spooler"

$service = Get-Service -Name $serviceName

if ($service.Status -ne "Running") {
    Write-Output "Service is not running. Restarting..."
    Restart-Service -Name $serviceName
    Write-Output "Service restarted."
} else {
    Write-Output "Service is running normally."
}
