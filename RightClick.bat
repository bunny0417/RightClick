@echo off
echo.
echo ================================
echo  Windows Context Menu Switcher
echo ================================
echo.
echo 1 - Restore Windows 10 context menu (old style)
echo 2 - Revert to Windows 11 default context menu
echo.
choice /c 12 /n /m "Select option: "

if errorlevel 2 goto RestoreWin11
if errorlevel 1 goto RestoreWin10

:RestoreWin10
echo.
echo Switching to Windows 10 context menu...
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
echo.
echo Successfully changed. Restart Windows Explorer to see changes.
goto End

:RestoreWin11
echo.
echo Reverting to Windows 11 default context menu...
reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
echo.
echo Successfully reverted. Restart Windows Explorer to see changes.
goto End

:End
echo.
pause
