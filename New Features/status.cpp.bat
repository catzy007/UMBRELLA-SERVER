@echo off
mode 106,25
color 0b
:STATUS
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
echo  Press Enter to Refresh And 0 to Back to Menu                             UMBRELLA-SERVER Status V7.7314
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
netsh wlan show hostednetwork > %windir%\statumbrella.inf
FIND /C /I "Not started" %windir%\statumbrella.inf > nul
IF ERRORLEVEL 1 goto STATCON
)
:STATDC
echo Status                  : Disconnected.
echo  BSSID                  : -
echo  Radio type             : -
echo  Channel                : -
echo  Number of clients      : -
echo.
set/p "Xt11="
if "%Xt11%"=="0" goto LOPDC
goto STATUS
:STATCON
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (%windir%\statumbrella.inf) do (
set var4=!var3!
set var3=!var2!
set var2=!var1!
set var1=!var!
set var=%%a
)
echo Status                  : Connected.
echo  !var3!
echo  !var2!
echo  !var1!
echo  !var!
echo.
set/p "Xt11="
if "%Xt11%"=="0" goto LOP2
goto STATUS