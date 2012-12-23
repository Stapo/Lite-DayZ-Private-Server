@echo off
TITLE Disable Kill Messages
Resources\wget.exe -N --no-check-certificate https://github.com/Stapo/DayZ-Private-Server-Lite/blob/master/@hive/AddOns/dayz_server.pbo?raw=true
move /y dayz_server.pbo ../@hive/Addons/
cls
echo.
echo Kill Messages Disabled!
echo.
pause