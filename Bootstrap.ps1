#Requires -RunAsAdministrator

$ProfileDirectory = Split-Path -parent $PROFILE

function Resolve-RelativeToTargetDirectory ($Path, $TargetDirectory) {
	$Relative = Resolve-Path -Path $Path -Relative
	Join-Path -Path $TargetDirectory -ChildPath $Relative
}

function Add-SymbolicLinks ($SourceDirectory, $TargetDirectory) {
	Push-Location -Path $SourceDirectory
	Get-ChildItem -Recurse -File | `
	ForEach-Object -Process {
		$Target = $_
		$Path = Resolve-RelativeToTargetDirectory -Path $_ -TargetDirectory $TargetDirectory
		New-Item -Path $Path -ItemType SymbolicLink -Target $Target -Force -ErrorAction Continue
	}
	Pop-Location
}

Add-SymbolicLinks -SourceDirectory profile -TargetDirectory $ProfileDirectory
Add-SymbolicLinks -SourceDirectory home -TargetDirectory ~