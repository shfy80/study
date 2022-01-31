$Date = Get-Date
$HAVMrestartold=10
Get-VIEvent -maxsamples 6000 -Start ($Date).AddDays(-$HAVMrestartold) -type warning | Where {$_.FullFormattedMessage -match "restarted"} |select CreatedTime,FullFormattedMessage | sort CreatedTime -Descending | Export-CSV E:\norman\HA_restarted_vm.csv