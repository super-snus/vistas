:: Vistas 1.2 beta
::
:: vistas entertament
:: discord: https://discord.gg/7MDhwczk

@echo off
set /p temps=<system\temp\config.txt
set /a use=%temps% + 1
( echo %use%)>"system\temp\config.txt"
( echo %date% %time%)>"system\temp\use%use%.txt"
:startSYS
:: системные загрузки и проверки
mode con: cols=102 lines=23
title Vistas 1.2 beta
system\plaginsSys\ConShowCursor /hide
start system\plaginsSys\examinationPlagins
timeout /t 1 /nobreak>nul
set /p PLAGINfile=<system\plaginsSys\PLAGINload.txt
if %PLAGINfile% == 0 (
set error=plaginNull
goto globalError
)
system\plaginsSys\Insertbmp /p:"desktop\load\fon.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"desktop\load\load-vistas.bmp" /x:300 /y:40 /z:100
::проверка обнавления
ping www.msftncsi.com -n 1 >nul&&goto Au0||goto loadPlagin
:Au0
if exist system\aUpdate (
rd /s /q system\aUpdate
)
md system\aUpdate
start brp
:Au1
if exist system\aUpdate\info.zip (
timeout /t 1 /nobreak>nul
system\plaginsSys\7z.exe e system\aUpdate\info.zip -o"system\aUpdate\">nul
timeout /t 1 /nobreak>nul
) else (
goto Au1 
)
set /p ver=<system\aUpdate\ver.txt
set /p pod=<system\aUpdate\pod.txt

if %ver%==12 (
goto Au2
) else (
call system\aUpdate\dow
)
::проверка поддержки этой версии
:Au2
if %pod%==12pod1 (
goto loadPlagin
) else (
echo ВНИМАНИЕ поддержка этой версии прекратилась
pause
)

:loadPlagin
call system\userLogin\userLogin
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
system\plaginsSys\sound play system\system32\music\startVistas.wav

:desktop
::загрузка картинки рабочево стола
set /p setingsDesktop=<system\system32\setings\setings\desktop.txt
cls
system\plaginsSys\Insertbmp /p:"desktop\desktopload\%setingsDesktop%\Load1.bmp" /x:0 /y:0 /z:100
system\plaginsSys\Insertbmp /p:"desktop\nMenu\load1.bmp" /x:10 /y:400 /z:100
::подгрузка нижнего меню
system\plaginsSys\Insertbmp /p:"desktop\nMenu\ico-vistas.bmp" /x:15 /y:407 /z:50
::system\plaginsSys\Insertbmp /p:"desktop\nMenu\inf\inf.bmp" /x:750 /y:407 /z:50

::загрузка иконок
system\plaginsSys\Insertbmp /p:"app\viplay\ico\Load1.bmp" /x:30 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"app\calc\ico\Load1.bmp" /x:130 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"app\notepad\ico\Load1.bmp" /x:230 /y:30 /z:100
system\plaginsSys\Insertbmp /p:"system\system32\setings\ico\Load1.bmp" /x:330 /y:30 /z:100
::system\plaginsSys\Insertbmp /p:"app\fadems1.0\ico\Load1.bmp" /x:430 /y:30 /z:100
::загрузка кнопок
system\plaginsSys\batbox /g 90 21 /c 0x0f /d "%DATE%"
system\plaginsSys\GetInput /m 3 1 8 4 14 1 19 4 25 1 30 4 36 1 41 4  47 1 52 4 2 20 6 22

::проверка нажатия кнопок
set /a er = %errorlevel%
if %er% == 1 (start app\viplay\viplay )
if %er% == 2 (start app\calc\calc )
if %er% == 3 (start app\notepad\notepad )
if %er% == 4 (call system\system32\setings\setings )
::if %er% == 5 (start app\fadems1.0\fadems.bat /d app\fadems1.0)
if %er% == 6 (goto nMenu )

goto desktop

:nMenu
for /l %%a in (351,-15,125) do (
system\plaginsSys\Insertbmp /p:"desktop\nMenu\load3.bmp" /x:10 /y:%%a /z:100
)


system\plaginsSys\Insertbmp /p:"desktop\nMenu\start-fon.bmp" /x:20 /y:140 /z:150
system\plaginsSys\Insertbmp /p:"desktop\nMenu\shutdown.bmp" /x:27 /y:150 /z:50
system\plaginsSys\Insertbmp /p:"desktop\nMenu\shutdown-pc.bmp" /x:107 /y:150 /z:100
system\plaginsSys\Insertbmp /p:"desktop\nMenu\rebut.bmp" /x:27 /y:230 /z:50
system\plaginsSys\Insertbmp /p:"dnesktop\nMenu\ico-vistas.bmp" /x:15 /y:407 /z:50
system\plaginsSys\GetInput /m 3 7 10 10 3 11 10 14 2 20 6 22 12 7 28 14
set /a er = %errorlevel%
if %er% == 1 (
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
exit
)
if %er% == 2 (
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
goto startSYS
)
if %er% == 4 (
for /l %%a in (1,1,1) do for /l %%b in (1,1,40) do system\plaginsSys\Insertbmp /p:"system\system32\anim\hello\Load00%%b.bmp" /x:0 /y:0 /z:1000
shutdown /s /t 0
exit
)
for /l %%a in (125,15,351) do ( system\plaginsSys\Insertbmp /p:"desktop\nMenu\load2.bmp" /x:10 /y:%%a /z:100 )
goto desktop

:globalError
echo  произошла критическая ошибка
echo  пожалуйста обратитесь к vistas entertament
echo  discord: https://discord.gg/gycr7juRuD
echo  code error: %error%
pause
exit