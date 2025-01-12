@echo off
:: Set the background color to blue and text color to white for a clean, modern look.
color 1f

:: Hide the file directory to enhance the user experience
cls

:: Display a brief welcome message and instructions
echo *** Welcome to Clavish Temp Spoofer  ***
echo.
echo This Spoofer is UD Chat!.
echo.
echo Press any key to begin spoofing...
pause >nul

:: Start spoofing process
cls
echo *** Clavish Spoofing Tool ***
echo.
echo Spoofing system files...
echo.

:: Run the spoofing commands
mapper.exe "diskhandler.sys"
mapper.exe "SMBiosHandler.sys"
mapper.exe "DiskHandler.sys"
mapper.exe "SMBiosHandler.sys"

:: Display the Discord link
echo.
echo Join us at discord.gg/clavish
timeout /t 3 /nobreak >nul

:: Notify the user that the spoofing is complete
echo Spoofed! 
timeout /t 1 /nobreak >nul

:: Close the script
exit /b
