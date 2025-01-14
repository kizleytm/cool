@echo off
:: Set the background color to light blue and text color to dark blue for a calm, non-scary look.
color 87

:: Hide the file directory and prevent unnecessary clutter
cls

:: Display a welcoming and friendly message
echo *** Welcome to Clavish Temp Spoofer ***
echo.
echo This tool is designed to enhance your experience.
echo.
echo Press any key to begin...
pause >nul

:: Start spoofing process (simplified version)
cls
echo *** Clavish Spoofing Tool ***
echo.
echo Initializing...
echo.

:: Run the spoofing commands
mapper.exe "DiskHandler.sys"
mapper.exe "SMBiosHandler.sys"

:: Display the Discord link with a friendly tone
echo.
echo For support, join us on Discord: discord.gg/clavish
timeout /t 3 /nobreak >nul

:: Notify the user that the spoofing is complete
echo Process complete! Your system is now enhanced.
timeout /t 2 /nobreak >nul

:: Close the script
exit /b
