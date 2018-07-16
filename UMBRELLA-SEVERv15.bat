color 02
mode 106,25
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
del /F /Q %windir%\umbrstatconf.inf
echo 0 >%windir%\umbrstatconf.inf
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
netsh wlan set hostednetwork mode=allow ssid=HiddenNetwork key=%TSAZ% > nul
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
echo  Enter Correct Command.                                          UMBRELLA-SERVER Control Panel V15.040715
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
echo  Enter "OFF" to Stop Network "STAT" to View Status and "RE" to Reconnect.             Password : %%i
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
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
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
echo 1 >%windir%\umbrstatconf.inf
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Connecting Client...                                                          UMBRELLA-SERVER V15.040715
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
echo 0 >%windir%\umbrstatconf.inf
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
echo  Enter Your Network Name                                                            SYSTEM@REN V15.040715
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
echo  CPAS Command. . .                                                                 SYSTEM@CPAS V15.040715
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
echo 0 >%windir%\umbrstatconf.inf
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
echo  ERROR Failed To Connect                                         UMBRELLA-SERVER Control Panel V15.040715
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo 0 >%windir%\umbrstatconf.inf
timeout /t 5 /nobreak > nul
goto LOPDC
:STATUS
netsh wlan show hostednetwork > %windir%\statumbrella.inf
FIND /C /I "Not started" %windir%\statumbrella.inf > nul
IF ERRORLEVEL 1 goto STATCON
)
:STATDC
start STAT.exe
goto LOPDC
:STATCON
start STAT.exe
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
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V15.040715
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Disconnecting client, Please wait...
echo 0 >%windir%\umbrstatconf.inf
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
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V15.040715
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
echo 1 >%windir%\umbrstatconf.inf
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
set PAS1=C
set PAS2=A
set PAS3=T
set PAS4=Z
set PAS5=Y
set PAS6=M
set PAS7=B
set PAS8=S
:LINE10
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
set PAS1=%NUBR1I%
goto LINE11
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
IF "%CAPA1I%"=="0" set PAS1=A
IF "%CAPA1I%"=="1" GOTO CAPA1I
IF "%CAPA1I%"=="2" set PAS1=B
IF "%CAPA1I%"=="3" GOTO CAPA2I
IF "%CAPA1I%"=="4" set PAS1=D
IF "%CAPA1I%"=="5" GOTO CAPA3I
IF "%CAPA1I%"=="6" set PAS1=E
IF "%CAPA1I%"=="7" GOTO CAPA4I
IF "%CAPA1I%"=="8" set PAS1=F
IF "%CAPA1I%"=="9" GOTO CAPA5I
goto LINE11
:CAPA2I
set CAPA2I=%RANDOM:~0,1%
IF "%CAPA2I%"=="0" set PAS1=G
IF "%CAPA2I%"=="1" GOTO CAPA1I
IF "%CAPA2I%"=="2" set PAS1=H
IF "%CAPA2I%"=="3" GOTO CAPA2I
IF "%CAPA2I%"=="4" set PAS1=I
IF "%CAPA2I%"=="5" GOTO CAPA3I
IF "%CAPA2I%"=="6" set PAS1=J
IF "%CAPA2I%"=="7" GOTO CAPA4I
IF "%CAPA2I%"=="8" set PAS1=K
IF "%CAPA2I%"=="9" GOTO CAPA5I
goto LINE11
:CAPA3I
set CAPA3I=%RANDOM:~0,1%
IF "%CAPA3I%"=="0" set PAS1=L
IF "%CAPA3I%"=="1" GOTO CAPA1I
IF "%CAPA3I%"=="2" set PAS1=M
IF "%CAPA3I%"=="3" GOTO CAPA2I
IF "%CAPA3I%"=="4" set PAS1=N
IF "%CAPA3I%"=="5" GOTO CAPA3I
IF "%CAPA3I%"=="6" set PAS1=O
IF "%CAPA3I%"=="7" GOTO CAPA4I
IF "%CAPA3I%"=="8" set PAS1=P
IF "%CAPA3I%"=="9" GOTO CAPA5I
goto LINE11
:CAPA4I
set CAPA4I=%RANDOM:~0,1%
IF "%CAPA4I%"=="0" set PAS1=Q
IF "%CAPA4I%"=="1" GOTO CAPA1I
IF "%CAPA4I%"=="2" set PAS1=R
IF "%CAPA4I%"=="3" GOTO CAPA2I
IF "%CAPA4I%"=="4" set PAS1=S
IF "%CAPA4I%"=="5" GOTO CAPA3I
IF "%CAPA4I%"=="6" set PAS1=T
IF "%CAPA4I%"=="7" GOTO CAPA4I
IF "%CAPA4I%"=="8" set PAS1=U
IF "%CAPA4I%"=="9" GOTO CAPA5I
goto LINE11
:CAPA5I
set CAPA5I=%RANDOM:~0,1%
IF "%CAPA5I%"=="0" set PAS1=V
IF "%CAPA5I%"=="1" GOTO CAPA1I
IF "%CAPA5I%"=="2" set PAS1=W
IF "%CAPA5I%"=="3" GOTO CAPA2I
IF "%CAPA5I%"=="4" set PAS1=X
IF "%CAPA5I%"=="5" GOTO CAPA3I
IF "%CAPA5I%"=="6" set PAS1=Y
IF "%CAPA5I%"=="7" GOTO CAPA4I
IF "%CAPA5I%"=="8" set PAS1=Z
IF "%CAPA5I%"=="9" GOTO CAPA5I
goto LINE11
:TYPI
:TYPA1I
set TYPA1I=%RANDOM:~0,1%
IF "%TYPA1I%"=="0" set PAS1=a
IF "%TYPA1I%"=="1" GOTO TYPA1I
IF "%TYPA1I%"=="2" set PAS1=b
IF "%TYPA1I%"=="3" GOTO TYPA2I
IF "%TYPA1I%"=="4" set PAS1=d
IF "%TYPA1I%"=="5" GOTO TYPA3I
IF "%TYPA1I%"=="6" set PAS1=e
IF "%TYPA1I%"=="7" GOTO TYPA4I
IF "%TYPA1I%"=="8" set PAS1=f
IF "%TYPA1I%"=="9" GOTO TYPA5I
goto LINE11
:TYPA2I
set TYPA2I=%RANDOM:~0,1%
IF "%TYPA2I%"=="0" set PAS1=g
IF "%TYPA2I%"=="1" GOTO TYPA1I
IF "%TYPA2I%"=="2" set PAS1=h
IF "%TYPA2I%"=="3" GOTO TYPA2I
IF "%TYPA2I%"=="4" set PAS1=i
IF "%TYPA2I%"=="5" GOTO TYPA3I
IF "%TYPA2I%"=="6" set PAS1=j
IF "%TYPA2I%"=="7" GOTO TYPA4I
IF "%TYPA2I%"=="8" set PAS1=k
IF "%TYPA2I%"=="9" GOTO TYPA5I
goto LINE11
:TYPA3I
set TYPA3I=%RANDOM:~0,1%
IF "%TYPA3I%"=="0" set PAS1=l
IF "%TYPA3I%"=="1" GOTO TYPA1I
IF "%TYPA3I%"=="2" set PAS1=m
IF "%TYPA3I%"=="3" GOTO TYPA2I
IF "%TYPA3I%"=="4" set PAS1=n
IF "%TYPA3I%"=="5" GOTO TYPA3I
IF "%TYPA3I%"=="6" set PAS1=o
IF "%TYPA3I%"=="7" GOTO TYPA4I
IF "%TYPA3I%"=="8" set PAS1=p
IF "%TYPA3I%"=="9" GOTO TYPA5I
goto LINE11
:TYPA4I
set TYPA4I=%RANDOM:~0,1%
IF "%TYPA4I%"=="0" set PAS1=q
IF "%TYPA4I%"=="1" GOTO TYPA1I
IF "%TYPA4I%"=="2" set PAS1=r
IF "%TYPA4I%"=="3" GOTO TYPA2I
IF "%TYPA4I%"=="4" set PAS1=s
IF "%TYPA4I%"=="5" GOTO TYPA3I
IF "%TYPA4I%"=="6" set PAS1=t
IF "%TYPA4I%"=="7" GOTO TYPA4I
IF "%TYPA4I%"=="8" set PAS1=u
IF "%TYPA4I%"=="9" GOTO TYPA5I
goto LINE11
:TYPA5I
set TYPA5I=%RANDOM:~0,1%
IF "%TYPA5I%"=="0" set PAS1=v
IF "%TYPA5I%"=="1" GOTO TYPA1I
IF "%TYPA5I%"=="2" set PAS1=w
IF "%TYPA5I%"=="3" GOTO TYPA2I
IF "%TYPA5I%"=="4" set PAS1=x
IF "%TYPA5I%"=="5" GOTO TYPA3I
IF "%TYPA5I%"=="6" set PAS1=y
IF "%TYPA5I%"=="7" GOTO TYPA4I
IF "%TYPA5I%"=="8" set PAS1=z
IF "%TYPA5I%"=="9" GOTO TYPA5I
goto LINE11
:LINE11
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
set PAS2=%NUBR1J%
goto LINE12
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
IF "%CAPA1J%"=="0" set PAS2=B
IF "%CAPA1J%"=="1" GOTO CAPA1J
IF "%CAPA1J%"=="2" set PAS2=C
IF "%CAPA1J%"=="3" GOTO CAPA2J
IF "%CAPA1J%"=="4" set PAS2=D
IF "%CAPA1J%"=="5" GOTO CAPA3J
IF "%CAPA1J%"=="6" set PAS2=E
IF "%CAPA1J%"=="7" GOTO CAPA4J
IF "%CAPA1J%"=="8" set PAS2=F
IF "%CAPA1J%"=="9" GOTO CAPA5J
goto LINE12
:CAPA2J
set CAPA2J=%RANDOM:~0,1%
IF "%CAPA2J%"=="0" set PAS2=G
IF "%CAPA2J%"=="1" GOTO CAPA1J
IF "%CAPA2J%"=="2" set PAS2=H
IF "%CAPA2J%"=="3" GOTO CAPA2J
IF "%CAPA2J%"=="4" set PAS2=I
IF "%CAPA2J%"=="5" GOTO CAPA3J
IF "%CAPA2J%"=="6" set PAS2=J
IF "%CAPA2J%"=="7" GOTO CAPA4J
IF "%CAPA2J%"=="8" set PAS2=K
IF "%CAPA2J%"=="9" GOTO CAPA5J
goto LINE12
:CAPA3J
set CAPA3J=%RANDOM:~0,1%
IF "%CAPA3J%"=="0" set PAS2=L
IF "%CAPA3J%"=="1" GOTO CAPA1J
IF "%CAPA3J%"=="2" set PAS2=M
IF "%CAPA3J%"=="3" GOTO CAPA2J
IF "%CAPA3J%"=="4" set PAS2=N
IF "%CAPA3J%"=="5" GOTO CAPA3J
IF "%CAPA3J%"=="6" set PAS2=O
IF "%CAPA3J%"=="7" GOTO CAPA4J
IF "%CAPA3J%"=="8" set PAS2=P
IF "%CAPA3J%"=="9" GOTO CAPA5J
goto LINE12
:CAPA4J
set CAPA4J=%RANDOM:~0,1%
IF "%CAPA4J%"=="0" set PAS2=Q
IF "%CAPA4J%"=="1" GOTO CAPA1J
IF "%CAPA4J%"=="2" set PAS2=R
IF "%CAPA4J%"=="3" GOTO CAPA2J
IF "%CAPA4J%"=="4" set PAS2=S
IF "%CAPA4J%"=="5" GOTO CAPA3J
IF "%CAPA4J%"=="6" set PAS2=T
IF "%CAPA4J%"=="7" GOTO CAPA4J
IF "%CAPA4J%"=="8" set PAS2=U
IF "%CAPA4J%"=="9" GOTO CAPA5J
goto LINE12
:CAPA5J
set CAPA5J=%RANDOM:~0,1%
IF "%CAPA5J%"=="0" set PAS2=V
IF "%CAPA5J%"=="1" GOTO CAPA1J
IF "%CAPA5J%"=="2" set PAS2=W
IF "%CAPA5J%"=="3" GOTO CAPA2J
IF "%CAPA5J%"=="4" set PAS2=X
IF "%CAPA5J%"=="5" GOTO CAPA3J
IF "%CAPA5J%"=="6" set PAS2=Y
IF "%CAPA5J%"=="7" GOTO CAPA4J
IF "%CAPA5J%"=="8" set PAS2=Z
IF "%CAPA5J%"=="9" GOTO CAPA5J
goto LINE12
:TYPJ
:TYPA1J
set TYPA1J=%RANDOM:~0,1%
IF "%TYPA1J%"=="0" set PAS2=b
IF "%TYPA1J%"=="1" GOTO TYPA1J
IF "%TYPA1J%"=="2" set PAS2=c
IF "%TYPA1J%"=="3" GOTO TYPA2J
IF "%TYPA1J%"=="4" set PAS2=d
IF "%TYPA1J%"=="5" GOTO TYPA3J
IF "%TYPA1J%"=="6" set PAS2=e
IF "%TYPA1J%"=="7" GOTO TYPA4J
IF "%TYPA1J%"=="8" set PAS2=f
IF "%TYPA1J%"=="9" GOTO TYPA5J
goto LINE12
:TYPA2J
set TYPA2J=%RANDOM:~0,1%
IF "%TYPA2J%"=="0" set PAS2=g
IF "%TYPA2J%"=="1" GOTO TYPA1J
IF "%TYPA2J%"=="2" set PAS2=h
IF "%TYPA2J%"=="3" GOTO TYPA2J
IF "%TYPA2J%"=="4" set PAS2=i
IF "%TYPA2J%"=="5" GOTO TYPA3J
IF "%TYPA2J%"=="6" set PAS2=j
IF "%TYPA2J%"=="7" GOTO TYPA4J
IF "%TYPA2J%"=="8" set PAS2=k
IF "%TYPA2J%"=="9" GOTO TYPA5J
goto LINE12
:TYPA3J
set TYPA3J=%RANDOM:~0,1%
IF "%TYPA3J%"=="0" set PAS2=l
IF "%TYPA3J%"=="1" GOTO TYPA1J
IF "%TYPA3J%"=="2" set PAS2=m
IF "%TYPA3J%"=="3" GOTO TYPA2J
IF "%TYPA3J%"=="4" set PAS2=n
IF "%TYPA3J%"=="5" GOTO TYPA3J
IF "%TYPA3J%"=="6" set PAS2=o
IF "%TYPA3J%"=="7" GOTO TYPA4J
IF "%TYPA3J%"=="8" set PAS2=p
IF "%TYPA3J%"=="9" GOTO TYPA5J
goto LINE12
:TYPA4J
set TYPA4J=%RANDOM:~0,1%
IF "%TYPA4J%"=="0" set PAS2=q
IF "%TYPA4J%"=="1" GOTO TYPA1J
IF "%TYPA4J%"=="2" set PAS2=r
IF "%TYPA4J%"=="3" GOTO TYPA2J
IF "%TYPA4J%"=="4" set PAS2=s
IF "%TYPA4J%"=="5" GOTO TYPA3J
IF "%TYPA4J%"=="6" set PAS2=t
IF "%TYPA4J%"=="7" GOTO TYPA4J
IF "%TYPA4J%"=="8" set PAS2=u
IF "%TYPA4J%"=="9" GOTO TYPA5J
goto LINE12
:TYPA5J
set TYPA5J=%RANDOM:~0,1%
IF "%TYPA5J%"=="0" set PAS2=v
IF "%TYPA5J%"=="1" GOTO TYPA1J
IF "%TYPA5J%"=="2" set PAS2=w
IF "%TYPA5J%"=="3" GOTO TYPA2J
IF "%TYPA5J%"=="4" set PAS2=x
IF "%TYPA5J%"=="5" GOTO TYPA3J
IF "%TYPA5J%"=="6" set PAS2=y
IF "%TYPA5J%"=="7" GOTO TYPA4J
IF "%TYPA5J%"=="8" set PAS2=z
IF "%TYPA5J%"=="9" GOTO TYPA5J
goto LINE12
:LINE12
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
set PAS3=%NUBR1K%
goto LINE13
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
IF "%CAPA1K%"=="0" set PAS3=A
IF "%CAPA1K%"=="1" GOTO CAPA1K
IF "%CAPA1K%"=="2" set PAS3=B
IF "%CAPA1K%"=="3" GOTO CAPA2K
IF "%CAPA1K%"=="4" set PAS3=C
IF "%CAPA1K%"=="5" GOTO CAPA3K
IF "%CAPA1K%"=="6" set PAS3=D
IF "%CAPA1K%"=="7" GOTO CAPA4K
IF "%CAPA1K%"=="8" set PAS3=E
IF "%CAPA1K%"=="9" GOTO CAPA5K
goto LINE13
:CAPA2K
set CAPA2K=%RANDOM:~0,1%
IF "%CAPA2K%"=="0" set PAS3=F
IF "%CAPA2K%"=="1" GOTO CAPA1K
IF "%CAPA2K%"=="2" set PAS3=G
IF "%CAPA2K%"=="3" GOTO CAPA2K
IF "%CAPA2K%"=="4" set PAS3=H
IF "%CAPA2K%"=="5" GOTO CAPA3K
IF "%CAPA2K%"=="6" set PAS3=I
IF "%CAPA2K%"=="7" GOTO CAPA4K
IF "%CAPA2K%"=="8" set PAS3=J
IF "%CAPA2K%"=="9" GOTO CAPA5K
goto LINE13
:CAPA3K
set CAPA3K=%RANDOM:~0,1%
IF "%CAPA3K%"=="0" set PAS3=K
IF "%CAPA3K%"=="1" GOTO CAPA1K
IF "%CAPA3K%"=="2" set PAS3=L
IF "%CAPA3K%"=="3" GOTO CAPA2K
IF "%CAPA3K%"=="4" set PAS3=M
IF "%CAPA3K%"=="5" GOTO CAPA3K
IF "%CAPA3K%"=="6" set PAS3=N
IF "%CAPA3K%"=="7" GOTO CAPA4K
IF "%CAPA3K%"=="8" set PAS3=O
IF "%CAPA3K%"=="9" GOTO CAPA5K
goto LINE13
:CAPA4K
set CAPA4K=%RANDOM:~0,1%
IF "%CAPA4K%"=="0" set PAS3=P
IF "%CAPA4K%"=="1" GOTO CAPA1K
IF "%CAPA4K%"=="2" set PAS3=Q
IF "%CAPA4K%"=="3" GOTO CAPA2K
IF "%CAPA4K%"=="4" set PAS3=R
IF "%CAPA4K%"=="5" GOTO CAPA3K
IF "%CAPA4K%"=="6" set PAS3=S
IF "%CAPA4K%"=="7" GOTO CAPA4K
IF "%CAPA4K%"=="8" set PAS3=U
IF "%CAPA4K%"=="9" GOTO CAPA5K
goto LINE13
:CAPA5K
set CAPA5K=%RANDOM:~0,1%
IF "%CAPA5K%"=="0" set PAS3=V
IF "%CAPA5K%"=="1" GOTO CAPA1K
IF "%CAPA5K%"=="2" set PAS3=W
IF "%CAPA5K%"=="3" GOTO CAPA2K
IF "%CAPA5K%"=="4" set PAS3=X
IF "%CAPA5K%"=="5" GOTO CAPA3K
IF "%CAPA5K%"=="6" set PAS3=Y
IF "%CAPA5K%"=="7" GOTO CAPA4K
IF "%CAPA5K%"=="8" set PAS3=Z
IF "%CAPA5K%"=="9" GOTO CAPA5K
goto LINE13
:TYPK
:TYPA1K
set TYPA1K=%RANDOM:~0,1%
IF "%TYPA1K%"=="0" set PAS3=a
IF "%TYPA1K%"=="1" GOTO TYPA1K
IF "%TYPA1K%"=="2" set PAS3=b
IF "%TYPA1K%"=="3" GOTO TYPA2K
IF "%TYPA1K%"=="4" set PAS3=c
IF "%TYPA1K%"=="5" GOTO TYPA3K
IF "%TYPA1K%"=="6" set PAS3=d
IF "%TYPA1K%"=="7" GOTO TYPA4K
IF "%TYPA1K%"=="8" set PAS3=e
IF "%TYPA1K%"=="9" GOTO TYPA5K
goto LINE13
:TYPA2K
set TYPA2K=%RANDOM:~0,1%
IF "%TYPA2K%"=="0" set PAS3=f
IF "%TYPA2K%"=="1" GOTO TYPA1K
IF "%TYPA2K%"=="2" set PAS3=g
IF "%TYPA2K%"=="3" GOTO TYPA2K
IF "%TYPA2K%"=="4" set PAS3=h
IF "%TYPA2K%"=="5" GOTO TYPA3K
IF "%TYPA2K%"=="6" set PAS3=i
IF "%TYPA2K%"=="7" GOTO TYPA4K
IF "%TYPA2K%"=="8" set PAS3=j
IF "%TYPA2K%"=="9" GOTO TYPA5K
goto LINE13
:TYPA3K
set TYPA3K=%RANDOM:~0,1%
IF "%TYPA3K%"=="0" set PAS3=k
IF "%TYPA3K%"=="1" GOTO TYPA1K
IF "%TYPA3K%"=="2" set PAS3=l
IF "%TYPA3K%"=="3" GOTO TYPA2K
IF "%TYPA3K%"=="4" set PAS3=m
IF "%TYPA3K%"=="5" GOTO TYPA3K
IF "%TYPA3K%"=="6" set PAS3=n
IF "%TYPA3K%"=="7" GOTO TYPA4K
IF "%TYPA3K%"=="8" set PAS3=o
IF "%TYPA3K%"=="9" GOTO TYPA5K
goto LINE13
:TYPA4K
set TYPA4K=%RANDOM:~0,1%
IF "%TYPA4K%"=="0" set PAS3=p
IF "%TYPA4K%"=="1" GOTO TYPA1K
IF "%TYPA4K%"=="2" set PAS3=q
IF "%TYPA4K%"=="3" GOTO TYPA2K
IF "%TYPA4K%"=="4" set PAS3=r
IF "%TYPA4K%"=="5" GOTO TYPA3K
IF "%TYPA4K%"=="6" set PAS3=s
IF "%TYPA4K%"=="7" GOTO TYPA4K
IF "%TYPA4K%"=="8" set PAS3=u
IF "%TYPA4K%"=="9" GOTO TYPA5K
goto LINE13
:TYPA5K
set TYPA5K=%RANDOM:~0,1%
IF "%TYPA5K%"=="0" set PAS3=v
IF "%TYPA5K%"=="1" GOTO TYPA1K
IF "%TYPA5K%"=="2" set PAS3=w
IF "%TYPA5K%"=="3" GOTO TYPA2K
IF "%TYPA5K%"=="4" set PAS3=x
IF "%TYPA5K%"=="5" GOTO TYPA3K
IF "%TYPA5K%"=="6" set PAS3=y
IF "%TYPA5K%"=="7" GOTO TYPA4K
IF "%TYPA5K%"=="8" set PAS3=z
IF "%TYPA5K%"=="9" GOTO TYPA5K
goto LINE13
:LINE13
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
set PAS4=%NUBR1L%
goto LINE14
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
IF "%CAPA1L%"=="0" set PAS4=A
IF "%CAPA1L%"=="1" GOTO CAPA1L
IF "%CAPA1L%"=="2" set PAS4=B
IF "%CAPA1L%"=="3" GOTO CAPA2L
IF "%CAPA1L%"=="4" set PAS4=C
IF "%CAPA1L%"=="5" GOTO CAPA3L
IF "%CAPA1L%"=="6" set PAS4=D
IF "%CAPA1L%"=="7" GOTO CAPA4L
IF "%CAPA1L%"=="8" set PAS4=E
IF "%CAPA1L%"=="9" GOTO CAPA5L
goto LINE14
:CAPA2L
set CAPA2L=%RANDOM:~0,1%
IF "%CAPA2L%"=="0" set PAS4=F
IF "%CAPA2L%"=="1" GOTO CAPA1L
IF "%CAPA2L%"=="2" set PAS4=G
IF "%CAPA2L%"=="3" GOTO CAPA2L
IF "%CAPA2L%"=="4" set PAS4=H
IF "%CAPA2L%"=="5" GOTO CAPA3L
IF "%CAPA2L%"=="6" set PAS4=I
IF "%CAPA2L%"=="7" GOTO CAPA4L
IF "%CAPA2L%"=="8" set PAS4=J
IF "%CAPA2L%"=="9" GOTO CAPA5L
goto LINE14
:CAPA3L
set CAPA3L=%RANDOM:~0,1%
IF "%CAPA3L%"=="0" set PAS4=K
IF "%CAPA3L%"=="1" GOTO CAPA1L
IF "%CAPA3L%"=="2" set PAS4=L
IF "%CAPA3L%"=="3" GOTO CAPA2L
IF "%CAPA3L%"=="4" set PAS4=M
IF "%CAPA3L%"=="5" GOTO CAPA3L
IF "%CAPA3L%"=="6" set PAS4=N
IF "%CAPA3L%"=="7" GOTO CAPA4L
IF "%CAPA3L%"=="8" set PAS4=O
IF "%CAPA3L%"=="9" GOTO CAPA5L
goto LINE14
:CAPA4L
set CAPA4L=%RANDOM:~0,1%
IF "%CAPA4L%"=="0" set PAS4=P
IF "%CAPA4L%"=="1" GOTO CAPA1L
IF "%CAPA4L%"=="2" set PAS4=Q
IF "%CAPA4L%"=="3" GOTO CAPA2L
IF "%CAPA4L%"=="4" set PAS4=R
IF "%CAPA4L%"=="5" GOTO CAPA3L
IF "%CAPA4L%"=="6" set PAS4=S
IF "%CAPA4L%"=="7" GOTO CAPA4L
IF "%CAPA4L%"=="8" set PAS4=U
IF "%CAPA4L%"=="9" GOTO CAPA5L
goto LINE14
:CAPA5L
set CAPA5L=%RANDOM:~0,1%
IF "%CAPA5L%"=="0" set PAS4=V
IF "%CAPA5L%"=="1" GOTO CAPA1L
IF "%CAPA5L%"=="2" set PAS4=W
IF "%CAPA5L%"=="3" GOTO CAPA2L
IF "%CAPA5L%"=="4" set PAS4=X
IF "%CAPA5L%"=="5" GOTO CAPA3L
IF "%CAPA5L%"=="6" set PAS4=Y
IF "%CAPA5L%"=="7" GOTO CAPA4L
IF "%CAPA5L%"=="8" set PAS4=Z
IF "%CAPA5L%"=="9" GOTO CAPA5L
goto LINE14
:TYPL
:TYPA1L
set TYPA1L=%RANDOM:~0,1%
IF "%TYPA1L%"=="0" set PAS4=a
IF "%TYPA1L%"=="1" GOTO TYPA1L
IF "%TYPA1L%"=="2" set PAS4=b
IF "%TYPA1L%"=="3" GOTO TYPA2L
IF "%TYPA1L%"=="4" set PAS4=c
IF "%TYPA1L%"=="5" GOTO TYPA3L
IF "%TYPA1L%"=="6" set PAS4=d
IF "%TYPA1L%"=="7" GOTO TYPA4L
IF "%TYPA1L%"=="8" set PAS4=e
IF "%TYPA1L%"=="9" GOTO TYPA5L
goto LINE14
:TYPA2L
set TYPA2L=%RANDOM:~0,1%
IF "%TYPA2L%"=="0" set PAS4=f
IF "%TYPA2L%"=="1" GOTO TYPA1L
IF "%TYPA2L%"=="2" set PAS4=g
IF "%TYPA2L%"=="3" GOTO TYPA2L
IF "%TYPA2L%"=="4" set PAS4=h
IF "%TYPA2L%"=="5" GOTO TYPA3L
IF "%TYPA2L%"=="6" set PAS4=i
IF "%TYPA2L%"=="7" GOTO TYPA4L
IF "%TYPA2L%"=="8" set PAS4=j
IF "%TYPA2L%"=="9" GOTO TYPA5L
goto LINE14
:TYPA3L
set TYPA3L=%RANDOM:~0,1%
IF "%TYPA3L%"=="0" set PAS4=k
IF "%TYPA3L%"=="1" GOTO TYPA1L
IF "%TYPA3L%"=="2" set PAS4=l
IF "%TYPA3L%"=="3" GOTO TYPA2L
IF "%TYPA3L%"=="4" set PAS4=m
IF "%TYPA3L%"=="5" GOTO TYPA3L
IF "%TYPA3L%"=="6" set PAS4=n
IF "%TYPA3L%"=="7" GOTO TYPA4L
IF "%TYPA3L%"=="8" set PAS4=o
IF "%TYPA3L%"=="9" GOTO TYPA5L
goto LINE14
:TYPA4L
set TYPA4L=%RANDOM:~0,1%
IF "%TYPA4L%"=="0" set PAS4=p
IF "%TYPA4L%"=="1" GOTO TYPA1L
IF "%TYPA4L%"=="2" set PAS4=q
IF "%TYPA4L%"=="3" GOTO TYPA2L
IF "%TYPA4L%"=="4" set PAS4=r
IF "%TYPA4L%"=="5" GOTO TYPA3L
IF "%TYPA4L%"=="6" set PAS4=s
IF "%TYPA4L%"=="7" GOTO TYPA4L
IF "%TYPA4L%"=="8" set PAS4=u
IF "%TYPA4L%"=="9" GOTO TYPA5L
goto LINE14
:TYPA5L
set TYPA5L=%RANDOM:~0,1%
IF "%TYPA5L%"=="0" set PAS4=v
IF "%TYPA5L%"=="1" GOTO TYPA1L
IF "%TYPA5L%"=="2" set PAS4=w
IF "%TYPA5L%"=="3" GOTO TYPA2L
IF "%TYPA5L%"=="4" set PAS4=x
IF "%TYPA5L%"=="5" GOTO TYPA3L
IF "%TYPA5L%"=="6" set PAS4=y
IF "%TYPA5L%"=="7" GOTO TYPA4L
IF "%TYPA5L%"=="8" set PAS4=z
IF "%TYPA5L%"=="9" GOTO TYPA5L
goto LINE14
:LINE14
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
set PAS5=%NUBR1M%
goto LINE15
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
:CAPA1M
set CAPA1M=%RANDOM:~0,1%
IF "%CAPA1M%"=="0" set PAS5=A
IF "%CAPA1M%"=="1" GOTO CAPA1M
IF "%CAPA1M%"=="2" set PAS5=B
IF "%CAPA1M%"=="3" GOTO CAPA2M
IF "%CAPA1M%"=="4" set PAS5=C
IF "%CAPA1M%"=="5" GOTO CAPA3M
IF "%CAPA1M%"=="6" set PAS5=D
IF "%CAPA1M%"=="7" GOTO CAPA4M
IF "%CAPA1M%"=="8" set PAS5=E
IF "%CAPA1M%"=="9" GOTO CAPA5M
goto LINE15
:CAPA2M
set CAPA2M=%RANDOM:~0,1%
IF "%CAPA2M%"=="0" set PAS5=F
IF "%CAPA2M%"=="1" GOTO CAPA1M
IF "%CAPA2M%"=="2" set PAS5=G
IF "%CAPA2M%"=="3" GOTO CAPA2M
IF "%CAPA2M%"=="4" set PAS5=H
IF "%CAPA2M%"=="5" GOTO CAPA3M
IF "%CAPA2M%"=="6" set PAS5=I
IF "%CAPA2M%"=="7" GOTO CAPA4M
IF "%CAPA2M%"=="8" set PAS5=J
IF "%CAPA2M%"=="9" GOTO CAPA5M
goto LINE15
:CAPA3M
set CAPA3M=%RANDOM:~0,1%
IF "%CAPA3M%"=="0" set PAS5=K
IF "%CAPA3M%"=="1" GOTO CAPA1M
IF "%CAPA3M%"=="2" set PAS5=L
IF "%CAPA3M%"=="3" GOTO CAPA2M
IF "%CAPA3M%"=="4" set PAS5=M
IF "%CAPA3M%"=="5" GOTO CAPA3M
IF "%CAPA3M%"=="6" set PAS5=N
IF "%CAPA3M%"=="7" GOTO CAPA4M
IF "%CAPA3M%"=="8" set PAS5=O
IF "%CAPA3M%"=="9" GOTO CAPA5M
goto LINE15
:CAPA4M
set CAPA4M=%RANDOM:~0,1%
IF "%CAPA4M%"=="0" set PAS5=P
IF "%CAPA4M%"=="1" GOTO CAPA1M
IF "%CAPA4M%"=="2" set PAS5=Q
IF "%CAPA4M%"=="3" GOTO CAPA2M
IF "%CAPA4M%"=="4" set PAS5=R
IF "%CAPA4M%"=="5" GOTO CAPA3M
IF "%CAPA4M%"=="6" set PAS5=S
IF "%CAPA4M%"=="7" GOTO CAPA4M
IF "%CAPA4M%"=="8" set PAS5=U
IF "%CAPA4M%"=="9" GOTO CAPA5M
goto LINE15
:CAPA5M
set CAPA5M=%RANDOM:~0,1%
IF "%CAPA5M%"=="0" set PAS5=V
IF "%CAPA5M%"=="1" GOTO CAPA1M
IF "%CAPA5M%"=="2" set PAS5=W
IF "%CAPA5M%"=="3" GOTO CAPA2M
IF "%CAPA5M%"=="4" set PAS5=X
IF "%CAPA5M%"=="5" GOTO CAPA3M
IF "%CAPA5M%"=="6" set PAS5=Y
IF "%CAPA5M%"=="7" GOTO CAPA4M
IF "%CAPA5M%"=="8" set PAS5=Z
IF "%CAPA5M%"=="9" GOTO CAPA5M
goto LINE15
:TYPM
:TYPA1M
set TYPA1M=%RANDOM:~0,1%
IF "%TYPA1M%"=="0" set PAS5=a
IF "%TYPA1M%"=="1" GOTO TYPA1M
IF "%TYPA1M%"=="2" set PAS5=b
IF "%TYPA1M%"=="3" GOTO TYPA2M
IF "%TYPA1M%"=="4" set PAS5=c
IF "%TYPA1M%"=="5" GOTO TYPA3M
IF "%TYPA1M%"=="6" set PAS5=d
IF "%TYPA1M%"=="7" GOTO TYPA4M
IF "%TYPA1M%"=="8" set PAS5=e
IF "%TYPA1M%"=="9" GOTO TYPA5M
goto LINE15
:TYPA2M
set TYPA2M=%RANDOM:~0,1%
IF "%TYPA2M%"=="0" set PAS5=f
IF "%TYPA2M%"=="1" GOTO TYPA1M
IF "%TYPA2M%"=="2" set PAS5=g
IF "%TYPA2M%"=="3" GOTO TYPA2M
IF "%TYPA2M%"=="4" set PAS5=h
IF "%TYPA2M%"=="5" GOTO TYPA3M
IF "%TYPA2M%"=="6" set PAS5=i
IF "%TYPA2M%"=="7" GOTO TYPA4M
IF "%TYPA2M%"=="8" set PAS5=j
IF "%TYPA2M%"=="9" GOTO TYPA5M
goto LINE15
:TYPA3M
set TYPA3M=%RANDOM:~0,1%
IF "%TYPA3M%"=="0" set PAS5=k
IF "%TYPA3M%"=="1" GOTO TYPA1M
IF "%TYPA3M%"=="2" set PAS5=l
IF "%TYPA3M%"=="3" GOTO TYPA2M
IF "%TYPA3M%"=="4" set PAS5=m
IF "%TYPA3M%"=="5" GOTO TYPA3M
IF "%TYPA3M%"=="6" set PAS5=n
IF "%TYPA3M%"=="7" GOTO TYPA4M
IF "%TYPA3M%"=="8" set PAS5=o
IF "%TYPA3M%"=="9" GOTO TYPA5M
goto LINE15
:TYPA4M
set TYPA4M=%RANDOM:~0,1%
IF "%TYPA4M%"=="0" set PAS5=p
IF "%TYPA4M%"=="1" GOTO TYPA1M
IF "%TYPA4M%"=="2" set PAS5=q
IF "%TYPA4M%"=="3" GOTO TYPA2M
IF "%TYPA4M%"=="4" set PAS5=r
IF "%TYPA4M%"=="5" GOTO TYPA3M
IF "%TYPA4M%"=="6" set PAS5=s
IF "%TYPA4M%"=="7" GOTO TYPA4M
IF "%TYPA4M%"=="8" set PAS5=u
IF "%TYPA4M%"=="9" GOTO TYPA5M
goto LINE15
:TYPA5M
set TYPA5M=%RANDOM:~0,1%
IF "%TYPA5M%"=="0" set PAS5=v
IF "%TYPA5M%"=="1" GOTO TYPA1M
IF "%TYPA5M%"=="2" set PAS5=w
IF "%TYPA5M%"=="3" GOTO TYPA2M
IF "%TYPA5M%"=="4" set PAS5=x
IF "%TYPA5M%"=="5" GOTO TYPA3M
IF "%TYPA5M%"=="6" set PAS5=y
IF "%TYPA5M%"=="7" GOTO TYPA4M
IF "%TYPA5M%"=="8" set PAS5=z
IF "%TYPA5M%"=="9" GOTO TYPA5M
goto LINE15
:LINE15
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
set PAS6=%NUBR1N%
goto LINE16
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
:CAPA1N
set CAPA1N=%RANDOM:~0,1%
IF "%CAPA1N%"=="0" set PAS6=A
IF "%CAPA1N%"=="1" GOTO CAPA1N
IF "%CAPA1N%"=="2" set PAS6=B
IF "%CAPA1N%"=="3" GOTO CAPA2N
IF "%CAPA1N%"=="4" set PAS6=C
IF "%CAPA1N%"=="5" GOTO CAPA3N
IF "%CAPA1N%"=="6" set PAS6=D
IF "%CAPA1N%"=="7" GOTO CAPA4N
IF "%CAPA1N%"=="8" set PAS6=E
IF "%CAPA1N%"=="9" GOTO CAPA5N
goto LINE16
:CAPA2N
set CAPA2N=%RANDOM:~0,1%
IF "%CAPA2N%"=="0" set PAS6=F
IF "%CAPA2N%"=="1" GOTO CAPA1N
IF "%CAPA2N%"=="2" set PAS6=G
IF "%CAPA2N%"=="3" GOTO CAPA2N
IF "%CAPA2N%"=="4" set PAS6=H
IF "%CAPA2N%"=="5" GOTO CAPA3N
IF "%CAPA2N%"=="6" set PAS6=I
IF "%CAPA2N%"=="7" GOTO CAPA4N
IF "%CAPA2N%"=="8" set PAS6=J
IF "%CAPA2N%"=="9" GOTO CAPA5N
goto LINE16
:CAPA3N
set CAPA3N=%RANDOM:~0,1%
IF "%CAPA3N%"=="0" set PAS6=K
IF "%CAPA3N%"=="1" GOTO CAPA1N
IF "%CAPA3N%"=="2" set PAS6=L
IF "%CAPA3N%"=="3" GOTO CAPA2N
IF "%CAPA3N%"=="4" set PAS6=M
IF "%CAPA3N%"=="5" GOTO CAPA3N
IF "%CAPA3N%"=="6" set PAS6=N
IF "%CAPA3N%"=="7" GOTO CAPA4N
IF "%CAPA3N%"=="8" set PAS6=O
IF "%CAPA3N%"=="9" GOTO CAPA5N
goto LINE16
:CAPA4N
set CAPA4N=%RANDOM:~0,1%
IF "%CAPA4N%"=="0" set PAS6=P
IF "%CAPA4N%"=="1" GOTO CAPA1N
IF "%CAPA4N%"=="2" set PAS6=Q
IF "%CAPA4N%"=="3" GOTO CAPA2N
IF "%CAPA4N%"=="4" set PAS6=R
IF "%CAPA4N%"=="5" GOTO CAPA3N
IF "%CAPA4N%"=="6" set PAS6=S
IF "%CAPA4N%"=="7" GOTO CAPA4N
IF "%CAPA4N%"=="8" set PAS6=U
IF "%CAPA4N%"=="9" GOTO CAPA5N
goto LINE16
:CAPA5N
set CAPA5N=%RANDOM:~0,1%
IF "%CAPA5N%"=="0" set PAS6=V
IF "%CAPA5N%"=="1" GOTO CAPA1N
IF "%CAPA5N%"=="2" set PAS6=W
IF "%CAPA5N%"=="3" GOTO CAPA2N
IF "%CAPA5N%"=="4" set PAS6=X
IF "%CAPA5N%"=="5" GOTO CAPA3N
IF "%CAPA5N%"=="6" set PAS6=Y
IF "%CAPA5N%"=="7" GOTO CAPA4N
IF "%CAPA5N%"=="8" set PAS6=Z
IF "%CAPA5N%"=="9" GOTO CAPA5N
goto LINE16
:TYPN
:TYPA1N
set TYPA1N=%RANDOM:~0,1%
IF "%TYPA1N%"=="0" set PAS6=a
IF "%TYPA1N%"=="1" GOTO TYPA1N
IF "%TYPA1N%"=="2" set PAS6=b
IF "%TYPA1N%"=="3" GOTO TYPA2N
IF "%TYPA1N%"=="4" set PAS6=c
IF "%TYPA1N%"=="5" GOTO TYPA3N
IF "%TYPA1N%"=="6" set PAS6=d
IF "%TYPA1N%"=="7" GOTO TYPA4N
IF "%TYPA1N%"=="8" set PAS6=e
IF "%TYPA1N%"=="9" GOTO TYPA5N
goto LINE16
:TYPA2N
set TYPA2N=%RANDOM:~0,1%
IF "%TYPA2N%"=="0" set PAS6=f
IF "%TYPA2N%"=="1" GOTO TYPA1N
IF "%TYPA2N%"=="2" set PAS6=g
IF "%TYPA2N%"=="3" GOTO TYPA2N
IF "%TYPA2N%"=="4" set PAS6=h
IF "%TYPA2N%"=="5" GOTO TYPA3N
IF "%TYPA2N%"=="6" set PAS6=i
IF "%TYPA2N%"=="7" GOTO TYPA4N
IF "%TYPA2N%"=="8" set PAS6=j
IF "%TYPA2N%"=="9" GOTO TYPA5N
goto LINE16
:TYPA3N
set TYPA3N=%RANDOM:~0,1%
IF "%TYPA3N%"=="0" set PAS6=k
IF "%TYPA3N%"=="1" GOTO TYPA1N
IF "%TYPA3N%"=="2" set PAS6=l
IF "%TYPA3N%"=="3" GOTO TYPA2N
IF "%TYPA3N%"=="4" set PAS6=m
IF "%TYPA3N%"=="5" GOTO TYPA3N
IF "%TYPA3N%"=="6" set PAS6=n
IF "%TYPA3N%"=="7" GOTO TYPA4N
IF "%TYPA3N%"=="8" set PAS6=o
IF "%TYPA3N%"=="9" GOTO TYPA5N
goto LINE16
:TYPA4N
set TYPA4N=%RANDOM:~0,1%
IF "%TYPA4N%"=="0" set PAS6=p
IF "%TYPA4N%"=="1" GOTO TYPA1N
IF "%TYPA4N%"=="2" set PAS6=q
IF "%TYPA4N%"=="3" GOTO TYPA2N
IF "%TYPA4N%"=="4" set PAS6=r
IF "%TYPA4N%"=="5" GOTO TYPA3N
IF "%TYPA4N%"=="6" set PAS6=s
IF "%TYPA4N%"=="7" GOTO TYPA4N
IF "%TYPA4N%"=="8" set PAS6=u
IF "%TYPA4N%"=="9" GOTO TYPA5N
goto LINE16
:TYPA5N
set TYPA5N=%RANDOM:~0,1%
IF "%TYPA5N%"=="0" set PAS6=v
IF "%TYPA5N%"=="1" GOTO TYPA1N
IF "%TYPA5N%"=="2" set PAS6=w
IF "%TYPA5N%"=="3" GOTO TYPA2N
IF "%TYPA5N%"=="4" set PAS6=x
IF "%TYPA5N%"=="5" GOTO TYPA3N
IF "%TYPA5N%"=="6" set PAS6=y
IF "%TYPA5N%"=="7" GOTO TYPA4N
IF "%TYPA5N%"=="8" set PAS6=z
IF "%TYPA5N%"=="9" GOTO TYPA5N
goto LINE16
:LINE16
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
set PAS7=%NUBR1O%
goto LINE17
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
:CAPA1O
set CAPA1O=%RANDOM:~0,1%
IF "%CAPA1O%"=="0" set PAS7=A
IF "%CAPA1O%"=="1" GOTO CAPA1O
IF "%CAPA1O%"=="2" set PAS7=B
IF "%CAPA1O%"=="3" GOTO CAPA2O
IF "%CAPA1O%"=="4" set PAS7=C
IF "%CAPA1O%"=="5" GOTO CAPA3O
IF "%CAPA1O%"=="6" set PAS7=D
IF "%CAPA1O%"=="7" GOTO CAPA4O
IF "%CAPA1O%"=="8" set PAS7=E
IF "%CAPA1O%"=="9" GOTO CAPA5O
goto LINE17
:CAPA2O
set CAPA2O=%RANDOM:~0,1%
IF "%CAPA2O%"=="0" set PAS7=F
IF "%CAPA2O%"=="1" GOTO CAPA1O
IF "%CAPA2O%"=="2" set PAS7=G
IF "%CAPA2O%"=="3" GOTO CAPA2O
IF "%CAPA2O%"=="4" set PAS7=H
IF "%CAPA2O%"=="5" GOTO CAPA3O
IF "%CAPA2O%"=="6" set PAS7=I
IF "%CAPA2O%"=="7" GOTO CAPA4O
IF "%CAPA2O%"=="8" set PAS7=J
IF "%CAPA2O%"=="9" GOTO CAPA5O
goto LINE17
:CAPA3O
set CAPA3O=%RANDOM:~0,1%
IF "%CAPA3O%"=="0" set PAS7=K
IF "%CAPA3O%"=="1" GOTO CAPA1O
IF "%CAPA3O%"=="2" set PAS7=L
IF "%CAPA3O%"=="3" GOTO CAPA2O
IF "%CAPA3O%"=="4" set PAS7=M
IF "%CAPA3O%"=="5" GOTO CAPA3O
IF "%CAPA3O%"=="6" set PAS7=N
IF "%CAPA3O%"=="7" GOTO CAPA4O
IF "%CAPA3O%"=="8" set PAS7=O
IF "%CAPA3O%"=="9" GOTO CAPA5O
goto LINE17
:CAPA4O
set CAPA4O=%RANDOM:~0,1%
IF "%CAPA4O%"=="0" set PAS7=P
IF "%CAPA4O%"=="1" GOTO CAPA1O
IF "%CAPA4O%"=="2" set PAS7=Q
IF "%CAPA4O%"=="3" GOTO CAPA2O
IF "%CAPA4O%"=="4" set PAS7=R
IF "%CAPA4O%"=="5" GOTO CAPA3O
IF "%CAPA4O%"=="6" set PAS7=S
IF "%CAPA4O%"=="7" GOTO CAPA4O
IF "%CAPA4O%"=="8" set PAS7=U
IF "%CAPA4O%"=="9" GOTO CAPA5O
goto LINE17
:CAPA5O
set CAPA5O=%RANDOM:~0,1%
IF "%CAPA5O%"=="0" set PAS7=V
IF "%CAPA5O%"=="1" GOTO CAPA1O
IF "%CAPA5O%"=="2" set PAS7=W
IF "%CAPA5O%"=="3" GOTO CAPA2O
IF "%CAPA5O%"=="4" set PAS7=X
IF "%CAPA5O%"=="5" GOTO CAPA3O
IF "%CAPA5O%"=="6" set PAS7=Y
IF "%CAPA5O%"=="7" GOTO CAPA4O
IF "%CAPA5O%"=="8" set PAS7=Z
IF "%CAPA5O%"=="9" GOTO CAPA5O
goto LINE17
:TYPO
:TYPA1O
set TYPA1O=%RANDOM:~0,1%
IF "%TYPA1O%"=="0" set PAS7=a
IF "%TYPA1O%"=="1" GOTO TYPA1O
IF "%TYPA1O%"=="2" set PAS7=b
IF "%TYPA1O%"=="3" GOTO TYPA2O
IF "%TYPA1O%"=="4" set PAS7=c
IF "%TYPA1O%"=="5" GOTO TYPA3O
IF "%TYPA1O%"=="6" set PAS7=d
IF "%TYPA1O%"=="7" GOTO TYPA4O
IF "%TYPA1O%"=="8" set PAS7=e
IF "%TYPA1O%"=="9" GOTO TYPA5O
goto LINE17
:TYPA2O
set TYPA2O=%RANDOM:~0,1%
IF "%TYPA2O%"=="0" set PAS7=f
IF "%TYPA2O%"=="1" GOTO TYPA1O
IF "%TYPA2O%"=="2" set PAS7=g
IF "%TYPA2O%"=="3" GOTO TYPA2O
IF "%TYPA2O%"=="4" set PAS7=h
IF "%TYPA2O%"=="5" GOTO TYPA3O
IF "%TYPA2O%"=="6" set PAS7=i
IF "%TYPA2O%"=="7" GOTO TYPA4O
IF "%TYPA2O%"=="8" set PAS7=j
IF "%TYPA2O%"=="9" GOTO TYPA5O
goto LINE17
:TYPA3O
set TYPA3O=%RANDOM:~0,1%
IF "%TYPA3O%"=="0" set PAS7=k
IF "%TYPA3O%"=="1" GOTO TYPA1O
IF "%TYPA3O%"=="2" set PAS7=l
IF "%TYPA3O%"=="3" GOTO TYPA2O
IF "%TYPA3O%"=="4" set PAS7=m
IF "%TYPA3O%"=="5" GOTO TYPA3O
IF "%TYPA3O%"=="6" set PAS7=n
IF "%TYPA3O%"=="7" GOTO TYPA4O
IF "%TYPA3O%"=="8" set PAS7=o
IF "%TYPA3O%"=="9" GOTO TYPA5O
goto LINE17
:TYPA4O
set TYPA4O=%RANDOM:~0,1%
IF "%TYPA4O%"=="0" set PAS7=p
IF "%TYPA4O%"=="1" GOTO TYPA1O
IF "%TYPA4O%"=="2" set PAS7=q
IF "%TYPA4O%"=="3" GOTO TYPA2O
IF "%TYPA4O%"=="4" set PAS7=r
IF "%TYPA4O%"=="5" GOTO TYPA3O
IF "%TYPA4O%"=="6" set PAS7=s
IF "%TYPA4O%"=="7" GOTO TYPA4O
IF "%TYPA4O%"=="8" set PAS7=u
IF "%TYPA4O%"=="9" GOTO TYPA5O
goto LINE17
:TYPA5O
set TYPA5O=%RANDOM:~0,1%
IF "%TYPA5O%"=="0" set PAS7=v
IF "%TYPA5O%"=="1" GOTO TYPA1O
IF "%TYPA5O%"=="2" set PAS7=w
IF "%TYPA5O%"=="3" GOTO TYPA2O
IF "%TYPA5O%"=="4" set PAS7=x
IF "%TYPA5O%"=="5" GOTO TYPA3O
IF "%TYPA5O%"=="6" set PAS7=y
IF "%TYPA5O%"=="7" GOTO TYPA4O
IF "%TYPA5O%"=="8" set PAS7=z
IF "%TYPA5O%"=="9" GOTO TYPA5O
goto LINE17
:LINE17
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
set PAS8=%NUBR1P%
goto LINE18
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
:CAPA1P
set CAPA1P=%RANDOM:~0,1%
IF "%CAPA1P%"=="0" set PAS8=A
IF "%CAPA1P%"=="1" GOTO CAPA1P
IF "%CAPA1P%"=="2" set PAS8=B
IF "%CAPA1P%"=="3" GOTO CAPA2P
IF "%CAPA1P%"=="4" set PAS8=C
IF "%CAPA1P%"=="5" GOTO CAPA3P
IF "%CAPA1P%"=="6" set PAS8=D
IF "%CAPA1P%"=="7" GOTO CAPA4P
IF "%CAPA1P%"=="8" set PAS8=E
IF "%CAPA1P%"=="9" GOTO CAPA5P
goto LINE18
:CAPA2P
set CAPA2P=%RANDOM:~0,1%
IF "%CAPA2P%"=="0" set PAS8=F
IF "%CAPA2P%"=="1" GOTO CAPA1P
IF "%CAPA2P%"=="2" set PAS8=G
IF "%CAPA2P%"=="3" GOTO CAPA2P
IF "%CAPA2P%"=="4" set PAS8=H
IF "%CAPA2P%"=="5" GOTO CAPA3P
IF "%CAPA2P%"=="6" set PAS8=I
IF "%CAPA2P%"=="7" GOTO CAPA4P
IF "%CAPA2P%"=="8" set PAS8=J
IF "%CAPA2P%"=="9" GOTO CAPA5P
goto LINE18
:CAPA3P
set CAPA3P=%RANDOM:~0,1%
IF "%CAPA3P%"=="0" set PAS8=K
IF "%CAPA3P%"=="1" GOTO CAPA1P
IF "%CAPA3P%"=="2" set PAS8=L
IF "%CAPA3P%"=="3" GOTO CAPA2P
IF "%CAPA3P%"=="4" set PAS8=M
IF "%CAPA3P%"=="5" GOTO CAPA3P
IF "%CAPA3P%"=="6" set PAS8=N
IF "%CAPA3P%"=="7" GOTO CAPA4P
IF "%CAPA3P%"=="8" set PAS8=O
IF "%CAPA3P%"=="9" GOTO CAPA5P
goto LINE18
:CAPA4P
set CAPA4P=%RANDOM:~0,1%
IF "%CAPA4P%"=="0" set PAS8=P
IF "%CAPA4P%"=="1" GOTO CAPA1P
IF "%CAPA4P%"=="2" set PAS8=Q
IF "%CAPA4P%"=="3" GOTO CAPA2P
IF "%CAPA4P%"=="4" set PAS8=R
IF "%CAPA4P%"=="5" GOTO CAPA3P
IF "%CAPA4P%"=="6" set PAS8=S
IF "%CAPA4P%"=="7" GOTO CAPA4P
IF "%CAPA4P%"=="8" set PAS8=U
IF "%CAPA4P%"=="9" GOTO CAPA5P
goto LINE18
:CAPA5P
set CAPA5P=%RANDOM:~0,1%
IF "%CAPA5P%"=="0" set PAS8=V
IF "%CAPA5P%"=="1" GOTO CAPA1P
IF "%CAPA5P%"=="2" set PAS8=W
IF "%CAPA5P%"=="3" GOTO CAPA2P
IF "%CAPA5P%"=="4" set PAS8=X
IF "%CAPA5P%"=="5" GOTO CAPA3P
IF "%CAPA5P%"=="6" set PAS8=Y
IF "%CAPA5P%"=="7" GOTO CAPA4P
IF "%CAPA5P%"=="8" set PAS8=Z
IF "%CAPA5P%"=="9" GOTO CAPA5P
goto LINE18
:TYPP
:TYPA1P
set TYPA1P=%RANDOM:~0,1%
IF "%TYPA1P%"=="0" set PAS8=a
IF "%TYPA1P%"=="1" GOTO TYPA1P
IF "%TYPA1P%"=="2" set PAS8=b
IF "%TYPA1P%"=="3" GOTO TYPA2P
IF "%TYPA1P%"=="4" set PAS8=c
IF "%TYPA1P%"=="5" GOTO TYPA3P
IF "%TYPA1P%"=="6" set PAS8=d
IF "%TYPA1P%"=="7" GOTO TYPA4P
IF "%TYPA1P%"=="8" set PAS8=e
IF "%TYPA1P%"=="9" GOTO TYPA5P
goto LINE18
:TYPA2P
set TYPA2P=%RANDOM:~0,1%
IF "%TYPA2P%"=="0" set PAS8=f
IF "%TYPA2P%"=="1" GOTO TYPA1P
IF "%TYPA2P%"=="2" set PAS8=g
IF "%TYPA2P%"=="3" GOTO TYPA2P
IF "%TYPA2P%"=="4" set PAS8=h
IF "%TYPA2P%"=="5" GOTO TYPA3P
IF "%TYPA2P%"=="6" set PAS8=i
IF "%TYPA2P%"=="7" GOTO TYPA4P
IF "%TYPA2P%"=="8" set PAS8=j
IF "%TYPA2P%"=="9" GOTO TYPA5P
goto LINE18
:TYPA3P
set TYPA3P=%RANDOM:~0,1%
IF "%TYPA3P%"=="0" set PAS8=k
IF "%TYPA3P%"=="1" GOTO TYPA1P
IF "%TYPA3P%"=="2" set PAS8=l
IF "%TYPA3P%"=="3" GOTO TYPA2P
IF "%TYPA3P%"=="4" set PAS8=m
IF "%TYPA3P%"=="5" GOTO TYPA3P
IF "%TYPA3P%"=="6" set PAS8=n
IF "%TYPA3P%"=="7" GOTO TYPA4P
IF "%TYPA3P%"=="8" set PAS8=o
IF "%TYPA3P%"=="9" GOTO TYPA5P
goto LINE18
:TYPA4P
set TYPA4P=%RANDOM:~0,1%
IF "%TYPA4P%"=="0" set PAS8=p
IF "%TYPA4P%"=="1" GOTO TYPA1P
IF "%TYPA4P%"=="2" set PAS8=q
IF "%TYPA4P%"=="3" GOTO TYPA2P
IF "%TYPA4P%"=="4" set PAS8=r
IF "%TYPA4P%"=="5" GOTO TYPA3P
IF "%TYPA4P%"=="6" set PAS8=s
IF "%TYPA4P%"=="7" GOTO TYPA4P
IF "%TYPA4P%"=="8" set PAS8=u
IF "%TYPA4P%"=="9" GOTO TYPA5P
goto LINE18
:TYPA5P
set TYPA5P=%RANDOM:~0,1%
IF "%TYPA5P%"=="0" set PAS8=v
IF "%TYPA5P%"=="1" GOTO TYPA1P
IF "%TYPA5P%"=="2" set PAS8=w
IF "%TYPA5P%"=="3" GOTO TYPA2P
IF "%TYPA5P%"=="4" set PAS8=x
IF "%TYPA5P%"=="5" GOTO TYPA3P
IF "%TYPA5P%"=="6" set PAS8=y
IF "%TYPA5P%"=="7" GOTO TYPA4P
IF "%TYPA5P%"=="8" set PAS8=z
IF "%TYPA5P%"=="9" GOTO TYPA5P
goto LINE18
:LINE18
cls
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  #     # #     # #####  #####  ##### #     #       ##          ###### ###### #####  #     # ###### #####
echo  #     # ##   ## #    # #    # #     #     #      #  #         #      #      #    # #     # #      #    #
echo  #     # # # # # #####  #####  ##### #     #     ######  ####  ###### ###### #####   #   #  ###### #####
echo  #     # #  #  # #    # #   #  #     #     #     #    #             # #      #   #    # #   #      #   #
echo   #####  #     # #####  #    # ##### ##### ##### #    #        ###### ###### #    #    #    ###### #    #
echo.
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
echo  Reconnecting Client...                                                        UMBRELLA-SERVER V15.040715
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo  Reconnecting client, please wait...
echo %PAS1%%PAS2%%PAS3%%PAS4%%PAS5%%PAS6%%PAS7%%PAS8% >%windir%\UMBRPAS.inf
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
echo 1 >%windir%\umbrstatconf.inf
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
echo  ERROR! Core Load Failed!                                                      UMBRELLA-SERVER V15.040715
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
echo  ERROR! Core File Not Found!                                                   UMBRELLA-SERVER V15.040715
echo ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ 
timeout /t 5 /nobreak > nul
exit