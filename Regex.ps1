#REGEX

$email = Read-Host Qual seu email ?
$regex = "^[a-z]+\.[a-z]+@gmail.com$"


if ($email -notmatch $regex) 
{
    Write-Host "Errou o endereço de email $email"
    Exit    
}

Write-Host Acerto !

#Get-Content .\cpf.txt | Select-String -Pattern '\d.\d.\d-\d'