@echo off
TITLE Clear Server Logs
cd ..\DayZConfig\
del arma2oaserver.RPT
del HiveExt.log
del server_console.log
cd BattlEye
del addbackpackcargo.log
del addmagazinecargo.log
del addweaponcargo.log
del attachto.log
del createvehicle.log
del deleteVehicle.log
del mpeventhandler.log
del publicvariable.log
del publicvariableval.log
del publicvariablevar.log
del remotecontrol.log
del remoteexec.log
del scripts.log
del selectplayer.log
del setdamage.log
del setpos.log
del setvariable.log
del setvariableval.log
del teamswitch.log
cls
echo.
echo Server Logs Successfully Cleared!
echo.
pause