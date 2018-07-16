@echo off
cls
ver | findstr /i "5\.0\."
if %ERRORLEVEL% EQU 0 (
echo  OS = Windows 2000
)
ver | findstr /i "5\.1\."
if %ERRORLEVEL% EQU 0 (
echo OS = Windows XP
)
ver | findstr /i "5\.2\."
if %ERRORLEVEL% EQU 0 (
echo OS = Server 2003
)
ver | findstr /i "6\.0\." > nul
if %ERRORLEVEL% EQU 0 (
echo OS = Vista / Server 2008
)
ver | findstr /i "6\.1\." > nul
if %ERRORLEVEL% EQU 0 (
echo OS = Windows 7 / Server 2008R2
)
ver | findstr /i "6\.2\." > nul
if %ERRORLEVEL% EQU 0 (
echo OS = Windows 8 / Server 2012
)
ver | findstr /i "6\.3\." > nul
if %ERRORLEVEL% EQU 0 (
echo OS = Windows 8.1 / Server 2012R2
)
pause >nul