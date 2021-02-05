$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Installing chocolatey"
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}
