@echo off
echo 0 >info.inf
echo 0 >info2.inf
:loop1
for /f %%y in (info.inf) do (
set CNP1=%%y
)
for /f %%x in (info2.inf) do (
set CNP2=%%x
)
if "%CNP1%"=="%CNP2%" goto loop2
set a=0
cmd /c netsh wlan show hostednetwork | findstr -i "Number" >info.inf
for /f "tokens=1 skip=1 delims=*" %%a in (info.inf) do (
echo %%a >info.inf
)
for /f "tokens=5" %%i in (info.inf) do (
echo %%i >info.inf
set a=%%i
)
del /F /Q info2.inf
ren info.inf info2.inf
echo ' > "CONUSR.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "CONUSR.vbs"
echo speech.speak " %a% Users Connected to UMBRELLA-SERVER " >> "CONUSR.vbs"
start /w CONUSR.vbs
del /F /Q CONUSR.vbs
:loop2
echo loop
pause 
goto loop1