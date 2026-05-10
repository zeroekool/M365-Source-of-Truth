#requires -Version 7.0
$ErrorActionPreference = "Stop"
$AppScript = Join-Path $PSScriptRoot "app\M365-PIM-SourceOfTruth-App.ps1"
if (-not (Test-Path $AppScript)) { throw "App script not found: $AppScript" }
& $AppScript
