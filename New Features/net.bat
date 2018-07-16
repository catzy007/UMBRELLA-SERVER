ping www.google.com -t -l 1 -n 5 > D:\netcon.inf

FIND /C /I "Reply from" D:\netcon.inf > nul
IF ERRORLEVEL 1 goto NETFAIL
echo NET connected
pause > nul
exit
:NETFAIL
echo NET diconnected
pause > nul