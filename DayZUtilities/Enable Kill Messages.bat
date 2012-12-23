@echo off
TITLE Enable Kill Messages
Resources\wget.exe -N --no-check-certificate https://github.com/Stapo/DayZ-Private-Server-Lite-Kill-Messages/blob/master/Chernarus/dayz_server.pbo?raw=true
move /y dayz_server.pbo ../@hive/Addons/
cls
echo.
echo Kill Messages Enabled!
echo.
pause