echo ' > "temx.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temx.vbs"
echo speech.speak "Maulana Bagus Saputra" >> "temx.vbs"
attrib +h temx.vbs
start /wait temx.vbs