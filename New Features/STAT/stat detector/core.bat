@echo off
color 0b
title UMBRELLA-STAT DETECTOR-1
del /F /Q %windir%\umbrstatconf.inf
cls
echo 0 >%windir%\umbrstatconf.inf
echo enter on and off
:a
set/p "IPT="
if %IPT%==on goto 1
if %ipt%==off goto 2
goto a
:1
echo SYSTEM on
echo 1 >%windir%\umbrstatconf.inf
goto a
:2
echo SYSTEM off
echo 0 >%windir%\umbrstatconf.inf
goto a

