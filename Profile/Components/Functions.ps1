# Basic commands
function which($Name) { Get-Command $Name -ErrorAction SilentlyContinue | Select-Object Definition }
function touch($File) { New-Item -Type File -Path $File }

# Create a new directory and enter it
function msl($Path) { New-Item $Path -ItemType Directory -ErrorAction SilentlyContinue; Set-Location $Path }