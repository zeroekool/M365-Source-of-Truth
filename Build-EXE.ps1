#requires -Version 7.0
$ErrorActionPreference = "Stop"
$Root = $PSScriptRoot
$Entry = Join-Path $Root "Start-M365-PIM-SourceOfTruth-App.ps1"
$Build = Join-Path $Root "build"
$Out = Join-Path $Build "M365-PIM-SourceOfTruth.exe"
New-Item -Path $Build -ItemType Directory -Force | Out-Null
if (-not (Get-Module -ListAvailable -Name ps2exe)) {
    Install-Module ps2exe -Scope CurrentUser -Force -AllowClobber
}
Import-Module ps2exe
Invoke-ps2exe -InputFile $Entry -OutputFile $Out -NoConsole -Title "M365 PIM Source of Truth" -Company "UHS" -Product "M365 PIM Source of Truth" -Version "3.0.0.0"
Write-Host "Built: $Out" -ForegroundColor Green
