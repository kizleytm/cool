@echo off
title Recoil Macro Setup
:menu
echo ==================================================
echo                NOXAR.GG Recoil Macro
echo ==================================================
echo Welcome! Please select an option:
echo [1] Install Python 3.10.0
echo [2] Install Recoil Macro Dependencies
echo [3] Check Installed Python Version
echo [4] Exit
echo ==================================================
set /p choice="Enter your choice (1/2/3/4): "

if %choice%==1 goto install_python
if %choice%==2 goto install_dependencies
if %choice%==3 goto check_python
if %choice%==4 goto exit
goto invalid_choice

:install_python
echo Installing Python 3.10.0...
REM Download and run the Python installer
start /wait https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe
echo Please follow the instructions in the installer. Remember to check the box to add Python to PATH.
echo ==================================================
echo [0] Return to Main Menu
set /p back="Enter your choice: "
if %back%==0 goto menu
goto end

:install_dependencies
echo Installing necessary Python packages for the recoil macro...
REM Upgrade pip
python -m pip install --upgrade pip

REM Install the required packages
python -m pip install customtkinter keyboard mouse screeninfo configparser

echo All necessary packages have been installed!
echo ==================================================
echo [0] Return to Main Menu
set /p back="Enter your choice: "
if %back%==0 goto menu
goto end

:check_python
echo Checking installed Python version...
python --version
echo ==================================================
echo [0] Return to Main Menu
set /p back="Enter your choice: "
if %back%==0 goto menu
goto end

:exit
echo Exiting the setup. Thank you!
pause
goto end

:invalid_choice
echo Invalid choice. Please run the script again and select a valid option.
echo ==================================================
echo [0] Return to Main Menu
set /p back="Enter your choice: "
if %back%==0 goto menu
goto end

:end
exit
