bdown =
(
    $import = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,10)
)
bup =
(
    $import = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,80)
)

F5::Run PowerShell.exe -NoExit -Command %bdown%; exit,, hide
F6::Run PowerShell.exe -NoExit -Command %bup%; exit,, hide
