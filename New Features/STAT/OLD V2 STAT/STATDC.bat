@echo off
color 0b
title UMBRELLA-SERVER : STATUS
setLocal EnableDelayedExpansion
:rep
cls
echo �������������������������������������������������������������������������������� 
echo          #    # #     # ####  ####  ##### #     #       ##
echo          #    # ##   ## #   # #   # #     #     #      #  #
echo          #    # # # # # ####  ####  ##### #     #     ######
echo          #    # #  #  # #   # #  #  #     #     #     #    #
echo           ####  #     # ####  #   # ##### ##### ##### #    #-SERVER
echo.
echo ��������������������������������������������������������������������������������
echo Status                     : Disconnected.
echo     BSSID                  : -
echo     Radio type             : -
echo     Channel                : -
echo     Number of clients      : -
echo.
)
timeout /t 3 /nobreak > nul
cls
goto REP