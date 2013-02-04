@echo off
TITLE DayZ Private Server Lite: Server Setup
goto Login

:Login
cls
echo.
echo.
echo MySQL Login Information
echo.
echo.
set /P mysqluser=Username: 
echo. 
set /P mysqlpass=Password: 
echo.
set /P mysqldb=Database: 
echo.
if exist @Server (
goto Server_Start_Mods
)
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
goto DayZChernarus

:DayZChernarus
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Keys/dayz.bikey
move /Y dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZChernarus > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Extras_Selection

:DayZNamalsk
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Keys/dayz.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Keys/nst.bikey
move /Y dayz.bikey Keys
move /Y nst.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZNamalsk > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/blob/master/Mods/DayZNamalsk/Mission/dayz_1.namalsk.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Extras_Selection

:DayZPlus
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Keys/Keys.pbo
Resources\cpbo.exe -Y -E Keys.pbo ./Keys/ > NUL
del Keys.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZPlus > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Extras_Selection

:DayZ2017
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Keys/shinkicker.bikey
move /Y shinkicker.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZ2017 > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Mission/dayz_1.Chernarus.pbo
move /Y dayz_1.Chernarus.pbo MPMissions
goto Extras_Selection

:DayZSahrani
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Keys/caa1v2.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Keys/dayzsara.bikey
move /Y caa1v2.bikey Keys
move /Y dayzsara.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZSahrani > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Mission/dayz_1.sara.pbo
move /Y dayz_1.sara.pbo MPMissions
goto Extras_Selection

:DayZIsladuala
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Keys/brg.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Keys/ibr.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Keys/ibr_duala195.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Keys/pwnoz0r.dayz.bikey
move /Y brg.bikey Keys
move /Y ibr.bikey Keys
move /Y ibr_duala195.bikey Keys
move /Y pwnoz0r.dayz.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZIsladuala > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Mission/dayz_1.isladuala.pbo
move /Y dayz_1.isladuala.pbo MPMissions
goto Extras_Selection

:DayZThirsk
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Keys/Stapo.bikey
move /Y Stapo.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZThirsk > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Mission/dayz_1.thirsk.pbo
move /Y dayz_1.thirsk.pbo MPMissions
goto Extras_Selection

:DayZThirsk_Winter
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Keys/Stapo.bikey
move /Y Stapo.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZThirsk-Winter > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Mission/dayz_1.thirskw.pbo
move /Y dayz_1.thirskw.pbo MPMissions
goto Extras_Selection

:DayZLingor
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Keys/vilayer_lingor.bikey
move /Y vilayer_lingor.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZLingor > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Mission/dayz_1.lingor.pbo
move /Y dayz_1.lingor.pbo MPMissions
goto Extras_Selection

:DayZCelle
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Keys/dayz.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Keys/MBG_B3.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Keys/mbg_celle2.bikey
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Keys/shinkicker.bikey
move /Y dayz.bikey Keys
move /Y MBG_B3.bikey Keys
move /Y mbg_celle2.bikey Keys
move /Y shinkicker.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZCelle > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Mission/dayz_1.mbg_celle2.pbo
move /Y dayz_1.mbg_celle2.pbo MPMissions
goto Extras_Selection

:DayZFallujah
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Keys/vilayer_fallujah.bikey
move /Y vilayer_fallujah.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZFallujah > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Mission/dayz_1.fallujah.pbo
move /Y dayz_1.fallujah.pbo MPMissions
goto Extras_Selection

:DayZPanthera
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Keys/vilayer_panthera.bikey
move /Y vilayer_panthera.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZPanthera > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Mission/dayz_1.panthera2.pbo
move /Y dayz_1.panthera2.pbo MPMissions
goto Extras_Selection

:DayZTakistan
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Keys/vilayer_takistan.bikey
move /Y vilayer_takistan.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZTakistan > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Mission/dayz_1.takistan.pbo
move /Y dayz_1.takistan.pbo MPMissions
goto Extras_Selection

:DayZUtes
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Keys/vilayer_utes.bikey
move /Y vilayer_utes.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZUtes > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Mission/dayz_1.utes.pbo
move /Y dayz_1.utes.pbo MPMissions
goto Extras_Selection

:DayZZargabad
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Keys/vilayer_zargabad.bikey
move /Y vilayer_zargabad.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZZargabad > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Mission/dayz_1.zargabad.pbo
move /Y dayz_1.zargabad.pbo MPMissions
goto Extras_Selection

:Extras_Selection
cls
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

goto Extras_None

:Extras_None
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/None.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/None.pbo
)
if exist Config_DayZPlus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
)
if exist Config_DayZ2017 (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/None.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/None.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/None.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/None.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/None.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/None.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/None.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/None.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/None.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/None.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/None.pbo
)
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish

:Extras_Carepkgs
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Carepkgs.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Carepkgs.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Care Packages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Care Packages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Carepkgs.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Carepkgs.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Carepkgs.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Carepkgs.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Carepkgs.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Carepkgs.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Carepkgs.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Carepkgs.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Carepkgs.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Carepkgs.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Carepkgs.pbo
)
Resources\cpbo.exe -Y -E Carepkgs.pbo @Server > NUL
del Carepkgs.pbo
goto Finish

:Extras_Wrecks
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Wrecks.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Wrecks.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Wrecks.pbo
goto Finish
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Wrecks.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Wrecks.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Wrecks.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Wrecks.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Wrecks.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Wrecks.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Wrecks.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Wrecks.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Wrecks.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Wrecks.pbo
)
Resources\cpbo.exe -Y -E Wrecks.pbo @Server > NUL
del Wrecks.pbo
goto Finish

:Extras_Killmsgs
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Killmsgs.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Killmsgs.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Killmsgs.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Killmsgs.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Killmsgs.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Killmsgs.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Killmsgs.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Killmsgs.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Killmsgs.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Killmsgs.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Killmsgs.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Killmsgs.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Killmsgs.pbo
)
Resources\cpbo.exe -Y -E Killmsgs.pbo @Server > NUL
del Killmsgs.pbo
goto Finish

:Extras_Carepkgs_Wrecks
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Care Packages and Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Care Packages and Wrecks, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Carepkgs_Wrecks.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Carepkgs_Wrecks.pbo
)
Resources\cpbo.exe -Y -E Carepkgs_Wrecks.pbo @Server > NUL
del Carepkgs_Wrecks.pbo
goto Finish

:Extras_Carepkgs_Killmsgs
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Care Packages and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Care Packages and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Carepkgs_Killmsgs.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Carepkgs_Killmsgs.pbo
)
Resources\cpbo.exe -Y -E Carepkgs_Killmsgs.pbo @Server > NUL
del Carepkgs_Killmsgs.pbo
goto Finish

:Extras_Wrecks_Killmsgs
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Wrecks_Killmsgs.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Wrecks_Killmsgs.pbo
)
Resources\cpbo.exe -Y -E Wrecks_Killmsgs.pbo @Server > NUL
del Wrecks_Killmsgs.pbo
goto Finish

:Extras_Carepkgs_Wrecks_Killmsgs
cls
if exist Config_DayZChernarus (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZChernarus/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZNamalsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZNamalsk/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZPlus (
echo DayZ+ does not support Care Packages , Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPlus/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZ2017 (
echo DayZ2017 does not support Care Packages , Wrecks and Kill Messages, Server will now continue building as normal.
echo.
echo.
pause
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E Carepkgs_Wrecks_Killmsgs.pbo @Server > NUL
del Carepkgs_Wrecks_Killmsgs.pbo
goto Finish
)
if exist Config_DayZSahrani (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZSahrani/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZIsladuala (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZIsladuala/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZThirsk (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZThirsk-Winter (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZThirsk-Winter/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZLingor (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZLingor/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZCelle (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZCelle/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZFallujah (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZFallujah/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZPanthera (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZPanthera/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZTakistan (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTakistan/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZUtes (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZUtes/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
if exist Config_DayZZargabad (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZZargabad/Extras/Carepkgs_Wrecks_Killmsgs.pbo
)
Resources\cpbo.exe -Y -E Carepkgs_Wrecks_Killmsgs.pbo @Server > NUL
del Carepkgs_Wrecks_Killmsgs.pbo
goto Finish

:Finish
cls
echo.
echo Server Setup Complete!
echo.
echo.
pause
ren Server_Setup.bat Start_Server.bat
exit

:Server_Start_Mods
cls
TITLE DayZ Private Server Lite: Start Server
if exist Config_DayZChernarus (
set modconfig=DayZChernarus
set clientmod=@DayZ
)
if exist Config_DayZNamalsk (
set modconfig=DayZNamalsk
set clientmod=@DayZ;@DayZ_Namalsk
)
if exist Config_DayZPlus (
set modconfig=DayZPlus
set clientmod=@DayZ+
)
if exist Config_DayZ2017 (
set modconfig=DayZ2017
set clientmod=@DayZ2017
)
if exist Config_DayZSahrani (
set modconfig=DayZSahrani
set clientmod=@DayZ_Sahrani;@caa1
)
if exist Config_DayZIsladuala (
set modconfig=DayZIsladuala
set clientmod=@DayZIsladuala
)
if exist Config_DayZThirsk (
set modconfig=DayZThirsk
set clientmod=@DayZThirsk
)
if exist Config_DayZThirsk-Winter (
set modconfig=DayZThirsk-Winter
set clientmod=@DayZThirsk
)
if exist Config_DayZLingor (
set modconfig=DayZLingor
set clientmod=@DayZLingor
)
if exist Config_DayZCelle (
set modconfig=DayZCelle
set clientmod=@DayZ_Celle;@MBG_Celle
)
if exist Config_DayZFallujah (
set modconfig=DayZFallujah
set clientmod=@DayZFallujah
)
if exist Config_DayZPanthera (
set modconfig=DayZPanthera
set clientmod=@DayZPanthera
)
if exist Config_DayZTakistan (
set modconfig=DayZTakistan
set clientmod=@DayZTakistan
)
if exist Config_DayZUtes (
set modconfig=DayZUtes
set clientmod=@DayZUtes
)
if exist Config_DayZZargabad (
set modconfig=DayZZargabad
set clientmod=@DayZZargabad
)

goto Server_Start

:Server_Start
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% --execute="call pMain()"
start .\Expansion\beta\arma2oaserver.exe -port=2302 -mod=%clientmod%;@Server -name=DayZ -config=Config_%modconfig%\ServerSettings.cfg -cfg=Config_%modconfig%\Arma2Config.cfg -profiles=Config_%modconfig%
exit