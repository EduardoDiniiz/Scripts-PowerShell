# Exemplo FOREACH
clear
Write-Host "Hello World"

foreach ($arquivo in Get-ChildItem) {
    if ($arquivo.IsReadOnly){
        Write-Host $arquivo.FullName
    }
}

#Get-ChildItem c:\