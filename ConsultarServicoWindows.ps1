# Consultar Serviço do Windows

$Serv = Get-Service -Name Spooler

if ($Serv.Status -eq "Running")
{
    Write-Host "Serviço em execução"
}
else
{
    Write-Host "Serviço Parado"
}