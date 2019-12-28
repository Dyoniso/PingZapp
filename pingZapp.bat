@echo off
set /a num=(%Random% %%9)+1
mode con:cols=50 lines=20
color %num%
:menu1
echo               _         ____              
echo         ___  (____ ___ /_  /___ ____  ___ 
echo        / _ \/ / _ / _ `// // _ `/ _ \/ _ \
echo       / .__/_/_//_\_, //___\_,_/ .__/ .__/
echo      /_/         /___/        /_/  /_/    
echo        insert ipAddresses/link of target
echo.
echo  $1 - Get ipAdderss
echo  $2 - Loop ping
echo  $3 - Open address
echo  $4 - Reload
echo  $5 - Exit
echo  @Dyoniso
:menu
echo.
SET /P M= *pingZapp:
IF %M%==5 GOTO exit
IF %M%==1 GOTO ipfind
IF %M%==2 GOTO loop
IF %M%==3 GOTO address
IF %M%==4 GOTO reload
IF %M%==6 GOTO ipfind3
:ipfind
SET /P P= *pingZapp/link:
IF %P%==exit GOTO reload 
IF %P%==4 GOTO reload 
IF %P%==%P% GOTO ipfind3
:ipfind3
set /a num=(%Random% %%9)+1
color %num%
ping -t www.google.com -n 1
goto ipfind3
:ipfind2
set /a num=(%Random% %%9)+1
color %num%
ping -t %P% -n 1
goto menu
:loop
SET /P L= *pingZapp/loop:
IF %L%==exit GOTO reload 
IF %L%==4 GOTO reload 
IF %L%==%L% GOTO loop2
:loop2
set /a num=(%Random% %%9)+1
color %num%
ping -t %L% -n 1
goto :loop2
:address
SET /P B= *pingZapp/address:
IF %B%==%B% GOTO address2
:address2
set /a num=(%Random% %%9)+1
color %num%
echo Starting link address...
start "" http://%B%
pause
:reload
set /a num=(%Random% %%9)+1
color %num%
cls
goto menu1
pause