for /f "skip=12 delims=*" %%a in (statumbrella.inf) do (
echo %%a>>statumbrella.ini
)