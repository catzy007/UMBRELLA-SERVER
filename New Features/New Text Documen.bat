netsh wlan set hostednetwork mode=allow ssid=UMBRELLA-SERVER-01 key=savekpk1056
netsh wlan start hostednetwork
pause
netsh wlan stop hostednetwork