@echo off
setlocal
where pwsh.exe >nul 2>nul
if %errorlevel%==0 (
  pwsh.exe -ExecutionPolicy Bypass -File "%~dp0Start-M365-PIM-SourceOfTruth-App.ps1"
) else (
  powershell.exe -ExecutionPolicy Bypass -File "%~dp0Start-M365-PIM-SourceOfTruth-App.ps1"
)
endlocal
