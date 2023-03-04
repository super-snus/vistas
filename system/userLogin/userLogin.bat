@echo off
set /p ps=<system\user\ps.txt
set /p correctpass=<system\user\pasworld.txt
set /p setingsDesktop=<system\system32\setings\setings\desktop.txt

goto ps%ps%

:ps1
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\%setingsDesktop%\Load1.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"system\userLogin\loginBMP\user.bmp" /x:345 /y:50 /z:100
system\plaginsSys\Batbox /g 41 15 /c 0xf0 /d "set your password:"
set /p pass=
(echo %pass%)>"system\user\pasworld.txt"
(echo 0)>"system\user\ps.txt"
goto exit

:ps0
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\%setingsDesktop%\Load1.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"system\userLogin\loginBMP\user.bmp" /x:345 /y:50 /z:100
system\plaginsSys\Batbox /g 45 15 /c 0xf0 /d "passworld:"
set /p pass=
if not %pass%==%correctpass% (
start system\system32\systemMSG\error
goto ps0
) else (
goto exit
)

:exit