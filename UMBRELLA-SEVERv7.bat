mode 106,25
del Connect.inf
color 0A
attrib -h tempx.vbs
del tempx.vbs 
cls
@echo off
color 0b
title UMBRELLA-SERVER Control Panel
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo                                         Loading data, Please Wait                                         
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
echo ' > "temp.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
echo speech.speak "Welcome to UMBRELLA-SERVER control panel." >> "temp.vbs"
attrib +h temp.vbs
start /wait temp.vbs
attrib -h temp.vbs
del temp.vbs
netsh wlan set hostednetwork mode=allow ssid=%random% key=%random%%random% > nul
netsh wlan start hostednetwork > %windir%\repoumbrella.inf
netsh wlan stop hostednetwork > nul
FIND /C /I "started." %windir%\repoumbrella.inf > nul
IF ERRORLEVEL 1 goto ERRORCODE1
if EXIST "%windir%\umbrella.inf" goto skipstep1
:NAMEUMBR
echo UMBRELLA-SERVER-%random:~0,1%%random:~3,1% > %windir%\umbrella.inf
:skipstep1
ping www.google.com -t -l 1 -n 3 > %windir%\netcon.inf
FIND /C /I "Reply from" %windir%\netcon.inf > nul
IF ERRORLEVEL 1 goto LOP2
:NETFAIL
del %windir%\netcon.inf
netsh wlan set hostednetwork mode=allow ssid=%random% key=%random%%random% > nul
netsh wlan start hostednetwork
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo                                    Connect your network and press enter                                   
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
echo  Enter Correct Command.                                            UMBRELLA-SERVER Control Panel V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
timeout /t 3 /nobreak > nul
:LOP2
del %windir%\netcon.inf
if NOT EXIST Connect.inf goto LOPDC
for /f %%i in (Connect.inf) do (
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Enter "OFF" to Stop Network and "STAT" to View Statistic.                        Password : %%i
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo Connected.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
)
set/p "CHO=Enter Command : "
if %CHO%== OFF goto SEROF
if %CHO%== off goto SEROF
if %CHO%== ex goto TEREX
if %CHO%== EX goto TEREX
if %CHO%== exit goto TEREX
if %CHO%== EXIT goto TEREX
if %CHO%== STAT goto STATUS
if %CHO%== stat goto STATUS
goto LOP
:LOPDC
color 0b
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Enter "ON" to Start Network and "STAT" to View Statistic.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo Disconnected.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
echo  Enter Correct Command.                                            UMBRELLA-SERVER Control Panel V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
timeout /t 3 /nobreak > nul
:SERON
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Enter "1" to Using Auto Generate Password and "2" to Set User Password.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
set/p "CHO=Enter Command : "
if %CHO%== 1 goto SERON1
if %CHO%== 2 goto SERON2
goto SERIC
:SERON1
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

set /p IP=Press Enter to Continue... 
cls
goto LOP3
:SERON2
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Enter Your Network Name                                                              SYSTEM@REN V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
set/p "NNAMEX=Network Name : "
echo %NNAMEX% > %windir%\umbrella.inf
if "%NNAMEX%"=="" goto NAMEUMBR
goto LOPDC
:TEREX
echo.
echo  Disconnecting client...
netsh wlan stop hostednetwork
del Connect.inf
EXIT
:FAILCON
color 0c
netsh wlan stop hostednetwork
del Connect.inf
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  ERROR Failed To Connect                                           UMBRELLA-SERVER Control Panel V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
timeout /t 5 /nobreak > nul
goto LOPDC
:STATUS
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Press Enter to Back to Menu                                              UMBRELLA-SERVER Status V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
netsh wlan show hostednetwork > %windir%\statumbrella.inf
FIND /C /I "Not started" %windir%\statumbrella.inf > nul
IF ERRORLEVEL 1 goto STATCON
)
:STATDC
echo Status                  : Disconnected.
echo  BSSID                  : -
echo  Radio type             : -
echo  Channel                : -
echo  Number of clients      : -
echo.
set/p "Xt11=Enter Command : "
goto LOPDC
:STATCON
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (%windir%\statumbrella.inf) do (
set var4=!var3!
set var3=!var2!
set var2=!var1!
set var1=!var!
set var=%%a
)
echo Status                  : Connected.
echo  !var3!
echo  !var2!
echo  !var1!
echo  !var!
echo.
set/p "Xt12=Enter Command : "
goto LOP2
:ERRORCODE1
color 0c
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  ERROR! 0x800ccc                                                                 UMBRELLA-SERVER V7.7314
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
pause > nul