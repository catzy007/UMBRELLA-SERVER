del Connect.inf
attrib -h tempx.vbs
del tempx.vbs 
cls
@echo off
color 0b
title UMBRELLA-SERVER Control Panel
mode 106,25
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
if EXIST "%windir%\umbrella.inf" goto skipstep1
echo UMBRELLA-SERVER-%random:~0,1%%random:~3,1% > %windir%\umbrella.inf
:skipstep1
netsh wlan set hostednetwork mode=allow ssid=NETWORK%random% key=%random%%random% > nul
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
echo speech.speak "Please connect your network and press enter. Or press enter only if you're using offline mode" >> "temx.vbs"
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
echo  Enter Correct Command.                                            UMBRELLA-SERVER Control Panel V4.51414
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 3 /nobreak > nul
:LOP2
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
echo  Enter "OFF" to Stop Network.                                                     Password : %%i
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo Connected.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
)
set/p "CHO=Enter Command : "
if %CHO%== OFF goto SEROF
if %CHO%== off goto SEROF
if %CHO%== ex goto TEREX
if %CHO%== EX goto TEREX
if %CHO%== exit goto TEREX
if %CHO%== EXIT goto TEREX
goto LOP
:LOPDC
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter "ON" to Start Network
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
echo  Enter Correct Command.                                            UMBRELLA-SERVER Control Panel V4.51414
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
echo  Enter "1" to Using Auto Generate Password and "2" to Using Default Password.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
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
netsh wlan start hostednetwork
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
echo Password : savekpk1033
netsh wlan set hostednetwork mode=allow ssid=%%M key=savekpk1033 > nul
netsh wlan start hostednetwork
)
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
attrib +h tempON.vbs
start /wait tempON.vbs
attrib -h tempON.vbs
del tempON.vbs
echo savekpk1033 >> Connect.inf
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
:TEREX
echo.
echo  Disconnecting client...
netsh wlan stop hostednetwork
del Connect.inf
EXIT