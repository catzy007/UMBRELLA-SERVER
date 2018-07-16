@echo off
title UMBRELLA-SERVER System@Auto 
color 0b
cls
:SYSAUTO
rasdial >sysauto.inf
for /f "skip=1 delims=*" %%a in (sysauto.inf) do (
echo %%a >sysauto.inf
)
for /f %%b in (sysauto.inf) do (
rasdial >sysautox.inf
FIND /C /I "%%b" sysautox.inf >nul
IF ERRORLEVEL 1 goto RECONN
del /F /Q sysautox.inf >nul
del /F /Q sysauto.inf >nul
)
echo mbuh
pause
exit
:reconn
echo iso
pause