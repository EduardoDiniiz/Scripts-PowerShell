Clear-Host

Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -At 2pm
$umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock {
Copy-Item C:\src\*.* C:\Users\eduardo\Documents\ -Recurse -Force
}

#Get-ScheduledJob | Unregister-ScheduledJob