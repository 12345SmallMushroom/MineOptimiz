@echo off
echo MineOptimiz Updater�и��µİ汾
echo ���ڽ������
pause
powershell Invoke-WebRequst -Uri "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.ps1" -OutFile "./config/fancymenu/assets/Update/Update.ps1"
powershell Invoke-WebRequst -Uri "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.bat" -OutFile "./Update.bat"
echo �������
echo ������������Updater...
start .\Update.bat