@echo off

call conda activate aigc
python main.py --windows-standalone-build --listen
pause
