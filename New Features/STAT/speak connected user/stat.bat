@echo off
color 0b
title UMBRELLA-SERVER : STATUS
setLocal EnableDelayedExpansion
echo 0 >info.inf
echo 0 >info2.inf
:STAT
for /f %%s in (%windir%\umbrstatconf.inf) do (
IF "%%s"=="1" GOTO SERON
IF "%%s"=="0" GOTO SEROFF
)
GOTO stat
:SERON
set a=0
cmd /c netsh wlan show hostednetwork | findstr -i "Number" >info.inf
for /f "tokens=1 skip=1 delims=*" %%a in (info.inf) do (
echo %%a >info.inf
)
for /f "tokens=5" %%i in (info.inf) do (
echo %%i >info.inf
set a=%%i
)
for /f %%y in (info.inf) do (
set CNP1=%%y
)
for /f %%x in (info2.inf) do (
set CNP2=%%x
)
if "%CNP1%"=="%CNP2%" goto loop
for /f %%f in (info.inf) do (
echo %%f >info2.inf
)
echo ' > "CONUSR.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "CONUSR.vbs"
echo speech.speak " %a% Users Connected to UMBRELLA-SERVER " >> "CONUSR.vbs"
start /wait CONUSR.vbs
del /F /Q CONUSR.vbs
:loop
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
echo          #    # #     # ####  ####  ##### #     #       ##
echo          #    # ##   ## #   # #   # #     #     #      #  #
echo          #    # # # # # ####  ####  ##### #     #     ######
echo          #    # #  #  # #   # #  #  #     #     #     #    #
echo           ####  #     # ####  #   # ##### ##### ##### #    #-SERVER
echo.
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
netsh wlan show hostednetwork > %windir%\statumbrella.inf
del /F /Q %windir%\statumbrellaprc.inf
for /f "skip=12 delims=*" %%a in (%windir%\statumbrella.inf) do (
echo %%a>>%windir%\statumbrellaprc.inf
)
echo     Status                 : Connected.
type %windir%\statumbrellaprc.inf
echo.
timeout /t 3 /nobreak > nul
goto STAT
:SEROFF
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
echo          #    # #     # ####  ####  ##### #     #       ##
echo          #    # ##   ## #   # #   # #     #     #      #  #
echo          #    # # # # # ####  ####  ##### #     #     ######
echo          #    # #  #  # #   # #  #  #     #     #     #    #
echo           ####  #     # ####  #   # ##### ##### ##### #    #-SERVER
echo.
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
echo     Status                 : Disconnected.
echo     BSSID                  : -
echo     Radio type             : -
echo     Channel                : -
echo     Number of clients      : -
echo.
timeout /t 3 /nobreak > nul
GOTO STAT