# Easier Navigation: .., ..., ...., ....., and ~
${Function:~} = { Set-Location ~ }
# PoSh won't allow ${Function:..} because of an invalid path error, so...
${Function:Set-ParentLocation} = { Set-Location .. }; Set-Alias ".." Set-ParentLocation
${Function:...} = { Set-Location ..\.. }
${Function:....} = { Set-Location ..\..\.. }
${Function:.....} = { Set-Location ..\..\..\.. }
${Function:......} = { Set-Location ..\..\..\..\.. }

# Navigation Shortcuts
${Function:gh} = { Set-Location D:\GitHub }
${Function:dt} = { Set-Location ~\Desktop }
${Function:docs} = { Set-Location ~\Documents }
${Function:dl} = { Set-Location ~\Downloads }

# List all files, including hidden files
${Function:la} = { Get-ChildItem -Force @args }
# List only directories
${Function:lsd} = { Get-ChildItem -Directory -Force @args }
