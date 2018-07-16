@echo off
color 0b
title UMBRELLA-SERVER : STATUS
echo 0 >%windir%\umbrstatconf.inf
cls
setLocal EnableDelayedExpansion
:STAT
netsh wlan show hostednetwork > %windir%\umbrstatconf.inf
FIND /C /I "Not started" %windir%\umbrstatconf.inf > nul
IF ERRORLEVEL 1 goto SERON
Goto SEROFF
GOTO stat
:SERON
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
echo Status                     : Connected.
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
echo Status                     : Disconnected.
echo     BSSID                  : -
echo     Radio type             : -
echo     Channel                : -
echo     Number of clients      : -
echo.
timeout /t 3 /nobreak > nul
GOTO STAT