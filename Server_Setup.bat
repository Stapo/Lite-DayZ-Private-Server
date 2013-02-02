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
if "%mod%"=="tavianaeu" goto DayZTaviana_eu
if "%mod%"=="isladuala" goto DayZIsladuala
if "%mod%"=="thirsk" goto DayZThirsk
if "%mod%"=="thirskwinter" goto DayZThirsk_Winter
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

:DayZTaviana_eu
cls
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Keys/DayzTavianaDZL.bikey
move /Y DayzTavianaDZL.bikey Keys
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Config/Config.pbo
Resources\cpbo.exe -Y -E Config.pbo Config_DayZTaviana-eu > NUL
del Config.pbo
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Schema/Tables.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Tables.sql
del Tables.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Schema/Functions.sql
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% < Functions.sql
del Functions.sql
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Mission/dayz_1.tavi.pbo
move /Y dayz_1.tavi.pbo MPMissions
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

:Extras_Selection
cls
echo.
set /P extra=Extra Code: 
if "%extra%"=="none" goto Extras_None
if "%extra%"=="carepkgs" goto Extras_Carepkgs
if "%extra%"=="wrecks" goto Extras_Wrecks
if "%extra%"=="carepkgsandwrecks" goto Extras_Carepkgs_Wrecks
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
if exist Config_DayZTaviana-eu (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Extras/None.pbo
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
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZTaviana-eu (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Extras/Carepkgs.pbo
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
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZTaviana-eu (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Extras/Wrecks.pbo
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
Resources\cpbo.exe -Y -E Wrecks.pbo @Server > NUL
del Wrecks.pbo
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
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZ2017/Extras/None.pbo
Resources\cpbo.exe -Y -E None.pbo @Server > NUL
del None.pbo
goto Finish
)
if exist Config_DayZTaviana-eu (
Resources\wget.exe -N --quiet --no-check-certificate https://github.com/Stapo/Lite-Repo/raw/master/Mods/DayZTaviana-eu/Extras/Carepkgs_Wrecks.pbo
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
Resources\cpbo.exe -Y -E Carepkgs_Wrecks.pbo @Server > NUL
del Carepkgs_Wrecks.pbo
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
if exist Config_DayZTaviana-eu (
set modconfig=DayZTaviana-eu
set clientmod=@DayZTaviana
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

goto Server_Start

:Server_Start
Resources\mysql.exe --user=%mysqluser% --password=%mysqlpass% --host=127.0.0.1 --port=3306 --database=%mysqldb% --execute="call pMain()"
start .\Expansion\beta\arma2oaserver.exe -port=2302 -mod=%clientmod%;@Server -name=DayZ -config=Config_%modconfig%\ServerSettings.cfg -cfg=Config_%modconfig%\Arma2Config.cfg -profiles=Config_%modconfig%
exit