@echo off
TITLE Optional Kill Messages
goto menu

:menu
echo Do You Want Kill Messages Enabled?
set /P killmsgs=Y or N: 
if "%killmsgs%"=="Y" goto enable
if "%killmsgs%"=="N" goto disable
goto menu

:enable
Resources\wget.exe -N --no-check-certificate https://github.com/Stapo/DayZ-Private-Server-Lite-Kill-Messages/blob/master/Chernarus/dayz_server.pbo?raw=true
move /y dayz_server.pbo ../@hive/Addons/
cls
echo.
echo Kill Messages Enabled!
echo.
pause
exit

:disable
Resources\wget.exe -N --no-check-certificate https://github.com/Stapo/DayZ-Private-Server-Lite/blob/master/@hive/AddOns/dayz_server.pbo?raw=true
move /y dayz_server.pbo ../@hive/Addons/
cls
echo.
echo Kill Messages Disabled!
echo.
pause
exit