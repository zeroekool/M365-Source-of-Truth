#requires -Version 5.1
$Root = $PSScriptRoot
$Target = Join-Path $Root "Start-M365-PIM-SourceOfTruth-App.ps1"
$ShortcutPath = Join-Path ([Environment]::GetFolderPath("Desktop")) "M365 PIM Source of Truth.lnk"
$Pwsh = (Get-Command pwsh.exe -ErrorAction SilentlyContinue).Source
if (-not $Pwsh) { $Pwsh = (Get-Command powershell.exe).Source }
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $Pwsh
$Shortcut.Arguments = "-ExecutionPolicy Bypass -File `"$Target`""
$Shortcut.WorkingDirectory = $Root
$Shortcut.IconLocation = "$env:SystemRoot\System32\shell32.dll,44"
$Shortcut.Save()
Write-Host "Shortcut created: $ShortcutPath" -ForegroundColor Green
