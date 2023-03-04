@echo off
set /a s = 0
if exist system\plaginsSys\batbox.exe (set /a s = %s% + 1)
if exist system\plaginsSys\chgcolor.exe (set /a s = %s% + 1)
if exist system\plaginsSys\conshowcursor.exe (set /a s = %s% + 1)
if exist system\plaginsSys\getinput.exe (set /a s = %s% + 1)
if exist system\plaginsSys\insertbmp.exe (set /a s = %s% + 1)
echo %s%
if %s% == 5 (
(Echo 1)>"system\plaginsSys\PLAGINload.txt"
) else (
(Echo 0)>"system\plaginsSys\PLAGINload.txt"
)
exit

