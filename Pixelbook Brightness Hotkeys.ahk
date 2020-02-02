bdown =
(
    $currentBrightness = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightness @PSBoundParameters | Select-Object -ExpandProperty currentBrightness -Last 3)
    $import = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,$currentBrightness-10)
)

bup =
(
    $currentBrightness = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightness @PSBoundParameters | Select-Object -ExpandProperty currentBrightness -Last 3)
    $import = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,$currentBrightness+10)
)

F5::Run PowerShell.exe -Command %bdown%,, hide
F6::Run PowerShell.exe -Command %bup%,, hide
