# Execute existing profile components

'Functions','Aliases','Exports','Extra' | `
	ForEach-Object -Process { Join-Path -Path $PSScriptRoot -ChildPath "Components\$_.ps1" } | `
	Where-Object -FilterScript { Test-Path $_ } | `
	ForEach-Object -Process { . $_ }

# Load oh-my-posh theme
oh-my-posh init pwsh --config ~/.oh-my-posh.json | Invoke-Expression