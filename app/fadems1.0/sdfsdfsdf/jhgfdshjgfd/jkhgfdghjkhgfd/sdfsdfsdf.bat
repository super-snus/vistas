:: fadems
::
:: vistas entertament
:: discord: https://discord.gg/7MDhwczk
@echo off
mode con: cols=102 lines=23
ConShowCursor /hide
ping www.msftncsi.com -n 1 >nul&&goto start||goto no-wi-fi
:start
color 0f
title fadems
SetLocal EnableDelayedExpansion

Insertbmp /p:"bmp\nul.bmp" /x:0 /y:0 /z:100
Insertbmp /p:"bmp\loa.bmp" /x:300 /y:40 /z:100
Insertbmp /p:"bmp\msg-sites.bmp" /x:200 /y:320 /z:100
if exist siteLOAD.txt (
del siteLOAD.txt
)
if exist temp (
rd /s /q temp
)
md temp

(echo https://tinyurl.com/2n5r4xu6)>"siteLOAD.txt"
start Brp 

:y
if exist temp\site.zip ( 
7z.exe e temp\site.zip -o"Temp\">nul
del /q temp\site.zip
Insertbmp /p:"bmp\poi.bmp" /x:0 /y:0 /z:100
Insertbmp /p:"bmp\br128-128.bmp" /x:380 /y:160 /z:100
cls     
goto f              
)                   
goto y
:f
cls
Insertbmp /p:"bmp\poi.bmp" /x:0 /y:0 /z:100
Insertbmp /p:"bmp\br128-128.bmp" /x:380 /y:160 /z:100
Batbox /g 2 1 /c 0xf0 /d "url:"
set /p url=
cls
color 0f
if %url%== sites (
for /f "usebackq tokens=*" %%a in ("temp\con1.txt") do (echo %%~a)
echo press any key...
pause>nul
goto f
)
set /a c=0
set /p config=<temp\config.txt
set /a conf=%config%+1
for /f "UseBackQ Delims=" %%A IN ("temp\con1.txt") do (
	set /a c+=1
	if %%A == !url! (
	goto purl
	)
	if !c!==%conf% (
	Insertbmp /p:"bmp\nul.bmp" /x:0 /y:0 /z:100
	Insertbmp /p:"bmp\site-not-found.bmp" /x:375 /y:135 /z:100
	pause>nul
	color 0f
	goto f
	)
)
:x
Insertbmp /p:"bmp\nul.bmp" /x:0 /y:0 /z:100
Insertbmp /p:"bmp\load.bmp" /x:300 /y:60 /z:100
(echo !u!)>"siteLOAD.txt"
start Brp 
:x1
if exist temp/site.zip ( 
7z.exe e temp\site.zip -o"Temp\">nul
for /l %%b in (1,1,40) do echo ......................................................................................................
cls
call temp\site.bat
)
goto x1
:purl
set /a b=0
for /f "UseBackQ Delims=" %%B IN ("temp\con2.txt") do (
  set /a b+=1
  if !b!==!c! (
  set u=%%B
  goto x
  )
)
:no-wi-fi
Insertbmp /p:"bmp\nul.bmp" /x:0 /y:0 /z:100
Insertbmp /p:"bmp\no-wi-fi.bmp" /x:375 /y:135 /z:100
pause>nul
exit