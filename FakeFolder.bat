@echo off
setlocal enabledelayedexpansion

set /P "parentFolder=Enter the parent folder path: "

REM 
if "!parentFolder:~-1!" NEQ "\" (
    set "parentFolder=!parentFolder!\"
)

REM 
set "folderNames=Recycle.{645ff040-5081-101b-9f08-00aa002f954e} Computer.{20D04FE0-3AEA-1069-A2D8-08002B30309D} Net.{992CFFA0-F557-101A-88EC-00DD010CCC48} Print.{2227a280-3aea-1069-a2de-08002b30309d} Neighbor.{208D2C60-3AEA-1069-A2D7-08002B30309D} Panel.{21ec2020-3aea-1069-a2dd-08002b30309d} Browser.{BFB23B42-E3F0-101B-8488-00AA003E56F8} Plan.{D6277990-4C6A-11CF-8D87-00AA0060F5BF} Document.{450D8FBA-AD25-11D0-98A8-0800361B1103} URLHistory.{FF393560-C2A7-11CF-BFF4-444553540000}"

REM 
for %%i in (%folderNames%) do (
    set "folderName=!parentFolder!%%~i"
    mkdir "!folderName!" >nul 2>nul
    if "!errorlevel!"=="0" (
        echo Successfully created folder: !folderName!
    ) else (
        echo Failed to create folder: !folderName!
    )
)

pause
