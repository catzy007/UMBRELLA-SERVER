@echo off
netsh wlan set hostednetwork mode=allow ssid=%%N key=savekpk%pas% > nul
netsh wlan stop hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto ERROR
:suc
echo.
color 0b
echo SUCCES
pause
exit
:ERROR
echo.
color 0C
echo FAIL
pause
exit
