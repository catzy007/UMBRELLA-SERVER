@echo off
cls
hostname >umbrella.inf
for /f %%i in (umbrella.inf) do (
echo.
echo  UMBRELLA@%%i
echo UMBRELLA@%%i >umbrella.inf
)
pause>nul