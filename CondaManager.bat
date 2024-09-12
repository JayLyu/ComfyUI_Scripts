@echo off
setlocal

:MENU
cls
echo =============================
echo  ComfyUI Conda Manager(beta)
echo =============================
echo 1. Download and Install Miniconda
echo 2. Create a virtual environment named "aigc"
echo 3. Delete the virtual environment named "aigc"
echo 4. Exit
echo ========================
set /p option="Please enter an option (1-4): "

if "%option%"=="1" goto DOWNLOAD_INSTALL
if "%option%"=="2" goto CREATE_ENV
if "%option%"=="3" goto DELETE_ENV
if "%option%"=="4" exit
goto MENU

:DOWNLOAD_INSTALL
echo Downloading Miniconda installer...
set "miniconda_installer=miniconda3-latest-Windows-x86_64.exe"
set "download_url=https://repo.anaconda.com/miniconda/%miniconda_installer%"

curl -LO %download_url%

echo Installing Miniconda, please wait...
start /wait %miniconda_installer% /InstallationType=JustMe /AddToPath=1 /RegisterPython=1

echo Installation complete!
pause
goto MENU

:CREATE_ENV
echo Creating virtual environment "aigc"...
conda create -n aigc python=3.10 --yes

echo Virtual environment "aigc" created!
pause
goto MENU

:DELETE_ENV
echo Deleting virtual environment "aigc"...
conda remove -n aigc --all --yes

echo Virtual environment "aigc" deleted!
pause
goto MENU
