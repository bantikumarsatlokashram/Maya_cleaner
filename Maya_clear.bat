@echo off
title 🔥 Maya Full Cleaner v1.0
echo.
echo =====================================================
echo   🔥 AUTODESK MAYA CLEANER v1.0 - By BKPKVIDEO.com
echo =====================================================
echo.

:: Setup
SET MAYAVERSION=2025
SET USERNAME=%USERNAME%

echo [1/8] Killing Maya and Autodesk background processes...
taskkill /IM maya.exe /F >nul 2>&1
taskkill /IM AdSSO.exe /F >nul 2>&1
taskkill /IM AdAppMgr.exe /F >nul 2>&1
taskkill /IM LMU.exe /F >nul 2>&1

echo [2/8] Uninstalling Maya via WMIC if found...
wmic product where "name like 'Autodesk Maya%%'" call uninstall /nointeractive >nul 2>&1

echo [3/8] Deleting Program Files folders...
rmdir /S /Q "C:\Program Files\Autodesk" >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Autodesk" >nul 2>&1
rmdir /S /Q "C:\Program Files\Common Files\Autodesk Shared" >nul 2>&1
rmdir /S /Q "C:\Program Files (x86)\Common Files\Autodesk Shared" >nul 2>&1

echo [4/8] Cleaning ProgramData folders...
rmdir /S /Q "C:\ProgramData\Autodesk" >nul 2>&1
rmdir /S /Q "C:\ProgramData\FLEXnet" >nul 2>&1

echo [5/8] Wiping all Maya user folders...
rmdir /S /Q "C:\Users\%USERNAME%\Documents\maya" >nul 2>&1
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Roaming\Autodesk" >nul 2>&1
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Roaming\maya" >nul 2>&1
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\Autodesk" >nul 2>&1
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\maya" >nul 2>&1
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\Temp\maya" >nul 2>&1

echo [6/8] Clearing TEMP files...
del /F /Q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" >nul 2>&1

echo [7/8] Removing environment variables...
reg delete "HKCU\Environment" /v MAYA_SCRIPT_PATH /f >nul 2>&1
reg delete "HKCU\Environment" /v MAYA_MODULE_PATH /f >nul 2>&1
reg delete "HKCU\Environment" /v MAYA_PLUG_IN_PATH /f >nul 2>&1

echo [8/8] Cleaning Registry...
reg delete "HKCU\Software\Autodesk\Maya" /f >nul 2>&1
reg delete "HKCU\Software\Autodesk" /f >nul 2>&1
reg delete "HKLM\Software\Autodesk" /f >nul 2>&1
reg delete "HKLM\Software\WOW6432Node\Autodesk" /f >nul 2>&1

echo.
echo ✅ DONE! Autodesk Maya has been fully removed from your system.
pause
