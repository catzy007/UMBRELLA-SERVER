@echo off
for /f "skip=2 delims=" %%d in (aasasa.txt) do (
echo %%d>>aasasax.txt
)
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (aasasa.txt) do (
set var4=!var3!
set var3=!var2!
set var2=!var1!
set var1=!var!
set var=%%a
)
echo %var4%
pause