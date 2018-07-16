mode 106,25
del Connect.inf
color 0A
attrib -h tempx.vbs
del tempx.vbs 
setLocal EnableDelayedExpansion
cls
@echo off
color 0b
title UMBRELLA-SERVER Control Panel
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo                                         Loading data, Please Wait                                         
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo ' > "temp.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
echo speech.speak "Welcome to UMBRELLA-SERVER control panel." >> "temp.vbs"
attrib +h temp.vbs
start /wait temp.vbs
attrib -h temp.vbs
del temp.vbs
set TSAZ=%random%%random%
netsh wlan set hostednetwork mode=allow ssid=Hidden Network key=%TSAZ% > nul
netsh wlan start hostednetwork > %windir%\repoumbrella.inf
timeout /t 3 /nobreak > nul
netsh wlan stop hostednetwork > nul
FIND /C /I "started." %windir%\repoumbrella.inf > nul
IF ERRORLEVEL 1 goto ERRORCODE1
if EXIST "%windir%\umbrella.inf" goto skipstep1
:NAMEUMBR
hostname >%windir%\umbrella.inf
for /f %%o in (%windir%\umbrella.inf) do (
echo UMBRELLA@%%o >%windir%\umbrella.inf
)
:skipstep1
ping www.google.com -t -l 1 -n 3 > %windir%\netcon.inf
FIND /C /I "Reply from" %windir%\netcon.inf > nul
IF ERRORLEVEL 1 goto LOP2
:NETFAIL
del %windir%\netcon.inf
netsh wlan set hostednetwork mode=allow ssid=%random% key=%random%%random% > nul
netsh wlan start hostednetwork
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo                                    Connect your network and press enter                                   
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo ' > "temx.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temx.vbs"
echo speech.speak "Please connect your network and press enter." >> "temx.vbs"
attrib +h temx.vbs
start /wait temx.vbs
attrib -h temx.vbs
del temx.vbs
set/p "IPT="
netsh wlan stop hostednetwork
cls
goto LOP2
:LOP3
attrib -h temp.vbs
del temp.vbs
attrib -h tempON.vbs
del tempON.vbs
attrib -h tempOFF.vbs
del tempOFF.vbs
cls
goto LOP2
:LOP
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Enter Correct Command.                                          UMBRELLA-SERVER Control Panel V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 3 /nobreak > nul
:LOP2
del %windir%\netcon.inf
if NOT EXIST Connect.inf goto LOPDC
for /f %%i in (Connect.inf) do (
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter "OFF" to Stop Network "STAT" to View Status and "RE" to Reconnect.         Password : %%i
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo Connected.                                                                        
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
)
set/p "CHO=Enter Command : "
if %CHO%== OFF goto SEROF
if %CHO%== off goto SEROF
if %CHO%== ex goto TEREX
if %CHO%== EX goto TEREX
if %CHO%== re goto SERRE
if %CHO%== RE goto SERRE
if %CHO%== exit goto TEREX
if %CHO%== EXIT goto TEREX
if %CHO%== STAT goto STATUS
if %CHO%== stat goto STATUS
goto LOP
:LOPDC
color 0b
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter "ON" to Start Network and "STAT" to View Status.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo Disconnected.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
set/p "CHO=Enter Command : "
if %CHO%== ON goto SERON
if %CHO%== on goto SERON
if %CHO%== ex goto TEREX
if %CHO%== EX goto TEREX
if %CHO%== exit goto TEREX
if %CHO%== EXIT goto TEREX
if %CHO%== system@ren goto SPECIALMODREN
if %CHO%== System@Ren goto SPECIALMODREN
if %CHO%== System@REN goto SPECIALMODREN
if %CHO%== System@ren goto SPECIALMODREN
if %CHO%== SYSTEM@REN goto SPECIALMODREN
if %CHO%== STAT goto STATUS
if %CHO%== stat goto STATUS
goto LOP
:SERIC
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Enter Correct Command.                                          UMBRELLA-SERVER Control Panel V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 3 /nobreak > nul
:SERON
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter "1" to Using Auto Generate Password and "2" to Set User Password.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
set/p "CHO=Enter Command : "
if %CHO%== 1 goto SERON1
if %CHO%== 2 goto SERON2
goto SERIC
:SERON1
echo mde1 >%windir%\mode.inf
set pas=%random%
echo.
echo  Connecting client...
for /f %%N in (%windir%\umbrella.inf) do (
echo Hostname : %%N
echo Password : savekpk%pas%
netsh wlan set hostednetwork mode=allow ssid=%%N key=savekpk%pas% > nul
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
)
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
attrib +h tempON.vbs
start /wait tempON.vbs
attrib -h tempON.vbs
del tempON.vbs
echo savekpk%pas% >> Connect.inf
echo.
set /p IP=Press Enter to Continue... 
cls
goto LOP3
:SERON2
echo mde2 >%windir%\mode.inf
echo.
echo  Connecting client...
for /f %%M in (%windir%\umbrella.inf) do (
echo Hostname : %%M
set/p "PASX=Password : "
netsh wlan set hostednetwork mode=allow ssid=%%M key=%PASX% > nul
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
)
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
attrib +h tempON.vbs
start /wait tempON.vbs
attrib -h tempON.vbs
del tempON.vbs
echo %PASX% >> Connect.inf
echo.
set /p IP=Press Enter to Continue... 
goto LOP3
:SEROF
echo.
echo  Disconnecting client...
netsh wlan stop hostednetwork
echo ' > "tempOFF.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempOFF.vbs"
echo speech.speak "UMBRELLA-SERVER Was Disconnected" >> "tempOFF.vbs"
attrib +h tempOFF.vbs
start /wait tempOFF.vbs
attrib -h tempOFF.vbs
del tempOFF.vbs
del Connect.inf
set /p IP=Press Enter to Continue... 
goto LOP3
:SPECIALMODREN
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter Your Network Name                                                            SYSTEM@REN V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set/p "NNAMEX=Network Name : "
echo %NNAMEX% > %windir%\umbrella.inf
if "%NNAMEX%"=="" goto NAMEUMBR
goto LOPDC
:TEREX
echo.
echo  Disconnecting client...
netsh wlan stop hostednetwork
cls
del Connect.inf
EXIT
:FAILCON
color 0c
netsh wlan stop hostednetwork
del Connect.inf
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  ERROR Failed To Connect                                         UMBRELLA-SERVER Control Panel V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
timeout /t 5 /nobreak > nul
goto LOPDC
:STATUS
netsh wlan show hostednetwork > %windir%\statumbrella.inf
FIND /C /I "Not started" %windir%\statumbrella.inf > nul
IF ERRORLEVEL 1 goto STATCON
)
:STATDC
start STATDC.exe
goto LOPDC
:STATCON
start STATCON.exe
goto LOP2
:SERRE
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Reconnect...                                                                  UMBRELLA-SERVER V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
FIND /C /I "mde1" %windir%\mode.inf > nul
IF ERRORLEVEL 1 goto MDE2
:MDE1
echo  Reconnecting client...
netsh wlan stop hostednetwork > nul
timeout /t 7 /nobreak > nul
if NOT EXIST Connect.inf goto LOPDC
echo savekpk%random% >Connect.inf
for /f %%P in (Connect.inf) do (
for /f %%N in (%windir%\umbrella.inf) do (
echo Hostname : %%N
echo Password : %%P
netsh wlan set hostednetwork mode=allow ssid=%%N key=%%P > nul
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
))
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
start /wait tempON.vbs
attrib -h -s -r tempON.vbs
del tempON.vbs
echo.
set /p IP=Press Enter to Continue... 
cls
goto LOP3
:MDE2
echo  Reconnecting client...
netsh wlan stop hostednetwork > nul
timeout /t 7 /nobreak > nul
if NOT EXIST Connect.inf goto LOPDC
for /f %%P in (Connect.inf) do (
for /f %%N in (%windir%\umbrella.inf) do (
echo Hostname : %%N
echo Password : %%P
netsh wlan set hostednetwork mode=allow ssid=%%N key=%%P > nul
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
))
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
start /wait tempON.vbs
attrib -h -s -r tempON.vbs
del tempON.vbs
echo.
set /p IP=Press Enter to Continue... 
cls
goto LOP3
:ERRORCODE1
color 0c
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  ERROR! 0x800CCC                                                               UMBRELLA-SERVER V10.102214
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 5 /nobreak > nul