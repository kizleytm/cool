@echo off
:: Ensure Administrator privileges
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    powershell -Command "Start-Process cmd.exe -ArgumentList '/c \"%~s0\"' -Verb RunAs"
    exit /b
)

:: Clean interface
cls
color 87

:: Welcome Message
echo *** Clavish Temp Spoofer ***
echo This tool modifies SSD serial numbers responsibly.
pause >nul

:: Verify essential files
if not exist "mapper.exe" echo Error: Missing 'mapper.exe' & pause & exit /b
if not exist "DiskHandler.sys" echo Error: Missing 'DiskHandler.sys' & pause & exit /b
if not exist "SMBiosHandler.sys" echo Error: Missing 'SMBiosHandler.sys' & pause & exit /b

:: Map drivers
mapper.exe "DiskHandler.sys" || (echo Error: 'DiskHandler.sys' failed & pause & exit /b)
mapper.exe "SMBiosHandler.sys" || (echo Error: 'SMBiosHandler.sys' failed & pause & exit /b)

:: Completion Message
echo Spoofing complete! SSD serials modified.
timeout /t 5 >nul
exit /b
