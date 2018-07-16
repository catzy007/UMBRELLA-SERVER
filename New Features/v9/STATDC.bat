@echo off
color 0b
title UMBRELLA-SERVER : STATUS
setLocal EnableDelayedExpansion
:rep
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様 
echo          #    # #     # ####  ####  ##### #     #       ##
echo          #    # ##   ## #   # #   # #     #     #      #  #
echo          #    # # # # # ####  ####  ##### #     #     ######
echo          #    # #  #  # #   # #  #  #     #     #     #    #
echo           ####  #     # ####  #   # ##### ##### ##### #    # SERVER.
echo.
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
del /F /Q %windir%\pngumbrella.inf
ping www.google.com -n 1 -l 32 >%windir%\pngumbrella.inf
for /f "skip=2 delims=" %%d in (%windir%\pngumbrella.inf) do (
echo %%d>>%windir%\pngumbrella.inf
)
for /f "tokens=* delims= " %%a in (%windir%\pngumbrella.inf) do (
set var4=!var3!
set var3=!var2!
set var2=!var1!
set var1=!var!
set var=%%a
)
echo Status                     : Disconnected.
echo     Net ping result        : %VAR4:~12,99%
echo     BSSID                  : -
echo     Radio type             : -
echo     Channel                : -
echo     Number of clients      : -
echo.
)
timeout /t 3 /nobreak > nul
cls
goto REP