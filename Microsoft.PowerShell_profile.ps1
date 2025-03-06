function prompt {
	$locationLine = "PS $(Get-Location)"
	if ($locationLine.length -gt $Host.UI.RawUI.WindowSize.Width / 2) {
		return "$locationLine`n> "
	} else {
		return "$locationLine > "
	}
}
function reset {
	back
	clear
}
function Change-TerminalSettings {
	vim %LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
}
function Change-StartupScript {
	vim C:\Users\Quang\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
}
function grep($string) {
	Get-ChildItem -Recurse | Select-String $string -AllMatches
}
function grepcase($string) {
	Get-ChildItem -Recurse | Select-String $string -AllMatches -CaseSensitive
}
Set-Alias -Name make -Value mingw32-make
Set-Alias -Name recycle -Value Remove-ItemSafely
$mark=(Get-Location).Path
function mark {
	$global:mark=(Get-Location)
}
function back {
	cd $mark
}
Set-PSReadlineOption -MaximumHistoryCount 100
Set-PSReadlineOption -PredictionSource None
$MaximumHistoryCount=100