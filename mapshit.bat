@echo off
:: Check if the script is run with administrator privileges
:: If not, attempt to restart it as administrator
:: Open a new process as Administrator if it's not already running with elevated privileges

openfiles >nul 2>nul
if %errorlevel% neq 0 (
    echo This script requires Administrator privileges.
    echo Restarting the script as Administrator...
    echo.

    :: Use PowerShell to start the batch script as Administrator
    powershell -Command "Start-Process cmd.exe -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

:: Set the background color to light blue and text color to dark blue for a calm, non-scary look.
color 87

:: Hide the file directory and prevent unnecessary clutter
cls

:: Display a welcoming and friendly message
echo *** Welcome to NIGGGERRRR Temp Spoofer ***
echo.
echo This tool is designed to enhance your experience.
echo It will modify serial numbers for your SSD.
echo.
echo Press any key to begin...
pause >nul

:: Start spoofing process
cls
echo *** Clavish Spoofing Tool ***
echo.
echo Initializing...
echo.

:: Run the spoofing commands (with elevated privileges)
mapper.exe "DiskHandler.sys"
mapper.exe "SMBiosHandler.sys"

:: Display the Discord link with a friendly tone
echo.
echo For support, join us on Discord: discord.gg/clavish
timeout /t 3 /nobreak >nul

:: Notify the user that the spoofing is complete
echo Process complete! Your SSD serials have been modified.
timeout /t 2 /nobreak >nul

:: Close the script
exit /b
