# System Health Check Script
# Checks disk space and top memory-consuming processes

Write-Output "==== Disk Usage ===="
Get-PSDrive -PSProvider FileSystem

Write-Output "`n==== Top 5 Memory Processes ===="
Get-Process | Sort-Object WS -Descending | Select-Object -First 5 Name, WS

Write-Output "`nHealth check completed."
