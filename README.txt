M365 PIM Source of Truth Windows App v3
======================================

Purpose
-------
This is the Windows desktop-style package. It uses the Microsoft Graph PowerShell export engine as the backend and a native PowerShell WPF app shell as the front end.

The UI does not use custom Tier 0/Tier 1/Tier 2/Tier 3 logic.
It displays Microsoft-sourced fields from M365-Entra-PIM-SourceOfTruth.json.

Main files
----------
Start-M365-PIM-SourceOfTruth-App.ps1
    Launches the WPF desktop app.

app\M365-PIM-SourceOfTruth-App.ps1
    Native WPF app shell.

tools\Export-M365-Entra-PIM-SourceOfTruth.ps1
    Microsoft Graph export engine.

Build-EXE.ps1
    Optional PS2EXE builder for a launcher EXE.

Install-DesktopShortcut.ps1
    Creates a desktop shortcut.

Run
---
Open PowerShell 7 in this folder and run:

    .\Start-M365-PIM-SourceOfTruth-App.ps1

From the app:

    Run Microsoft Graph Export
    Load Latest JSON
    Open Output Folder

Default output root:

    C:\Temp\M365-Entra-Role-Audit

Build optional EXE launcher
---------------------------

    .\Build-EXE.ps1

Security notes
--------------
This package does not store credentials, secrets, tokens, or certificates.
For real tamper resistance:

    Code-sign the scripts and generated EXE.
    Store the package in an NTFS-protected folder.
    Deploy through Intune, SCCM, or another controlled software distribution path.

Important distinction
---------------------
Microsoft-sourced facts are shown from the JSON export.
Internal security recommendations should remain separate and clearly labeled.
