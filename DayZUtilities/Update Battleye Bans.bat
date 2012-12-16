@echo off
TITLE Update Battleye Bans
Resources\wget.exe -N http://dayz-community-banlist.googlecode.com/git/bans/ban.txt
Resources\wget.exe -N http://dayz-community-banlist.googlecode.com/git/bans/bans.txt
Resources\wget.exe -N http://dayz-community-banlist.googlecode.com/git/bans/dwbans.txt
move /y ban.txt ../DayZConfig/BattlEye/
move /y bans.txt ../DayZConfig/BattlEye/
move /y dwbans.txt ../DayZConfig/BattlEye/
cls
echo.
echo BattleEye Bans Successfully Updated!
echo.
pause
