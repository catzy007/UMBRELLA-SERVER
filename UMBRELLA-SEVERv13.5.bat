mode 106,25
color 02
del Connect.inf
attrib -h tempx.vbs
del tempx.vbs 
setLocal EnableDelayedExpansion
netsh wlan stop hostednetwork > nul
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
echo  [                                      Loading data, Please Wait                                       ] 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
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
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  [============================          Loading data, Please Wait                                       ] 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
netsh wlan set hostednetwork mode=allow ssid=Hidden Network key=%TSAZ% > nul
netsh wlan start hostednetwork > %windir%\repoumbrella.inf
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  [===================================== Loading data, Please Wait                                       ] 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
netsh wlan stop hostednetwork > nul
timeout /t 3 /nobreak > nul
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  [===================================== Loading data, Please Wait ===========================           ] 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
timeout /t 3 /nobreak > nul
FIND /C /I "started." %windir%\repoumbrella.inf > nul
IF ERRORLEVEL 1 goto ERRORCODE1
if EXIST "%windir%\umbrella.inf" goto skipstep1
:NAMEUMBR
echo %date:~4,13% >%windir%\umbrdated.inf
echo %date:~4,13% >%windir%\umbrdate.inf
hostname >%windir%\umbrella.inf
for /f %%o in (%windir%\umbrella.inf) do (
echo %%o@UMBRELLA.net >%windir%\umbrella.inf
)
:skipstep1
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  [===================================== Loading data, Please Wait ======================================] 
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
timeout /t 3 /nobreak > nul
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
echo  Enter Correct Command.                                          UMBRELLA-SERVER Control Panel V13.012815
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
IF NOT DEFINED CHO GOTO LOPDC
if %CHO%== system goto SYSINFC
if %CHO%== system? goto SYSINFC
if %CHO%== SYSTEM goto SYSINFC
if %CHO%== SYSTEM? goto SYSINFC
if %CHO%== system@ren goto SPECIALMODREN
if %CHO%== System@Ren goto SPECIALMODREN
if %CHO%== System@REN goto SPECIALMODREN
if %CHO%== System@ren goto SPECIALMODREN
if %CHO%== SYSTEM@REN goto SPECIALMODREN
if %CHO%== SYSTEM@CPAS goto CPAS
if %CHO%== system@cpas goto CPAS
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
:SYSINFC
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo Welcome Developer. . .
echo  Command list :
echo SYSTEM@REN
echo SYSTEM@CPAS
echo SYSTEM?
echo.
set/p "CHO=Enter Command : "
IF NOT DEFINED CHO GOTO SYSINFC
if %CHO%== system@ren goto SPECIALMODREN
if %CHO%== System@Ren goto SPECIALMODREN
if %CHO%== System@REN goto SPECIALMODREN
if %CHO%== System@ren goto SPECIALMODREN
if %CHO%== SYSTEM@REN goto SPECIALMODREN
if %CHO%== SYSTEM@CPAS goto CPAS
if %CHO%== system@cpas goto CPAS
if %CHO%== system goto SYSINFC
if %CHO%== system? goto SYSINFC
if %CHO%== SYSTEM goto SYSINFC
if %CHO%== SYSTEM? goto SYSINFC
goto LOP2
:SYSINFD
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo Welcome Developer. . .
echo  Command list :
echo SYSTEM@REN
echo SYSTEM@CPAS
echo SYSTEM?
echo.
set/p "CHO=Enter Command : "
IF NOT DEFINED CHO GOTO SYSINFD
if %CHO%== system@ren goto SPECIALMODREN
if %CHO%== System@Ren goto SPECIALMODREN
if %CHO%== System@REN goto SPECIALMODREN
if %CHO%== System@ren goto SPECIALMODREN
if %CHO%== SYSTEM@REN goto SPECIALMODREN
if %CHO%== SYSTEM@CPAS goto CPAS
if %CHO%== system@cpas goto CPAS
if %CHO%== system goto SYSINFD
if %CHO%== system? goto SYSINFD
if %CHO%== SYSTEM goto SYSINFD
if %CHO%== SYSTEM? goto SYSINFD
goto LOPDC
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
IF NOT DEFINED CHO GOTO LOPDC
if %CHO%== system goto SYSINFD
if %CHO%== system? goto SYSINFD
if %CHO%== SYSTEM goto SYSINFD
if %CHO%== SYSTEM? goto SYSINFD
if %CHO%== ON goto SERON
if %CHO%== on goto SERON
if %CHO%== ex goto TEREX
if %CHO%== EX goto TEREX
if %CHO%== exit goto TEREX
if %CHO%== EXIT goto TEREX
if %CHO%== SYSTEM@CPAS goto CPAS
if %CHO%== system@cpas goto CPAS
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
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Connecting Client...                                                          UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
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
set PAS9=1
set PAS10=0
set PAS11=3
set PAS12=3
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
:Line9
set STP1I=%RANDOM:~0,1%
IF "%STP1I%"=="0" GOTO NUBR1I
IF "%STP1I%"=="1" GOTO LTRS1I
IF "%STP1I%"=="2" GOTO NUBR1I
IF "%STP1I%"=="3" GOTO LTRS1I
IF "%STP1I%"=="4" GOTO NUBR1I
IF "%STP1I%"=="5" GOTO LTRS1I
IF "%STP1I%"=="6" GOTO NUBR1I
IF "%STP1I%"=="7" GOTO LTRS1I
IF "%STP1I%"=="8" GOTO NUBR1I
IF "%STP1I%"=="9" GOTO LTRS1I
:NUBR1I
set NUBR1I=%RANDOM:~0,1%
set PAS9=%NUBR1I%
goto LINE10
:LTRS1I
set LT1I=%RANDOM:~0,1%
IF "%LT1I%"=="0" GOTO TYPI
IF "%LT1I%"=="1" GOTO CAPI
IF "%LT1I%"=="2" GOTO TYPI
IF "%LT1I%"=="3" GOTO CAPI
IF "%LT1I%"=="4" GOTO TYPI
IF "%LT1I%"=="5" GOTO CAPI
IF "%LT1I%"=="6" GOTO TYPI
IF "%LT1I%"=="7" GOTO CAPI
IF "%LT1I%"=="8" GOTO TYPI
IF "%LT1I%"=="9" GOTO CAPI
:CAPI
:CAPA1I
set CAPA1I=%RANDOM:~0,1%
IF "%CAPA1I%"=="0" set PAS9=A
IF "%CAPA1I%"=="1" GOTO CAPA1I
IF "%CAPA1I%"=="2" set PAS9=B
IF "%CAPA1I%"=="3" GOTO CAPA2I
IF "%CAPA1I%"=="4" set PAS9=C
IF "%CAPA1I%"=="5" GOTO CAPA3I
IF "%CAPA1I%"=="6" set PAS9=D
IF "%CAPA1I%"=="7" GOTO CAPA4I
IF "%CAPA1I%"=="8" set PAS9=E
IF "%CAPA1I%"=="9" GOTO CAPA5I
goto LINE10
:CAPA2I
set CAPA2I=%RANDOM:~0,1%
IF "%CAPA2I%"=="0" set PAS9=F
IF "%CAPA2I%"=="1" GOTO CAPA1I
IF "%CAPA2I%"=="2" set PAS9=G
IF "%CAPA2I%"=="3" GOTO CAPA2I
IF "%CAPA2I%"=="4" set PAS9=H
IF "%CAPA2I%"=="5" GOTO CAPA3I
IF "%CAPA2I%"=="6" set PAS9=I
IF "%CAPA2I%"=="7" GOTO CAPA4I
IF "%CAPA2I%"=="8" set PAS9=J
IF "%CAPA2I%"=="9" GOTO CAPA5I
goto LINE10
:CAPA3I
set CAPA3I=%RANDOM:~0,1%
IF "%CAPA3I%"=="0" set PAS9=K
IF "%CAPA3I%"=="1" GOTO CAPA1I
IF "%CAPA3I%"=="2" set PAS9=L
IF "%CAPA3I%"=="3" GOTO CAPA2I
IF "%CAPA3I%"=="4" set PAS9=M
IF "%CAPA3I%"=="5" GOTO CAPA3I
IF "%CAPA3I%"=="6" set PAS9=N
IF "%CAPA3I%"=="7" GOTO CAPA4I
IF "%CAPA3I%"=="8" set PAS9=O
IF "%CAPA3I%"=="9" GOTO CAPA5I
goto LINE10
:CAPA4I
set CAPA4I=%RANDOM:~0,1%
IF "%CAPA4I%"=="0" set PAS9=P
IF "%CAPA4I%"=="1" GOTO CAPA1I
IF "%CAPA4I%"=="2" set PAS9=Q
IF "%CAPA4I%"=="3" GOTO CAPA2I
IF "%CAPA4I%"=="4" set PAS9=R
IF "%CAPA4I%"=="5" GOTO CAPA3I
IF "%CAPA4I%"=="6" set PAS9=S
IF "%CAPA4I%"=="7" GOTO CAPA4I
IF "%CAPA4I%"=="8" set PAS9=U
IF "%CAPA4I%"=="9" GOTO CAPA5I
goto LINE10
:CAPA5I
set CAPA5I=%RANDOM:~0,1%
IF "%CAPA5I%"=="0" set PAS9=V
IF "%CAPA5I%"=="1" GOTO CAPA1I
IF "%CAPA5I%"=="2" set PAS9=W
IF "%CAPA5I%"=="3" GOTO CAPA2I
IF "%CAPA5I%"=="4" set PAS9=X
IF "%CAPA5I%"=="5" GOTO CAPA3I
IF "%CAPA5I%"=="6" set PAS9=Y
IF "%CAPA5I%"=="7" GOTO CAPA4I
IF "%CAPA5I%"=="8" set PAS9=Z
IF "%CAPA5I%"=="9" GOTO CAPA5I
goto LINE10
:TYPI
:TYPA1I
set TYPA1I=%RANDOM:~0,1%
IF "%TYPA1I%"=="0" set PAS9=a
IF "%TYPA1I%"=="1" GOTO TYPA1I
IF "%TYPA1I%"=="2" set PAS9=b
IF "%TYPA1I%"=="3" GOTO TYPA2I
IF "%TYPA1I%"=="4" set PAS9=c
IF "%TYPA1I%"=="5" GOTO TYPA3I
IF "%TYPA1I%"=="6" set PAS9=d
IF "%TYPA1I%"=="7" GOTO TYPA4I
IF "%TYPA1I%"=="8" set PAS9=e
IF "%TYPA1I%"=="9" GOTO TYPA5I
goto LINE10
:TYPA2I
set TYPA2I=%RANDOM:~0,1%
IF "%TYPA2I%"=="0" set PAS9=f
IF "%TYPA2I%"=="1" GOTO TYPA1I
IF "%TYPA2I%"=="2" set PAS9=g
IF "%TYPA2I%"=="3" GOTO TYPA2I
IF "%TYPA2I%"=="4" set PAS9=h
IF "%TYPA2I%"=="5" GOTO TYPA3I
IF "%TYPA2I%"=="6" set PAS9=i
IF "%TYPA2I%"=="7" GOTO TYPA4I
IF "%TYPA2I%"=="8" set PAS9=j
IF "%TYPA2I%"=="9" GOTO TYPA5I
goto LINE10
:TYPA3I
set TYPA3I=%RANDOM:~0,1%
IF "%TYPA3I%"=="0" set PAS9=k
IF "%TYPA3I%"=="1" GOTO TYPA1I
IF "%TYPA3I%"=="2" set PAS9=l
IF "%TYPA3I%"=="3" GOTO TYPA2I
IF "%TYPA3I%"=="4" set PAS9=m
IF "%TYPA3I%"=="5" GOTO TYPA3I
IF "%TYPA3I%"=="6" set PAS9=n
IF "%TYPA3I%"=="7" GOTO TYPA4I
IF "%TYPA3I%"=="8" set PAS9=o
IF "%TYPA3I%"=="9" GOTO TYPA5I
goto LINE10
:TYPA4I
set TYPA4I=%RANDOM:~0,1%
IF "%TYPA4I%"=="0" set PAS9=p
IF "%TYPA4I%"=="1" GOTO TYPA1I
IF "%TYPA4I%"=="2" set PAS9=q
IF "%TYPA4I%"=="3" GOTO TYPA2I
IF "%TYPA4I%"=="4" set PAS9=r
IF "%TYPA4I%"=="5" GOTO TYPA3I
IF "%TYPA4I%"=="6" set PAS9=s
IF "%TYPA4I%"=="7" GOTO TYPA4I
IF "%TYPA4I%"=="8" set PAS9=u
IF "%TYPA4I%"=="9" GOTO TYPA5I
goto LINE10
:TYPA5I
set TYPA5I=%RANDOM:~0,1%
IF "%TYPA5I%"=="0" set PAS9=v
IF "%TYPA5I%"=="1" GOTO TYPA1I
IF "%TYPA5I%"=="2" set PAS9=w
IF "%TYPA5I%"=="3" GOTO TYPA2I
IF "%TYPA5I%"=="4" set PAS9=x
IF "%TYPA5I%"=="5" GOTO TYPA3I
IF "%TYPA5I%"=="6" set PAS9=y
IF "%TYPA5I%"=="7" GOTO TYPA4I
IF "%TYPA5I%"=="8" set PAS9=z
IF "%TYPA5I%"=="9" GOTO TYPA5I
goto LINE10
:LINE10
set STP1J=%RANDOM:~0,1%
IF "%STP1J%"=="0" GOTO NUBR1J
IF "%STP1J%"=="1" GOTO LTRS1J
IF "%STP1J%"=="2" GOTO NUBR1J
IF "%STP1J%"=="3" GOTO LTRS1J
IF "%STP1J%"=="4" GOTO NUBR1J
IF "%STP1J%"=="5" GOTO LTRS1J
IF "%STP1J%"=="6" GOTO NUBR1J
IF "%STP1J%"=="7" GOTO LTRS1J
IF "%STP1J%"=="8" GOTO NUBR1J
IF "%STP1J%"=="9" GOTO LTRS1J
:NUBR1J
set NUBR1J=%RANDOM:~0,1%
set PAS10=%NUBR1J%
goto LINE11
:LTRS1J
set LT1J=%RANDOM:~0,1%
IF "%LT1J%"=="0" GOTO TYPJ
IF "%LT1J%"=="1" GOTO CAPJ
IF "%LT1J%"=="2" GOTO TYPJ
IF "%LT1J%"=="3" GOTO CAPJ
IF "%LT1J%"=="4" GOTO TYPJ
IF "%LT1J%"=="5" GOTO CAPJ
IF "%LT1J%"=="6" GOTO TYPJ
IF "%LT1J%"=="7" GOTO CAPJ
IF "%LT1J%"=="8" GOTO TYPJ
IF "%LT1J%"=="9" GOTO CAPJ
:CAPJ
:CAPA1J
set CAPA1J=%RANDOM:~0,1%
IF "%CAPA1J%"=="0" set PAS10=A
IF "%CAPA1J%"=="1" GOTO CAPA1J
IF "%CAPA1J%"=="2" set PAS10=B
IF "%CAPA1J%"=="3" GOTO CAPA2J
IF "%CAPA1J%"=="4" set PAS10=C
IF "%CAPA1J%"=="5" GOTO CAPA3J
IF "%CAPA1J%"=="6" set PAS10=D
IF "%CAPA1J%"=="7" GOTO CAPA4J
IF "%CAPA1J%"=="8" set PAS10=E
IF "%CAPA1J%"=="9" GOTO CAPA5J
goto LINE11
:CAPA2J
set CAPA2J=%RANDOM:~0,1%
IF "%CAPA2J%"=="0" set PAS10=F
IF "%CAPA2J%"=="1" GOTO CAPA1J
IF "%CAPA2J%"=="2" set PAS10=G
IF "%CAPA2J%"=="3" GOTO CAPA2J
IF "%CAPA2J%"=="4" set PAS10=H
IF "%CAPA2J%"=="5" GOTO CAPA3J
IF "%CAPA2J%"=="6" set PAS10=I
IF "%CAPA2J%"=="7" GOTO CAPA4J
IF "%CAPA2J%"=="8" set PAS10=J
IF "%CAPA2J%"=="9" GOTO CAPA5J
goto LINE11
:CAPA3J
set CAPA3J=%RANDOM:~0,1%
IF "%CAPA3J%"=="0" set PAS10=K
IF "%CAPA3J%"=="1" GOTO CAPA1J
IF "%CAPA3J%"=="2" set PAS10=L
IF "%CAPA3J%"=="3" GOTO CAPA2J
IF "%CAPA3J%"=="4" set PAS10=M
IF "%CAPA3J%"=="5" GOTO CAPA3J
IF "%CAPA3J%"=="6" set PAS10=N
IF "%CAPA3J%"=="7" GOTO CAPA4J
IF "%CAPA3J%"=="8" set PAS10=O
IF "%CAPA3J%"=="9" GOTO CAPA5J
goto LINE11
:CAPA4J
set CAPA4J=%RANDOM:~0,1%
IF "%CAPA4J%"=="0" set PAS10=P
IF "%CAPA4J%"=="1" GOTO CAPA1J
IF "%CAPA4J%"=="2" set PAS10=Q
IF "%CAPA4J%"=="3" GOTO CAPA2J
IF "%CAPA4J%"=="4" set PAS10=R
IF "%CAPA4J%"=="5" GOTO CAPA3J
IF "%CAPA4J%"=="6" set PAS10=S
IF "%CAPA4J%"=="7" GOTO CAPA4J
IF "%CAPA4J%"=="8" set PAS10=U
IF "%CAPA4J%"=="9" GOTO CAPA5J
goto LINE11
:CAPA5J
set CAPA5J=%RANDOM:~0,1%
IF "%CAPA5J%"=="0" set PAS10=V
IF "%CAPA5J%"=="1" GOTO CAPA1J
IF "%CAPA5J%"=="2" set PAS10=W
IF "%CAPA5J%"=="3" GOTO CAPA2J
IF "%CAPA5J%"=="4" set PAS10=X
IF "%CAPA5J%"=="5" GOTO CAPA3J
IF "%CAPA5J%"=="6" set PAS10=Y
IF "%CAPA5J%"=="7" GOTO CAPA4J
IF "%CAPA5J%"=="8" set PAS10=Z
IF "%CAPA5J%"=="9" GOTO CAPA5J
goto LINE11
:TYPJ
:TYPA1J
set TYPA1J=%RANDOM:~0,1%
IF "%TYPA1J%"=="0" set PAS10=a
IF "%TYPA1J%"=="1" GOTO TYPA1J
IF "%TYPA1J%"=="2" set PAS10=b
IF "%TYPA1J%"=="3" GOTO TYPA2J
IF "%TYPA1J%"=="4" set PAS10=c
IF "%TYPA1J%"=="5" GOTO TYPA3J
IF "%TYPA1J%"=="6" set PAS10=d
IF "%TYPA1J%"=="7" GOTO TYPA4J
IF "%TYPA1J%"=="8" set PAS10=e
IF "%TYPA1J%"=="9" GOTO TYPA5J
goto LINE11
:TYPA2J
set TYPA2J=%RANDOM:~0,1%
IF "%TYPA2J%"=="0" set PAS10=f
IF "%TYPA2J%"=="1" GOTO TYPA1J
IF "%TYPA2J%"=="2" set PAS10=g
IF "%TYPA2J%"=="3" GOTO TYPA2J
IF "%TYPA2J%"=="4" set PAS10=h
IF "%TYPA2J%"=="5" GOTO TYPA3J
IF "%TYPA2J%"=="6" set PAS10=i
IF "%TYPA2J%"=="7" GOTO TYPA4J
IF "%TYPA2J%"=="8" set PAS10=j
IF "%TYPA2J%"=="9" GOTO TYPA5J
goto LINE11
:TYPA3J
set TYPA3J=%RANDOM:~0,1%
IF "%TYPA3J%"=="0" set PAS10=k
IF "%TYPA3J%"=="1" GOTO TYPA1J
IF "%TYPA3J%"=="2" set PAS10=l
IF "%TYPA3J%"=="3" GOTO TYPA2J
IF "%TYPA3J%"=="4" set PAS10=m
IF "%TYPA3J%"=="5" GOTO TYPA3J
IF "%TYPA3J%"=="6" set PAS10=n
IF "%TYPA3J%"=="7" GOTO TYPA4J
IF "%TYPA3J%"=="8" set PAS10=o
IF "%TYPA3J%"=="9" GOTO TYPA5J
goto LINE11
:TYPA4J
set TYPA4J=%RANDOM:~0,1%
IF "%TYPA4J%"=="0" set PAS10=p
IF "%TYPA4J%"=="1" GOTO TYPA1J
IF "%TYPA4J%"=="2" set PAS10=q
IF "%TYPA4J%"=="3" GOTO TYPA2J
IF "%TYPA4J%"=="4" set PAS10=r
IF "%TYPA4J%"=="5" GOTO TYPA3J
IF "%TYPA4J%"=="6" set PAS10=s
IF "%TYPA4J%"=="7" GOTO TYPA4J
IF "%TYPA4J%"=="8" set PAS10=u
IF "%TYPA4J%"=="9" GOTO TYPA5J
goto LINE11
:TYPA5J
set TYPA5J=%RANDOM:~0,1%
IF "%TYPA5J%"=="0" set PAS10=v
IF "%TYPA5J%"=="1" GOTO TYPA1J
IF "%TYPA5J%"=="2" set PAS10=w
IF "%TYPA5J%"=="3" GOTO TYPA2J
IF "%TYPA5J%"=="4" set PAS10=x
IF "%TYPA5J%"=="5" GOTO TYPA3J
IF "%TYPA5J%"=="6" set PAS10=y
IF "%TYPA5J%"=="7" GOTO TYPA4J
IF "%TYPA5J%"=="8" set PAS10=z
IF "%TYPA5J%"=="9" GOTO TYPA5J
goto LINE11
:LINE11
set STP1K=%RANDOM:~0,1%
IF "%STP1K%"=="0" GOTO NUBR1K
IF "%STP1K%"=="1" GOTO LTRS1K
IF "%STP1K%"=="2" GOTO NUBR1K
IF "%STP1K%"=="3" GOTO LTRS1K
IF "%STP1K%"=="4" GOTO NUBR1K
IF "%STP1K%"=="5" GOTO LTRS1K
IF "%STP1K%"=="6" GOTO NUBR1K
IF "%STP1K%"=="7" GOTO LTRS1K
IF "%STP1K%"=="8" GOTO NUBR1K
IF "%STP1K%"=="9" GOTO LTRS1K
:NUBR1K
set NUBR1K=%RANDOM:~0,1%
set PAS11=%NUBR1K%
goto LINE12
:LTRS1K
set LT1K=%RANDOM:~0,1%
IF "%LT1K%"=="0" GOTO TYPK
IF "%LT1K%"=="1" GOTO CAPK
IF "%LT1K%"=="2" GOTO TYPK
IF "%LT1K%"=="3" GOTO CAPK
IF "%LT1K%"=="4" GOTO TYPK
IF "%LT1K%"=="5" GOTO CAPK
IF "%LT1K%"=="6" GOTO TYPK
IF "%LT1K%"=="7" GOTO CAPK
IF "%LT1K%"=="8" GOTO TYPK
IF "%LT1K%"=="9" GOTO CAPK
:CAPK
:CAPA1K
set CAPA1K=%RANDOM:~0,1%
IF "%CAPA1K%"=="0" set PAS11=A
IF "%CAPA1K%"=="1" GOTO CAPA1K
IF "%CAPA1K%"=="2" set PAS11=B
IF "%CAPA1K%"=="3" GOTO CAPA2K
IF "%CAPA1K%"=="4" set PAS11=C
IF "%CAPA1K%"=="5" GOTO CAPA3K
IF "%CAPA1K%"=="6" set PAS11=D
IF "%CAPA1K%"=="7" GOTO CAPA4K
IF "%CAPA1K%"=="8" set PAS11=E
IF "%CAPA1K%"=="9" GOTO CAPA5K
goto LINE12
:CAPA2K
set CAPA2K=%RANDOM:~0,1%
IF "%CAPA2K%"=="0" set PAS11=F
IF "%CAPA2K%"=="1" GOTO CAPA1K
IF "%CAPA2K%"=="2" set PAS11=G
IF "%CAPA2K%"=="3" GOTO CAPA2K
IF "%CAPA2K%"=="4" set PAS11=H
IF "%CAPA2K%"=="5" GOTO CAPA3K
IF "%CAPA2K%"=="6" set PAS11=I
IF "%CAPA2K%"=="7" GOTO CAPA4K
IF "%CAPA2K%"=="8" set PAS11=J
IF "%CAPA2K%"=="9" GOTO CAPA5K
goto LINE12
:CAPA3K
set CAPA3K=%RANDOM:~0,1%
IF "%CAPA3K%"=="0" set PAS11=K
IF "%CAPA3K%"=="1" GOTO CAPA1K
IF "%CAPA3K%"=="2" set PAS11=L
IF "%CAPA3K%"=="3" GOTO CAPA2K
IF "%CAPA3K%"=="4" set PAS11=M
IF "%CAPA3K%"=="5" GOTO CAPA3K
IF "%CAPA3K%"=="6" set PAS11=N
IF "%CAPA3K%"=="7" GOTO CAPA4K
IF "%CAPA3K%"=="8" set PAS11=O
IF "%CAPA3K%"=="9" GOTO CAPA5K
goto LINE12
:CAPA4K
set CAPA4K=%RANDOM:~0,1%
IF "%CAPA4K%"=="0" set PAS11=P
IF "%CAPA4K%"=="1" GOTO CAPA1K
IF "%CAPA4K%"=="2" set PAS11=Q
IF "%CAPA4K%"=="3" GOTO CAPA2K
IF "%CAPA4K%"=="4" set PAS11=R
IF "%CAPA4K%"=="5" GOTO CAPA3K
IF "%CAPA4K%"=="6" set PAS11=S
IF "%CAPA4K%"=="7" GOTO CAPA4K
IF "%CAPA4K%"=="8" set PAS11=U
IF "%CAPA4K%"=="9" GOTO CAPA5K
goto LINE12
:CAPA5K
set CAPA5K=%RANDOM:~0,1%
IF "%CAPA5K%"=="0" set PAS11=V
IF "%CAPA5K%"=="1" GOTO CAPA1K
IF "%CAPA5K%"=="2" set PAS11=W
IF "%CAPA5K%"=="3" GOTO CAPA2K
IF "%CAPA5K%"=="4" set PAS11=X
IF "%CAPA5K%"=="5" GOTO CAPA3K
IF "%CAPA5K%"=="6" set PAS11=Y
IF "%CAPA5K%"=="7" GOTO CAPA4K
IF "%CAPA5K%"=="8" set PAS11=Z
IF "%CAPA5K%"=="9" GOTO CAPA5K
goto LINE12
:TYPK
:TYPA1K
set TYPA1K=%RANDOM:~0,1%
IF "%TYPA1K%"=="0" set PAS11=a
IF "%TYPA1K%"=="1" GOTO TYPA1K
IF "%TYPA1K%"=="2" set PAS11=b
IF "%TYPA1K%"=="3" GOTO TYPA2K
IF "%TYPA1K%"=="4" set PAS11=c
IF "%TYPA1K%"=="5" GOTO TYPA3K
IF "%TYPA1K%"=="6" set PAS11=d
IF "%TYPA1K%"=="7" GOTO TYPA4K
IF "%TYPA1K%"=="8" set PAS11=e
IF "%TYPA1K%"=="9" GOTO TYPA5K
goto LINE12
:TYPA2K
set TYPA2K=%RANDOM:~0,1%
IF "%TYPA2K%"=="0" set PAS11=f
IF "%TYPA2K%"=="1" GOTO TYPA1K
IF "%TYPA2K%"=="2" set PAS11=g
IF "%TYPA2K%"=="3" GOTO TYPA2K
IF "%TYPA2K%"=="4" set PAS11=h
IF "%TYPA2K%"=="5" GOTO TYPA3K
IF "%TYPA2K%"=="6" set PAS11=i
IF "%TYPA2K%"=="7" GOTO TYPA4K
IF "%TYPA2K%"=="8" set PAS11=j
IF "%TYPA2K%"=="9" GOTO TYPA5K
goto LINE12
:TYPA3K
set TYPA3K=%RANDOM:~0,1%
IF "%TYPA3K%"=="0" set PAS11=k
IF "%TYPA3K%"=="1" GOTO TYPA1K
IF "%TYPA3K%"=="2" set PAS11=l
IF "%TYPA3K%"=="3" GOTO TYPA2K
IF "%TYPA3K%"=="4" set PAS11=m
IF "%TYPA3K%"=="5" GOTO TYPA3K
IF "%TYPA3K%"=="6" set PAS11=n
IF "%TYPA3K%"=="7" GOTO TYPA4K
IF "%TYPA3K%"=="8" set PAS11=o
IF "%TYPA3K%"=="9" GOTO TYPA5K
goto LINE12
:TYPA4K
set TYPA4K=%RANDOM:~0,1%
IF "%TYPA4K%"=="0" set PAS11=p
IF "%TYPA4K%"=="1" GOTO TYPA1K
IF "%TYPA4K%"=="2" set PAS11=q
IF "%TYPA4K%"=="3" GOTO TYPA2K
IF "%TYPA4K%"=="4" set PAS11=r
IF "%TYPA4K%"=="5" GOTO TYPA3K
IF "%TYPA4K%"=="6" set PAS11=s
IF "%TYPA4K%"=="7" GOTO TYPA4K
IF "%TYPA4K%"=="8" set PAS11=u
IF "%TYPA4K%"=="9" GOTO TYPA5K
goto LINE12
:TYPA5K
set TYPA5K=%RANDOM:~0,1%
IF "%TYPA5K%"=="0" set PAS11=v
IF "%TYPA5K%"=="1" GOTO TYPA1K
IF "%TYPA5K%"=="2" set PAS11=w
IF "%TYPA5K%"=="3" GOTO TYPA2K
IF "%TYPA5K%"=="4" set PAS11=x
IF "%TYPA5K%"=="5" GOTO TYPA3K
IF "%TYPA5K%"=="6" set PAS11=y
IF "%TYPA5K%"=="7" GOTO TYPA4K
IF "%TYPA5K%"=="8" set PAS11=z
IF "%TYPA5K%"=="9" GOTO TYPA5K
goto LINE12
:LINE12
set STP1L=%RANDOM:~0,1%
IF "%STP1L%"=="0" GOTO NUBR1L
IF "%STP1L%"=="1" GOTO LTRS1L
IF "%STP1L%"=="2" GOTO NUBR1L
IF "%STP1L%"=="3" GOTO LTRS1L
IF "%STP1L%"=="4" GOTO NUBR1L
IF "%STP1L%"=="5" GOTO LTRS1L
IF "%STP1L%"=="6" GOTO NUBR1L
IF "%STP1L%"=="7" GOTO LTRS1L
IF "%STP1L%"=="8" GOTO NUBR1L
IF "%STP1L%"=="9" GOTO LTRS1L
:NUBR1L
set NUBR1L=%RANDOM:~0,1%
set PAS12=%NUBR1L%
goto LINE13
:LTRS1L
set LT1L=%RANDOM:~0,1%
IF "%LT1L%"=="0" GOTO TYPL
IF "%LT1L%"=="1" GOTO CAPL
IF "%LT1L%"=="2" GOTO TYPL
IF "%LT1L%"=="3" GOTO CAPL
IF "%LT1L%"=="4" GOTO TYPL
IF "%LT1L%"=="5" GOTO CAPL
IF "%LT1L%"=="6" GOTO TYPL
IF "%LT1L%"=="7" GOTO CAPL
IF "%LT1L%"=="8" GOTO TYPL
IF "%LT1L%"=="9" GOTO CAPL
:CAPL
:CAPA1L
set CAPA1L=%RANDOM:~0,1%
IF "%CAPA1L%"=="0" set PAS12=A
IF "%CAPA1L%"=="1" GOTO CAPA1L
IF "%CAPA1L%"=="2" set PAS12=B
IF "%CAPA1L%"=="3" GOTO CAPA2L
IF "%CAPA1L%"=="4" set PAS12=C
IF "%CAPA1L%"=="5" GOTO CAPA3L
IF "%CAPA1L%"=="6" set PAS12=D
IF "%CAPA1L%"=="7" GOTO CAPA4L
IF "%CAPA1L%"=="8" set PAS12=E
IF "%CAPA1L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA2L
set CAPA2L=%RANDOM:~0,1%
IF "%CAPA2L%"=="0" set PAS12=F
IF "%CAPA2L%"=="1" GOTO CAPA1L
IF "%CAPA2L%"=="2" set PAS12=G
IF "%CAPA2L%"=="3" GOTO CAPA2L
IF "%CAPA2L%"=="4" set PAS12=H
IF "%CAPA2L%"=="5" GOTO CAPA3L
IF "%CAPA2L%"=="6" set PAS12=I
IF "%CAPA2L%"=="7" GOTO CAPA4L
IF "%CAPA2L%"=="8" set PAS12=J
IF "%CAPA2L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA3L
set CAPA3L=%RANDOM:~0,1%
IF "%CAPA3L%"=="0" set PAS12=K
IF "%CAPA3L%"=="1" GOTO CAPA1L
IF "%CAPA3L%"=="2" set PAS12=L
IF "%CAPA3L%"=="3" GOTO CAPA2L
IF "%CAPA3L%"=="4" set PAS12=M
IF "%CAPA3L%"=="5" GOTO CAPA3L
IF "%CAPA3L%"=="6" set PAS12=N
IF "%CAPA3L%"=="7" GOTO CAPA4L
IF "%CAPA3L%"=="8" set PAS12=O
IF "%CAPA3L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA4L
set CAPA4L=%RANDOM:~0,1%
IF "%CAPA4L%"=="0" set PAS12=P
IF "%CAPA4L%"=="1" GOTO CAPA1L
IF "%CAPA4L%"=="2" set PAS12=Q
IF "%CAPA4L%"=="3" GOTO CAPA2L
IF "%CAPA4L%"=="4" set PAS12=R
IF "%CAPA4L%"=="5" GOTO CAPA3L
IF "%CAPA4L%"=="6" set PAS12=S
IF "%CAPA4L%"=="7" GOTO CAPA4L
IF "%CAPA4L%"=="8" set PAS12=U
IF "%CAPA4L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA5L
set CAPA5L=%RANDOM:~0,1%
IF "%CAPA5L%"=="0" set PAS12=V
IF "%CAPA5L%"=="1" GOTO CAPA1L
IF "%CAPA5L%"=="2" set PAS12=W
IF "%CAPA5L%"=="3" GOTO CAPA2L
IF "%CAPA5L%"=="4" set PAS12=X
IF "%CAPA5L%"=="5" GOTO CAPA3L
IF "%CAPA5L%"=="6" set PAS12=Y
IF "%CAPA5L%"=="7" GOTO CAPA4L
IF "%CAPA5L%"=="8" set PAS12=Z
IF "%CAPA5L%"=="9" GOTO CAPA5L
goto LINE13
:TYPL
:TYPA1L
set TYPA1L=%RANDOM:~0,1%
IF "%TYPA1L%"=="0" set PAS12=a
IF "%TYPA1L%"=="1" GOTO TYPA1L
IF "%TYPA1L%"=="2" set PAS12=b
IF "%TYPA1L%"=="3" GOTO TYPA2L
IF "%TYPA1L%"=="4" set PAS12=c
IF "%TYPA1L%"=="5" GOTO TYPA3L
IF "%TYPA1L%"=="6" set PAS12=d
IF "%TYPA1L%"=="7" GOTO TYPA4L
IF "%TYPA1L%"=="8" set PAS12=e
IF "%TYPA1L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA2L
set TYPA2L=%RANDOM:~0,1%
IF "%TYPA2L%"=="0" set PAS12=f
IF "%TYPA2L%"=="1" GOTO TYPA1L
IF "%TYPA2L%"=="2" set PAS12=g
IF "%TYPA2L%"=="3" GOTO TYPA2L
IF "%TYPA2L%"=="4" set PAS12=h
IF "%TYPA2L%"=="5" GOTO TYPA3L
IF "%TYPA2L%"=="6" set PAS12=i
IF "%TYPA2L%"=="7" GOTO TYPA4L
IF "%TYPA2L%"=="8" set PAS12=j
IF "%TYPA2L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA3L
set TYPA3L=%RANDOM:~0,1%
IF "%TYPA3L%"=="0" set PAS12=k
IF "%TYPA3L%"=="1" GOTO TYPA1L
IF "%TYPA3L%"=="2" set PAS12=l
IF "%TYPA3L%"=="3" GOTO TYPA2L
IF "%TYPA3L%"=="4" set PAS12=m
IF "%TYPA3L%"=="5" GOTO TYPA3L
IF "%TYPA3L%"=="6" set PAS12=n
IF "%TYPA3L%"=="7" GOTO TYPA4L
IF "%TYPA3L%"=="8" set PAS12=o
IF "%TYPA3L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA4L
set TYPA4L=%RANDOM:~0,1%
IF "%TYPA4L%"=="0" set PAS12=p
IF "%TYPA4L%"=="1" GOTO TYPA1L
IF "%TYPA4L%"=="2" set PAS12=q
IF "%TYPA4L%"=="3" GOTO TYPA2L
IF "%TYPA4L%"=="4" set PAS12=r
IF "%TYPA4L%"=="5" GOTO TYPA3L
IF "%TYPA4L%"=="6" set PAS12=s
IF "%TYPA4L%"=="7" GOTO TYPA4L
IF "%TYPA4L%"=="8" set PAS12=u
IF "%TYPA4L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA5L
set TYPA5L=%RANDOM:~0,1%
IF "%TYPA5L%"=="0" set PAS12=v
IF "%TYPA5L%"=="1" GOTO TYPA1L
IF "%TYPA5L%"=="2" set PAS12=w
IF "%TYPA5L%"=="3" GOTO TYPA2L
IF "%TYPA5L%"=="4" set PAS12=x
IF "%TYPA5L%"=="5" GOTO TYPA3L
IF "%TYPA5L%"=="6" set PAS12=y
IF "%TYPA5L%"=="7" GOTO TYPA4L
IF "%TYPA5L%"=="8" set PAS12=z
IF "%TYPA5L%"=="9" GOTO TYPA5L
goto LINE13
:LINE13
echo %PAS1%%PAS2%%PAS3%%PAS4%%PAS5%%PAS6%%PAS7%%PAS8%%PAS9%%PAS10%%PAS11%%PAS12% >%windir%\UMBRPAS.inf
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
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Enter Your Network Name                                                            SYSTEM@REN V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if EXIST Connect.inf goto LOP2X
set/p "NNAMEX=Network Name : "
echo %NNAMEX%@UMBRELLA.net >%windir%\umbrella.inf
if "%NNAMEX%"=="" goto NAMEUMBR
goto LOPDC
:LOP2X
Echo  CPAS mode only active while server disconnected. . .
timeout /t 5 /nobreak > nul
goto LOP2
:CPAS
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  CPAS Command. . .                                                                 SYSTEM@CPAS V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if NOT EXIST Connect.inf goto LOPDCC
Changing password, Please wait. . . 
echo %RANDOM:~0,1%%RANDOM:~0,1%/%RANDOM:~0,1%%RANDOM:~0,1%/%RANDOM:~0,1%%RANDOM:~0,1%%RANDOM:~0,1%%RANDOM:~0,1% >%windir%\umbrdated.inf
timeout /t 3 /nobreak > nul
goto SERRE
:LOPDCC
Echo  CPAS mode only active while server connected. . .
timeout /t 5 /nobreak > nul
goto LOPDC
:TEREX
echo.
echo  Disconnecting client, Please wait...
netsh wlan stop hostednetwork
cls
del Connect.inf >nul
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
echo  ERROR Failed To Connect                                         UMBRELLA-SERVER Control Panel V13.012815
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
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Disconnecting client, Please wait...
netsh wlan stop hostednetwork > nul
timeout /t 15 /nobreak > nul
if NOT EXIST Connect.inf goto LOPDC
echo %date:~4,13% >%windir%\umbrdate.inf
for /f %%d in (%windir%\umbrdate.inf) do (
for /f %%f in (%windir%\umbrdated.inf) do (
IF "%%f"=="%%d" GOTO DTEPSDX
))
Goto DTEUNPSDX
:DTEPSDX
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Reconnecting client, Please wait...
echo %date:~4,13% >%windir%\umbrdated.inf
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
goto NSTPX
:DTEUNPSDX
echo %date:~4,13% >%windir%\umbrdated.inf
set PMS1=C
set PMS2=A
set PMS3=T
set PMS4=Z
set PMS5=Y
set PMS6=M
set PMS7=B
set PMS8=S
set PMS9=1
set PMS10=0
set PMS11=3
set PMS12=3
:LINE13
set STP1M=%RANDOM:~0,1%
IF "%STP1M%"=="0" GOTO NUBR1M
IF "%STP1M%"=="1" GOTO LTRS1M
IF "%STP1M%"=="2" GOTO NUBR1M
IF "%STP1M%"=="3" GOTO LTRS1M
IF "%STP1M%"=="4" GOTO NUBR1M
IF "%STP1M%"=="5" GOTO LTRS1M
IF "%STP1M%"=="6" GOTO NUBR1M
IF "%STP1M%"=="7" GOTO LTRS1M
IF "%STP1M%"=="8" GOTO NUBR1M
IF "%STP1M%"=="9" GOTO LTRS1M
:NUBR1M
set NUBR1M=%RANDOM:~0,1%
set PMS1=%NUBR1M%
goto LINE14
:LTRS1M
set LT1M=%RANDOM:~0,1%
IF "%LT1M%"=="0" GOTO TYPM
IF "%LT1M%"=="1" GOTO CAPM
IF "%LT1M%"=="2" GOTO TYPM
IF "%LT1M%"=="3" GOTO CAPM
IF "%LT1M%"=="4" GOTO TYPM
IF "%LT1M%"=="5" GOTO CAPM
IF "%LT1M%"=="6" GOTO TYPM
IF "%LT1M%"=="7" GOTO CAPM
IF "%LT1M%"=="8" GOTO TYPM
IF "%LT1M%"=="9" GOTO CAPM
:CAPM
:CAPM1M
set CAPM1M=%RANDOM:~0,1%
IF "%CAPM1M%"=="0" set PMS1=A
IF "%CAPM1M%"=="1" GOTO CAPM1M
IF "%CAPM1M%"=="2" set PMS1=B
IF "%CAPM1M%"=="3" GOTO CAPM2M
IF "%CAPM1M%"=="4" set PMS1=D
IF "%CAPM1M%"=="5" GOTO CAPM3M
IF "%CAPM1M%"=="6" set PMS1=E
IF "%CAPM1M%"=="7" GOTO CAPM4M
IF "%CAPM1M%"=="8" set PMS1=F
IF "%CAPM1M%"=="9" GOTO CAPM5M
goto LINE14
:CAPM2M
set CAPM2M=%RANDOM:~0,1%
IF "%CAPM2M%"=="0" set PMS1=G
IF "%CAPM2M%"=="1" GOTO CAPM1M
IF "%CAPM2M%"=="2" set PMS1=H
IF "%CAPM2M%"=="3" GOTO CAPM2M
IF "%CAPM2M%"=="4" set PMS1=I
IF "%CAPM2M%"=="5" GOTO CAPM3M
IF "%CAPM2M%"=="6" set PMS1=J
IF "%CAPM2M%"=="7" GOTO CAPM4M
IF "%CAPM2M%"=="8" set PMS1=K
IF "%CAPM2M%"=="9" GOTO CAPM5M
goto LINE14
:CAPM3M
set CAPM3M=%RANDOM:~0,1%
IF "%CAPM3M%"=="0" set PMS1=L
IF "%CAPM3M%"=="1" GOTO CAPM1M
IF "%CAPM3M%"=="2" set PMS1=M
IF "%CAPM3M%"=="3" GOTO CAPM2M
IF "%CAPM3M%"=="4" set PMS1=N
IF "%CAPM3M%"=="5" GOTO CAPM3M
IF "%CAPM3M%"=="6" set PMS1=O
IF "%CAPM3M%"=="7" GOTO CAPM4M
IF "%CAPM3M%"=="8" set PMS1=P
IF "%CAPM3M%"=="9" GOTO CAPM5M
goto LINE14
:CAPM4M
set CAPM4M=%RANDOM:~0,1%
IF "%CAPM4M%"=="0" set PMS1=Q
IF "%CAPM4M%"=="1" GOTO CAPM1M
IF "%CAPM4M%"=="2" set PMS1=R
IF "%CAPM4M%"=="3" GOTO CAPM2M
IF "%CAPM4M%"=="4" set PMS1=S
IF "%CAPM4M%"=="5" GOTO CAPM3M
IF "%CAPM4M%"=="6" set PMS1=T
IF "%CAPM4M%"=="7" GOTO CAPM4M
IF "%CAPM4M%"=="8" set PMS1=U
IF "%CAPM4M%"=="9" GOTO CAPM5M
goto LINE14
:CAPM5M
set CAPM5M=%RANDOM:~0,1%
IF "%CAPM5M%"=="0" set PMS1=V
IF "%CAPM5M%"=="1" GOTO CAPM1M
IF "%CAPM5M%"=="2" set PMS1=W
IF "%CAPM5M%"=="3" GOTO CAPM2M
IF "%CAPM5M%"=="4" set PMS1=X
IF "%CAPM5M%"=="5" GOTO CAPM3M
IF "%CAPM5M%"=="6" set PMS1=Y
IF "%CAPM5M%"=="7" GOTO CAPM4M
IF "%CAPM5M%"=="8" set PMS1=Z
IF "%CAPM5M%"=="9" GOTO CAPM5M
goto LINE14
:TYPM
:TYPM1M
set TYPM1M=%RANDOM:~0,1%
IF "%TYPM1M%"=="0" set PMS1=a
IF "%TYPM1M%"=="1" GOTO TYPM1M
IF "%TYPM1M%"=="2" set PMS1=b
IF "%TYPM1M%"=="3" GOTO TYPM2M
IF "%TYPM1M%"=="4" set PMS1=d
IF "%TYPM1M%"=="5" GOTO TYPM3M
IF "%TYPM1M%"=="6" set PMS1=e
IF "%TYPM1M%"=="7" GOTO TYPM4M
IF "%TYPM1M%"=="8" set PMS1=f
IF "%TYPM1M%"=="9" GOTO TYPM5M
goto LINE14
:TYPM2M
set TYPM2M=%RANDOM:~0,1%
IF "%TYPM2M%"=="0" set PMS1=g
IF "%TYPM2M%"=="1" GOTO TYPM1M
IF "%TYPM2M%"=="2" set PMS1=h
IF "%TYPM2M%"=="3" GOTO TYPM2M
IF "%TYPM2M%"=="4" set PMS1=i
IF "%TYPM2M%"=="5" GOTO TYPM3M
IF "%TYPM2M%"=="6" set PMS1=j
IF "%TYPM2M%"=="7" GOTO TYPM4M
IF "%TYPM2M%"=="8" set PMS1=k
IF "%TYPM2M%"=="9" GOTO TYPM5M
goto LINE14
:TYPM3M
set TYPM3M=%RANDOM:~0,1%
IF "%TYPM3M%"=="0" set PMS1=l
IF "%TYPM3M%"=="1" GOTO TYPM1M
IF "%TYPM3M%"=="2" set PMS1=m
IF "%TYPM3M%"=="3" GOTO TYPM2M
IF "%TYPM3M%"=="4" set PMS1=n
IF "%TYPM3M%"=="5" GOTO TYPM3M
IF "%TYPM3M%"=="6" set PMS1=o
IF "%TYPM3M%"=="7" GOTO TYPM4M
IF "%TYPM3M%"=="8" set PMS1=p
IF "%TYPM3M%"=="9" GOTO TYPM5M
goto LINE14
:TYPM4M
set TYPM4M=%RANDOM:~0,1%
IF "%TYPM4M%"=="0" set PMS1=q
IF "%TYPM4M%"=="1" GOTO TYPM1M
IF "%TYPM4M%"=="2" set PMS1=r
IF "%TYPM4M%"=="3" GOTO TYPM2M
IF "%TYPM4M%"=="4" set PMS1=s
IF "%TYPM4M%"=="5" GOTO TYPM3M
IF "%TYPM4M%"=="6" set PMS1=t
IF "%TYPM4M%"=="7" GOTO TYPM4M
IF "%TYPM4M%"=="8" set PMS1=u
IF "%TYPM4M%"=="9" GOTO TYPM5M
goto LINE14
:TYPM5M
set TYPM5M=%RANDOM:~0,1%
IF "%TYPM5M%"=="0" set PMS1=v
IF "%TYPM5M%"=="1" GOTO TYPM1M
IF "%TYPM5M%"=="2" set PMS1=w
IF "%TYPM5M%"=="3" GOTO TYPM2M
IF "%TYPM5M%"=="4" set PMS1=x
IF "%TYPM5M%"=="5" GOTO TYPM3M
IF "%TYPM5M%"=="6" set PMS1=y
IF "%TYPM5M%"=="7" GOTO TYPM4M
IF "%TYPM5M%"=="8" set PMS1=z
IF "%TYPM5M%"=="9" GOTO TYPM5M
goto LINE14
:LINE14
set STP1N=%RANDOM:~0,1%
IF "%STP1N%"=="0" GOTO NUBR1N
IF "%STP1N%"=="1" GOTO LTRS1N
IF "%STP1N%"=="2" GOTO NUBR1N
IF "%STP1N%"=="3" GOTO LTRS1N
IF "%STP1N%"=="4" GOTO NUBR1N
IF "%STP1N%"=="5" GOTO LTRS1N
IF "%STP1N%"=="6" GOTO NUBR1N
IF "%STP1N%"=="7" GOTO LTRS1N
IF "%STP1N%"=="8" GOTO NUBR1N
IF "%STP1N%"=="9" GOTO LTRS1N
:NUBR1N
set NUBR1N=%RANDOM:~0,1%
set PMS2=%NUBR1N%
goto LINE15
:LTRS1N
set LT1N=%RANDOM:~0,1%
IF "%LT1N%"=="0" GOTO TYPN
IF "%LT1N%"=="1" GOTO CAPN
IF "%LT1N%"=="2" GOTO TYPN
IF "%LT1N%"=="3" GOTO CAPN
IF "%LT1N%"=="4" GOTO TYPN
IF "%LT1N%"=="5" GOTO CAPN
IF "%LT1N%"=="6" GOTO TYPN
IF "%LT1N%"=="7" GOTO CAPN
IF "%LT1N%"=="8" GOTO TYPN
IF "%LT1N%"=="9" GOTO CAPN
:CAPN
:CAPM1N
set CAPM1N=%RANDOM:~0,1%
IF "%CAPM1N%"=="0" set PMS2=B
IF "%CAPM1N%"=="1" GOTO CAPM1N
IF "%CAPM1N%"=="2" set PMS2=C
IF "%CAPM1N%"=="3" GOTO CAPM2N
IF "%CAPM1N%"=="4" set PMS2=D
IF "%CAPM1N%"=="5" GOTO CAPM3N
IF "%CAPM1N%"=="6" set PMS2=E
IF "%CAPM1N%"=="7" GOTO CAPM4N
IF "%CAPM1N%"=="8" set PMS2=F
IF "%CAPM1N%"=="9" GOTO CAPM5N
goto LINE15
:CAPM2N
set CAPM2N=%RANDOM:~0,1%
IF "%CAPM2N%"=="0" set PMS2=G
IF "%CAPM2N%"=="1" GOTO CAPM1N
IF "%CAPM2N%"=="2" set PMS2=H
IF "%CAPM2N%"=="3" GOTO CAPM2N
IF "%CAPM2N%"=="4" set PMS2=I
IF "%CAPM2N%"=="5" GOTO CAPM3N
IF "%CAPM2N%"=="6" set PMS2=J
IF "%CAPM2N%"=="7" GOTO CAPM4N
IF "%CAPM2N%"=="8" set PMS2=K
IF "%CAPM2N%"=="9" GOTO CAPM5N
goto LINE15
:CAPM3N
set CAPM3N=%RANDOM:~0,1%
IF "%CAPM3N%"=="0" set PMS2=L
IF "%CAPM3N%"=="1" GOTO CAPM1N
IF "%CAPM3N%"=="2" set PMS2=M
IF "%CAPM3N%"=="3" GOTO CAPM2N
IF "%CAPM3N%"=="4" set PMS2=N
IF "%CAPM3N%"=="5" GOTO CAPM3N
IF "%CAPM3N%"=="6" set PMS2=O
IF "%CAPM3N%"=="7" GOTO CAPM4N
IF "%CAPM3N%"=="8" set PMS2=P
IF "%CAPM3N%"=="9" GOTO CAPM5N
goto LINE15
:CAPM4N
set CAPM4N=%RANDOM:~0,1%
IF "%CAPM4N%"=="0" set PMS2=Q
IF "%CAPM4N%"=="1" GOTO CAPM1N
IF "%CAPM4N%"=="2" set PMS2=R
IF "%CAPM4N%"=="3" GOTO CAPM2N
IF "%CAPM4N%"=="4" set PMS2=S
IF "%CAPM4N%"=="5" GOTO CAPM3N
IF "%CAPM4N%"=="6" set PMS2=T
IF "%CAPM4N%"=="7" GOTO CAPM4N
IF "%CAPM4N%"=="8" set PMS2=U
IF "%CAPM4N%"=="9" GOTO CAPM5N
goto LINE15
:CAPM5N
set CAPM5N=%RANDOM:~0,1%
IF "%CAPM5N%"=="0" set PMS2=V
IF "%CAPM5N%"=="1" GOTO CAPM1N
IF "%CAPM5N%"=="2" set PMS2=W
IF "%CAPM5N%"=="3" GOTO CAPM2N
IF "%CAPM5N%"=="4" set PMS2=X
IF "%CAPM5N%"=="5" GOTO CAPM3N
IF "%CAPM5N%"=="6" set PMS2=Y
IF "%CAPM5N%"=="7" GOTO CAPM4N
IF "%CAPM5N%"=="8" set PMS2=Z
IF "%CAPM5N%"=="9" GOTO CAPM5N
goto LINE15
:TYPN
:TYPM1N
set TYPM1N=%RANDOM:~0,1%
IF "%TYPM1N%"=="0" set PMS2=b
IF "%TYPM1N%"=="1" GOTO TYPM1N
IF "%TYPM1N%"=="2" set PMS2=c
IF "%TYPM1N%"=="3" GOTO TYPM2N
IF "%TYPM1N%"=="4" set PMS2=d
IF "%TYPM1N%"=="5" GOTO TYPM3N
IF "%TYPM1N%"=="6" set PMS2=e
IF "%TYPM1N%"=="7" GOTO TYPM4N
IF "%TYPM1N%"=="8" set PMS2=f
IF "%TYPM1N%"=="9" GOTO TYPM5N
goto LINE15
:TYPM2N
set TYPM2N=%RANDOM:~0,1%
IF "%TYPM2N%"=="0" set PMS2=g
IF "%TYPM2N%"=="1" GOTO TYPM1N
IF "%TYPM2N%"=="2" set PMS2=h
IF "%TYPM2N%"=="3" GOTO TYPM2N
IF "%TYPM2N%"=="4" set PMS2=i
IF "%TYPM2N%"=="5" GOTO TYPM3N
IF "%TYPM2N%"=="6" set PMS2=j
IF "%TYPM2N%"=="7" GOTO TYPM4N
IF "%TYPM2N%"=="8" set PMS2=k
IF "%TYPM2N%"=="9" GOTO TYPM5N
goto LINE15
:TYPM3N
set TYPM3N=%RANDOM:~0,1%
IF "%TYPM3N%"=="0" set PMS2=l
IF "%TYPM3N%"=="1" GOTO TYPM1N
IF "%TYPM3N%"=="2" set PMS2=m
IF "%TYPM3N%"=="3" GOTO TYPM2N
IF "%TYPM3N%"=="4" set PMS2=n
IF "%TYPM3N%"=="5" GOTO TYPM3N
IF "%TYPM3N%"=="6" set PMS2=o
IF "%TYPM3N%"=="7" GOTO TYPM4N
IF "%TYPM3N%"=="8" set PMS2=p
IF "%TYPM3N%"=="9" GOTO TYPM5N
goto LINE15
:TYPM4N
set TYPM4N=%RANDOM:~0,1%
IF "%TYPM4N%"=="0" set PMS2=q
IF "%TYPM4N%"=="1" GOTO TYPM1N
IF "%TYPM4N%"=="2" set PMS2=r
IF "%TYPM4N%"=="3" GOTO TYPM2N
IF "%TYPM4N%"=="4" set PMS2=s
IF "%TYPM4N%"=="5" GOTO TYPM3N
IF "%TYPM4N%"=="6" set PMS2=t
IF "%TYPM4N%"=="7" GOTO TYPM4N
IF "%TYPM4N%"=="8" set PMS2=u
IF "%TYPM4N%"=="9" GOTO TYPM5N
goto LINE15
:TYPM5N
set TYPM5N=%RANDOM:~0,1%
IF "%TYPM5N%"=="0" set PMS2=v
IF "%TYPM5N%"=="1" GOTO TYPM1N
IF "%TYPM5N%"=="2" set PMS2=w
IF "%TYPM5N%"=="3" GOTO TYPM2N
IF "%TYPM5N%"=="4" set PMS2=x
IF "%TYPM5N%"=="5" GOTO TYPM3N
IF "%TYPM5N%"=="6" set PMS2=y
IF "%TYPM5N%"=="7" GOTO TYPM4N
IF "%TYPM5N%"=="8" set PMS2=z
IF "%TYPM5N%"=="9" GOTO TYPM5N
goto LINE15
:LINE15
set STP1O=%RANDOM:~0,1%
IF "%STP1O%"=="0" GOTO NUBR1O
IF "%STP1O%"=="1" GOTO LTRS1O
IF "%STP1O%"=="2" GOTO NUBR1O
IF "%STP1O%"=="3" GOTO LTRS1O
IF "%STP1O%"=="4" GOTO NUBR1O
IF "%STP1O%"=="5" GOTO LTRS1O
IF "%STP1O%"=="6" GOTO NUBR1O
IF "%STP1O%"=="7" GOTO LTRS1O
IF "%STP1O%"=="8" GOTO NUBR1O
IF "%STP1O%"=="9" GOTO LTRS1O
:NUBR1O
set NUBR1O=%RANDOM:~0,1%
set PMS3=%NUBR1O%
goto LINE16
:LTRS1O
set LT1O=%RANDOM:~0,1%
IF "%LT1O%"=="0" GOTO TYPO
IF "%LT1O%"=="1" GOTO CAPO
IF "%LT1O%"=="2" GOTO TYPO
IF "%LT1O%"=="3" GOTO CAPO
IF "%LT1O%"=="4" GOTO TYPO
IF "%LT1O%"=="5" GOTO CAPO
IF "%LT1O%"=="6" GOTO TYPO
IF "%LT1O%"=="7" GOTO CAPO
IF "%LT1O%"=="8" GOTO TYPO
IF "%LT1O%"=="9" GOTO CAPO
:CAPO
:CAPM1O
set CAPM1O=%RANDOM:~0,1%
IF "%CAPM1O%"=="0" set PMS3=A
IF "%CAPM1O%"=="1" GOTO CAPM1O
IF "%CAPM1O%"=="2" set PMS3=B
IF "%CAPM1O%"=="3" GOTO CAPM2O
IF "%CAPM1O%"=="4" set PMS3=C
IF "%CAPM1O%"=="5" GOTO CAPM3O
IF "%CAPM1O%"=="6" set PMS3=D
IF "%CAPM1O%"=="7" GOTO CAPM4O
IF "%CAPM1O%"=="8" set PMS3=E
IF "%CAPM1O%"=="9" GOTO CAPM5O
goto LINE16
:CAPM2O
set CAPM2O=%RANDOM:~0,1%
IF "%CAPM2O%"=="0" set PMS3=F
IF "%CAPM2O%"=="1" GOTO CAPM1O
IF "%CAPM2O%"=="2" set PMS3=G
IF "%CAPM2O%"=="3" GOTO CAPM2O
IF "%CAPM2O%"=="4" set PMS3=H
IF "%CAPM2O%"=="5" GOTO CAPM3O
IF "%CAPM2O%"=="6" set PMS3=I
IF "%CAPM2O%"=="7" GOTO CAPM4O
IF "%CAPM2O%"=="8" set PMS3=J
IF "%CAPM2O%"=="9" GOTO CAPM5O
goto LINE16
:CAPM3O
set CAPM3O=%RANDOM:~0,1%
IF "%CAPM3O%"=="0" set PMS3=K
IF "%CAPM3O%"=="1" GOTO CAPM1O
IF "%CAPM3O%"=="2" set PMS3=L
IF "%CAPM3O%"=="3" GOTO CAPM2O
IF "%CAPM3O%"=="4" set PMS3=M
IF "%CAPM3O%"=="5" GOTO CAPM3O
IF "%CAPM3O%"=="6" set PMS3=N
IF "%CAPM3O%"=="7" GOTO CAPM4O
IF "%CAPM3O%"=="8" set PMS3=O
IF "%CAPM3O%"=="9" GOTO CAPM5O
goto LINE16
:CAPM4O
set CAPM4O=%RANDOM:~0,1%
IF "%CAPM4O%"=="0" set PMS3=P
IF "%CAPM4O%"=="1" GOTO CAPM1O
IF "%CAPM4O%"=="2" set PMS3=Q
IF "%CAPM4O%"=="3" GOTO CAPM2O
IF "%CAPM4O%"=="4" set PMS3=R
IF "%CAPM4O%"=="5" GOTO CAPM3O
IF "%CAPM4O%"=="6" set PMS3=S
IF "%CAPM4O%"=="7" GOTO CAPM4O
IF "%CAPM4O%"=="8" set PMS3=U
IF "%CAPM4O%"=="9" GOTO CAPM5O
goto LINE16
:CAPM5O
set CAPM5O=%RANDOM:~0,1%
IF "%CAPM5O%"=="0" set PMS3=V
IF "%CAPM5O%"=="1" GOTO CAPM1O
IF "%CAPM5O%"=="2" set PMS3=W
IF "%CAPM5O%"=="3" GOTO CAPM2O
IF "%CAPM5O%"=="4" set PMS3=X
IF "%CAPM5O%"=="5" GOTO CAPM3O
IF "%CAPM5O%"=="6" set PMS3=Y
IF "%CAPM5O%"=="7" GOTO CAPM4O
IF "%CAPM5O%"=="8" set PMS3=Z
IF "%CAPM5O%"=="9" GOTO CAPM5O
goto LINE16
:TYPO
:TYPM1O
set TYPM1O=%RANDOM:~0,1%
IF "%TYPM1O%"=="0" set PMS3=a
IF "%TYPM1O%"=="1" GOTO TYPM1O
IF "%TYPM1O%"=="2" set PMS3=b
IF "%TYPM1O%"=="3" GOTO TYPM2O
IF "%TYPM1O%"=="4" set PMS3=c
IF "%TYPM1O%"=="5" GOTO TYPM3O
IF "%TYPM1O%"=="6" set PMS3=d
IF "%TYPM1O%"=="7" GOTO TYPM4O
IF "%TYPM1O%"=="8" set PMS3=e
IF "%TYPM1O%"=="9" GOTO TYPM5O
goto LINE16
:TYPM2O
set TYPM2O=%RANDOM:~0,1%
IF "%TYPM2O%"=="0" set PMS3=f
IF "%TYPM2O%"=="1" GOTO TYPM1O
IF "%TYPM2O%"=="2" set PMS3=g
IF "%TYPM2O%"=="3" GOTO TYPM2O
IF "%TYPM2O%"=="4" set PMS3=h
IF "%TYPM2O%"=="5" GOTO TYPM3O
IF "%TYPM2O%"=="6" set PMS3=i
IF "%TYPM2O%"=="7" GOTO TYPM4O
IF "%TYPM2O%"=="8" set PMS3=j
IF "%TYPM2O%"=="9" GOTO TYPM5O
goto LINE16
:TYPM3O
set TYPM3O=%RANDOM:~0,1%
IF "%TYPM3O%"=="0" set PMS3=k
IF "%TYPM3O%"=="1" GOTO TYPM1O
IF "%TYPM3O%"=="2" set PMS3=l
IF "%TYPM3O%"=="3" GOTO TYPM2O
IF "%TYPM3O%"=="4" set PMS3=m
IF "%TYPM3O%"=="5" GOTO TYPM3O
IF "%TYPM3O%"=="6" set PMS3=n
IF "%TYPM3O%"=="7" GOTO TYPM4O
IF "%TYPM3O%"=="8" set PMS3=o
IF "%TYPM3O%"=="9" GOTO TYPM5O
goto LINE16
:TYPM4O
set TYPM4O=%RANDOM:~0,1%
IF "%TYPM4O%"=="0" set PMS3=p
IF "%TYPM4O%"=="1" GOTO TYPM1O
IF "%TYPM4O%"=="2" set PMS3=q
IF "%TYPM4O%"=="3" GOTO TYPM2O
IF "%TYPM4O%"=="4" set PMS3=r
IF "%TYPM4O%"=="5" GOTO TYPM3O
IF "%TYPM4O%"=="6" set PMS3=s
IF "%TYPM4O%"=="7" GOTO TYPM4O
IF "%TYPM4O%"=="8" set PMS3=u
IF "%TYPM4O%"=="9" GOTO TYPM5O
goto LINE16
:TYPM5O
set TYPM5O=%RANDOM:~0,1%
IF "%TYPM5O%"=="0" set PMS3=v
IF "%TYPM5O%"=="1" GOTO TYPM1O
IF "%TYPM5O%"=="2" set PMS3=w
IF "%TYPM5O%"=="3" GOTO TYPM2O
IF "%TYPM5O%"=="4" set PMS3=x
IF "%TYPM5O%"=="5" GOTO TYPM3O
IF "%TYPM5O%"=="6" set PMS3=y
IF "%TYPM5O%"=="7" GOTO TYPM4O
IF "%TYPM5O%"=="8" set PMS3=z
IF "%TYPM5O%"=="9" GOTO TYPM5O
goto LINE16
:LINE16
set STP1P=%RANDOM:~0,1%
IF "%STP1P%"=="0" GOTO NUBR1P
IF "%STP1P%"=="1" GOTO LTRS1P
IF "%STP1P%"=="2" GOTO NUBR1P
IF "%STP1P%"=="3" GOTO LTRS1P
IF "%STP1P%"=="4" GOTO NUBR1P
IF "%STP1P%"=="5" GOTO LTRS1P
IF "%STP1P%"=="6" GOTO NUBR1P
IF "%STP1P%"=="7" GOTO LTRS1P
IF "%STP1P%"=="8" GOTO NUBR1P
IF "%STP1P%"=="9" GOTO LTRS1P
:NUBR1P
set NUBR1P=%RANDOM:~0,1%
set PMS4=%NUBR1P%
goto LINE17
:LTRS1P
set LT1P=%RANDOM:~0,1%
IF "%LT1P%"=="0" GOTO TYPP
IF "%LT1P%"=="1" GOTO CAPP
IF "%LT1P%"=="2" GOTO TYPP
IF "%LT1P%"=="3" GOTO CAPP
IF "%LT1P%"=="4" GOTO TYPP
IF "%LT1P%"=="5" GOTO CAPP
IF "%LT1P%"=="6" GOTO TYPP
IF "%LT1P%"=="7" GOTO CAPP
IF "%LT1P%"=="8" GOTO TYPP
IF "%LT1P%"=="9" GOTO CAPP
:CAPP
:CAPM1P
set CAPM1P=%RANDOM:~0,1%
IF "%CAPM1P%"=="0" set PMS4=A
IF "%CAPM1P%"=="1" GOTO CAPM1P
IF "%CAPM1P%"=="2" set PMS4=B
IF "%CAPM1P%"=="3" GOTO CAPM2P
IF "%CAPM1P%"=="4" set PMS4=C
IF "%CAPM1P%"=="5" GOTO CAPM3P
IF "%CAPM1P%"=="6" set PMS4=D
IF "%CAPM1P%"=="7" GOTO CAPM4P
IF "%CAPM1P%"=="8" set PMS4=E
IF "%CAPM1P%"=="9" GOTO CAPM5P
goto LINE17
:CAPM2P
set CAPM2P=%RANDOM:~0,1%
IF "%CAPM2P%"=="0" set PMS4=F
IF "%CAPM2P%"=="1" GOTO CAPM1P
IF "%CAPM2P%"=="2" set PMS4=G
IF "%CAPM2P%"=="3" GOTO CAPM2P
IF "%CAPM2P%"=="4" set PMS4=H
IF "%CAPM2P%"=="5" GOTO CAPM3P
IF "%CAPM2P%"=="6" set PMS4=I
IF "%CAPM2P%"=="7" GOTO CAPM4P
IF "%CAPM2P%"=="8" set PMS4=J
IF "%CAPM2P%"=="9" GOTO CAPM5P
goto LINE17
:CAPM3P
set CAPM3P=%RANDOM:~0,1%
IF "%CAPM3P%"=="0" set PMS4=K
IF "%CAPM3P%"=="1" GOTO CAPM1P
IF "%CAPM3P%"=="2" set PMS4=L
IF "%CAPM3P%"=="3" GOTO CAPM2P
IF "%CAPM3P%"=="4" set PMS4=M
IF "%CAPM3P%"=="5" GOTO CAPM3P
IF "%CAPM3P%"=="6" set PMS4=N
IF "%CAPM3P%"=="7" GOTO CAPM4P
IF "%CAPM3P%"=="8" set PMS4=O
IF "%CAPM3P%"=="9" GOTO CAPM5P
goto LINE17
:CAPM4P
set CAPM4P=%RANDOM:~0,1%
IF "%CAPM4P%"=="0" set PMS4=P
IF "%CAPM4P%"=="1" GOTO CAPM1P
IF "%CAPM4P%"=="2" set PMS4=Q
IF "%CAPM4P%"=="3" GOTO CAPM2P
IF "%CAPM4P%"=="4" set PMS4=R
IF "%CAPM4P%"=="5" GOTO CAPM3P
IF "%CAPM4P%"=="6" set PMS4=S
IF "%CAPM4P%"=="7" GOTO CAPM4P
IF "%CAPM4P%"=="8" set PMS4=U
IF "%CAPM4P%"=="9" GOTO CAPM5P
goto LINE17
:CAPM5P
set CAPM5P=%RANDOM:~0,1%
IF "%CAPM5P%"=="0" set PMS4=V
IF "%CAPM5P%"=="1" GOTO CAPM1P
IF "%CAPM5P%"=="2" set PMS4=W
IF "%CAPM5P%"=="3" GOTO CAPM2P
IF "%CAPM5P%"=="4" set PMS4=X
IF "%CAPM5P%"=="5" GOTO CAPM3P
IF "%CAPM5P%"=="6" set PMS4=Y
IF "%CAPM5P%"=="7" GOTO CAPM4P
IF "%CAPM5P%"=="8" set PMS4=Z
IF "%CAPM5P%"=="9" GOTO CAPM5P
goto LINE17
:TYPP
:TYPM1P
set TYPM1P=%RANDOM:~0,1%
IF "%TYPM1P%"=="0" set PMS4=a
IF "%TYPM1P%"=="1" GOTO TYPM1P
IF "%TYPM1P%"=="2" set PMS4=b
IF "%TYPM1P%"=="3" GOTO TYPM2P
IF "%TYPM1P%"=="4" set PMS4=c
IF "%TYPM1P%"=="5" GOTO TYPM3P
IF "%TYPM1P%"=="6" set PMS4=d
IF "%TYPM1P%"=="7" GOTO TYPM4P
IF "%TYPM1P%"=="8" set PMS4=e
IF "%TYPM1P%"=="9" GOTO TYPM5P
goto LINE17
:TYPM2P
set TYPM2P=%RANDOM:~0,1%
IF "%TYPM2P%"=="0" set PMS4=f
IF "%TYPM2P%"=="1" GOTO TYPM1P
IF "%TYPM2P%"=="2" set PMS4=g
IF "%TYPM2P%"=="3" GOTO TYPM2P
IF "%TYPM2P%"=="4" set PMS4=h
IF "%TYPM2P%"=="5" GOTO TYPM3P
IF "%TYPM2P%"=="6" set PMS4=i
IF "%TYPM2P%"=="7" GOTO TYPM4P
IF "%TYPM2P%"=="8" set PMS4=j
IF "%TYPM2P%"=="9" GOTO TYPM5P
goto LINE17
:TYPM3P
set TYPM3P=%RANDOM:~0,1%
IF "%TYPM3P%"=="0" set PMS4=k
IF "%TYPM3P%"=="1" GOTO TYPM1P
IF "%TYPM3P%"=="2" set PMS4=l
IF "%TYPM3P%"=="3" GOTO TYPM2P
IF "%TYPM3P%"=="4" set PMS4=m
IF "%TYPM3P%"=="5" GOTO TYPM3P
IF "%TYPM3P%"=="6" set PMS4=n
IF "%TYPM3P%"=="7" GOTO TYPM4P
IF "%TYPM3P%"=="8" set PMS4=o
IF "%TYPM3P%"=="9" GOTO TYPM5P
goto LINE17
:TYPM4P
set TYPM4P=%RANDOM:~0,1%
IF "%TYPM4P%"=="0" set PMS4=p
IF "%TYPM4P%"=="1" GOTO TYPM1P
IF "%TYPM4P%"=="2" set PMS4=q
IF "%TYPM4P%"=="3" GOTO TYPM2P
IF "%TYPM4P%"=="4" set PMS4=r
IF "%TYPM4P%"=="5" GOTO TYPM3P
IF "%TYPM4P%"=="6" set PMS4=s
IF "%TYPM4P%"=="7" GOTO TYPM4P
IF "%TYPM4P%"=="8" set PMS4=u
IF "%TYPM4P%"=="9" GOTO TYPM5P
goto LINE17
:TYPM5P
set TYPM5P=%RANDOM:~0,1%
IF "%TYPM5P%"=="0" set PMS4=v
IF "%TYPM5P%"=="1" GOTO TYPM1P
IF "%TYPM5P%"=="2" set PMS4=w
IF "%TYPM5P%"=="3" GOTO TYPM2P
IF "%TYPM5P%"=="4" set PMS4=x
IF "%TYPM5P%"=="5" GOTO TYPM3P
IF "%TYPM5P%"=="6" set PMS4=y
IF "%TYPM5P%"=="7" GOTO TYPM4P
IF "%TYPM5P%"=="8" set PMS4=z
IF "%TYPM5P%"=="9" GOTO TYPM5P
goto LINE17
:LINE17
set STP1Q=%RANDOM:~0,1%
IF "%STP1Q%"=="0" GOTO NUBR1Q
IF "%STP1Q%"=="1" GOTO LTRS1Q
IF "%STP1Q%"=="2" GOTO NUBR1Q
IF "%STP1Q%"=="3" GOTO LTRS1Q
IF "%STP1Q%"=="4" GOTO NUBR1Q
IF "%STP1Q%"=="5" GOTO LTRS1Q
IF "%STP1Q%"=="6" GOTO NUBR1Q
IF "%STP1Q%"=="7" GOTO LTRS1Q
IF "%STP1Q%"=="8" GOTO NUBR1Q
IF "%STP1Q%"=="9" GOTO LTRS1Q
:NUBR1Q
set NUBR1Q=%RANDOM:~0,1%
set PMS5=%NUBR1Q%
goto LINE18
:LTRS1Q
set LT1Q=%RANDOM:~0,1%
IF "%LT1Q%"=="0" GOTO TYPQ
IF "%LT1Q%"=="1" GOTO CAPQ
IF "%LT1Q%"=="2" GOTO TYPQ
IF "%LT1Q%"=="3" GOTO CAPQ
IF "%LT1Q%"=="4" GOTO TYPQ
IF "%LT1Q%"=="5" GOTO CAPQ
IF "%LT1Q%"=="6" GOTO TYPQ
IF "%LT1Q%"=="7" GOTO CAPQ
IF "%LT1Q%"=="8" GOTO TYPQ
IF "%LT1Q%"=="9" GOTO CAPQ
:CAPQ
:CAPM1Q
set CAPM1Q=%RANDOM:~0,1%
IF "%CAPM1Q%"=="0" set PMS5=A
IF "%CAPM1Q%"=="1" GOTO CAPM1Q
IF "%CAPM1Q%"=="2" set PMS5=B
IF "%CAPM1Q%"=="3" GOTO CAPM2Q
IF "%CAPM1Q%"=="4" set PMS5=C
IF "%CAPM1Q%"=="5" GOTO CAPM3Q
IF "%CAPM1Q%"=="6" set PMS5=D
IF "%CAPM1Q%"=="7" GOTO CAPM4Q
IF "%CAPM1Q%"=="8" set PMS5=E
IF "%CAPM1Q%"=="9" GOTO CAPM5Q
goto LINE18
:CAPM2Q
set CAPM2Q=%RANDOM:~0,1%
IF "%CAPM2Q%"=="0" set PMS5=F
IF "%CAPM2Q%"=="1" GOTO CAPM1Q
IF "%CAPM2Q%"=="2" set PMS5=G
IF "%CAPM2Q%"=="3" GOTO CAPM2Q
IF "%CAPM2Q%"=="4" set PMS5=H
IF "%CAPM2Q%"=="5" GOTO CAPM3Q
IF "%CAPM2Q%"=="6" set PMS5=I
IF "%CAPM2Q%"=="7" GOTO CAPM4Q
IF "%CAPM2Q%"=="8" set PMS5=J
IF "%CAPM2Q%"=="9" GOTO CAPM5Q
goto LINE18
:CAPM3Q
set CAPM3Q=%RANDOM:~0,1%
IF "%CAPM3Q%"=="0" set PMS5=K
IF "%CAPM3Q%"=="1" GOTO CAPM1Q
IF "%CAPM3Q%"=="2" set PMS5=L
IF "%CAPM3Q%"=="3" GOTO CAPM2Q
IF "%CAPM3Q%"=="4" set PMS5=M
IF "%CAPM3Q%"=="5" GOTO CAPM3Q
IF "%CAPM3Q%"=="6" set PMS5=N
IF "%CAPM3Q%"=="7" GOTO CAPM4Q
IF "%CAPM3Q%"=="8" set PMS5=O
IF "%CAPM3Q%"=="9" GOTO CAPM5Q
goto LINE18
:CAPM4Q
set CAPM4Q=%RANDOM:~0,1%
IF "%CAPM4Q%"=="0" set PMS5=P
IF "%CAPM4Q%"=="1" GOTO CAPM1Q
IF "%CAPM4Q%"=="2" set PMS5=Q
IF "%CAPM4Q%"=="3" GOTO CAPM2Q
IF "%CAPM4Q%"=="4" set PMS5=R
IF "%CAPM4Q%"=="5" GOTO CAPM3Q
IF "%CAPM4Q%"=="6" set PMS5=S
IF "%CAPM4Q%"=="7" GOTO CAPM4Q
IF "%CAPM4Q%"=="8" set PMS5=U
IF "%CAPM4Q%"=="9" GOTO CAPM5Q
goto LINE18
:CAPM5Q
set CAPM5Q=%RANDOM:~0,1%
IF "%CAPM5Q%"=="0" set PMS5=V
IF "%CAPM5Q%"=="1" GOTO CAPM1Q
IF "%CAPM5Q%"=="2" set PMS5=W
IF "%CAPM5Q%"=="3" GOTO CAPM2Q
IF "%CAPM5Q%"=="4" set PMS5=X
IF "%CAPM5Q%"=="5" GOTO CAPM3Q
IF "%CAPM5Q%"=="6" set PMS5=Y
IF "%CAPM5Q%"=="7" GOTO CAPM4Q
IF "%CAPM5Q%"=="8" set PMS5=Z
IF "%CAPM5Q%"=="9" GOTO CAPM5Q
goto LINE18
:TYPQ
:TYPM1Q
set TYPM1Q=%RANDOM:~0,1%
IF "%TYPM1Q%"=="0" set PMS5=a
IF "%TYPM1Q%"=="1" GOTO TYPM1Q
IF "%TYPM1Q%"=="2" set PMS5=b
IF "%TYPM1Q%"=="3" GOTO TYPM2Q
IF "%TYPM1Q%"=="4" set PMS5=c
IF "%TYPM1Q%"=="5" GOTO TYPM3Q
IF "%TYPM1Q%"=="6" set PMS5=d
IF "%TYPM1Q%"=="7" GOTO TYPM4Q
IF "%TYPM1Q%"=="8" set PMS5=e
IF "%TYPM1Q%"=="9" GOTO TYPM5Q
goto LINE18
:TYPM2Q
set TYPM2Q=%RANDOM:~0,1%
IF "%TYPM2Q%"=="0" set PMS5=f
IF "%TYPM2Q%"=="1" GOTO TYPM1Q
IF "%TYPM2Q%"=="2" set PMS5=g
IF "%TYPM2Q%"=="3" GOTO TYPM2Q
IF "%TYPM2Q%"=="4" set PMS5=h
IF "%TYPM2Q%"=="5" GOTO TYPM3Q
IF "%TYPM2Q%"=="6" set PMS5=i
IF "%TYPM2Q%"=="7" GOTO TYPM4Q
IF "%TYPM2Q%"=="8" set PMS5=j
IF "%TYPM2Q%"=="9" GOTO TYPM5Q
goto LINE18
:TYPM3Q
set TYPM3Q=%RANDOM:~0,1%
IF "%TYPM3Q%"=="0" set PMS5=k
IF "%TYPM3Q%"=="1" GOTO TYPM1Q
IF "%TYPM3Q%"=="2" set PMS5=l
IF "%TYPM3Q%"=="3" GOTO TYPM2Q
IF "%TYPM3Q%"=="4" set PMS5=m
IF "%TYPM3Q%"=="5" GOTO TYPM3Q
IF "%TYPM3Q%"=="6" set PMS5=n
IF "%TYPM3Q%"=="7" GOTO TYPM4Q
IF "%TYPM3Q%"=="8" set PMS5=o
IF "%TYPM3Q%"=="9" GOTO TYPM5Q
goto LINE18
:TYPM4Q
set TYPM4Q=%RANDOM:~0,1%
IF "%TYPM4Q%"=="0" set PMS5=p
IF "%TYPM4Q%"=="1" GOTO TYPM1Q
IF "%TYPM4Q%"=="2" set PMS5=q
IF "%TYPM4Q%"=="3" GOTO TYPM2Q
IF "%TYPM4Q%"=="4" set PMS5=r
IF "%TYPM4Q%"=="5" GOTO TYPM3Q
IF "%TYPM4Q%"=="6" set PMS5=s
IF "%TYPM4Q%"=="7" GOTO TYPM4Q
IF "%TYPM4Q%"=="8" set PMS5=u
IF "%TYPM4Q%"=="9" GOTO TYPM5Q
goto LINE18
:TYPM5Q
set TYPM5Q=%RANDOM:~0,1%
IF "%TYPM5Q%"=="0" set PMS5=v
IF "%TYPM5Q%"=="1" GOTO TYPM1Q
IF "%TYPM5Q%"=="2" set PMS5=w
IF "%TYPM5Q%"=="3" GOTO TYPM2Q
IF "%TYPM5Q%"=="4" set PMS5=x
IF "%TYPM5Q%"=="5" GOTO TYPM3Q
IF "%TYPM5Q%"=="6" set PMS5=y
IF "%TYPM5Q%"=="7" GOTO TYPM4Q
IF "%TYPM5Q%"=="8" set PMS5=z
IF "%TYPM5Q%"=="9" GOTO TYPM5Q
goto LINE18
:LINE18
set STP1R=%RANDOM:~0,1%
IF "%STP1R%"=="0" GOTO NUBR1R
IF "%STP1R%"=="1" GOTO LTRS1R
IF "%STP1R%"=="2" GOTO NUBR1R
IF "%STP1R%"=="3" GOTO LTRS1R
IF "%STP1R%"=="4" GOTO NUBR1R
IF "%STP1R%"=="5" GOTO LTRS1R
IF "%STP1R%"=="6" GOTO NUBR1R
IF "%STP1R%"=="7" GOTO LTRS1R
IF "%STP1R%"=="8" GOTO NUBR1R
IF "%STP1R%"=="9" GOTO LTRS1R
:NUBR1R
set NUBR1R=%RANDOM:~0,1%
set PMS6=%NUBR1R%
goto LINE19
:LTRS1R
set LT1R=%RANDOM:~0,1%
IF "%LT1R%"=="0" GOTO TYPR
IF "%LT1R%"=="1" GOTO CAPR
IF "%LT1R%"=="2" GOTO TYPR
IF "%LT1R%"=="3" GOTO CAPR
IF "%LT1R%"=="4" GOTO TYPR
IF "%LT1R%"=="5" GOTO CAPR
IF "%LT1R%"=="6" GOTO TYPR
IF "%LT1R%"=="7" GOTO CAPR
IF "%LT1R%"=="8" GOTO TYPR
IF "%LT1R%"=="9" GOTO CAPR
:CAPR
:CAPM1R
set CAPM1R=%RANDOM:~0,1%
IF "%CAPM1R%"=="0" set PMS6=A
IF "%CAPM1R%"=="1" GOTO CAPM1R
IF "%CAPM1R%"=="2" set PMS6=B
IF "%CAPM1R%"=="3" GOTO CAPM2R
IF "%CAPM1R%"=="4" set PMS6=C
IF "%CAPM1R%"=="5" GOTO CAPM3R
IF "%CAPM1R%"=="6" set PMS6=D
IF "%CAPM1R%"=="7" GOTO CAPM4R
IF "%CAPM1R%"=="8" set PMS6=E
IF "%CAPM1R%"=="9" GOTO CAPM5R
goto LINE19
:CAPM2R
set CAPM2R=%RANDOM:~0,1%
IF "%CAPM2R%"=="0" set PMS6=F
IF "%CAPM2R%"=="1" GOTO CAPM1R
IF "%CAPM2R%"=="2" set PMS6=G
IF "%CAPM2R%"=="3" GOTO CAPM2R
IF "%CAPM2R%"=="4" set PMS6=H
IF "%CAPM2R%"=="5" GOTO CAPM3R
IF "%CAPM2R%"=="6" set PMS6=I
IF "%CAPM2R%"=="7" GOTO CAPM4R
IF "%CAPM2R%"=="8" set PMS6=J
IF "%CAPM2R%"=="9" GOTO CAPM5R
goto LINE19
:CAPM3R
set CAPM3R=%RANDOM:~0,1%
IF "%CAPM3R%"=="0" set PMS6=K
IF "%CAPM3R%"=="1" GOTO CAPM1R
IF "%CAPM3R%"=="2" set PMS6=L
IF "%CAPM3R%"=="3" GOTO CAPM2R
IF "%CAPM3R%"=="4" set PMS6=M
IF "%CAPM3R%"=="5" GOTO CAPM3R
IF "%CAPM3R%"=="6" set PMS6=N
IF "%CAPM3R%"=="7" GOTO CAPM4R
IF "%CAPM3R%"=="8" set PMS6=O
IF "%CAPM3R%"=="9" GOTO CAPM5R
goto LINE19
:CAPM4R
set CAPM4R=%RANDOM:~0,1%
IF "%CAPM4R%"=="0" set PMS6=P
IF "%CAPM4R%"=="1" GOTO CAPM1R
IF "%CAPM4R%"=="2" set PMS6=Q
IF "%CAPM4R%"=="3" GOTO CAPM2R
IF "%CAPM4R%"=="4" set PMS6=R
IF "%CAPM4R%"=="5" GOTO CAPM3R
IF "%CAPM4R%"=="6" set PMS6=S
IF "%CAPM4R%"=="7" GOTO CAPM4R
IF "%CAPM4R%"=="8" set PMS6=U
IF "%CAPM4R%"=="9" GOTO CAPM5R
goto LINE19
:CAPM5R
set CAPM5R=%RANDOM:~0,1%
IF "%CAPM5R%"=="0" set PMS6=V
IF "%CAPM5R%"=="1" GOTO CAPM1R
IF "%CAPM5R%"=="2" set PMS6=W
IF "%CAPM5R%"=="3" GOTO CAPM2R
IF "%CAPM5R%"=="4" set PMS6=X
IF "%CAPM5R%"=="5" GOTO CAPM3R
IF "%CAPM5R%"=="6" set PMS6=Y
IF "%CAPM5R%"=="7" GOTO CAPM4R
IF "%CAPM5R%"=="8" set PMS6=Z
IF "%CAPM5R%"=="9" GOTO CAPM5R
goto LINE19
:TYPR
:TYPM1R
set TYPM1R=%RANDOM:~0,1%
IF "%TYPM1R%"=="0" set PMS6=a
IF "%TYPM1R%"=="1" GOTO TYPM1R
IF "%TYPM1R%"=="2" set PMS6=b
IF "%TYPM1R%"=="3" GOTO TYPM2R
IF "%TYPM1R%"=="4" set PMS6=c
IF "%TYPM1R%"=="5" GOTO TYPM3R
IF "%TYPM1R%"=="6" set PMS6=d
IF "%TYPM1R%"=="7" GOTO TYPM4R
IF "%TYPM1R%"=="8" set PMS6=e
IF "%TYPM1R%"=="9" GOTO TYPM5R
goto LINE19
:TYPM2R
set TYPM2R=%RANDOM:~0,1%
IF "%TYPM2R%"=="0" set PMS6=f
IF "%TYPM2R%"=="1" GOTO TYPM1R
IF "%TYPM2R%"=="2" set PMS6=g
IF "%TYPM2R%"=="3" GOTO TYPM2R
IF "%TYPM2R%"=="4" set PMS6=h
IF "%TYPM2R%"=="5" GOTO TYPM3R
IF "%TYPM2R%"=="6" set PMS6=i
IF "%TYPM2R%"=="7" GOTO TYPM4R
IF "%TYPM2R%"=="8" set PMS6=j
IF "%TYPM2R%"=="9" GOTO TYPM5R
goto LINE19
:TYPM3R
set TYPM3R=%RANDOM:~0,1%
IF "%TYPM3R%"=="0" set PMS6=k
IF "%TYPM3R%"=="1" GOTO TYPM1R
IF "%TYPM3R%"=="2" set PMS6=l
IF "%TYPM3R%"=="3" GOTO TYPM2R
IF "%TYPM3R%"=="4" set PMS6=m
IF "%TYPM3R%"=="5" GOTO TYPM3R
IF "%TYPM3R%"=="6" set PMS6=n
IF "%TYPM3R%"=="7" GOTO TYPM4R
IF "%TYPM3R%"=="8" set PMS6=o
IF "%TYPM3R%"=="9" GOTO TYPM5R
goto LINE19
:TYPM4R
set TYPM4R=%RANDOM:~0,1%
IF "%TYPM4R%"=="0" set PMS6=p
IF "%TYPM4R%"=="1" GOTO TYPM1R
IF "%TYPM4R%"=="2" set PMS6=q
IF "%TYPM4R%"=="3" GOTO TYPM2R
IF "%TYPM4R%"=="4" set PMS6=r
IF "%TYPM4R%"=="5" GOTO TYPM3R
IF "%TYPM4R%"=="6" set PMS6=s
IF "%TYPM4R%"=="7" GOTO TYPM4R
IF "%TYPM4R%"=="8" set PMS6=u
IF "%TYPM4R%"=="9" GOTO TYPM5R
goto LINE19
:TYPM5R
set TYPM5R=%RANDOM:~0,1%
IF "%TYPM5R%"=="0" set PMS6=v
IF "%TYPM5R%"=="1" GOTO TYPM1R
IF "%TYPM5R%"=="2" set PMS6=w
IF "%TYPM5R%"=="3" GOTO TYPM2R
IF "%TYPM5R%"=="4" set PMS6=x
IF "%TYPM5R%"=="5" GOTO TYPM3R
IF "%TYPM5R%"=="6" set PMS6=y
IF "%TYPM5R%"=="7" GOTO TYPM4R
IF "%TYPM5R%"=="8" set PMS6=z
IF "%TYPM5R%"=="9" GOTO TYPM5R
goto LINE19
:LINE19
set STP1S=%RANDOM:~0,1%
IF "%STP1S%"=="0" GOTO NUBR1S
IF "%STP1S%"=="1" GOTO LTRS1S
IF "%STP1S%"=="2" GOTO NUBR1S
IF "%STP1S%"=="3" GOTO LTRS1S
IF "%STP1S%"=="4" GOTO NUBR1S
IF "%STP1S%"=="5" GOTO LTRS1S
IF "%STP1S%"=="6" GOTO NUBR1S
IF "%STP1S%"=="7" GOTO LTRS1S
IF "%STP1S%"=="8" GOTO NUBR1S
IF "%STP1S%"=="9" GOTO LTRS1S
:NUBR1S
set NUBR1S=%RANDOM:~0,1%
set PMS7=%NUBR1S%
goto LINE20
:LTRS1S
set LT1S=%RANDOM:~0,1%
IF "%LT1S%"=="0" GOTO TYPS
IF "%LT1S%"=="1" GOTO CAPS
IF "%LT1S%"=="2" GOTO TYPS
IF "%LT1S%"=="3" GOTO CAPS
IF "%LT1S%"=="4" GOTO TYPS
IF "%LT1S%"=="5" GOTO CAPS
IF "%LT1S%"=="6" GOTO TYPS
IF "%LT1S%"=="7" GOTO CAPS
IF "%LT1S%"=="8" GOTO TYPS
IF "%LT1S%"=="9" GOTO CAPS
:CAPS
:CAPM1S
set CAPM1S=%RANDOM:~0,1%
IF "%CAPM1S%"=="0" set PMS7=A
IF "%CAPM1S%"=="1" GOTO CAPM1S
IF "%CAPM1S%"=="2" set PMS7=B
IF "%CAPM1S%"=="3" GOTO CAPM2S
IF "%CAPM1S%"=="4" set PMS7=C
IF "%CAPM1S%"=="5" GOTO CAPM3S
IF "%CAPM1S%"=="6" set PMS7=D
IF "%CAPM1S%"=="7" GOTO CAPM4S
IF "%CAPM1S%"=="8" set PMS7=E
IF "%CAPM1S%"=="9" GOTO CAPM5S
goto LINE20
:CAPM2S
set CAPM2S=%RANDOM:~0,1%
IF "%CAPM2S%"=="0" set PMS7=F
IF "%CAPM2S%"=="1" GOTO CAPM1S
IF "%CAPM2S%"=="2" set PMS7=G
IF "%CAPM2S%"=="3" GOTO CAPM2S
IF "%CAPM2S%"=="4" set PMS7=H
IF "%CAPM2S%"=="5" GOTO CAPM3S
IF "%CAPM2S%"=="6" set PMS7=I
IF "%CAPM2S%"=="7" GOTO CAPM4S
IF "%CAPM2S%"=="8" set PMS7=J
IF "%CAPM2S%"=="9" GOTO CAPM5S
goto LINE20
:CAPM3S
set CAPM3S=%RANDOM:~0,1%
IF "%CAPM3S%"=="0" set PMS7=K
IF "%CAPM3S%"=="1" GOTO CAPM1S
IF "%CAPM3S%"=="2" set PMS7=L
IF "%CAPM3S%"=="3" GOTO CAPM2S
IF "%CAPM3S%"=="4" set PMS7=M
IF "%CAPM3S%"=="5" GOTO CAPM3S
IF "%CAPM3S%"=="6" set PMS7=N
IF "%CAPM3S%"=="7" GOTO CAPM4S
IF "%CAPM3S%"=="8" set PMS7=O
IF "%CAPM3S%"=="9" GOTO CAPM5S
goto LINE20
:CAPM4S
set CAPM4S=%RANDOM:~0,1%
IF "%CAPM4S%"=="0" set PMS7=P
IF "%CAPM4S%"=="1" GOTO CAPM1S
IF "%CAPM4S%"=="2" set PMS7=Q
IF "%CAPM4S%"=="3" GOTO CAPM2S
IF "%CAPM4S%"=="4" set PMS7=R
IF "%CAPM4S%"=="5" GOTO CAPM3S
IF "%CAPM4S%"=="6" set PMS7=S
IF "%CAPM4S%"=="7" GOTO CAPM4S
IF "%CAPM4S%"=="8" set PMS7=U
IF "%CAPM4S%"=="9" GOTO CAPM5S
goto LINE20
:CAPM5S
set CAPM5S=%RANDOM:~0,1%
IF "%CAPM5S%"=="0" set PMS7=V
IF "%CAPM5S%"=="1" GOTO CAPM1S
IF "%CAPM5S%"=="2" set PMS7=W
IF "%CAPM5S%"=="3" GOTO CAPM2S
IF "%CAPM5S%"=="4" set PMS7=X
IF "%CAPM5S%"=="5" GOTO CAPM3S
IF "%CAPM5S%"=="6" set PMS7=Y
IF "%CAPM5S%"=="7" GOTO CAPM4S
IF "%CAPM5S%"=="8" set PMS7=Z
IF "%CAPM5S%"=="9" GOTO CAPM5S
goto LINE20
:TYPS
:TYPM1S
set TYPM1S=%RANDOM:~0,1%
IF "%TYPM1S%"=="0" set PMS7=a
IF "%TYPM1S%"=="1" GOTO TYPM1S
IF "%TYPM1S%"=="2" set PMS7=b
IF "%TYPM1S%"=="3" GOTO TYPM2S
IF "%TYPM1S%"=="4" set PMS7=c
IF "%TYPM1S%"=="5" GOTO TYPM3S
IF "%TYPM1S%"=="6" set PMS7=d
IF "%TYPM1S%"=="7" GOTO TYPM4S
IF "%TYPM1S%"=="8" set PMS7=e
IF "%TYPM1S%"=="9" GOTO TYPM5S
goto LINE20
:TYPM2S
set TYPM2S=%RANDOM:~0,1%
IF "%TYPM2S%"=="0" set PMS7=f
IF "%TYPM2S%"=="1" GOTO TYPM1S
IF "%TYPM2S%"=="2" set PMS7=g
IF "%TYPM2S%"=="3" GOTO TYPM2S
IF "%TYPM2S%"=="4" set PMS7=h
IF "%TYPM2S%"=="5" GOTO TYPM3S
IF "%TYPM2S%"=="6" set PMS7=i
IF "%TYPM2S%"=="7" GOTO TYPM4S
IF "%TYPM2S%"=="8" set PMS7=j
IF "%TYPM2S%"=="9" GOTO TYPM5S
goto LINE20
:TYPM3S
set TYPM3S=%RANDOM:~0,1%
IF "%TYPM3S%"=="0" set PMS7=k
IF "%TYPM3S%"=="1" GOTO TYPM1S
IF "%TYPM3S%"=="2" set PMS7=l
IF "%TYPM3S%"=="3" GOTO TYPM2S
IF "%TYPM3S%"=="4" set PMS7=m
IF "%TYPM3S%"=="5" GOTO TYPM3S
IF "%TYPM3S%"=="6" set PMS7=n
IF "%TYPM3S%"=="7" GOTO TYPM4S
IF "%TYPM3S%"=="8" set PMS7=o
IF "%TYPM3S%"=="9" GOTO TYPM5S
goto LINE20
:TYPM4S
set TYPM4S=%RANDOM:~0,1%
IF "%TYPM4S%"=="0" set PMS7=p
IF "%TYPM4S%"=="1" GOTO TYPM1S
IF "%TYPM4S%"=="2" set PMS7=q
IF "%TYPM4S%"=="3" GOTO TYPM2S
IF "%TYPM4S%"=="4" set PMS7=r
IF "%TYPM4S%"=="5" GOTO TYPM3S
IF "%TYPM4S%"=="6" set PMS7=s
IF "%TYPM4S%"=="7" GOTO TYPM4S
IF "%TYPM4S%"=="8" set PMS7=u
IF "%TYPM4S%"=="9" GOTO TYPM5S
goto LINE20
:TYPM5S
set TYPM5S=%RANDOM:~0,1%
IF "%TYPM5S%"=="0" set PMS7=v
IF "%TYPM5S%"=="1" GOTO TYPM1S
IF "%TYPM5S%"=="2" set PMS7=w
IF "%TYPM5S%"=="3" GOTO TYPM2S
IF "%TYPM5S%"=="4" set PMS7=x
IF "%TYPM5S%"=="5" GOTO TYPM3S
IF "%TYPM5S%"=="6" set PMS7=y
IF "%TYPM5S%"=="7" GOTO TYPM4S
IF "%TYPM5S%"=="8" set PMS7=z
IF "%TYPM5S%"=="9" GOTO TYPM5S
goto LINE20
:LINE20
set STP1T=%RANDOM:~0,1%
IF "%STP1T%"=="0" GOTO NUBR1T
IF "%STP1T%"=="1" GOTO LTRS1T
IF "%STP1T%"=="2" GOTO NUBR1T
IF "%STP1T%"=="3" GOTO LTRS1T
IF "%STP1T%"=="4" GOTO NUBR1T
IF "%STP1T%"=="5" GOTO LTRS1T
IF "%STP1T%"=="6" GOTO NUBR1T
IF "%STP1T%"=="7" GOTO LTRS1T
IF "%STP1T%"=="8" GOTO NUBR1T
IF "%STP1T%"=="9" GOTO LTRS1T
:NUBR1T
set NUBR1T=%RANDOM:~0,1%
set PMS8=%NUBR1T%
goto LINE21
:LTRS1T
set LT1T=%RANDOM:~0,1%
IF "%LT1T%"=="0" GOTO TYPT
IF "%LT1T%"=="1" GOTO CAPT
IF "%LT1T%"=="2" GOTO TYPT
IF "%LT1T%"=="3" GOTO CAPT
IF "%LT1T%"=="4" GOTO TYPT
IF "%LT1T%"=="5" GOTO CAPT
IF "%LT1T%"=="6" GOTO TYPT
IF "%LT1T%"=="7" GOTO CAPT
IF "%LT1T%"=="8" GOTO TYPT
IF "%LT1T%"=="9" GOTO CAPT
:CAPT
:CAPM1T
set CAPM1T=%RANDOM:~0,1%
IF "%CAPM1T%"=="0" set PMS8=A
IF "%CAPM1T%"=="1" GOTO CAPM1T
IF "%CAPM1T%"=="2" set PMS8=B
IF "%CAPM1T%"=="3" GOTO CAPM2T
IF "%CAPM1T%"=="4" set PMS8=C
IF "%CAPM1T%"=="5" GOTO CAPM3T
IF "%CAPM1T%"=="6" set PMS8=D
IF "%CAPM1T%"=="7" GOTO CAPM4T
IF "%CAPM1T%"=="8" set PMS8=E
IF "%CAPM1T%"=="9" GOTO CAPM5T
goto LINE21
:CAPM2T
set CAPM2T=%RANDOM:~0,1%
IF "%CAPM2T%"=="0" set PMS8=F
IF "%CAPM2T%"=="1" GOTO CAPM1T
IF "%CAPM2T%"=="2" set PMS8=G
IF "%CAPM2T%"=="3" GOTO CAPM2T
IF "%CAPM2T%"=="4" set PMS8=H
IF "%CAPM2T%"=="5" GOTO CAPM3T
IF "%CAPM2T%"=="6" set PMS8=I
IF "%CAPM2T%"=="7" GOTO CAPM4T
IF "%CAPM2T%"=="8" set PMS8=J
IF "%CAPM2T%"=="9" GOTO CAPM5T
goto LINE21
:CAPM3T
set CAPM3T=%RANDOM:~0,1%
IF "%CAPM3T%"=="0" set PMS8=K
IF "%CAPM3T%"=="1" GOTO CAPM1T
IF "%CAPM3T%"=="2" set PMS8=L
IF "%CAPM3T%"=="3" GOTO CAPM2T
IF "%CAPM3T%"=="4" set PMS8=M
IF "%CAPM3T%"=="5" GOTO CAPM3T
IF "%CAPM3T%"=="6" set PMS8=N
IF "%CAPM3T%"=="7" GOTO CAPM4T
IF "%CAPM3T%"=="8" set PMS8=O
IF "%CAPM3T%"=="9" GOTO CAPM5T
goto LINE21
:CAPM4T
set CAPM4T=%RANDOM:~0,1%
IF "%CAPM4T%"=="0" set PMS8=P
IF "%CAPM4T%"=="1" GOTO CAPM1T
IF "%CAPM4T%"=="2" set PMS8=Q
IF "%CAPM4T%"=="3" GOTO CAPM2T
IF "%CAPM4T%"=="4" set PMS8=R
IF "%CAPM4T%"=="5" GOTO CAPM3T
IF "%CAPM4T%"=="6" set PMS8=S
IF "%CAPM4T%"=="7" GOTO CAPM4T
IF "%CAPM4T%"=="8" set PMS8=U
IF "%CAPM4T%"=="9" GOTO CAPM5T
goto LINE21
:CAPM5T
set CAPM5T=%RANDOM:~0,1%
IF "%CAPM5T%"=="0" set PMS8=V
IF "%CAPM5T%"=="1" GOTO CAPM1T
IF "%CAPM5T%"=="2" set PMS8=W
IF "%CAPM5T%"=="3" GOTO CAPM2T
IF "%CAPM5T%"=="4" set PMS8=X
IF "%CAPM5T%"=="5" GOTO CAPM3T
IF "%CAPM5T%"=="6" set PMS8=Y
IF "%CAPM5T%"=="7" GOTO CAPM4T
IF "%CAPM5T%"=="8" set PMS8=Z
IF "%CAPM5T%"=="9" GOTO CAPM5T
goto LINE21
:TYPT
:TYPM1T
set TYPM1T=%RANDOM:~0,1%
IF "%TYPM1T%"=="0" set PMS8=a
IF "%TYPM1T%"=="1" GOTO TYPM1T
IF "%TYPM1T%"=="2" set PMS8=b
IF "%TYPM1T%"=="3" GOTO TYPM2T
IF "%TYPM1T%"=="4" set PMS8=c
IF "%TYPM1T%"=="5" GOTO TYPM3T
IF "%TYPM1T%"=="6" set PMS8=d
IF "%TYPM1T%"=="7" GOTO TYPM4T
IF "%TYPM1T%"=="8" set PMS8=e
IF "%TYPM1T%"=="9" GOTO TYPM5T
goto LINE21
:TYPM2T
set TYPM2T=%RANDOM:~0,1%
IF "%TYPM2T%"=="0" set PMS8=f
IF "%TYPM2T%"=="1" GOTO TYPM1T
IF "%TYPM2T%"=="2" set PMS8=g
IF "%TYPM2T%"=="3" GOTO TYPM2T
IF "%TYPM2T%"=="4" set PMS8=h
IF "%TYPM2T%"=="5" GOTO TYPM3T
IF "%TYPM2T%"=="6" set PMS8=i
IF "%TYPM2T%"=="7" GOTO TYPM4T
IF "%TYPM2T%"=="8" set PMS8=j
IF "%TYPM2T%"=="9" GOTO TYPM5T
goto LINE21
:TYPM3T
set TYPM3T=%RANDOM:~0,1%
IF "%TYPM3T%"=="0" set PMS8=k
IF "%TYPM3T%"=="1" GOTO TYPM1T
IF "%TYPM3T%"=="2" set PMS8=l
IF "%TYPM3T%"=="3" GOTO TYPM2T
IF "%TYPM3T%"=="4" set PMS8=m
IF "%TYPM3T%"=="5" GOTO TYPM3T
IF "%TYPM3T%"=="6" set PMS8=n
IF "%TYPM3T%"=="7" GOTO TYPM4T
IF "%TYPM3T%"=="8" set PMS8=o
IF "%TYPM3T%"=="9" GOTO TYPM5T
goto LINE21
:TYPM4T
set TYPM4T=%RANDOM:~0,1%
IF "%TYPM4T%"=="0" set PMS8=p
IF "%TYPM4T%"=="1" GOTO TYPM1T
IF "%TYPM4T%"=="2" set PMS8=q
IF "%TYPM4T%"=="3" GOTO TYPM2T
IF "%TYPM4T%"=="4" set PMS8=r
IF "%TYPM4T%"=="5" GOTO TYPM3T
IF "%TYPM4T%"=="6" set PMS8=s
IF "%TYPM4T%"=="7" GOTO TYPM4T
IF "%TYPM4T%"=="8" set PMS8=u
IF "%TYPM4T%"=="9" GOTO TYPM5T
goto LINE21
:TYPM5T
set TYPM5T=%RANDOM:~0,1%
IF "%TYPM5T%"=="0" set PMS8=v
IF "%TYPM5T%"=="1" GOTO TYPM1T
IF "%TYPM5T%"=="2" set PMS8=w
IF "%TYPM5T%"=="3" GOTO TYPM2T
IF "%TYPM5T%"=="4" set PMS8=x
IF "%TYPM5T%"=="5" GOTO TYPM3T
IF "%TYPM5T%"=="6" set PMS8=y
IF "%TYPM5T%"=="7" GOTO TYPM4T
IF "%TYPM5T%"=="8" set PMS8=z
IF "%TYPM5T%"=="9" GOTO TYPM5T
goto LINE21
:LINE21
set STP1U=%RANDOM:~0,1%
IF "%STP1U%"=="0" GOTO NUBR1U
IF "%STP1U%"=="1" GOTO LTRS1U
IF "%STP1U%"=="2" GOTO NUBR1U
IF "%STP1U%"=="3" GOTO LTRS1U
IF "%STP1U%"=="4" GOTO NUBR1U
IF "%STP1U%"=="5" GOTO LTRS1U
IF "%STP1U%"=="6" GOTO NUBR1U
IF "%STP1U%"=="7" GOTO LTRS1U
IF "%STP1U%"=="8" GOTO NUBR1U
IF "%STP1U%"=="9" GOTO LTRS1U
:NUBR1U
set NUBR1U=%RANDOM:~0,1%
set PMS9=%NUBR1U%
goto LINE22
:LTRS1U
set LT1U=%RANDOM:~0,1%
IF "%LT1U%"=="0" GOTO TYPU
IF "%LT1U%"=="1" GOTO CAPU
IF "%LT1U%"=="2" GOTO TYPU
IF "%LT1U%"=="3" GOTO CAPU
IF "%LT1U%"=="4" GOTO TYPU
IF "%LT1U%"=="5" GOTO CAPU
IF "%LT1U%"=="6" GOTO TYPU
IF "%LT1U%"=="7" GOTO CAPU
IF "%LT1U%"=="8" GOTO TYPU
IF "%LT1U%"=="9" GOTO CAPU
:CAPU
:CAPM1U
set CAPM1U=%RANDOM:~0,1%
IF "%CAPM1U%"=="0" set PMS9=A
IF "%CAPM1U%"=="1" GOTO CAPM1U
IF "%CAPM1U%"=="2" set PMS9=B
IF "%CAPM1U%"=="3" GOTO CAPM2U
IF "%CAPM1U%"=="4" set PMS9=C
IF "%CAPM1U%"=="5" GOTO CAPM3U
IF "%CAPM1U%"=="6" set PMS9=D
IF "%CAPM1U%"=="7" GOTO CAPM4U
IF "%CAPM1U%"=="8" set PMS9=E
IF "%CAPM1U%"=="9" GOTO CAPM5U
goto LINE22
:CAPM2U
set CAPM2U=%RANDOM:~0,1%
IF "%CAPM2U%"=="0" set PMS9=F
IF "%CAPM2U%"=="1" GOTO CAPM1U
IF "%CAPM2U%"=="2" set PMS9=G
IF "%CAPM2U%"=="3" GOTO CAPM2U
IF "%CAPM2U%"=="4" set PMS9=H
IF "%CAPM2U%"=="5" GOTO CAPM3U
IF "%CAPM2U%"=="6" set PMS9=I
IF "%CAPM2U%"=="7" GOTO CAPM4U
IF "%CAPM2U%"=="8" set PMS9=J
IF "%CAPM2U%"=="9" GOTO CAPM5U
goto LINE22
:CAPM3U
set CAPM3U=%RANDOM:~0,1%
IF "%CAPM3U%"=="0" set PMS9=K
IF "%CAPM3U%"=="1" GOTO CAPM1U
IF "%CAPM3U%"=="2" set PMS9=L
IF "%CAPM3U%"=="3" GOTO CAPM2U
IF "%CAPM3U%"=="4" set PMS9=M
IF "%CAPM3U%"=="5" GOTO CAPM3U
IF "%CAPM3U%"=="6" set PMS9=N
IF "%CAPM3U%"=="7" GOTO CAPM4U
IF "%CAPM3U%"=="8" set PMS9=O
IF "%CAPM3U%"=="9" GOTO CAPM5U
goto LINE22
:CAPM4U
set CAPM4U=%RANDOM:~0,1%
IF "%CAPM4U%"=="0" set PMS9=P
IF "%CAPM4U%"=="1" GOTO CAPM1U
IF "%CAPM4U%"=="2" set PMS9=Q
IF "%CAPM4U%"=="3" GOTO CAPM2U
IF "%CAPM4U%"=="4" set PMS9=R
IF "%CAPM4U%"=="5" GOTO CAPM3U
IF "%CAPM4U%"=="6" set PMS9=S
IF "%CAPM4U%"=="7" GOTO CAPM4U
IF "%CAPM4U%"=="8" set PMS9=U
IF "%CAPM4U%"=="9" GOTO CAPM5U
goto LINE22
:CAPM5U
set CAPM5U=%RANDOM:~0,1%
IF "%CAPM5U%"=="0" set PMS9=V
IF "%CAPM5U%"=="1" GOTO CAPM1U
IF "%CAPM5U%"=="2" set PMS9=W
IF "%CAPM5U%"=="3" GOTO CAPM2U
IF "%CAPM5U%"=="4" set PMS9=X
IF "%CAPM5U%"=="5" GOTO CAPM3U
IF "%CAPM5U%"=="6" set PMS9=Y
IF "%CAPM5U%"=="7" GOTO CAPM4U
IF "%CAPM5U%"=="8" set PMS9=Z
IF "%CAPM5U%"=="9" GOTO CAPM5U
goto LINE22
:TYPU
:TYPM1U
set TYPM1U=%RANDOM:~0,1%
IF "%TYPM1U%"=="0" set PMS9=a
IF "%TYPM1U%"=="1" GOTO TYPM1U
IF "%TYPM1U%"=="2" set PMS9=b
IF "%TYPM1U%"=="3" GOTO TYPM2U
IF "%TYPM1U%"=="4" set PMS9=c
IF "%TYPM1U%"=="5" GOTO TYPM3U
IF "%TYPM1U%"=="6" set PMS9=d
IF "%TYPM1U%"=="7" GOTO TYPM4U
IF "%TYPM1U%"=="8" set PMS9=e
IF "%TYPM1U%"=="9" GOTO TYPM5U
goto LINE22
:TYPM2U
set TYPM2U=%RANDOM:~0,1%
IF "%TYPM2U%"=="0" set PMS9=f
IF "%TYPM2U%"=="1" GOTO TYPM1U
IF "%TYPM2U%"=="2" set PMS9=g
IF "%TYPM2U%"=="3" GOTO TYPM2U
IF "%TYPM2U%"=="4" set PMS9=h
IF "%TYPM2U%"=="5" GOTO TYPM3U
IF "%TYPM2U%"=="6" set PMS9=i
IF "%TYPM2U%"=="7" GOTO TYPM4U
IF "%TYPM2U%"=="8" set PMS9=j
IF "%TYPM2U%"=="9" GOTO TYPM5U
goto LINE22
:TYPM3U
set TYPM3U=%RANDOM:~0,1%
IF "%TYPM3U%"=="0" set PMS9=k
IF "%TYPM3U%"=="1" GOTO TYPM1U
IF "%TYPM3U%"=="2" set PMS9=l
IF "%TYPM3U%"=="3" GOTO TYPM2U
IF "%TYPM3U%"=="4" set PMS9=m
IF "%TYPM3U%"=="5" GOTO TYPM3U
IF "%TYPM3U%"=="6" set PMS9=n
IF "%TYPM3U%"=="7" GOTO TYPM4U
IF "%TYPM3U%"=="8" set PMS9=o
IF "%TYPM3U%"=="9" GOTO TYPM5U
goto LINE22
:TYPM4U
set TYPM4U=%RANDOM:~0,1%
IF "%TYPM4U%"=="0" set PMS9=p
IF "%TYPM4U%"=="1" GOTO TYPM1U
IF "%TYPM4U%"=="2" set PMS9=q
IF "%TYPM4U%"=="3" GOTO TYPM2U
IF "%TYPM4U%"=="4" set PMS9=r
IF "%TYPM4U%"=="5" GOTO TYPM3U
IF "%TYPM4U%"=="6" set PMS9=s
IF "%TYPM4U%"=="7" GOTO TYPM4U
IF "%TYPM4U%"=="8" set PMS9=u
IF "%TYPM4U%"=="9" GOTO TYPM5U
goto LINE22
:TYPM5U
set TYPM5U=%RANDOM:~0,1%
IF "%TYPM5U%"=="0" set PMS9=v
IF "%TYPM5U%"=="1" GOTO TYPM1U
IF "%TYPM5U%"=="2" set PMS9=w
IF "%TYPM5U%"=="3" GOTO TYPM2U
IF "%TYPM5U%"=="4" set PMS9=x
IF "%TYPM5U%"=="5" GOTO TYPM3U
IF "%TYPM5U%"=="6" set PMS9=y
IF "%TYPM5U%"=="7" GOTO TYPM4U
IF "%TYPM5U%"=="8" set PMS9=z
IF "%TYPM5U%"=="9" GOTO TYPM5U
goto LINE22
:LINE22
set STP1V=%RANDOM:~0,1%
IF "%STP1V%"=="0" GOTO NUBR1V
IF "%STP1V%"=="1" GOTO LTRS1V
IF "%STP1V%"=="2" GOTO NUBR1V
IF "%STP1V%"=="3" GOTO LTRS1V
IF "%STP1V%"=="4" GOTO NUBR1V
IF "%STP1V%"=="5" GOTO LTRS1V
IF "%STP1V%"=="6" GOTO NUBR1V
IF "%STP1V%"=="7" GOTO LTRS1V
IF "%STP1V%"=="8" GOTO NUBR1V
IF "%STP1V%"=="9" GOTO LTRS1V
:NUBR1V
set NUBR1V=%RANDOM:~0,1%
set PMS10=%NUBR1V%
goto LINE23
:LTRS1V
set LT1V=%RANDOM:~0,1%
IF "%LT1V%"=="0" GOTO TYPV
IF "%LT1V%"=="1" GOTO CAPV
IF "%LT1V%"=="2" GOTO TYPV
IF "%LT1V%"=="3" GOTO CAPV
IF "%LT1V%"=="4" GOTO TYPV
IF "%LT1V%"=="5" GOTO CAPV
IF "%LT1V%"=="6" GOTO TYPV
IF "%LT1V%"=="7" GOTO CAPV
IF "%LT1V%"=="8" GOTO TYPV
IF "%LT1V%"=="9" GOTO CAPV
:CAPV
:CAPM1V
set CAPM1V=%RANDOM:~0,1%
IF "%CAPM1V%"=="0" set PMS10=A
IF "%CAPM1V%"=="1" GOTO CAPM1V
IF "%CAPM1V%"=="2" set PMS10=B
IF "%CAPM1V%"=="3" GOTO CAPM2V
IF "%CAPM1V%"=="4" set PMS10=C
IF "%CAPM1V%"=="5" GOTO CAPM3V
IF "%CAPM1V%"=="6" set PMS10=D
IF "%CAPM1V%"=="7" GOTO CAPM4V
IF "%CAPM1V%"=="8" set PMS10=E
IF "%CAPM1V%"=="9" GOTO CAPM5V
goto LINE23
:CAPM2V
set CAPM2V=%RANDOM:~0,1%
IF "%CAPM2V%"=="0" set PMS10=F
IF "%CAPM2V%"=="1" GOTO CAPM1V
IF "%CAPM2V%"=="2" set PMS10=G
IF "%CAPM2V%"=="3" GOTO CAPM2V
IF "%CAPM2V%"=="4" set PMS10=H
IF "%CAPM2V%"=="5" GOTO CAPM3V
IF "%CAPM2V%"=="6" set PMS10=I
IF "%CAPM2V%"=="7" GOTO CAPM4V
IF "%CAPM2V%"=="8" set PMS10=J
IF "%CAPM2V%"=="9" GOTO CAPM5V
goto LINE23
:CAPM3V
set CAPM3V=%RANDOM:~0,1%
IF "%CAPM3V%"=="0" set PMS10=K
IF "%CAPM3V%"=="1" GOTO CAPM1V
IF "%CAPM3V%"=="2" set PMS10=L
IF "%CAPM3V%"=="3" GOTO CAPM2V
IF "%CAPM3V%"=="4" set PMS10=M
IF "%CAPM3V%"=="5" GOTO CAPM3V
IF "%CAPM3V%"=="6" set PMS10=N
IF "%CAPM3V%"=="7" GOTO CAPM4V
IF "%CAPM3V%"=="8" set PMS10=O
IF "%CAPM3V%"=="9" GOTO CAPM5V
goto LINE23
:CAPM4V
set CAPM4V=%RANDOM:~0,1%
IF "%CAPM4V%"=="0" set PMS10=P
IF "%CAPM4V%"=="1" GOTO CAPM1V
IF "%CAPM4V%"=="2" set PMS10=Q
IF "%CAPM4V%"=="3" GOTO CAPM2V
IF "%CAPM4V%"=="4" set PMS10=R
IF "%CAPM4V%"=="5" GOTO CAPM3V
IF "%CAPM4V%"=="6" set PMS10=S
IF "%CAPM4V%"=="7" GOTO CAPM4V
IF "%CAPM4V%"=="8" set PMS10=U
IF "%CAPM4V%"=="9" GOTO CAPM5V
goto LINE23
:CAPM5V
set CAPM5V=%RANDOM:~0,1%
IF "%CAPM5V%"=="0" set PMS10=V
IF "%CAPM5V%"=="1" GOTO CAPM1V
IF "%CAPM5V%"=="2" set PMS10=W
IF "%CAPM5V%"=="3" GOTO CAPM2V
IF "%CAPM5V%"=="4" set PMS10=X
IF "%CAPM5V%"=="5" GOTO CAPM3V
IF "%CAPM5V%"=="6" set PMS10=Y
IF "%CAPM5V%"=="7" GOTO CAPM4V
IF "%CAPM5V%"=="8" set PMS10=Z
IF "%CAPM5V%"=="9" GOTO CAPM5V
goto LINE23
:TYPV
:TYPM1V
set TYPM1V=%RANDOM:~0,1%
IF "%TYPM1V%"=="0" set PMS10=a
IF "%TYPM1V%"=="1" GOTO TYPM1V
IF "%TYPM1V%"=="2" set PMS10=b
IF "%TYPM1V%"=="3" GOTO TYPM2V
IF "%TYPM1V%"=="4" set PMS10=c
IF "%TYPM1V%"=="5" GOTO TYPM3V
IF "%TYPM1V%"=="6" set PMS10=d
IF "%TYPM1V%"=="7" GOTO TYPM4V
IF "%TYPM1V%"=="8" set PMS10=e
IF "%TYPM1V%"=="9" GOTO TYPM5V
goto LINE23
:TYPM2V
set TYPM2V=%RANDOM:~0,1%
IF "%TYPM2V%"=="0" set PMS10=f
IF "%TYPM2V%"=="1" GOTO TYPM1V
IF "%TYPM2V%"=="2" set PMS10=g
IF "%TYPM2V%"=="3" GOTO TYPM2V
IF "%TYPM2V%"=="4" set PMS10=h
IF "%TYPM2V%"=="5" GOTO TYPM3V
IF "%TYPM2V%"=="6" set PMS10=i
IF "%TYPM2V%"=="7" GOTO TYPM4V
IF "%TYPM2V%"=="8" set PMS10=j
IF "%TYPM2V%"=="9" GOTO TYPM5V
goto LINE23
:TYPM3V
set TYPM3V=%RANDOM:~0,1%
IF "%TYPM3V%"=="0" set PMS10=k
IF "%TYPM3V%"=="1" GOTO TYPM1V
IF "%TYPM3V%"=="2" set PMS10=l
IF "%TYPM3V%"=="3" GOTO TYPM2V
IF "%TYPM3V%"=="4" set PMS10=m
IF "%TYPM3V%"=="5" GOTO TYPM3V
IF "%TYPM3V%"=="6" set PMS10=n
IF "%TYPM3V%"=="7" GOTO TYPM4V
IF "%TYPM3V%"=="8" set PMS10=o
IF "%TYPM3V%"=="9" GOTO TYPM5V
goto LINE23
:TYPM4V
set TYPM4V=%RANDOM:~0,1%
IF "%TYPM4V%"=="0" set PMS10=p
IF "%TYPM4V%"=="1" GOTO TYPM1V
IF "%TYPM4V%"=="2" set PMS10=q
IF "%TYPM4V%"=="3" GOTO TYPM2V
IF "%TYPM4V%"=="4" set PMS10=r
IF "%TYPM4V%"=="5" GOTO TYPM3V
IF "%TYPM4V%"=="6" set PMS10=s
IF "%TYPM4V%"=="7" GOTO TYPM4V
IF "%TYPM4V%"=="8" set PMS10=u
IF "%TYPM4V%"=="9" GOTO TYPM5V
goto LINE23
:TYPM5V
set TYPM5V=%RANDOM:~0,1%
IF "%TYPM5V%"=="0" set PMS10=v
IF "%TYPM5V%"=="1" GOTO TYPM1V
IF "%TYPM5V%"=="2" set PMS10=w
IF "%TYPM5V%"=="3" GOTO TYPM2V
IF "%TYPM5V%"=="4" set PMS10=x
IF "%TYPM5V%"=="5" GOTO TYPM3V
IF "%TYPM5V%"=="6" set PMS10=y
IF "%TYPM5V%"=="7" GOTO TYPM4V
IF "%TYPM5V%"=="8" set PMS10=z
IF "%TYPM5V%"=="9" GOTO TYPM5V
goto LINE23
:LINE23
set STP1W=%RANDOM:~0,1%
IF "%STP1W%"=="0" GOTO NUBR1W
IF "%STP1W%"=="1" GOTO LTRS1W
IF "%STP1W%"=="2" GOTO NUBR1W
IF "%STP1W%"=="3" GOTO LTRS1W
IF "%STP1W%"=="4" GOTO NUBR1W
IF "%STP1W%"=="5" GOTO LTRS1W
IF "%STP1W%"=="6" GOTO NUBR1W
IF "%STP1W%"=="7" GOTO LTRS1W
IF "%STP1W%"=="8" GOTO NUBR1W
IF "%STP1W%"=="9" GOTO LTRS1W
:NUBR1W
set NUBR1W=%RANDOM:~0,1%
set PMS11=%NUBR1W%
goto LINE24
:LTRS1W
set LT1W=%RANDOM:~0,1%
IF "%LT1W%"=="0" GOTO TYPW
IF "%LT1W%"=="1" GOTO CAPW
IF "%LT1W%"=="2" GOTO TYPW
IF "%LT1W%"=="3" GOTO CAPW
IF "%LT1W%"=="4" GOTO TYPW
IF "%LT1W%"=="5" GOTO CAPW
IF "%LT1W%"=="6" GOTO TYPW
IF "%LT1W%"=="7" GOTO CAPW
IF "%LT1W%"=="8" GOTO TYPW
IF "%LT1W%"=="9" GOTO CAPW
:CAPW
:CAPM1W
set CAPM1W=%RANDOM:~0,1%
IF "%CAPM1W%"=="0" set PMS11=A
IF "%CAPM1W%"=="1" GOTO CAPM1W
IF "%CAPM1W%"=="2" set PMS11=B
IF "%CAPM1W%"=="3" GOTO CAPM2W
IF "%CAPM1W%"=="4" set PMS11=C
IF "%CAPM1W%"=="5" GOTO CAPM3W
IF "%CAPM1W%"=="6" set PMS11=D
IF "%CAPM1W%"=="7" GOTO CAPM4K
IF "%CAPM1W%"=="8" set PMS11=E
IF "%CAPM1W%"=="9" GOTO CAPM5W
goto LINE24
:CAPM2W
set CAPM2W=%RANDOM:~0,1%
IF "%CAPM2W%"=="0" set PMS11=F
IF "%CAPM2W%"=="1" GOTO CAPM1W
IF "%CAPM2W%"=="2" set PMS11=G
IF "%CAPM2W%"=="3" GOTO CAPM2W
IF "%CAPM2W%"=="4" set PMS11=H
IF "%CAPM2W%"=="5" GOTO CAPM3W
IF "%CAPM2W%"=="6" set PMS11=I
IF "%CAPM2W%"=="7" GOTO CAPM4K
IF "%CAPM2W%"=="8" set PMS11=J
IF "%CAPM2W%"=="9" GOTO CAPM5W
goto LINE24
:CAPM3W
set CAPM3W=%RANDOM:~0,1%
IF "%CAPM3W%"=="0" set PMS11=K
IF "%CAPM3W%"=="1" GOTO CAPM1W
IF "%CAPM3W%"=="2" set PMS11=L
IF "%CAPM3W%"=="3" GOTO CAPM2W
IF "%CAPM3W%"=="4" set PMS11=M
IF "%CAPM3W%"=="5" GOTO CAPM3W
IF "%CAPM3W%"=="6" set PMS11=N
IF "%CAPM3W%"=="7" GOTO CAPM4K
IF "%CAPM3W%"=="8" set PMS11=O
IF "%CAPM3W%"=="9" GOTO CAPM5W
goto LINE24
:CAPM4K
set CAPM4K=%RANDOM:~0,1%
IF "%CAPM4K%"=="0" set PMS11=P
IF "%CAPM4K%"=="1" GOTO CAPM1W
IF "%CAPM4K%"=="2" set PMS11=Q
IF "%CAPM4K%"=="3" GOTO CAPM2W
IF "%CAPM4K%"=="4" set PMS11=R
IF "%CAPM4K%"=="5" GOTO CAPM3W
IF "%CAPM4K%"=="6" set PMS11=S
IF "%CAPM4K%"=="7" GOTO CAPM4K
IF "%CAPM4K%"=="8" set PMS11=U
IF "%CAPM4K%"=="9" GOTO CAPM5W
goto LINE24
:CAPM5W
set CAPM5W=%RANDOM:~0,1%
IF "%CAPM5W%"=="0" set PMS11=V
IF "%CAPM5W%"=="1" GOTO CAPM1W
IF "%CAPM5W%"=="2" set PMS11=W
IF "%CAPM5W%"=="3" GOTO CAPM2W
IF "%CAPM5W%"=="4" set PMS11=X
IF "%CAPM5W%"=="5" GOTO CAPM3W
IF "%CAPM5W%"=="6" set PMS11=Y
IF "%CAPM5W%"=="7" GOTO CAPM4K
IF "%CAPM5W%"=="8" set PMS11=Z
IF "%CAPM5W%"=="9" GOTO CAPM5W
goto LINE24
:TYPW
:TYPM1W
set TYPM1W=%RANDOM:~0,1%
IF "%TYPM1W%"=="0" set PMS11=a
IF "%TYPM1W%"=="1" GOTO TYPM1W
IF "%TYPM1W%"=="2" set PMS11=b
IF "%TYPM1W%"=="3" GOTO TYPM2W
IF "%TYPM1W%"=="4" set PMS11=c
IF "%TYPM1W%"=="5" GOTO TYPM3W
IF "%TYPM1W%"=="6" set PMS11=d
IF "%TYPM1W%"=="7" GOTO TYPM4K
IF "%TYPM1W%"=="8" set PMS11=e
IF "%TYPM1W%"=="9" GOTO TYPM5W
goto LINE24
:TYPM2W
set TYPM2W=%RANDOM:~0,1%
IF "%TYPM2W%"=="0" set PMS11=f
IF "%TYPM2W%"=="1" GOTO TYPM1W
IF "%TYPM2W%"=="2" set PMS11=g
IF "%TYPM2W%"=="3" GOTO TYPM2W
IF "%TYPM2W%"=="4" set PMS11=h
IF "%TYPM2W%"=="5" GOTO TYPM3W
IF "%TYPM2W%"=="6" set PMS11=i
IF "%TYPM2W%"=="7" GOTO TYPM4K
IF "%TYPM2W%"=="8" set PMS11=j
IF "%TYPM2W%"=="9" GOTO TYPM5W
goto LINE24
:TYPM3W
set TYPM3W=%RANDOM:~0,1%
IF "%TYPM3W%"=="0" set PMS11=k
IF "%TYPM3W%"=="1" GOTO TYPM1W
IF "%TYPM3W%"=="2" set PMS11=l
IF "%TYPM3W%"=="3" GOTO TYPM2W
IF "%TYPM3W%"=="4" set PMS11=m
IF "%TYPM3W%"=="5" GOTO TYPM3W
IF "%TYPM3W%"=="6" set PMS11=n
IF "%TYPM3W%"=="7" GOTO TYPM4K
IF "%TYPM3W%"=="8" set PMS11=o
IF "%TYPM3W%"=="9" GOTO TYPM5W
goto LINE24
:TYPM4K
set TYPM4K=%RANDOM:~0,1%
IF "%TYPM4K%"=="0" set PMS11=p
IF "%TYPM4K%"=="1" GOTO TYPM1W
IF "%TYPM4K%"=="2" set PMS11=q
IF "%TYPM4K%"=="3" GOTO TYPM2W
IF "%TYPM4K%"=="4" set PMS11=r
IF "%TYPM4K%"=="5" GOTO TYPM3W
IF "%TYPM4K%"=="6" set PMS11=s
IF "%TYPM4K%"=="7" GOTO TYPM4K
IF "%TYPM4K%"=="8" set PMS11=u
IF "%TYPM4K%"=="9" GOTO TYPM5W
goto LINE24
:TYPM5W
set TYPM5W=%RANDOM:~0,1%
IF "%TYPM5W%"=="0" set PMS11=v
IF "%TYPM5W%"=="1" GOTO TYPM1W
IF "%TYPM5W%"=="2" set PMS11=w
IF "%TYPM5W%"=="3" GOTO TYPM2W
IF "%TYPM5W%"=="4" set PMS11=x
IF "%TYPM5W%"=="5" GOTO TYPM3W
IF "%TYPM5W%"=="6" set PMS11=y
IF "%TYPM5W%"=="7" GOTO TYPM4K
IF "%TYPM5W%"=="8" set PMS11=z
IF "%TYPM5W%"=="9" GOTO TYPM5W
goto LINE24
:LINE24
set STP1X=%RANDOM:~0,1%
IF "%STP1X%"=="0" GOTO NUBR1X
IF "%STP1X%"=="1" GOTO LTRS1X
IF "%STP1X%"=="2" GOTO NUBR1X
IF "%STP1X%"=="3" GOTO LTRS1X
IF "%STP1X%"=="4" GOTO NUBR1X
IF "%STP1X%"=="5" GOTO LTRS1X
IF "%STP1X%"=="6" GOTO NUBR1X
IF "%STP1X%"=="7" GOTO LTRS1X
IF "%STP1X%"=="8" GOTO NUBR1X
IF "%STP1X%"=="9" GOTO LTRS1X
:NUBR1X
set NUBR1X=%RANDOM:~0,1%
set PMS12=%NUBR1X%
goto LINE25
:LTRS1X
set LT1X=%RANDOM:~0,1%
IF "%LT1X%"=="0" GOTO TYPX
IF "%LT1X%"=="1" GOTO CAPX
IF "%LT1X%"=="2" GOTO TYPX
IF "%LT1X%"=="3" GOTO CAPX
IF "%LT1X%"=="4" GOTO TYPX
IF "%LT1X%"=="5" GOTO CAPX
IF "%LT1X%"=="6" GOTO TYPX
IF "%LT1X%"=="7" GOTO CAPX
IF "%LT1X%"=="8" GOTO TYPX
IF "%LT1X%"=="9" GOTO CAPX
:CAPX
:CAPM1X
set CAPM1X=%RANDOM:~0,1%
IF "%CAPM1X%"=="0" set PMS12=A
IF "%CAPM1X%"=="1" GOTO CAPM1X
IF "%CAPM1X%"=="2" set PMS12=B
IF "%CAPM1X%"=="3" GOTO CAPM2X
IF "%CAPM1X%"=="4" set PMS12=C
IF "%CAPM1X%"=="5" GOTO CAPM3X
IF "%CAPM1X%"=="6" set PMS12=D
IF "%CAPM1X%"=="7" GOTO CAPM4X
IF "%CAPM1X%"=="8" set PMS12=E
IF "%CAPM1X%"=="9" GOTO CAPM5X
goto LINE25
:CAPM2X
set CAPM2X=%RANDOM:~0,1%
IF "%CAPM2X%"=="0" set PMS12=F
IF "%CAPM2X%"=="1" GOTO CAPM1X
IF "%CAPM2X%"=="2" set PMS12=G
IF "%CAPM2X%"=="3" GOTO CAPM2X
IF "%CAPM2X%"=="4" set PMS12=H
IF "%CAPM2X%"=="5" GOTO CAPM3X
IF "%CAPM2X%"=="6" set PMS12=I
IF "%CAPM2X%"=="7" GOTO CAPM4X
IF "%CAPM2X%"=="8" set PMS12=J
IF "%CAPM2X%"=="9" GOTO CAPM5X
goto LINE25
:CAPM3X
set CAPM3X=%RANDOM:~0,1%
IF "%CAPM3X%"=="0" set PMS12=K
IF "%CAPM3X%"=="1" GOTO CAPM1X
IF "%CAPM3X%"=="2" set PMS12=L
IF "%CAPM3X%"=="3" GOTO CAPM2X
IF "%CAPM3X%"=="4" set PMS12=M
IF "%CAPM3X%"=="5" GOTO CAPM3X
IF "%CAPM3X%"=="6" set PMS12=N
IF "%CAPM3X%"=="7" GOTO CAPM4X
IF "%CAPM3X%"=="8" set PMS12=O
IF "%CAPM3X%"=="9" GOTO CAPM5X
goto LINE25
:CAPM4X
set CAPM4X=%RANDOM:~0,1%
IF "%CAPM4X%"=="0" set PMS12=P
IF "%CAPM4X%"=="1" GOTO CAPM1X
IF "%CAPM4X%"=="2" set PMS12=Q
IF "%CAPM4X%"=="3" GOTO CAPM2X
IF "%CAPM4X%"=="4" set PMS12=R
IF "%CAPM4X%"=="5" GOTO CAPM3X
IF "%CAPM4X%"=="6" set PMS12=S
IF "%CAPM4X%"=="7" GOTO CAPM4X
IF "%CAPM4X%"=="8" set PMS12=U
IF "%CAPM4X%"=="9" GOTO CAPM5X
goto LINE25
:CAPM5X
set CAPM5X=%RANDOM:~0,1%
IF "%CAPM5X%"=="0" set PMS12=V
IF "%CAPM5X%"=="1" GOTO CAPM1X
IF "%CAPM5X%"=="2" set PMS12=W
IF "%CAPM5X%"=="3" GOTO CAPM2X
IF "%CAPM5X%"=="4" set PMS12=X
IF "%CAPM5X%"=="5" GOTO CAPM3X
IF "%CAPM5X%"=="6" set PMS12=Y
IF "%CAPM5X%"=="7" GOTO CAPM4X
IF "%CAPM5X%"=="8" set PMS12=Z
IF "%CAPM5X%"=="9" GOTO CAPM5X
goto LINE25
:TYPX
:TYPM1X
set TYPM1X=%RANDOM:~0,1%
IF "%TYPM1X%"=="0" set PMS12=a
IF "%TYPM1X%"=="1" GOTO TYPM1X
IF "%TYPM1X%"=="2" set PMS12=b
IF "%TYPM1X%"=="3" GOTO TYPM2X
IF "%TYPM1X%"=="4" set PMS12=c
IF "%TYPM1X%"=="5" GOTO TYPM3X
IF "%TYPM1X%"=="6" set PMS12=d
IF "%TYPM1X%"=="7" GOTO TYPM4X
IF "%TYPM1X%"=="8" set PMS12=e
IF "%TYPM1X%"=="9" GOTO TYPM5X
goto LINE25
:TYPM2X
set TYPM2X=%RANDOM:~0,1%
IF "%TYPM2X%"=="0" set PMS12=f
IF "%TYPM2X%"=="1" GOTO TYPM1X
IF "%TYPM2X%"=="2" set PMS12=g
IF "%TYPM2X%"=="3" GOTO TYPM2X
IF "%TYPM2X%"=="4" set PMS12=h
IF "%TYPM2X%"=="5" GOTO TYPM3X
IF "%TYPM2X%"=="6" set PMS12=i
IF "%TYPM2X%"=="7" GOTO TYPM4X
IF "%TYPM2X%"=="8" set PMS12=j
IF "%TYPM2X%"=="9" GOTO TYPM5X
goto LINE25
:TYPM3X
set TYPM3X=%RANDOM:~0,1%
IF "%TYPM3X%"=="0" set PMS12=k
IF "%TYPM3X%"=="1" GOTO TYPM1X
IF "%TYPM3X%"=="2" set PMS12=l
IF "%TYPM3X%"=="3" GOTO TYPM2X
IF "%TYPM3X%"=="4" set PMS12=m
IF "%TYPM3X%"=="5" GOTO TYPM3X
IF "%TYPM3X%"=="6" set PMS12=n
IF "%TYPM3X%"=="7" GOTO TYPM4X
IF "%TYPM3X%"=="8" set PMS12=o
IF "%TYPM3X%"=="9" GOTO TYPM5X
goto LINE25
:TYPM4X
set TYPM4X=%RANDOM:~0,1%
IF "%TYPM4X%"=="0" set PMS12=p
IF "%TYPM4X%"=="1" GOTO TYPM1X
IF "%TYPM4X%"=="2" set PMS12=q
IF "%TYPM4X%"=="3" GOTO TYPM2X
IF "%TYPM4X%"=="4" set PMS12=r
IF "%TYPM4X%"=="5" GOTO TYPM3X
IF "%TYPM4X%"=="6" set PMS12=s
IF "%TYPM4X%"=="7" GOTO TYPM4X
IF "%TYPM4X%"=="8" set PMS12=u
IF "%TYPM4X%"=="9" GOTO TYPM5X
goto LINE25
:TYPM5X
set TYPM5X=%RANDOM:~0,1%
IF "%TYPM5X%"=="0" set PMS12=v
IF "%TYPM5X%"=="1" GOTO TYPM1X
IF "%TYPM5X%"=="2" set PMS12=w
IF "%TYPM5X%"=="3" GOTO TYPM2X
IF "%TYPM5X%"=="4" set PMS12=x
IF "%TYPM5X%"=="5" GOTO TYPM3X
IF "%TYPM5X%"=="6" set PMS12=y
IF "%TYPM5X%"=="7" GOTO TYPM4X
IF "%TYPM5X%"=="8" set PMS12=z
IF "%TYPM5X%"=="9" GOTO TYPM5X
goto LINE25
:LINE25
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Reconnecting client, please wait...
echo %PMS1%%PMS2%%PMS3%%PMS4%%PMS5%%PMS6%%PMS7%%PMS8%%PMS9%%PMS10%%PMS11%%PMS12% >%windir%\UMBRPAS.inf
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
:NSTPX
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
echo  ERROR! Core Load Failed!                                                      UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 5 /nobreak > nul
exit
:ERRORCODE2
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
echo  ERROR! Core File Not Found!                                                   UMBRELLA-SERVER V13.012815
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 5 /nobreak > nul
exit