@echo off
TITLE Lite DayZ Private Server: Server Setup
goto MySQL_Login

:MySQL_Login
cls
echo.
echo MySQL Login Information
echo.
echo.
set mysqluser=
set /P mysqluser=Username: 
echo.
set mysqlpass=
set /P mysqlpass=Password: 
echo.
set mysqldb=
set /P mysqldb=Database: 
echo.
goto Folder_Check

:Folder_Check
if not exist MPMissions md MPMissions
if not exist Keys md Keys
goto Mod_Selection

:Mod_Selection
cls
echo.
set /P mod=Mod Code: 
if "%mod%"=="chernarus" goto DayZChernarus
if "%mod%"=="namalsk" goto DayZNamalsk
if "%mod%"=="plus" goto DayZPlus
if "%mod%"=="2017" goto DayZ2017
if "%mod%"=="sahrani" goto DayZSahrani
if "%mod%"=="isladuala" goto DayZIsladuala
if "%mod%"=="thirsk" goto DayZThirsk
if "%mod%"=="thirskwinter" goto DayZThirsk_Winter
if "%mod%"=="lingor" goto DayZLingor
if "%mod%"=="celle" goto DayZCelle
if "%mod%"=="fallujah" goto DayZFallujah
if "%mod%"=="panthera" goto DayZPanthera
if "%mod%"=="takistan" goto DayZTakistan
if "%mod%"=="utes" goto DayZUtes
if "%mod%"=="zargabad" goto DayZZargabad
if "%mod%"=="oring" goto DayZOring
if "%mod%"=="lingorskaro" goto DayZLingor_Skaro
goto Mod_Error

:Mod_Error
cls
echo.
echo Invalid Mod Code, Press Any Key To Enter Another One...
pause > NUL
goto Mod_Selection

:DayZChernarus
cls
set modname=DayZChernarus
set clientmod=@DayZ
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/dayz.bikey
move /Y dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Mod_Downloader

:DayZNamalsk
cls
set modname=DayZNamalsk
set clientmod=@DayZ;@DayZ_Namalsk
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/dayz.bikey
move /Y dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/nst.bikey
move /Y nst.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/blob/master/Mods/%modname%/Mission/dayz_1.namalsk.pbo
move /Y dayz_1.namalsk.pbo MPMissions
goto Mod_Downloader

:DayZPlus
cls
set modname=DayZPlus
set clientmod=@DayZ+
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/Keys.pbo
Resources\cpbo.exe -Y -E Keys.pbo ./Keys/ > NUL
del Keys.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Mod_Downloader

:DayZ2017
cls
set modname=DayZ2017
set clientmod=@DayZ2017
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/shinkicker.bikey
move /Y shinkicker.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Mod_Downloader

:DayZSahrani
cls
set modname=DayZSahrani
set clientmod=@DayZ_Sahrani
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/v2caa1.bikey
move /Y v2caa1.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/dayzsarav2.bikey
move /Y dayzsarav2.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.sara.pbo
move /Y dayz_1.sara.pbo MPMissions
goto Mod_Downloader

:DayZIsladuala
cls
set modname=DayZIsladuala
set clientmod=@DayZIsladuala
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/brg.bikey
move /Y brg.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/ibr.bikey
move /Y ibr.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/ibr_duala195.bikey
move /Y ibr_duala195.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/pwnoz0r.dayz.bikey
move /Y pwnoz0r.dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.isladuala.pbo
move /Y dayz_1.isladuala.pbo MPMissions
goto Mod_Downloader

:DayZThirsk
cls
set modname=DayZThirsk
set clientmod=@DayZThirsk
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/Stapo.bikey
move /Y Stapo.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.thirsk.pbo
move /Y dayz_1.thirsk.pbo MPMissions
goto Mod_Downloader

:DayZThirsk_Winter
cls
set modname=DayZThirsk-Winter
set clientmod=@DayZThirsk
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/Stapo.bikey
move /Y Stapo.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.thirskw.pbo
move /Y dayz_1.thirskw.pbo MPMissions
goto Mod_Downloader

:DayZLingor
cls
set modname=DayZLingor
set clientmod=@DayZLingor
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_lingor.bikey
move /Y vilayer_lingor.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.lingor.pbo
move /Y dayz_1.lingor.pbo MPMissions
goto Mod_Downloader

:DayZCelle
cls
set modname=DayZCelle
set clientmod=@DayZ_Celle;@MBG_Celle
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/dayz.bikey
move /Y dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/MBG_B3.bikey
move /Y MBG_B3.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/mbg_celle2.bikey
move /Y mbg_celle2.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/shinkicker.bikey
move /Y shinkicker.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.mbg_celle2.pbo
move /Y dayz_1.mbg_celle2.pbo MPMissions
goto Mod_Downloader

:DayZFallujah
cls
set modname=DayZFallujah
set clientmod=@DayZFallujah
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_fallujah.bikey
move /Y vilayer_fallujah.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.fallujah.pbo
move /Y dayz_1.fallujah.pbo MPMissions
goto Mod_Downloader

:DayZPanthera
cls
set modname=DayZPanthera
set clientmod=@DayZPanthera
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_panthera.bikey
move /Y vilayer_panthera.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.panthera2.pbo
move /Y dayz_1.panthera2.pbo MPMissions
goto Mod_Downloader

:DayZTakistan
cls
set modname=DayZTakistan
set clientmod=@DayZTakistan
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_takistan.bikey
move /Y vilayer_takistan.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.takistan.pbo
move /Y dayz_1.takistan.pbo MPMissions
goto Mod_Downloader

:DayZUtes
cls
set modname=DayZUtes
set clientmod=@DayZUtes
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_utes.bikey
move /Y vilayer_utes.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.utes.pbo
move /Y dayz_1.utes.pbo MPMissions
goto Mod_Downloader

:DayZZargabad
cls
set modname=DayZZargabad
set clientmod=@DayZZargabad
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/vilayer_zargabad.bikey
move /Y vilayer_zargabad.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.zargabad.pbo
move /Y dayz_1.zargabad.pbo MPMissions
goto Mod_Downloader

:DayZOring
cls
set modname=DayZOring
set clientmod=@DayZ_Oring
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/finest.bikey
move /Y finest.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/FRAN.bikey
move /Y FRAN.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.oring.pbo
move /Y dayz_1.oring.pbo MPMissions
goto Mod_Downloader

:DayZLingor_Skaro
cls
set modname=DayZLingor-Skaro
set clientmod=@DayZLingorSkaro
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Keys/skaronator.bikey
move /Y skaronator.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Mission/dayz_1.lingor.pbo
move /Y dayz_1.lingor.pbo MPMissions
goto Mod_Downloader

:Mod_Downloader
if exist Config_%modname% del Config_%modname%
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_%modname% > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
goto Extras_Selection

:Extras_Selection
cls
if exist @Server del @Server
echo.
set /P extra=Extra Code: 
if "%extra%"=="none" goto Extras_None
if "%extra%"=="carepkgs" goto Extras_Carepkgs
if "%extra%"=="wrecks" goto Extras_Wrecks
if "%extra%"=="killmsgs" goto Extras_Killmsgs
if "%extra%"=="combo1" goto Extras_Carepkgs_Wrecks
if "%extra%"=="combo2" goto Extras_Carepkgs_Killmsgs
if "%extra%"=="combo3" goto Extras_Wrecks_Killmsgs
if "%extra%"=="combo4" goto Extras_Carepkgs_Wrecks_Killmsgs
goto Extras_Error

:Extras_Error
cls
echo.
echo Invalid Extra Code, Press Any Key To Enter Another One...
pause > NUL
goto Extras_Selection

:Extras_None
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish

:Extras_Carepkgs
cls
if exist Config_%modname% (
echo DayZ+ does not support Care Packages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Care Packages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Carepkgs.pbo
Resources\cpbo.exe -Y -E Carepkgs.pbo @Server_%modname% > NUL
del Carepkgs.pbo
goto Finish

:Extras_Wrecks
cls
if exist Config_%modname% (
echo DayZ+ does not support Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Wrecks.pbo
Resources\cpbo.exe -Y -E Wrecks.pbo @Server_%modname% > NUL
del Wrecks.pbo
goto Finish

:Extras_Killmsgs
cls
if exist Config_%modname% (
echo DayZ+ does not support Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Killmsgs.pbo
Resources\cpbo.exe -Y -E Killmsgs.pbo @Server_%modname% > NUL
del Killmsgs.pbo
goto Finish

:Extras_Carepkgs_Wrecks
cls
if exist Config_%modname% (
echo DayZ+ does not support Care Packages and Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Care Packages and Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Carepkgs_Wrecks.pbo
Resources\cpbo.exe -Y -E Carepkgs_Wrecks.pbo @Server_%modname% > NUL
del Carepkgs_Wrecks.pbo
goto Finish

:Extras_Carepkgs_Killmsgs
cls
if exist Config_%modname% (
echo DayZ+ does not support Care Packages and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Care Packages and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Carepkgs_Killmsgs.pbo
Resources\cpbo.exe -Y -E Carepkgs_Killmsgs.pbo @Server_%modname% > NUL
del Carepkgs_Killmsgs.pbo
goto Finish

:Extras_Wrecks_Killmsgs
cls
if exist Config_%modname% (
echo DayZ+ does not support Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Wrecks_Killmsgs.pbo
Resources\cpbo.exe -Y -E Wrecks_Killmsgs.pbo @Server_%modname% > NUL
del Wrecks_Killmsgs.pbo
goto Finish

:Extras_Carepkgs_Wrecks_Killmsgs
cls
if exist Config_%modname% (
echo DayZ+ does not support Care Packages , Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server_%modname% > NUL
del None.pbo
goto Finish
)
if exist Config_%modname% (
echo DayZ2017 does not support Care Packages , Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E Carepkgs_Wrecks_Killmsgs.pbo @Server_%modname% > NUL
del Carepkgs_Wrecks_Killmsgs.pbo
goto Finish
)
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/%modname%/Extras/Carepkgs_Wrecks_Killmsgs.pbo
Resources\cpbo.exe -Y -E Carepkgs_Wrecks_Killmsgs.pbo @Server_%modname% > NUL
del Carepkgs_Wrecks_Killmsgs.pbo
goto Finish

:Finish
cls
echo.
echo Server Setup Complete!
echo.
echo.
pause
if exist Start_%modname%_Server.bat del Start_%modname%_Server.bat
echo @echo off >> Start_%modname%_Server.bat
echo Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% --execute="call pMain()" >> Start_%modname%_Server.bat
echo start .\Expansion\beta\arma2oaserver.exe -port=2302 -mod=%clientmod%;@Server_%modname% -name=DayZ -config=Config_%modname%\ServerSettings.cfg -cfg=Config_%modname%\Arma2Config.cfg -profiles=Config_%modname% >> Start_%modname%_Server.bat
echo exit >> Start_%modname%_Server.bat
if exist README.md move /Y README.md Resources 
if exist Server_Setup.bat move /Y Server_Setup.bat Resources 
exit