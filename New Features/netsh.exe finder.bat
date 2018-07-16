@echo off
if NOT EXIST "%windir%\system32\Netsh.exe" goto ERO
echo Sucess
pause >nul
exit
:ERO
echo NETSH NOT FOUND
pause >nul