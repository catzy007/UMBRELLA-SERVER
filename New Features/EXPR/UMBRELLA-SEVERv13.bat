mode 106,25
color 02
del Connect.inf
attrib -h tempx.vbs
del tempx.vbs 
setLocal EnableDelayedExpansion
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
echo  [                                      Loading data, Please Wait                                       ] 
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
if NOT EXIST "%windir%\system32\Netsh.exe" goto ERRORCODE2
echo ' > "temp.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
echo speech.speak "Welcome to UMBRELLA-SERVER control panel." >> "temp.vbs"
attrib +h temp.vbs
start /wait temp.vbs
attrib -h temp.vbs
del temp.vbs
set TSAZ=%random%%random%
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  [============================          Loading data, Please Wait                                       ] 
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
netsh wlan set hostednetwork mode=allow ssid=Hidden Network key=%TSAZ% > nul
netsh wlan start hostednetwork > %windir%\repoumbrella.inf
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  [===================================== Loading data, Please Wait                                       ] 
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
netsh wlan stop hostednetwork > nul
timeout /t 3 /nobreak > nul
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  [===================================== Loading data, Please Wait ===========================           ] 
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
timeout /t 3 /nobreak > nul
FIND /C /I "started." %windir%\repoumbrella.inf > nul
IF ERRORLEVEL 1 goto ERRORCODE1
if EXIST "%windir%\umbrella.inf" goto skipstep1
:NAMEUMBR
echo %date:~4,13% >%windir%\umbrdated.inf
echo %date:~4,13% >%windir%\umbrdate.inf
hostname >%windir%\umbrella.inf
for /f %%o in (%windir%\umbrella.inf) do (
echo UMBRELLA@%%o >%windir%\umbrella.inf
)
:skipstep1
cls
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  [===================================== Loading data, Please Wait ======================================] 
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
timeout /t 3 /nobreak > nul
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
echo  Enter Correct Command.                                          UMBRELLA-SERVER Control Panel V12.010615
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
echo  Enter "OFF" to Stop Network "STAT" to View Status and "RE" to Reconnect.             Password : %%i
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo Connected.                                                                        
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Enter "ON" to Start Network and "STAT" to View Status.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo Disconnected.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
set/p "CHO=Enter Command : "
IF NOT DEFINED CHO GOTO LOPDC
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
echo  Connecting Client...                                                          UMBRELLA-SERVER V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo %date:~4,13% >%windir%\umbrdate.inf
for /f %%d in (%windir%\umbrdate.inf) do (
for /f %%f in (%windir%\umbrdated.inf) do (
IF "%%f"=="%%d" GOTO DTEPSD
))
Goto DTEUNPSD
:DTEPSD
echo %date:~4,13% >%windir%\umbrdated.inf
echo  Connecting client, Please wait...
for /f %%N in (%windir%\umbrella.inf) do (
for /f %%M in (%windir%\UMBRPAS.inf) do (
echo Hostname : %%N
echo Password : %%M
netsh wlan set hostednetwork mode=allow ssid=%%N key=%%M > nul
echo %%M >Connect.inf
))
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
attrib +h tempON.vbs
start /wait tempON.vbs
attrib -h tempON.vbs
del tempON.vbs
goto NSTP
:DTEUNPSD
echo %date:~4,13% >%windir%\umbrdated.inf
set PAS1=C
set PAS2=A
set PAS3=T
set PAS4=Z
set PAS5=Y
set PAS6=M
set PAS7=B
set PAS8=S
:LINE1
set STP1A=%RANDOM:~0,1%
IF "%STP1A%"=="0" GOTO NUBR1A
IF "%STP1A%"=="1" GOTO LTRS1A
IF "%STP1A%"=="2" GOTO NUBR1A
IF "%STP1A%"=="3" GOTO LTRS1A
IF "%STP1A%"=="4" GOTO NUBR1A
IF "%STP1A%"=="5" GOTO LTRS1A
IF "%STP1A%"=="6" GOTO NUBR1A
IF "%STP1A%"=="7" GOTO LTRS1A
IF "%STP1A%"=="8" GOTO NUBR1A
IF "%STP1A%"=="9" GOTO LTRS1A
:NUBR1A
set NUBR1A=%RANDOM:~0,1%
set PAS1=%NUBR1A%
goto LINE2
:LTRS1A
set LT1A=%RANDOM:~0,1%
IF "%LT1A%"=="0" GOTO TYPA
IF "%LT1A%"=="1" GOTO CAPA
IF "%LT1A%"=="2" GOTO TYPA
IF "%LT1A%"=="3" GOTO CAPA
IF "%LT1A%"=="4" GOTO TYPA
IF "%LT1A%"=="5" GOTO CAPA
IF "%LT1A%"=="6" GOTO TYPA
IF "%LT1A%"=="7" GOTO CAPA
IF "%LT1A%"=="8" GOTO TYPA
IF "%LT1A%"=="9" GOTO CAPA
:CAPA
:CAPA1A
set CAPA1A=%RANDOM:~0,1%
IF "%CAPA1A%"=="0" set PAS1=A
IF "%CAPA1A%"=="1" GOTO CAPA1A
IF "%CAPA1A%"=="2" set PAS1=B
IF "%CAPA1A%"=="3" GOTO CAPA2A
IF "%CAPA1A%"=="4" set PAS1=D
IF "%CAPA1A%"=="5" GOTO CAPA3A
IF "%CAPA1A%"=="6" set PAS1=E
IF "%CAPA1A%"=="7" GOTO CAPA4A
IF "%CAPA1A%"=="8" set PAS1=F
IF "%CAPA1A%"=="9" GOTO CAPA5A
goto LINE2
:CAPA2A
set CAPA2A=%RANDOM:~0,1%
IF "%CAPA2A%"=="0" set PAS1=G
IF "%CAPA2A%"=="1" GOTO CAPA1A
IF "%CAPA2A%"=="2" set PAS1=H
IF "%CAPA2A%"=="3" GOTO CAPA2A
IF "%CAPA2A%"=="4" set PAS1=I
IF "%CAPA2A%"=="5" GOTO CAPA3A
IF "%CAPA2A%"=="6" set PAS1=J
IF "%CAPA2A%"=="7" GOTO CAPA4A
IF "%CAPA2A%"=="8" set PAS1=K
IF "%CAPA2A%"=="9" GOTO CAPA5A
goto LINE2
:CAPA3A
set CAPA3A=%RANDOM:~0,1%
IF "%CAPA3A%"=="0" set PAS1=L
IF "%CAPA3A%"=="1" GOTO CAPA1A
IF "%CAPA3A%"=="2" set PAS1=M
IF "%CAPA3A%"=="3" GOTO CAPA2A
IF "%CAPA3A%"=="4" set PAS1=N
IF "%CAPA3A%"=="5" GOTO CAPA3A
IF "%CAPA3A%"=="6" set PAS1=O
IF "%CAPA3A%"=="7" GOTO CAPA4A
IF "%CAPA3A%"=="8" set PAS1=P
IF "%CAPA3A%"=="9" GOTO CAPA5A
goto LINE2
:CAPA4A
set CAPA4A=%RANDOM:~0,1%
IF "%CAPA4A%"=="0" set PAS1=Q
IF "%CAPA4A%"=="1" GOTO CAPA1A
IF "%CAPA4A%"=="2" set PAS1=R
IF "%CAPA4A%"=="3" GOTO CAPA2A
IF "%CAPA4A%"=="4" set PAS1=S
IF "%CAPA4A%"=="5" GOTO CAPA3A
IF "%CAPA4A%"=="6" set PAS1=T
IF "%CAPA4A%"=="7" GOTO CAPA4A
IF "%CAPA4A%"=="8" set PAS1=U
IF "%CAPA4A%"=="9" GOTO CAPA5A
goto LINE2
:CAPA5A
set CAPA5A=%RANDOM:~0,1%
IF "%CAPA5A%"=="0" set PAS1=V
IF "%CAPA5A%"=="1" GOTO CAPA1A
IF "%CAPA5A%"=="2" set PAS1=W
IF "%CAPA5A%"=="3" GOTO CAPA2A
IF "%CAPA5A%"=="4" set PAS1=X
IF "%CAPA5A%"=="5" GOTO CAPA3A
IF "%CAPA5A%"=="6" set PAS1=Y
IF "%CAPA5A%"=="7" GOTO CAPA4A
IF "%CAPA5A%"=="8" set PAS1=Z
IF "%CAPA5A%"=="9" GOTO CAPA5A
goto LINE2
:TYPA
:TYPA1A
set TYPA1A=%RANDOM:~0,1%
IF "%TYPA1A%"=="0" set PAS1=a
IF "%TYPA1A%"=="1" GOTO TYPA1A
IF "%TYPA1A%"=="2" set PAS1=b
IF "%TYPA1A%"=="3" GOTO TYPA2A
IF "%TYPA1A%"=="4" set PAS1=d
IF "%TYPA1A%"=="5" GOTO TYPA3A
IF "%TYPA1A%"=="6" set PAS1=e
IF "%TYPA1A%"=="7" GOTO TYPA4A
IF "%TYPA1A%"=="8" set PAS1=f
IF "%TYPA1A%"=="9" GOTO TYPA5A
goto LINE2
:TYPA2A
set TYPA2A=%RANDOM:~0,1%
IF "%TYPA2A%"=="0" set PAS1=g
IF "%TYPA2A%"=="1" GOTO TYPA1A
IF "%TYPA2A%"=="2" set PAS1=h
IF "%TYPA2A%"=="3" GOTO TYPA2A
IF "%TYPA2A%"=="4" set PAS1=i
IF "%TYPA2A%"=="5" GOTO TYPA3A
IF "%TYPA2A%"=="6" set PAS1=j
IF "%TYPA2A%"=="7" GOTO TYPA4A
IF "%TYPA2A%"=="8" set PAS1=k
IF "%TYPA2A%"=="9" GOTO TYPA5A
goto LINE2
:TYPA3A
set TYPA3A=%RANDOM:~0,1%
IF "%TYPA3A%"=="0" set PAS1=l
IF "%TYPA3A%"=="1" GOTO TYPA1A
IF "%TYPA3A%"=="2" set PAS1=m
IF "%TYPA3A%"=="3" GOTO TYPA2A
IF "%TYPA3A%"=="4" set PAS1=n
IF "%TYPA3A%"=="5" GOTO TYPA3A
IF "%TYPA3A%"=="6" set PAS1=o
IF "%TYPA3A%"=="7" GOTO TYPA4A
IF "%TYPA3A%"=="8" set PAS1=p
IF "%TYPA3A%"=="9" GOTO TYPA5A
goto LINE2
:TYPA4A
set TYPA4A=%RANDOM:~0,1%
IF "%TYPA4A%"=="0" set PAS1=q
IF "%TYPA4A%"=="1" GOTO TYPA1A
IF "%TYPA4A%"=="2" set PAS1=r
IF "%TYPA4A%"=="3" GOTO TYPA2A
IF "%TYPA4A%"=="4" set PAS1=s
IF "%TYPA4A%"=="5" GOTO TYPA3A
IF "%TYPA4A%"=="6" set PAS1=t
IF "%TYPA4A%"=="7" GOTO TYPA4A
IF "%TYPA4A%"=="8" set PAS1=u
IF "%TYPA4A%"=="9" GOTO TYPA5A
goto LINE2
:TYPA5A
set TYPA5A=%RANDOM:~0,1%
IF "%TYPA5A%"=="0" set PAS1=v
IF "%TYPA5A%"=="1" GOTO TYPA1A
IF "%TYPA5A%"=="2" set PAS1=w
IF "%TYPA5A%"=="3" GOTO TYPA2A
IF "%TYPA5A%"=="4" set PAS1=x
IF "%TYPA5A%"=="5" GOTO TYPA3A
IF "%TYPA5A%"=="6" set PAS1=y
IF "%TYPA5A%"=="7" GOTO TYPA4A
IF "%TYPA5A%"=="8" set PAS1=z
IF "%TYPA5A%"=="9" GOTO TYPA5A
goto LINE2
:LINE2
set STP1B=%RANDOM:~0,1%
IF "%STP1B%"=="0" GOTO NUBR1B
IF "%STP1B%"=="1" GOTO LTRS1B
IF "%STP1B%"=="2" GOTO NUBR1B
IF "%STP1B%"=="3" GOTO LTRS1B
IF "%STP1B%"=="4" GOTO NUBR1B
IF "%STP1B%"=="5" GOTO LTRS1B
IF "%STP1B%"=="6" GOTO NUBR1B
IF "%STP1B%"=="7" GOTO LTRS1B
IF "%STP1B%"=="8" GOTO NUBR1B
IF "%STP1B%"=="9" GOTO LTRS1B
:NUBR1B
set NUBR1B=%RANDOM:~0,1%
set PAS2=%NUBR1B%
goto LINE3
:LTRS1B
set LT1B=%RANDOM:~0,1%
IF "%LT1B%"=="0" GOTO TYPB
IF "%LT1B%"=="1" GOTO CAPB
IF "%LT1B%"=="2" GOTO TYPB
IF "%LT1B%"=="3" GOTO CAPB
IF "%LT1B%"=="4" GOTO TYPB
IF "%LT1B%"=="5" GOTO CAPB
IF "%LT1B%"=="6" GOTO TYPB
IF "%LT1B%"=="7" GOTO CAPB
IF "%LT1B%"=="8" GOTO TYPB
IF "%LT1B%"=="9" GOTO CAPB
:CAPB
:CAPA1B
set CAPA1B=%RANDOM:~0,1%
IF "%CAPA1B%"=="0" set PAS2=B
IF "%CAPA1B%"=="1" GOTO CAPA1B
IF "%CAPA1B%"=="2" set PAS2=C
IF "%CAPA1B%"=="3" GOTO CAPA2B
IF "%CAPA1B%"=="4" set PAS2=D
IF "%CAPA1B%"=="5" GOTO CAPA3B
IF "%CAPA1B%"=="6" set PAS2=E
IF "%CAPA1B%"=="7" GOTO CAPA4B
IF "%CAPA1B%"=="8" set PAS2=F
IF "%CAPA1B%"=="9" GOTO CAPA5B
goto LINE3
:CAPA2B
set CAPA2B=%RANDOM:~0,1%
IF "%CAPA2B%"=="0" set PAS2=G
IF "%CAPA2B%"=="1" GOTO CAPA1B
IF "%CAPA2B%"=="2" set PAS2=H
IF "%CAPA2B%"=="3" GOTO CAPA2B
IF "%CAPA2B%"=="4" set PAS2=I
IF "%CAPA2B%"=="5" GOTO CAPA3B
IF "%CAPA2B%"=="6" set PAS2=J
IF "%CAPA2B%"=="7" GOTO CAPA4B
IF "%CAPA2B%"=="8" set PAS2=K
IF "%CAPA2B%"=="9" GOTO CAPA5B
goto LINE3
:CAPA3B
set CAPA3B=%RANDOM:~0,1%
IF "%CAPA3B%"=="0" set PAS2=L
IF "%CAPA3B%"=="1" GOTO CAPA1B
IF "%CAPA3B%"=="2" set PAS2=M
IF "%CAPA3B%"=="3" GOTO CAPA2B
IF "%CAPA3B%"=="4" set PAS2=N
IF "%CAPA3B%"=="5" GOTO CAPA3B
IF "%CAPA3B%"=="6" set PAS2=O
IF "%CAPA3B%"=="7" GOTO CAPA4B
IF "%CAPA3B%"=="8" set PAS2=P
IF "%CAPA3B%"=="9" GOTO CAPA5B
goto LINE3
:CAPA4B
set CAPA4B=%RANDOM:~0,1%
IF "%CAPA4B%"=="0" set PAS2=Q
IF "%CAPA4B%"=="1" GOTO CAPA1B
IF "%CAPA4B%"=="2" set PAS2=R
IF "%CAPA4B%"=="3" GOTO CAPA2B
IF "%CAPA4B%"=="4" set PAS2=S
IF "%CAPA4B%"=="5" GOTO CAPA3B
IF "%CAPA4B%"=="6" set PAS2=T
IF "%CAPA4B%"=="7" GOTO CAPA4B
IF "%CAPA4B%"=="8" set PAS2=U
IF "%CAPA4B%"=="9" GOTO CAPA5B
goto LINE3
:CAPA5B
set CAPA5B=%RANDOM:~0,1%
IF "%CAPA5B%"=="0" set PAS2=V
IF "%CAPA5B%"=="1" GOTO CAPA1B
IF "%CAPA5B%"=="2" set PAS2=W
IF "%CAPA5B%"=="3" GOTO CAPA2B
IF "%CAPA5B%"=="4" set PAS2=X
IF "%CAPA5B%"=="5" GOTO CAPA3B
IF "%CAPA5B%"=="6" set PAS2=Y
IF "%CAPA5B%"=="7" GOTO CAPA4B
IF "%CAPA5B%"=="8" set PAS2=Z
IF "%CAPA5B%"=="9" GOTO CAPA5B
goto LINE3
:TYPB
:TYPA1B
set TYPA1B=%RANDOM:~0,1%
IF "%TYPA1B%"=="0" set PAS2=b
IF "%TYPA1B%"=="1" GOTO TYPA1B
IF "%TYPA1B%"=="2" set PAS2=c
IF "%TYPA1B%"=="3" GOTO TYPA2B
IF "%TYPA1B%"=="4" set PAS2=d
IF "%TYPA1B%"=="5" GOTO TYPA3B
IF "%TYPA1B%"=="6" set PAS2=e
IF "%TYPA1B%"=="7" GOTO TYPA4B
IF "%TYPA1B%"=="8" set PAS2=f
IF "%TYPA1B%"=="9" GOTO TYPA5B
goto LINE3
:TYPA2B
set TYPA2B=%RANDOM:~0,1%
IF "%TYPA2B%"=="0" set PAS2=g
IF "%TYPA2B%"=="1" GOTO TYPA1B
IF "%TYPA2B%"=="2" set PAS2=h
IF "%TYPA2B%"=="3" GOTO TYPA2B
IF "%TYPA2B%"=="4" set PAS2=i
IF "%TYPA2B%"=="5" GOTO TYPA3B
IF "%TYPA2B%"=="6" set PAS2=j
IF "%TYPA2B%"=="7" GOTO TYPA4B
IF "%TYPA2B%"=="8" set PAS2=k
IF "%TYPA2B%"=="9" GOTO TYPA5B
goto LINE3
:TYPA3B
set TYPA3B=%RANDOM:~0,1%
IF "%TYPA3B%"=="0" set PAS2=l
IF "%TYPA3B%"=="1" GOTO TYPA1B
IF "%TYPA3B%"=="2" set PAS2=m
IF "%TYPA3B%"=="3" GOTO TYPA2B
IF "%TYPA3B%"=="4" set PAS2=n
IF "%TYPA3B%"=="5" GOTO TYPA3B
IF "%TYPA3B%"=="6" set PAS2=o
IF "%TYPA3B%"=="7" GOTO TYPA4B
IF "%TYPA3B%"=="8" set PAS2=p
IF "%TYPA3B%"=="9" GOTO TYPA5B
goto LINE3
:TYPA4B
set TYPA4B=%RANDOM:~0,1%
IF "%TYPA4B%"=="0" set PAS2=q
IF "%TYPA4B%"=="1" GOTO TYPA1B
IF "%TYPA4B%"=="2" set PAS2=r
IF "%TYPA4B%"=="3" GOTO TYPA2B
IF "%TYPA4B%"=="4" set PAS2=s
IF "%TYPA4B%"=="5" GOTO TYPA3B
IF "%TYPA4B%"=="6" set PAS2=t
IF "%TYPA4B%"=="7" GOTO TYPA4B
IF "%TYPA4B%"=="8" set PAS2=u
IF "%TYPA4B%"=="9" GOTO TYPA5B
goto LINE3
:TYPA5B
set TYPA5B=%RANDOM:~0,1%
IF "%TYPA5B%"=="0" set PAS2=v
IF "%TYPA5B%"=="1" GOTO TYPA1B
IF "%TYPA5B%"=="2" set PAS2=w
IF "%TYPA5B%"=="3" GOTO TYPA2B
IF "%TYPA5B%"=="4" set PAS2=x
IF "%TYPA5B%"=="5" GOTO TYPA3B
IF "%TYPA5B%"=="6" set PAS2=y
IF "%TYPA5B%"=="7" GOTO TYPA4B
IF "%TYPA5B%"=="8" set PAS2=z
IF "%TYPA5B%"=="9" GOTO TYPA5B
goto LINE3
:LINE3
set STP1C=%RANDOM:~0,1%
IF "%STP1C%"=="0" GOTO NUBR1C
IF "%STP1C%"=="1" GOTO LTRS1C
IF "%STP1C%"=="2" GOTO NUBR1C
IF "%STP1C%"=="3" GOTO LTRS1C
IF "%STP1C%"=="4" GOTO NUBR1C
IF "%STP1C%"=="5" GOTO LTRS1C
IF "%STP1C%"=="6" GOTO NUBR1C
IF "%STP1C%"=="7" GOTO LTRS1C
IF "%STP1C%"=="8" GOTO NUBR1C
IF "%STP1C%"=="9" GOTO LTRS1C
:NUBR1C
set NUBR1C=%RANDOM:~0,1%
set PAS3=%NUBR1C%
goto LINE4
:LTRS1C
set LT1C=%RANDOM:~0,1%
IF "%LT1C%"=="0" GOTO TYPC
IF "%LT1C%"=="1" GOTO CAPC
IF "%LT1C%"=="2" GOTO TYPC
IF "%LT1C%"=="3" GOTO CAPC
IF "%LT1C%"=="4" GOTO TYPC
IF "%LT1C%"=="5" GOTO CAPC
IF "%LT1C%"=="6" GOTO TYPC
IF "%LT1C%"=="7" GOTO CAPC
IF "%LT1C%"=="8" GOTO TYPC
IF "%LT1C%"=="9" GOTO CAPC
:CAPC
:CAPA1C
set CAPA1C=%RANDOM:~0,1%
IF "%CAPA1C%"=="0" set PAS3=A
IF "%CAPA1C%"=="1" GOTO CAPA1C
IF "%CAPA1C%"=="2" set PAS3=B
IF "%CAPA1C%"=="3" GOTO CAPA2C
IF "%CAPA1C%"=="4" set PAS3=C
IF "%CAPA1C%"=="5" GOTO CAPA3C
IF "%CAPA1C%"=="6" set PAS3=D
IF "%CAPA1C%"=="7" GOTO CAPA4C
IF "%CAPA1C%"=="8" set PAS3=E
IF "%CAPA1C%"=="9" GOTO CAPA5C
goto LINE4
:CAPA2C
set CAPA2C=%RANDOM:~0,1%
IF "%CAPA2C%"=="0" set PAS3=F
IF "%CAPA2C%"=="1" GOTO CAPA1C
IF "%CAPA2C%"=="2" set PAS3=G
IF "%CAPA2C%"=="3" GOTO CAPA2C
IF "%CAPA2C%"=="4" set PAS3=H
IF "%CAPA2C%"=="5" GOTO CAPA3C
IF "%CAPA2C%"=="6" set PAS3=I
IF "%CAPA2C%"=="7" GOTO CAPA4C
IF "%CAPA2C%"=="8" set PAS3=J
IF "%CAPA2C%"=="9" GOTO CAPA5C
goto LINE4
:CAPA3C
set CAPA3C=%RANDOM:~0,1%
IF "%CAPA3C%"=="0" set PAS3=K
IF "%CAPA3C%"=="1" GOTO CAPA1C
IF "%CAPA3C%"=="2" set PAS3=L
IF "%CAPA3C%"=="3" GOTO CAPA2C
IF "%CAPA3C%"=="4" set PAS3=M
IF "%CAPA3C%"=="5" GOTO CAPA3C
IF "%CAPA3C%"=="6" set PAS3=N
IF "%CAPA3C%"=="7" GOTO CAPA4C
IF "%CAPA3C%"=="8" set PAS3=O
IF "%CAPA3C%"=="9" GOTO CAPA5C
goto LINE4
:CAPA4C
set CAPA4C=%RANDOM:~0,1%
IF "%CAPA4C%"=="0" set PAS3=P
IF "%CAPA4C%"=="1" GOTO CAPA1C
IF "%CAPA4C%"=="2" set PAS3=Q
IF "%CAPA4C%"=="3" GOTO CAPA2C
IF "%CAPA4C%"=="4" set PAS3=R
IF "%CAPA4C%"=="5" GOTO CAPA3C
IF "%CAPA4C%"=="6" set PAS3=S
IF "%CAPA4C%"=="7" GOTO CAPA4C
IF "%CAPA4C%"=="8" set PAS3=U
IF "%CAPA4C%"=="9" GOTO CAPA5C
goto LINE4
:CAPA5C
set CAPA5C=%RANDOM:~0,1%
IF "%CAPA5C%"=="0" set PAS3=V
IF "%CAPA5C%"=="1" GOTO CAPA1C
IF "%CAPA5C%"=="2" set PAS3=W
IF "%CAPA5C%"=="3" GOTO CAPA2C
IF "%CAPA5C%"=="4" set PAS3=X
IF "%CAPA5C%"=="5" GOTO CAPA3C
IF "%CAPA5C%"=="6" set PAS3=Y
IF "%CAPA5C%"=="7" GOTO CAPA4C
IF "%CAPA5C%"=="8" set PAS3=Z
IF "%CAPA5C%"=="9" GOTO CAPA5C
goto LINE4
:TYPC
:TYPA1C
set TYPA1C=%RANDOM:~0,1%
IF "%TYPA1C%"=="0" set PAS3=a
IF "%TYPA1C%"=="1" GOTO TYPA1C
IF "%TYPA1C%"=="2" set PAS3=b
IF "%TYPA1C%"=="3" GOTO TYPA2C
IF "%TYPA1C%"=="4" set PAS3=c
IF "%TYPA1C%"=="5" GOTO TYPA3C
IF "%TYPA1C%"=="6" set PAS3=d
IF "%TYPA1C%"=="7" GOTO TYPA4C
IF "%TYPA1C%"=="8" set PAS3=e
IF "%TYPA1C%"=="9" GOTO TYPA5C
goto LINE4
:TYPA2C
set TYPA2C=%RANDOM:~0,1%
IF "%TYPA2C%"=="0" set PAS3=f
IF "%TYPA2C%"=="1" GOTO TYPA1C
IF "%TYPA2C%"=="2" set PAS3=g
IF "%TYPA2C%"=="3" GOTO TYPA2C
IF "%TYPA2C%"=="4" set PAS3=h
IF "%TYPA2C%"=="5" GOTO TYPA3C
IF "%TYPA2C%"=="6" set PAS3=i
IF "%TYPA2C%"=="7" GOTO TYPA4C
IF "%TYPA2C%"=="8" set PAS3=j
IF "%TYPA2C%"=="9" GOTO TYPA5C
goto LINE4
:TYPA3C
set TYPA3C=%RANDOM:~0,1%
IF "%TYPA3C%"=="0" set PAS3=k
IF "%TYPA3C%"=="1" GOTO TYPA1C
IF "%TYPA3C%"=="2" set PAS3=l
IF "%TYPA3C%"=="3" GOTO TYPA2C
IF "%TYPA3C%"=="4" set PAS3=m
IF "%TYPA3C%"=="5" GOTO TYPA3C
IF "%TYPA3C%"=="6" set PAS3=n
IF "%TYPA3C%"=="7" GOTO TYPA4C
IF "%TYPA3C%"=="8" set PAS3=o
IF "%TYPA3C%"=="9" GOTO TYPA5C
goto LINE4
:TYPA4C
set TYPA4C=%RANDOM:~0,1%
IF "%TYPA4C%"=="0" set PAS3=p
IF "%TYPA4C%"=="1" GOTO TYPA1C
IF "%TYPA4C%"=="2" set PAS3=q
IF "%TYPA4C%"=="3" GOTO TYPA2C
IF "%TYPA4C%"=="4" set PAS3=r
IF "%TYPA4C%"=="5" GOTO TYPA3C
IF "%TYPA4C%"=="6" set PAS3=s
IF "%TYPA4C%"=="7" GOTO TYPA4C
IF "%TYPA4C%"=="8" set PAS3=u
IF "%TYPA4C%"=="9" GOTO TYPA5C
goto LINE4
:TYPA5C
set TYPA5C=%RANDOM:~0,1%
IF "%TYPA5C%"=="0" set PAS3=v
IF "%TYPA5C%"=="1" GOTO TYPA1C
IF "%TYPA5C%"=="2" set PAS3=w
IF "%TYPA5C%"=="3" GOTO TYPA2C
IF "%TYPA5C%"=="4" set PAS3=x
IF "%TYPA5C%"=="5" GOTO TYPA3C
IF "%TYPA5C%"=="6" set PAS3=y
IF "%TYPA5C%"=="7" GOTO TYPA4C
IF "%TYPA5C%"=="8" set PAS3=z
IF "%TYPA5C%"=="9" GOTO TYPA5C
goto LINE4
:LINE4
set STP1D=%RANDOM:~0,1%
IF "%STP1D%"=="0" GOTO NUBR1D
IF "%STP1D%"=="1" GOTO LTRS1D
IF "%STP1D%"=="2" GOTO NUBR1D
IF "%STP1D%"=="3" GOTO LTRS1D
IF "%STP1D%"=="4" GOTO NUBR1D
IF "%STP1D%"=="5" GOTO LTRS1D
IF "%STP1D%"=="6" GOTO NUBR1D
IF "%STP1D%"=="7" GOTO LTRS1D
IF "%STP1D%"=="8" GOTO NUBR1D
IF "%STP1D%"=="9" GOTO LTRS1D
:NUBR1D
set NUBR1D=%RANDOM:~0,1%
set PAS4=%NUBR1D%
goto LINE5
:LTRS1D
set LT1D=%RANDOM:~0,1%
IF "%LT1D%"=="0" GOTO TYPD
IF "%LT1D%"=="1" GOTO CAPD
IF "%LT1D%"=="2" GOTO TYPD
IF "%LT1D%"=="3" GOTO CAPD
IF "%LT1D%"=="4" GOTO TYPD
IF "%LT1D%"=="5" GOTO CAPD
IF "%LT1D%"=="6" GOTO TYPD
IF "%LT1D%"=="7" GOTO CAPD
IF "%LT1D%"=="8" GOTO TYPD
IF "%LT1D%"=="9" GOTO CAPD
:CAPD
:CAPA1D
set CAPA1D=%RANDOM:~0,1%
IF "%CAPA1D%"=="0" set PAS4=A
IF "%CAPA1D%"=="1" GOTO CAPA1D
IF "%CAPA1D%"=="2" set PAS4=B
IF "%CAPA1D%"=="3" GOTO CAPA2D
IF "%CAPA1D%"=="4" set PAS4=C
IF "%CAPA1D%"=="5" GOTO CAPA3D
IF "%CAPA1D%"=="6" set PAS4=D
IF "%CAPA1D%"=="7" GOTO CAPA4D
IF "%CAPA1D%"=="8" set PAS4=E
IF "%CAPA1D%"=="9" GOTO CAPA5D
goto LINE5
:CAPA2D
set CAPA2D=%RANDOM:~0,1%
IF "%CAPA2D%"=="0" set PAS4=F
IF "%CAPA2D%"=="1" GOTO CAPA1D
IF "%CAPA2D%"=="2" set PAS4=G
IF "%CAPA2D%"=="3" GOTO CAPA2D
IF "%CAPA2D%"=="4" set PAS4=H
IF "%CAPA2D%"=="5" GOTO CAPA3D
IF "%CAPA2D%"=="6" set PAS4=I
IF "%CAPA2D%"=="7" GOTO CAPA4D
IF "%CAPA2D%"=="8" set PAS4=J
IF "%CAPA2D%"=="9" GOTO CAPA5D
goto LINE5
:CAPA3D
set CAPA3D=%RANDOM:~0,1%
IF "%CAPA3D%"=="0" set PAS4=K
IF "%CAPA3D%"=="1" GOTO CAPA1D
IF "%CAPA3D%"=="2" set PAS4=L
IF "%CAPA3D%"=="3" GOTO CAPA2D
IF "%CAPA3D%"=="4" set PAS4=M
IF "%CAPA3D%"=="5" GOTO CAPA3D
IF "%CAPA3D%"=="6" set PAS4=N
IF "%CAPA3D%"=="7" GOTO CAPA4D
IF "%CAPA3D%"=="8" set PAS4=O
IF "%CAPA3D%"=="9" GOTO CAPA5D
goto LINE5
:CAPA4D
set CAPA4D=%RANDOM:~0,1%
IF "%CAPA4D%"=="0" set PAS4=P
IF "%CAPA4D%"=="1" GOTO CAPA1D
IF "%CAPA4D%"=="2" set PAS4=Q
IF "%CAPA4D%"=="3" GOTO CAPA2D
IF "%CAPA4D%"=="4" set PAS4=R
IF "%CAPA4D%"=="5" GOTO CAPA3D
IF "%CAPA4D%"=="6" set PAS4=S
IF "%CAPA4D%"=="7" GOTO CAPA4D
IF "%CAPA4D%"=="8" set PAS4=U
IF "%CAPA4D%"=="9" GOTO CAPA5D
goto LINE5
:CAPA5D
set CAPA5D=%RANDOM:~0,1%
IF "%CAPA5D%"=="0" set PAS4=V
IF "%CAPA5D%"=="1" GOTO CAPA1D
IF "%CAPA5D%"=="2" set PAS4=W
IF "%CAPA5D%"=="3" GOTO CAPA2D
IF "%CAPA5D%"=="4" set PAS4=X
IF "%CAPA5D%"=="5" GOTO CAPA3D
IF "%CAPA5D%"=="6" set PAS4=Y
IF "%CAPA5D%"=="7" GOTO CAPA4D
IF "%CAPA5D%"=="8" set PAS4=Z
IF "%CAPA5D%"=="9" GOTO CAPA5D
goto LINE5
:TYPD
:TYPA1D
set TYPA1D=%RANDOM:~0,1%
IF "%TYPA1D%"=="0" set PAS4=a
IF "%TYPA1D%"=="1" GOTO TYPA1D
IF "%TYPA1D%"=="2" set PAS4=b
IF "%TYPA1D%"=="3" GOTO TYPA2D
IF "%TYPA1D%"=="4" set PAS4=c
IF "%TYPA1D%"=="5" GOTO TYPA3D
IF "%TYPA1D%"=="6" set PAS4=d
IF "%TYPA1D%"=="7" GOTO TYPA4D
IF "%TYPA1D%"=="8" set PAS4=e
IF "%TYPA1D%"=="9" GOTO TYPA5D
goto LINE5
:TYPA2D
set TYPA2D=%RANDOM:~0,1%
IF "%TYPA2D%"=="0" set PAS4=f
IF "%TYPA2D%"=="1" GOTO TYPA1D
IF "%TYPA2D%"=="2" set PAS4=g
IF "%TYPA2D%"=="3" GOTO TYPA2D
IF "%TYPA2D%"=="4" set PAS4=h
IF "%TYPA2D%"=="5" GOTO TYPA3D
IF "%TYPA2D%"=="6" set PAS4=i
IF "%TYPA2D%"=="7" GOTO TYPA4D
IF "%TYPA2D%"=="8" set PAS4=j
IF "%TYPA2D%"=="9" GOTO TYPA5D
goto LINE5
:TYPA3D
set TYPA3D=%RANDOM:~0,1%
IF "%TYPA3D%"=="0" set PAS4=k
IF "%TYPA3D%"=="1" GOTO TYPA1D
IF "%TYPA3D%"=="2" set PAS4=l
IF "%TYPA3D%"=="3" GOTO TYPA2D
IF "%TYPA3D%"=="4" set PAS4=m
IF "%TYPA3D%"=="5" GOTO TYPA3D
IF "%TYPA3D%"=="6" set PAS4=n
IF "%TYPA3D%"=="7" GOTO TYPA4D
IF "%TYPA3D%"=="8" set PAS4=o
IF "%TYPA3D%"=="9" GOTO TYPA5D
goto LINE5
:TYPA4D
set TYPA4D=%RANDOM:~0,1%
IF "%TYPA4D%"=="0" set PAS4=p
IF "%TYPA4D%"=="1" GOTO TYPA1D
IF "%TYPA4D%"=="2" set PAS4=q
IF "%TYPA4D%"=="3" GOTO TYPA2D
IF "%TYPA4D%"=="4" set PAS4=r
IF "%TYPA4D%"=="5" GOTO TYPA3D
IF "%TYPA4D%"=="6" set PAS4=s
IF "%TYPA4D%"=="7" GOTO TYPA4D
IF "%TYPA4D%"=="8" set PAS4=u
IF "%TYPA4D%"=="9" GOTO TYPA5D
goto LINE5
:TYPA5D
set TYPA5D=%RANDOM:~0,1%
IF "%TYPA5D%"=="0" set PAS4=v
IF "%TYPA5D%"=="1" GOTO TYPA1D
IF "%TYPA5D%"=="2" set PAS4=w
IF "%TYPA5D%"=="3" GOTO TYPA2D
IF "%TYPA5D%"=="4" set PAS4=x
IF "%TYPA5D%"=="5" GOTO TYPA3D
IF "%TYPA5D%"=="6" set PAS4=y
IF "%TYPA5D%"=="7" GOTO TYPA4D
IF "%TYPA5D%"=="8" set PAS4=z
IF "%TYPA5D%"=="9" GOTO TYPA5D
goto LINE5
:LINE5
set STP1E=%RANDOM:~0,1%
IF "%STP1E%"=="0" GOTO NUBR1E
IF "%STP1E%"=="1" GOTO LTRS1E
IF "%STP1E%"=="2" GOTO NUBR1E
IF "%STP1E%"=="3" GOTO LTRS1E
IF "%STP1E%"=="4" GOTO NUBR1E
IF "%STP1E%"=="5" GOTO LTRS1E
IF "%STP1E%"=="6" GOTO NUBR1E
IF "%STP1E%"=="7" GOTO LTRS1E
IF "%STP1E%"=="8" GOTO NUBR1E
IF "%STP1E%"=="9" GOTO LTRS1E
:NUBR1E
set NUBR1E=%RANDOM:~0,1%
set PAS5=%NUBR1E%
goto LINE6
:LTRS1E
set LT1E=%RANDOM:~0,1%
IF "%LT1E%"=="0" GOTO TYPE
IF "%LT1E%"=="1" GOTO CAPE
IF "%LT1E%"=="2" GOTO TYPE
IF "%LT1E%"=="3" GOTO CAPE
IF "%LT1E%"=="4" GOTO TYPE
IF "%LT1E%"=="5" GOTO CAPE
IF "%LT1E%"=="6" GOTO TYPE
IF "%LT1E%"=="7" GOTO CAPE
IF "%LT1E%"=="8" GOTO TYPE
IF "%LT1E%"=="9" GOTO CAPE
:CAPE
:CAPA1E
set CAPA1E=%RANDOM:~0,1%
IF "%CAPA1E%"=="0" set PAS5=A
IF "%CAPA1E%"=="1" GOTO CAPA1E
IF "%CAPA1E%"=="2" set PAS5=B
IF "%CAPA1E%"=="3" GOTO CAPA2E
IF "%CAPA1E%"=="4" set PAS5=C
IF "%CAPA1E%"=="5" GOTO CAPA3E
IF "%CAPA1E%"=="6" set PAS5=D
IF "%CAPA1E%"=="7" GOTO CAPA4E
IF "%CAPA1E%"=="8" set PAS5=E
IF "%CAPA1E%"=="9" GOTO CAPA5E
goto LINE6
:CAPA2E
set CAPA2E=%RANDOM:~0,1%
IF "%CAPA2E%"=="0" set PAS5=F
IF "%CAPA2E%"=="1" GOTO CAPA1E
IF "%CAPA2E%"=="2" set PAS5=G
IF "%CAPA2E%"=="3" GOTO CAPA2E
IF "%CAPA2E%"=="4" set PAS5=H
IF "%CAPA2E%"=="5" GOTO CAPA3E
IF "%CAPA2E%"=="6" set PAS5=I
IF "%CAPA2E%"=="7" GOTO CAPA4E
IF "%CAPA2E%"=="8" set PAS5=J
IF "%CAPA2E%"=="9" GOTO CAPA5E
goto LINE6
:CAPA3E
set CAPA3E=%RANDOM:~0,1%
IF "%CAPA3E%"=="0" set PAS5=K
IF "%CAPA3E%"=="1" GOTO CAPA1E
IF "%CAPA3E%"=="2" set PAS5=L
IF "%CAPA3E%"=="3" GOTO CAPA2E
IF "%CAPA3E%"=="4" set PAS5=M
IF "%CAPA3E%"=="5" GOTO CAPA3E
IF "%CAPA3E%"=="6" set PAS5=N
IF "%CAPA3E%"=="7" GOTO CAPA4E
IF "%CAPA3E%"=="8" set PAS5=O
IF "%CAPA3E%"=="9" GOTO CAPA5E
goto LINE6
:CAPA4E
set CAPA4E=%RANDOM:~0,1%
IF "%CAPA4E%"=="0" set PAS5=P
IF "%CAPA4E%"=="1" GOTO CAPA1E
IF "%CAPA4E%"=="2" set PAS5=Q
IF "%CAPA4E%"=="3" GOTO CAPA2E
IF "%CAPA4E%"=="4" set PAS5=R
IF "%CAPA4E%"=="5" GOTO CAPA3E
IF "%CAPA4E%"=="6" set PAS5=S
IF "%CAPA4E%"=="7" GOTO CAPA4E
IF "%CAPA4E%"=="8" set PAS5=U
IF "%CAPA4E%"=="9" GOTO CAPA5E
goto LINE6
:CAPA5E
set CAPA5E=%RANDOM:~0,1%
IF "%CAPA5E%"=="0" set PAS5=V
IF "%CAPA5E%"=="1" GOTO CAPA1E
IF "%CAPA5E%"=="2" set PAS5=W
IF "%CAPA5E%"=="3" GOTO CAPA2E
IF "%CAPA5E%"=="4" set PAS5=X
IF "%CAPA5E%"=="5" GOTO CAPA3E
IF "%CAPA5E%"=="6" set PAS5=Y
IF "%CAPA5E%"=="7" GOTO CAPA4E
IF "%CAPA5E%"=="8" set PAS5=Z
IF "%CAPA5E%"=="9" GOTO CAPA5E
goto LINE6
:TYPE
:TYPA1E
set TYPA1E=%RANDOM:~0,1%
IF "%TYPA1E%"=="0" set PAS5=a
IF "%TYPA1E%"=="1" GOTO TYPA1E
IF "%TYPA1E%"=="2" set PAS5=b
IF "%TYPA1E%"=="3" GOTO TYPA2E
IF "%TYPA1E%"=="4" set PAS5=c
IF "%TYPA1E%"=="5" GOTO TYPA3E
IF "%TYPA1E%"=="6" set PAS5=d
IF "%TYPA1E%"=="7" GOTO TYPA4E
IF "%TYPA1E%"=="8" set PAS5=e
IF "%TYPA1E%"=="9" GOTO TYPA5E
goto LINE6
:TYPA2E
set TYPA2E=%RANDOM:~0,1%
IF "%TYPA2E%"=="0" set PAS5=f
IF "%TYPA2E%"=="1" GOTO TYPA1E
IF "%TYPA2E%"=="2" set PAS5=g
IF "%TYPA2E%"=="3" GOTO TYPA2E
IF "%TYPA2E%"=="4" set PAS5=h
IF "%TYPA2E%"=="5" GOTO TYPA3E
IF "%TYPA2E%"=="6" set PAS5=i
IF "%TYPA2E%"=="7" GOTO TYPA4E
IF "%TYPA2E%"=="8" set PAS5=j
IF "%TYPA2E%"=="9" GOTO TYPA5E
goto LINE6
:TYPA3E
set TYPA3E=%RANDOM:~0,1%
IF "%TYPA3E%"=="0" set PAS5=k
IF "%TYPA3E%"=="1" GOTO TYPA1E
IF "%TYPA3E%"=="2" set PAS5=l
IF "%TYPA3E%"=="3" GOTO TYPA2E
IF "%TYPA3E%"=="4" set PAS5=m
IF "%TYPA3E%"=="5" GOTO TYPA3E
IF "%TYPA3E%"=="6" set PAS5=n
IF "%TYPA3E%"=="7" GOTO TYPA4E
IF "%TYPA3E%"=="8" set PAS5=o
IF "%TYPA3E%"=="9" GOTO TYPA5E
goto LINE6
:TYPA4E
set TYPA4E=%RANDOM:~0,1%
IF "%TYPA4E%"=="0" set PAS5=p
IF "%TYPA4E%"=="1" GOTO TYPA1E
IF "%TYPA4E%"=="2" set PAS5=q
IF "%TYPA4E%"=="3" GOTO TYPA2E
IF "%TYPA4E%"=="4" set PAS5=r
IF "%TYPA4E%"=="5" GOTO TYPA3E
IF "%TYPA4E%"=="6" set PAS5=s
IF "%TYPA4E%"=="7" GOTO TYPA4E
IF "%TYPA4E%"=="8" set PAS5=u
IF "%TYPA4E%"=="9" GOTO TYPA5E
goto LINE6
:TYPA5E
set TYPA5E=%RANDOM:~0,1%
IF "%TYPA5E%"=="0" set PAS5=v
IF "%TYPA5E%"=="1" GOTO TYPA1E
IF "%TYPA5E%"=="2" set PAS5=w
IF "%TYPA5E%"=="3" GOTO TYPA2E
IF "%TYPA5E%"=="4" set PAS5=x
IF "%TYPA5E%"=="5" GOTO TYPA3E
IF "%TYPA5E%"=="6" set PAS5=y
IF "%TYPA5E%"=="7" GOTO TYPA4E
IF "%TYPA5E%"=="8" set PAS5=z
IF "%TYPA5E%"=="9" GOTO TYPA5E
goto LINE6
:LINE6
set STP1F=%RANDOM:~0,1%
IF "%STP1F%"=="0" GOTO NUBR1F
IF "%STP1F%"=="1" GOTO LTRS1F
IF "%STP1F%"=="2" GOTO NUBR1F
IF "%STP1F%"=="3" GOTO LTRS1F
IF "%STP1F%"=="4" GOTO NUBR1F
IF "%STP1F%"=="5" GOTO LTRS1F
IF "%STP1F%"=="6" GOTO NUBR1F
IF "%STP1F%"=="7" GOTO LTRS1F
IF "%STP1F%"=="8" GOTO NUBR1F
IF "%STP1F%"=="9" GOTO LTRS1F
:NUBR1F
set NUBR1F=%RANDOM:~0,1%
set PAS6=%NUBR1F%
goto LINE7
:LTRS1F
set LT1F=%RANDOM:~0,1%
IF "%LT1F%"=="0" GOTO TYPF
IF "%LT1F%"=="1" GOTO CAPF
IF "%LT1F%"=="2" GOTO TYPF
IF "%LT1F%"=="3" GOTO CAPF
IF "%LT1F%"=="4" GOTO TYPF
IF "%LT1F%"=="5" GOTO CAPF
IF "%LT1F%"=="6" GOTO TYPF
IF "%LT1F%"=="7" GOTO CAPF
IF "%LT1F%"=="8" GOTO TYPF
IF "%LT1F%"=="9" GOTO CAPF
:CAPF
:CAPA1F
set CAPA1F=%RANDOM:~0,1%
IF "%CAPA1F%"=="0" set PAS6=A
IF "%CAPA1F%"=="1" GOTO CAPA1F
IF "%CAPA1F%"=="2" set PAS6=B
IF "%CAPA1F%"=="3" GOTO CAPA2F
IF "%CAPA1F%"=="4" set PAS6=C
IF "%CAPA1F%"=="5" GOTO CAPA3F
IF "%CAPA1F%"=="6" set PAS6=D
IF "%CAPA1F%"=="7" GOTO CAPA4F
IF "%CAPA1F%"=="8" set PAS6=E
IF "%CAPA1F%"=="9" GOTO CAPA5F
goto LINE7
:CAPA2F
set CAPA2F=%RANDOM:~0,1%
IF "%CAPA2F%"=="0" set PAS6=F
IF "%CAPA2F%"=="1" GOTO CAPA1F
IF "%CAPA2F%"=="2" set PAS6=G
IF "%CAPA2F%"=="3" GOTO CAPA2F
IF "%CAPA2F%"=="4" set PAS6=H
IF "%CAPA2F%"=="5" GOTO CAPA3F
IF "%CAPA2F%"=="6" set PAS6=I
IF "%CAPA2F%"=="7" GOTO CAPA4F
IF "%CAPA2F%"=="8" set PAS6=J
IF "%CAPA2F%"=="9" GOTO CAPA5F
goto LINE7
:CAPA3F
set CAPA3F=%RANDOM:~0,1%
IF "%CAPA3F%"=="0" set PAS6=K
IF "%CAPA3F%"=="1" GOTO CAPA1F
IF "%CAPA3F%"=="2" set PAS6=L
IF "%CAPA3F%"=="3" GOTO CAPA2F
IF "%CAPA3F%"=="4" set PAS6=M
IF "%CAPA3F%"=="5" GOTO CAPA3F
IF "%CAPA3F%"=="6" set PAS6=N
IF "%CAPA3F%"=="7" GOTO CAPA4F
IF "%CAPA3F%"=="8" set PAS6=O
IF "%CAPA3F%"=="9" GOTO CAPA5F
goto LINE7
:CAPA4F
set CAPA4F=%RANDOM:~0,1%
IF "%CAPA4F%"=="0" set PAS6=P
IF "%CAPA4F%"=="1" GOTO CAPA1F
IF "%CAPA4F%"=="2" set PAS6=Q
IF "%CAPA4F%"=="3" GOTO CAPA2F
IF "%CAPA4F%"=="4" set PAS6=R
IF "%CAPA4F%"=="5" GOTO CAPA3F
IF "%CAPA4F%"=="6" set PAS6=S
IF "%CAPA4F%"=="7" GOTO CAPA4F
IF "%CAPA4F%"=="8" set PAS6=U
IF "%CAPA4F%"=="9" GOTO CAPA5F
goto LINE7
:CAPA5F
set CAPA5F=%RANDOM:~0,1%
IF "%CAPA5F%"=="0" set PAS6=V
IF "%CAPA5F%"=="1" GOTO CAPA1F
IF "%CAPA5F%"=="2" set PAS6=W
IF "%CAPA5F%"=="3" GOTO CAPA2F
IF "%CAPA5F%"=="4" set PAS6=X
IF "%CAPA5F%"=="5" GOTO CAPA3F
IF "%CAPA5F%"=="6" set PAS6=Y
IF "%CAPA5F%"=="7" GOTO CAPA4F
IF "%CAPA5F%"=="8" set PAS6=Z
IF "%CAPA5F%"=="9" GOTO CAPA5F
goto LINE7
:TYPF
:TYPA1F
set TYPA1F=%RANDOM:~0,1%
IF "%TYPA1F%"=="0" set PAS6=a
IF "%TYPA1F%"=="1" GOTO TYPA1F
IF "%TYPA1F%"=="2" set PAS6=b
IF "%TYPA1F%"=="3" GOTO TYPA2F
IF "%TYPA1F%"=="4" set PAS6=c
IF "%TYPA1F%"=="5" GOTO TYPA3F
IF "%TYPA1F%"=="6" set PAS6=d
IF "%TYPA1F%"=="7" GOTO TYPA4F
IF "%TYPA1F%"=="8" set PAS6=e
IF "%TYPA1F%"=="9" GOTO TYPA5F
goto LINE7
:TYPA2F
set TYPA2F=%RANDOM:~0,1%
IF "%TYPA2F%"=="0" set PAS6=f
IF "%TYPA2F%"=="1" GOTO TYPA1F
IF "%TYPA2F%"=="2" set PAS6=g
IF "%TYPA2F%"=="3" GOTO TYPA2F
IF "%TYPA2F%"=="4" set PAS6=h
IF "%TYPA2F%"=="5" GOTO TYPA3F
IF "%TYPA2F%"=="6" set PAS6=i
IF "%TYPA2F%"=="7" GOTO TYPA4F
IF "%TYPA2F%"=="8" set PAS6=j
IF "%TYPA2F%"=="9" GOTO TYPA5F
goto LINE7
:TYPA3F
set TYPA3F=%RANDOM:~0,1%
IF "%TYPA3F%"=="0" set PAS6=k
IF "%TYPA3F%"=="1" GOTO TYPA1F
IF "%TYPA3F%"=="2" set PAS6=l
IF "%TYPA3F%"=="3" GOTO TYPA2F
IF "%TYPA3F%"=="4" set PAS6=m
IF "%TYPA3F%"=="5" GOTO TYPA3F
IF "%TYPA3F%"=="6" set PAS6=n
IF "%TYPA3F%"=="7" GOTO TYPA4F
IF "%TYPA3F%"=="8" set PAS6=o
IF "%TYPA3F%"=="9" GOTO TYPA5F
goto LINE7
:TYPA4F
set TYPA4F=%RANDOM:~0,1%
IF "%TYPA4F%"=="0" set PAS6=p
IF "%TYPA4F%"=="1" GOTO TYPA1F
IF "%TYPA4F%"=="2" set PAS6=q
IF "%TYPA4F%"=="3" GOTO TYPA2F
IF "%TYPA4F%"=="4" set PAS6=r
IF "%TYPA4F%"=="5" GOTO TYPA3F
IF "%TYPA4F%"=="6" set PAS6=s
IF "%TYPA4F%"=="7" GOTO TYPA4F
IF "%TYPA4F%"=="8" set PAS6=u
IF "%TYPA4F%"=="9" GOTO TYPA5F
goto LINE7
:TYPA5F
set TYPA5F=%RANDOM:~0,1%
IF "%TYPA5F%"=="0" set PAS6=v
IF "%TYPA5F%"=="1" GOTO TYPA1F
IF "%TYPA5F%"=="2" set PAS6=w
IF "%TYPA5F%"=="3" GOTO TYPA2F
IF "%TYPA5F%"=="4" set PAS6=x
IF "%TYPA5F%"=="5" GOTO TYPA3F
IF "%TYPA5F%"=="6" set PAS6=y
IF "%TYPA5F%"=="7" GOTO TYPA4F
IF "%TYPA5F%"=="8" set PAS6=z
IF "%TYPA5F%"=="9" GOTO TYPA5F
goto LINE7
:LINE7
set STP1G=%RANDOM:~0,1%
IF "%STP1G%"=="0" GOTO NUBR1G
IF "%STP1G%"=="1" GOTO LTRS1G
IF "%STP1G%"=="2" GOTO NUBR1G
IF "%STP1G%"=="3" GOTO LTRS1G
IF "%STP1G%"=="4" GOTO NUBR1G
IF "%STP1G%"=="5" GOTO LTRS1G
IF "%STP1G%"=="6" GOTO NUBR1G
IF "%STP1G%"=="7" GOTO LTRS1G
IF "%STP1G%"=="8" GOTO NUBR1G
IF "%STP1G%"=="9" GOTO LTRS1G
:NUBR1G
set NUBR1G=%RANDOM:~0,1%
set PAS7=%NUBR1G%
goto LINE8
:LTRS1G
set LT1G=%RANDOM:~0,1%
IF "%LT1G%"=="0" GOTO TYPG
IF "%LT1G%"=="1" GOTO CAPG
IF "%LT1G%"=="2" GOTO TYPG
IF "%LT1G%"=="3" GOTO CAPG
IF "%LT1G%"=="4" GOTO TYPG
IF "%LT1G%"=="5" GOTO CAPG
IF "%LT1G%"=="6" GOTO TYPG
IF "%LT1G%"=="7" GOTO CAPG
IF "%LT1G%"=="8" GOTO TYPG
IF "%LT1G%"=="9" GOTO CAPG
:CAPG
:CAPA1G
set CAPA1G=%RANDOM:~0,1%
IF "%CAPA1G%"=="0" set PAS7=A
IF "%CAPA1G%"=="1" GOTO CAPA1G
IF "%CAPA1G%"=="2" set PAS7=B
IF "%CAPA1G%"=="3" GOTO CAPA2G
IF "%CAPA1G%"=="4" set PAS7=C
IF "%CAPA1G%"=="5" GOTO CAPA3G
IF "%CAPA1G%"=="6" set PAS7=D
IF "%CAPA1G%"=="7" GOTO CAPA4G
IF "%CAPA1G%"=="8" set PAS7=E
IF "%CAPA1G%"=="9" GOTO CAPA5G
goto LINE8
:CAPA2G
set CAPA2G=%RANDOM:~0,1%
IF "%CAPA2G%"=="0" set PAS7=F
IF "%CAPA2G%"=="1" GOTO CAPA1G
IF "%CAPA2G%"=="2" set PAS7=G
IF "%CAPA2G%"=="3" GOTO CAPA2G
IF "%CAPA2G%"=="4" set PAS7=H
IF "%CAPA2G%"=="5" GOTO CAPA3G
IF "%CAPA2G%"=="6" set PAS7=I
IF "%CAPA2G%"=="7" GOTO CAPA4G
IF "%CAPA2G%"=="8" set PAS7=J
IF "%CAPA2G%"=="9" GOTO CAPA5G
goto LINE8
:CAPA3G
set CAPA3G=%RANDOM:~0,1%
IF "%CAPA3G%"=="0" set PAS7=K
IF "%CAPA3G%"=="1" GOTO CAPA1G
IF "%CAPA3G%"=="2" set PAS7=L
IF "%CAPA3G%"=="3" GOTO CAPA2G
IF "%CAPA3G%"=="4" set PAS7=M
IF "%CAPA3G%"=="5" GOTO CAPA3G
IF "%CAPA3G%"=="6" set PAS7=N
IF "%CAPA3G%"=="7" GOTO CAPA4G
IF "%CAPA3G%"=="8" set PAS7=O
IF "%CAPA3G%"=="9" GOTO CAPA5G
goto LINE8
:CAPA4G
set CAPA4G=%RANDOM:~0,1%
IF "%CAPA4G%"=="0" set PAS7=P
IF "%CAPA4G%"=="1" GOTO CAPA1G
IF "%CAPA4G%"=="2" set PAS7=Q
IF "%CAPA4G%"=="3" GOTO CAPA2G
IF "%CAPA4G%"=="4" set PAS7=R
IF "%CAPA4G%"=="5" GOTO CAPA3G
IF "%CAPA4G%"=="6" set PAS7=S
IF "%CAPA4G%"=="7" GOTO CAPA4G
IF "%CAPA4G%"=="8" set PAS7=U
IF "%CAPA4G%"=="9" GOTO CAPA5G
goto LINE8
:CAPA5G
set CAPA5G=%RANDOM:~0,1%
IF "%CAPA5G%"=="0" set PAS7=V
IF "%CAPA5G%"=="1" GOTO CAPA1G
IF "%CAPA5G%"=="2" set PAS7=W
IF "%CAPA5G%"=="3" GOTO CAPA2G
IF "%CAPA5G%"=="4" set PAS7=X
IF "%CAPA5G%"=="5" GOTO CAPA3G
IF "%CAPA5G%"=="6" set PAS7=Y
IF "%CAPA5G%"=="7" GOTO CAPA4G
IF "%CAPA5G%"=="8" set PAS7=Z
IF "%CAPA5G%"=="9" GOTO CAPA5G
goto LINE8
:TYPG
:TYPA1G
set TYPA1G=%RANDOM:~0,1%
IF "%TYPA1G%"=="0" set PAS7=a
IF "%TYPA1G%"=="1" GOTO TYPA1G
IF "%TYPA1G%"=="2" set PAS7=b
IF "%TYPA1G%"=="3" GOTO TYPA2G
IF "%TYPA1G%"=="4" set PAS7=c
IF "%TYPA1G%"=="5" GOTO TYPA3G
IF "%TYPA1G%"=="6" set PAS7=d
IF "%TYPA1G%"=="7" GOTO TYPA4G
IF "%TYPA1G%"=="8" set PAS7=e
IF "%TYPA1G%"=="9" GOTO TYPA5G
goto LINE8
:TYPA2G
set TYPA2G=%RANDOM:~0,1%
IF "%TYPA2G%"=="0" set PAS7=f
IF "%TYPA2G%"=="1" GOTO TYPA1G
IF "%TYPA2G%"=="2" set PAS7=g
IF "%TYPA2G%"=="3" GOTO TYPA2G
IF "%TYPA2G%"=="4" set PAS7=h
IF "%TYPA2G%"=="5" GOTO TYPA3G
IF "%TYPA2G%"=="6" set PAS7=i
IF "%TYPA2G%"=="7" GOTO TYPA4G
IF "%TYPA2G%"=="8" set PAS7=j
IF "%TYPA2G%"=="9" GOTO TYPA5G
goto LINE8
:TYPA3G
set TYPA3G=%RANDOM:~0,1%
IF "%TYPA3G%"=="0" set PAS7=k
IF "%TYPA3G%"=="1" GOTO TYPA1G
IF "%TYPA3G%"=="2" set PAS7=l
IF "%TYPA3G%"=="3" GOTO TYPA2G
IF "%TYPA3G%"=="4" set PAS7=m
IF "%TYPA3G%"=="5" GOTO TYPA3G
IF "%TYPA3G%"=="6" set PAS7=n
IF "%TYPA3G%"=="7" GOTO TYPA4G
IF "%TYPA3G%"=="8" set PAS7=o
IF "%TYPA3G%"=="9" GOTO TYPA5G
goto LINE8
:TYPA4G
set TYPA4G=%RANDOM:~0,1%
IF "%TYPA4G%"=="0" set PAS7=p
IF "%TYPA4G%"=="1" GOTO TYPA1G
IF "%TYPA4G%"=="2" set PAS7=q
IF "%TYPA4G%"=="3" GOTO TYPA2G
IF "%TYPA4G%"=="4" set PAS7=r
IF "%TYPA4G%"=="5" GOTO TYPA3G
IF "%TYPA4G%"=="6" set PAS7=s
IF "%TYPA4G%"=="7" GOTO TYPA4G
IF "%TYPA4G%"=="8" set PAS7=u
IF "%TYPA4G%"=="9" GOTO TYPA5G
goto LINE8
:TYPA5G
set TYPA5G=%RANDOM:~0,1%
IF "%TYPA5G%"=="0" set PAS7=v
IF "%TYPA5G%"=="1" GOTO TYPA1G
IF "%TYPA5G%"=="2" set PAS7=w
IF "%TYPA5G%"=="3" GOTO TYPA2G
IF "%TYPA5G%"=="4" set PAS7=x
IF "%TYPA5G%"=="5" GOTO TYPA3G
IF "%TYPA5G%"=="6" set PAS7=y
IF "%TYPA5G%"=="7" GOTO TYPA4G
IF "%TYPA5G%"=="8" set PAS7=z
IF "%TYPA5G%"=="9" GOTO TYPA5G
goto LINE8
:LINE8
set STP1H=%RANDOM:~0,1%
IF "%STP1H%"=="0" GOTO NUBR1H
IF "%STP1H%"=="1" GOTO LTRS1H
IF "%STP1H%"=="2" GOTO NUBR1H
IF "%STP1H%"=="3" GOTO LTRS1H
IF "%STP1H%"=="4" GOTO NUBR1H
IF "%STP1H%"=="5" GOTO LTRS1H
IF "%STP1H%"=="6" GOTO NUBR1H
IF "%STP1H%"=="7" GOTO LTRS1H
IF "%STP1H%"=="8" GOTO NUBR1H
IF "%STP1H%"=="9" GOTO LTRS1H
:NUBR1H
set NUBR1H=%RANDOM:~0,1%
set PAS8=%NUBR1H%
goto LINE9
:LTRS1H
set LT1H=%RANDOM:~0,1%
IF "%LT1H%"=="0" GOTO TYPH
IF "%LT1H%"=="1" GOTO CAPH
IF "%LT1H%"=="2" GOTO TYPH
IF "%LT1H%"=="3" GOTO CAPH
IF "%LT1H%"=="4" GOTO TYPH
IF "%LT1H%"=="5" GOTO CAPH
IF "%LT1H%"=="6" GOTO TYPH
IF "%LT1H%"=="7" GOTO CAPH
IF "%LT1H%"=="8" GOTO TYPH
IF "%LT1H%"=="9" GOTO CAPH
:CAPH
:CAPA1H
set CAPA1H=%RANDOM:~0,1%
IF "%CAPA1H%"=="0" set PAS8=A
IF "%CAPA1H%"=="1" GOTO CAPA1H
IF "%CAPA1H%"=="2" set PAS8=B
IF "%CAPA1H%"=="3" GOTO CAPA2H
IF "%CAPA1H%"=="4" set PAS8=C
IF "%CAPA1H%"=="5" GOTO CAPA3H
IF "%CAPA1H%"=="6" set PAS8=D
IF "%CAPA1H%"=="7" GOTO CAPA4H
IF "%CAPA1H%"=="8" set PAS8=E
IF "%CAPA1H%"=="9" GOTO CAPA5H
goto LINE9
:CAPA2H
set CAPA2H=%RANDOM:~0,1%
IF "%CAPA2H%"=="0" set PAS8=F
IF "%CAPA2H%"=="1" GOTO CAPA1H
IF "%CAPA2H%"=="2" set PAS8=G
IF "%CAPA2H%"=="3" GOTO CAPA2H
IF "%CAPA2H%"=="4" set PAS8=H
IF "%CAPA2H%"=="5" GOTO CAPA3H
IF "%CAPA2H%"=="6" set PAS8=I
IF "%CAPA2H%"=="7" GOTO CAPA4H
IF "%CAPA2H%"=="8" set PAS8=J
IF "%CAPA2H%"=="9" GOTO CAPA5H
goto LINE9
:CAPA3H
set CAPA3H=%RANDOM:~0,1%
IF "%CAPA3H%"=="0" set PAS8=K
IF "%CAPA3H%"=="1" GOTO CAPA1H
IF "%CAPA3H%"=="2" set PAS8=L
IF "%CAPA3H%"=="3" GOTO CAPA2H
IF "%CAPA3H%"=="4" set PAS8=M
IF "%CAPA3H%"=="5" GOTO CAPA3H
IF "%CAPA3H%"=="6" set PAS8=N
IF "%CAPA3H%"=="7" GOTO CAPA4H
IF "%CAPA3H%"=="8" set PAS8=O
IF "%CAPA3H%"=="9" GOTO CAPA5H
goto LINE9
:CAPA4H
set CAPA4H=%RANDOM:~0,1%
IF "%CAPA4H%"=="0" set PAS8=P
IF "%CAPA4H%"=="1" GOTO CAPA1H
IF "%CAPA4H%"=="2" set PAS8=Q
IF "%CAPA4H%"=="3" GOTO CAPA2H
IF "%CAPA4H%"=="4" set PAS8=R
IF "%CAPA4H%"=="5" GOTO CAPA3H
IF "%CAPA4H%"=="6" set PAS8=S
IF "%CAPA4H%"=="7" GOTO CAPA4H
IF "%CAPA4H%"=="8" set PAS8=U
IF "%CAPA4H%"=="9" GOTO CAPA5H
goto LINE9
:CAPA5H
set CAPA5H=%RANDOM:~0,1%
IF "%CAPA5H%"=="0" set PAS8=V
IF "%CAPA5H%"=="1" GOTO CAPA1H
IF "%CAPA5H%"=="2" set PAS8=W
IF "%CAPA5H%"=="3" GOTO CAPA2H
IF "%CAPA5H%"=="4" set PAS8=X
IF "%CAPA5H%"=="5" GOTO CAPA3H
IF "%CAPA5H%"=="6" set PAS8=Y
IF "%CAPA5H%"=="7" GOTO CAPA4H
IF "%CAPA5H%"=="8" set PAS8=Z
IF "%CAPA5H%"=="9" GOTO CAPA5H
goto LINE9
:TYPH
:TYPA1H
set TYPA1H=%RANDOM:~0,1%
IF "%TYPA1H%"=="0" set PAS8=a
IF "%TYPA1H%"=="1" GOTO TYPA1H
IF "%TYPA1H%"=="2" set PAS8=b
IF "%TYPA1H%"=="3" GOTO TYPA2H
IF "%TYPA1H%"=="4" set PAS8=c
IF "%TYPA1H%"=="5" GOTO TYPA3H
IF "%TYPA1H%"=="6" set PAS8=d
IF "%TYPA1H%"=="7" GOTO TYPA4H
IF "%TYPA1H%"=="8" set PAS8=e
IF "%TYPA1H%"=="9" GOTO TYPA5H
goto LINE9
:TYPA2H
set TYPA2H=%RANDOM:~0,1%
IF "%TYPA2H%"=="0" set PAS8=f
IF "%TYPA2H%"=="1" GOTO TYPA1H
IF "%TYPA2H%"=="2" set PAS8=g
IF "%TYPA2H%"=="3" GOTO TYPA2H
IF "%TYPA2H%"=="4" set PAS8=h
IF "%TYPA2H%"=="5" GOTO TYPA3H
IF "%TYPA2H%"=="6" set PAS8=i
IF "%TYPA2H%"=="7" GOTO TYPA4H
IF "%TYPA2H%"=="8" set PAS8=j
IF "%TYPA2H%"=="9" GOTO TYPA5H
goto LINE9
:TYPA3H
set TYPA3H=%RANDOM:~0,1%
IF "%TYPA3H%"=="0" set PAS8=k
IF "%TYPA3H%"=="1" GOTO TYPA1H
IF "%TYPA3H%"=="2" set PAS8=l
IF "%TYPA3H%"=="3" GOTO TYPA2H
IF "%TYPA3H%"=="4" set PAS8=m
IF "%TYPA3H%"=="5" GOTO TYPA3H
IF "%TYPA3H%"=="6" set PAS8=n
IF "%TYPA3H%"=="7" GOTO TYPA4H
IF "%TYPA3H%"=="8" set PAS8=o
IF "%TYPA3H%"=="9" GOTO TYPA5H
goto LINE9
:TYPA4H
set TYPA4H=%RANDOM:~0,1%
IF "%TYPA4H%"=="0" set PAS8=p
IF "%TYPA4H%"=="1" GOTO TYPA1H
IF "%TYPA4H%"=="2" set PAS8=q
IF "%TYPA4H%"=="3" GOTO TYPA2H
IF "%TYPA4H%"=="4" set PAS8=r
IF "%TYPA4H%"=="5" GOTO TYPA3H
IF "%TYPA4H%"=="6" set PAS8=s
IF "%TYPA4H%"=="7" GOTO TYPA4H
IF "%TYPA4H%"=="8" set PAS8=u
IF "%TYPA4H%"=="9" GOTO TYPA5H
goto LINE9
:TYPA5H
set TYPA5H=%RANDOM:~0,1%
IF "%TYPA5H%"=="0" set PAS8=v
IF "%TYPA5H%"=="1" GOTO TYPA1H
IF "%TYPA5H%"=="2" set PAS8=w
IF "%TYPA5H%"=="3" GOTO TYPA2H
IF "%TYPA5H%"=="4" set PAS8=x
IF "%TYPA5H%"=="5" GOTO TYPA3H
IF "%TYPA5H%"=="6" set PAS8=y
IF "%TYPA5H%"=="7" GOTO TYPA4H
IF "%TYPA5H%"=="8" set PAS8=z
IF "%TYPA5H%"=="9" GOTO TYPA5H
goto LINE9
:LINE9
echo %PAS1%%PAS2%%PAS3%%PAS4%%PAS5%%PAS6%%PAS7%%PAS8% >%windir%\UMBRPAS.inf
echo  Connecting client, Please wait...
for /f %%N in (%windir%\umbrella.inf) do (
for /f %%M in (%windir%\UMBRPAS.inf) do (
echo Hostname : %%N
echo Password : %%M
netsh wlan set hostednetwork mode=allow ssid=%%N key=%%M > nul
echo %%M >Connect.inf
))
netsh wlan start hostednetwork > %windir%\reportumbrella.inf
FIND /C /I "started." %windir%\reportumbrella.inf > nul
IF ERRORLEVEL 1 goto FAILCON
echo ' > "tempON.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "tempON.vbs"
echo speech.speak "UMBRELLA-SERVER Was Connected" >> "tempON.vbs"
attrib +h tempON.vbs
start /wait tempON.vbs
attrib -h tempON.vbs
del tempON.vbs
:NSTP
echo.
set /p IP=Press Enter to Continue... 
cls
goto LOP3
:SEROF
echo.
echo  Disconnecting client, Please wait...
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
echo  Enter Your Network Name                                                            SYSTEM@REN V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  ERROR Failed To Connect                                         UMBRELLA-SERVER Control Panel V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ
echo %date:~4,13% >%windir%\umbrdated.inf
for /f %%M in (%windir%\UMBRPAS.inf) do (
echo  Reconnecting client, Please wait...
netsh wlan stop hostednetwork > nul
timeout /t 7 /nobreak > nul
if NOT EXIST Connect.inf goto LOPDC
for /f %%N in (%windir%\umbrella.inf) do (
echo Hostname : %%N
echo Password : %%M
netsh wlan set hostednetwork mode=allow ssid=%%N key=%%M > nul
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
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
echo  ERROR! Core Load Failed!                                                      UMBRELLA-SERVER V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
timeout /t 5 /nobreak > nul
exit
:ERRORCODE2
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
echo  ERROR! Core File Not Found!                                                   UMBRELLA-SERVER V12.010615
echo ΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝΝ 
timeout /t 5 /nobreak > nul
exit