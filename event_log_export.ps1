# Event Log Export Script
# Exports latest 100 system logs to CSV

$logPath = "system_logs.csv"

Get-EventLog -LogName System -Newest 100 |
Export-Csv -Path $logPath -NoTypeInformation

Write-Output "System logs exported to $logPath"
