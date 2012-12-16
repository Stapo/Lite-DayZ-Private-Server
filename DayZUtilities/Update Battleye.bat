@echo off
TITLE Update Battleye
Resources\wget.exe -N http://www.battleye.com/downloads/arma2/new/BEClient.dll
Resources\wget.exe -N http://www.battleye.com/downloads/arma2/new/BEServer.dll
move /y BEClient.dll ../DayZConfig/BattlEye/
move /y BEServer.dll ../DayZConfig/BattlEye/
cls
echo.
echo BattleEye Successfully Updated!
echo.
pause