@echo off 
:setings
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\fon.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"desktop\desktopload\1\Load1.bmp" /x:30 /y:30 /z:35
system\plaginsSys\Insertbmp /p:"desktop\desktopload\2\Load1.bmp" /x:430 /y:30 /z:35
system\plaginsSys\Insertbmp /p:"desktop\desktopload\3\Load1.bmp" /x:30 /y:230 /z:35
system\plaginsSys\Insertbmp /p:"desktop\desktopload\4\Load1.bmp" /x:430 /y:230 /z:35
system\plaginsSys\ConShowCursor /hide
echo покачто вы можите выбрать только обои
system\plaginsSys\GetInput /m 3 1 38 9 48 1 83 9 3 11 38 19 48 11 83 19
if %errorlevel% == 1 (
(echo 1)>"system\system32\setings\setings\desktop.txt"
)
if %errorlevel% == 2 (
(echo 2)>"system\system32\setings\setings\desktop.txt"
)
if %errorlevel% == 3 (
(echo 3)>"system\system32\setings\setings\desktop.txt"
)
if %errorlevel% == 4 (
(echo 4)>"system\system32\setings\setings\desktop.txt"
)
