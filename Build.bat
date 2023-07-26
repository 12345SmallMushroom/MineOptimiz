@echo off
echo ��ʹ�ô˳���֮ǰ�벻Ҫ�޸Ĵ�����ļ��е����֣�
echo ����Ҫ��һ���汾��
echo 1 Standard
echo 2 Lite
echo 3 Standalone
set /p edition=
if "%edition%"=="3" (
  echo ��Ǹ���ð汾�ݲ�֧�ִ��
  pause
  exit
)
cd ..
xcopy .\Tiao-s-Modpack-For-Tiao-s-Server %temp%\backup-modpack /E /H /C /I
cd /d %temp%\backup-modpack
if "%edition%"=="1" (
  del Build.bat
  del modrinth.index.lite.json
  del README.md
  rd /s /q .github
  cd overrides
  rd /s /q mods-lite
  rename h.txt options.txt
  cd ..
)
if "%edition%"=="2" (
  del Build.bat
  del modrinth.index.json
  rename modrinth.index.lite.json modrinth.index.json
  del README.md
  rd /s /q .github
  cd overrides
  rd /s /q mods
  rename mods-lite mods
  rename h.txt options.txt
  rd /s /q fancymenu_data
  rd /s /q XaeroWaypoints
  rd /s /q XaeroWorldMap
  del servers.dat
  del wallhaven-e7651w_1600x1024.png
  del hhh.jpg
  del joinserver.txt
  del start.png
  del startclick.png
  cd config
  rd /s /q fancymenu
  cd ..
  cd ..
)
cd ..
echo ���������ϰ�����·������Ҫ��·��ĩβ��б�ܣ���
set /p savemodpack=
powershell Compress-Archive -Path ".\backup-modpack\*" -DestinationPath %savemodpack%\modpack.zip
rd /s /q backup-modpack
echo ���������ϰ�����
set /p modpackname=
rename %savemodpack%\modpack.zip %modpackname%.mrpack
echo ��ɣ�
pause