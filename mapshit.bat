@echo off
:: Set the background color to blue and text color to white for a clean, modern look.
color 1f

:: Display a "splash screen" for branding.
cls
echo *** Welcome to Clavish Mapping Tool ***
echo.
echo Clavish - High Quality Testing Tools for Developers and Enthusiasts
echo Join us at: discord.gg/clavish
echo.
echo This tool is for testing purposes only. Use responsibly.
echo.
echo Loading...
timeout /t 2 /nobreak >nul

:: Check if mapper.exe exists. If not, handle the error gracefully.
if not exist "mapper.exe" (
    cls
    echo ERROR: "mapper.exe" not found!
    echo.
    echo It seems that the required file is missing or your antivirus might have flagged it.
    echo Please make sure mapper.exe is in the same directory as this script.
    echo If the file is in a compressed archive, extract it first.
    echo.
    echo Press any key to exit.
    pause >nul
    exit /b
)

:: Inform the user and proceed to the main action.
cls
echo *** Clavish Spoofing Tool ***
echo.
echo This tool will spoof system files for testing purposes.
echo Tested on Windows 22H2 and 20H2.
echo Make sure you understand the risks before proceeding.
echo.
echo Press any key to begin spoofing.
pause >nul

:: Start the spoofing process.
cls
echo *** Spoofing Process - Clavish ***
echo.
echo Please wait while we spoof the system files...
echo This may take a few moments.
echo.

:: Run the mapper.exe on the required system files.
mapper.exe "diskhandler.sys"
if errorlevel 1 (
    echo ERROR: Failed to spoof diskhandler.sys.
    echo Please check your system configuration or permissions.
    echo.
    pause >nul
    exit /b
)

mapper.exe "SMBiosHandler.sys"
if errorlevel 1 (
    echo ERROR: Failed to spoof SMBiosHandler.sys.
    echo Please check your system configuration or permissions.
    echo.
    pause >nul
    exit /b
)

:: Display success message after spoofing is completed.
cls
echo *** Success! ***
echo.
echo Spoofing completed successfully.
echo Your system files have been spoofed.
echo.
echo Thank you for using Clavish tools.
echo Join us at discord.gg/clavish for more updates and tools.
echo.
pause >nul
exit /b
