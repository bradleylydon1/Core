:: Deletes all files in the current directory with prompts and warnings.
:: Folder, Hidden, System, and Read-Only files are NOT affected.
@echo off
cd /d "%~dp0"
title CleanDirectory%~x0
color 0f
:AA
cls
set p=
set /p p="Directory Path: "
echo.
del "%p%\*"
start "" "%p%"
pause
goto AA
