@echo off 
TITLE Backup Database
echo.
echo 	This Batch File Will Backup Your Database Every 30 Minutes,
echo 	The Backup Will Be Located In The Following Directory:
echo 	   "Server Directory\MySQL\Database Backup\hivemind"

:: Source is where the database is located
SET SOURCE="..\MySQL\dayz_data\hivemind"
:: Target is where the backup will be placed
SET TARGET="..\MySQL\Database_Backup\hivemind"

echo.
echo.
echo.
echo.
echo 		Do You Want To Backup Your DayZ Database?
echo.
echo.
echo 			    Yes or No [Y/N]

set /p copy=
if /i %copy%==Y goto Y
exit

:Y
cls
echo.
echo 		When It Says "<NUMBER> File(s) copied",
echo 		That Means The Backup Was Successful.
echo.
echo.
echo 	To Stop This Batch File From Backing Up Your Database,
echo 			Simply Close This Window.
echo.
echo.
echo.
xcopy "%SOURCE%" "%TARGET%" /s /i /q /y

:: Timeout is in seconds (e.g. 600 Seconds = 10 Minutes)
timeout /T 1800 > nul
for /L %%N IN (1, 1, 1) DO goto Y