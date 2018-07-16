@echo off
:loop
set a=0
cmd /c netsh wlan show hostednetwork | findstr -i "Number" >info.inf
for /f "tokens=1 skip=1 delims=*" %%a in (info.inf) do (
echo %%a >info.inf
)
for /f "tokens=5" %%i in (info.inf) do (
echo %%i >info.inf
set a=%%i
)
echo ' > "CONUSR.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "CONUSR.vbs"
echo speech.speak " %a% Users Connected to UMBRELLA-SERVER " >> "CONUSR.vbs"
start /w CONUSR.vbs
del /F /Q CONUSR.vbs
pause 
goto loop