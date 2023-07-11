@echo off
setlocal enabledelayedexpansion

set "parentFolder="
set /P "parentFolder=Enter the parent folder path: "

REM 确保路径以反斜杠结尾
if "!parentFolder:~-1!" NEQ "\" (
    set "parentFolder=!parentFolder!\"
)

REM 要创建的文件夹名称
set "folderNames=Recycle.{645ff040-5081-101b-9f08-00aa002f954e} Computer.{20D04FE0-3AEA-1069-A2D8-08002B30309D} Net.{992CFFA0-F557-101A-88EC-00DD010CCC48} Print.{2227a280-3aea-1069-a2de-08002b30309d} Panel.{21ec2020-3aea-1069-a2dd-08002b30309d}"

REM 循环创建文件夹
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
