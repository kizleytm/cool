@echo off
:: Check if the script is run with administrator privileges
:: If not, attempt to restart it as administrator
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Restarting the script as Administrator...
    echo.

    :: Use PowerShell to start the batch script as Administrator
    powershell -Command "Start-Process cmd.exe -ArgumentList '/c \"%~s0\"' -Verb RunAs"
    exit /b
)

:: Set the background color to light blue and text color to dark blue
color 87

:: Hide the file directory and prevent unnecessary clutter
cls

:: Display a welcoming and friendly message
echo *** Welcome to Clavish Temp Spoofer ***
echo.
echo This tool is designed to modify your SSD serial numbers.
echo Please make sure to use this tool responsibly.
echo.
echo Press any key to begin...
pause >nul

:: Start spoofing process
cls
echo *** Clavish Spoofing Tool ***
echo.
echo Initializing spoofing process...
echo.

:: Ensure mapper.exe and driver files are in the same directory
if not exist "mapper.exe" (
    echo Error: 'mapper.exe' not found in the current directory.
    echo Please ensure 'mapper.exe' is in the same folder as this script.
    pause
    exit /b
)

if not exist "DiskHandler.sys" (
    echo Error: 'DiskHandler.sys' not found in the current directory.
    echo Please ensure 'DiskHandler.sys' is in the same folder as this script.
    pause
    exit /b
)

if not exist "SMBiosHandler.sys" (
    echo Error: 'SMBiosHandler.sys' not found in the current directory.
    echo Please ensure 'SMBiosHandler.sys' is in the same folder as this script.
    pause
    exit /b
)

:: Execute the spoofing commands
mapper.exe "DiskHandler.sys"
if %errorlevel% neq 0 (
    echo Error: Failed to load 'DiskHandler.sys'. Please check your setup.
    pause
    exit /b
)

mapper.exe "SMBiosHandler.sys"
if %errorlevel% neq 0 (
    echo Error: Failed to load 'SMBiosHandler.sys'. Please check your setup.
    pause
    exit /b
)

:: Notify the user that the spoofing is complete
echo.
echo Process complete! Your SSD serial numbers have been successfully modified.
echo.

:: Provide the Discord link for support
echo For support, join us on Discord: discord.gg/clavish
timeout /t 5 /nobreak >nul

:: Close the script
exit /b
