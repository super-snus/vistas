@echo off
:start
set /p p=example:
set /a o=%p%
echo %o%
goto start