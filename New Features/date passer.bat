@echo off
cls
if EXIST "%windir%\umbrella.inf" goto skipstep1
:NAMEUMBR

echo %date:~4,13% >%windir%\umbrdated.inf
echo %date:~4,13% >%windir%\umbrdate.inf

hostname >%windir%\umbrella.inf
for /f %%o in (%windir%\umbrella.inf) do (
echo UMBRELLA@%%o >%windir%\umbrella.inf
)
:skipstep1
:SERON
:SERRE
echo %date:~4,13% >%windir%\umbrdate.inf
for /f %%d in (%windir%\umbrdate.inf) do (
for /f %%f in (%windir%\umbrdated.inf) do (
IF "%%f"=="%%d" GOTO DTEPSD
))
Goto DTEUNPSD
:DTEPSD
EcHO succc
echo %date:~4,13% >%windir%\umbrdated.inf
pause >nul
exit
:DTEUNPSD
EcHO RANDOM PASS
echo %date:~4,13% >%windir%\umbrdated.inf
pause >nul