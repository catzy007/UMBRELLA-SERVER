@echo off
:AS
set/p "CHO=Enter Command : "
IF NOT DEFINED INP GOTO AS
if %CHO%==  goto AS
goto exit