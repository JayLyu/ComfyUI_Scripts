@echo off
setlocal enabledelayedexpansion

:menu
cls
echo Select an action:
echo (1) Install huggingface_hub
echo (2) Set system environment variable HF_ENDPOINT
echo (3) Download a model
set /p choice=Enter your choice: 

if "%choice%"=="1" (
    pip install -U huggingface_hub -i https://pypi.tuna.tsinghua.edu.cn/simple/
    echo huggingface_hub has been installed!
    pause
    goto menu
) else if "%choice%"=="2" (
    set "HF_ENDPOINT=https://hf-mirror.com"
    echo HF_ENDPOINT has been set to !HF_ENDPOINT!
    pause
    goto menu
) else if "%choice%"=="3" (
    set /p model_name=Enter the model name on Hugging Face: 
    set /p model_path=Enter the model storage path: 

    REM Convert backslashes to double backslashes in the model_path
    set "model_path=!model_path:\=\\!"

    huggingface-cli download --resume-download --local-dir-use-symlinks False %model_name% --local-dir !model_path!
    echo Model downloaded to !model_path!
    pause
    goto menu
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
