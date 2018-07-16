@echo off
title MP3 Player
color 0b
:FRNT
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様  
echo         ##       ## #####  #####
echo        ###     ### ##  ## ##        ## ##  ##  ####
echo       ## ## ## ## ###### #####        ### ## ##
echo      ##   #   ## ##  ##    ##     ## ## ### ##
echo     ##       ## #####  #####     ## ##  ##  ####                MP3 Player. . .
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
set/p "M3=Drag and Drop MP3 Here : "
IF NOT DEFINED M3 GOTO break
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = %M3%
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
cls
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様  
echo         ##       ## #####  #####
echo        ###     ### ##  ## ##        ## ##  ##  ####
echo       ## ## ## ## ###### #####        ### ## ##
echo      ##   #   ## ##  ##    ##     ## ## ### ##
echo     ##       ## #####  #####     ## ##  ##  ####               Now Playing. . .
echo 様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様
echo %M3%
start /w sound.vbs
attrib +s +a +h +r sound.vbs
taskkill /IM wscript.exe > nul
timeout /t 3 /nobreak > nul
attrib -s -a -h -r sound.vbs
del sound.vbs
cls
goto FRNT