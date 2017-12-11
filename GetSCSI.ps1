$computer_names=Get-ADComputer -Filter * | Select -Expand Name
 
foreach ($item in $computer_names)
{
Write-Host "Server name: " $item
Get-WmiObject -Class Win32_SCSIController -ComputerName $item | select DriverName, Manufacturer, Name| ft
}
