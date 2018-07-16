@echo off
color 0b
title UMBRELLA-SERVER : STATUS
echo 0 >%windir%\umbrstatconf.inf
echo 0 >%windir%\info.inf
echo 0 >%windir%\info2.inf
cls
setLocal EnableDelayedExpansion
:STAT
netsh wlan show hostednetwork > %windir%\umbrstatconf.inf
FIND /C /I "Not started" %windir%\umbrstatconf.inf > nul
IF ERRORLEVEL 1 goto SERON
Goto SEROFF
GOTO stat
:SERON
set a=0
cmd /c netsh wlan show hostednetwork | findstr -i "Number" >%windir%\info.inf
for /f "tokens=1 skip=1 delims=*" %%a in (%windir%\info.inf) do (
echo %%a >%windir%\info.inf
)
for /f "tokens=5" %%i in (%windir%\info.inf) do (
echo %%i >%windir%\info.inf
set a=%%i
)
for /f %%y in (%windir%\info.inf) do (
set CNP1=%%y
)
for /f %%x in (%windir%\info2.inf) do (
set CNP2=%%x
)
if "%CNP1%"=="%CNP2%" goto loop
for /f %%f in (%windir%\info.inf) do (
echo %%f >%windir%\info2.inf
)
echo ' > "%windir%\CONUSR.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%windir%\CONUSR.vbs"
echo speech.speak " %a% Users Connected to UMBRELLA-SERVER " >> "%windir%\CONUSR.vbs"
start /wait %windir%\CONUSR.vbs
del /F /Q %windir%\CONUSR.vbs
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