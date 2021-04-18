:: Deletes all files in the current directory with prompts and warnings ::
:: Hidden, System, and Read-Only files are NOT affected ::
:1
@echo off
cd /d "%~dp0"
set ext=%~x0
title CleanDirectory%ext%
color 0f
set /p drive="Drive Letter: "
%drive%:
set /p dirpath="Directory Path: "
cd %dirpath%
echo.
DEL . DR
start %cd%
goto 1