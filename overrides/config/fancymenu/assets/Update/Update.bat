@echo off
mklink /j guirequired ".\config\fancymenu\assets"
cd /d %cd%\guirequired\Update
echo 1.�����ȶ���
echo 2.����Dev��
echo 3.�ֶ�ѡ��zip���°��������Github Actions����ĸ��°������Ƚ�ѹһ�Σ�
set /p updateversion=
if "%updateversion%"=="1" (
  echo ����Stable���°���...
  certutil -urlcache -split -f "https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1" ".\Update.zip"
)
if "%updateversion%"=="2" (
  echo ����Dev���°���...
  certutil -urlcache -split -f "https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1-Dev" ".\Update.zip"
)
if errorlevel 1 (
  echo ����ʧ�ܣ�
  pause
  exit /b 1
)
if "%updateversion%"=="3" (
  echo �뽫���°�������
  set /p updatepack=
  copy %updatepack% .\
  ren *.zip Update.zip
)
if not "%updateversion%"=="3" echo �������
echo ���ڽ�ѹ���°���...
if not "%updateversion%"=="3" (
  .\7z\7z.exe x Update.zip
  del Update.zip
  ren *.zip Update.zip
)
.\7z\7z.exe x Update.zip -o".\Update"
if errorlevel 1 (
  echo ��ѹʧ�ܣ�
  pause
  exit /b 1
)
echo ��ѹ���
set updatepath="%cd%\Update\overrides"
echo ����ɾ�����ļ�..
cd ..
cd ..
cd config
cd fancymenu
cd assets
for /D %i in (*) do if /I not "%i"=="Update" rd /S /Q "%i"
for %i in (*) do if /I not "%i"=="Update" del /Q "%i"
cd ..
for /D %i in (*) do if /I not "%i"=="assets" rd /S /Q "%i"
for %i in (*) do if /I not "%i"=="assets" del /Q "%i"
cd ..
for /D %i in (*) do if /I not "%i"=="fancymenu" rd /S /Q "%i"
for %i in (*) do if /I not "%i"=="fancymenu" del /Q "%i"
cd ..
del /s /q CustomSkinLoader
del /s /q mods
del /s /q resourcepacks
echo ɾ�����
echo ���ڸ��Ƹ����ļ�...
echo %updatepath%
xcopy %updatepath%\config .\config /E /H /I
xcopy %updatepath%\CustomSkinLoader .\CustomSkinLoader /E /H /I
xcopy %updatepath%\mods .\mods /E /H /I
xcopy %updatepath%\resourcepacks .\resourcepacks /E /H /I
if errorlevel 1 (
  echo ����ʧ�ܣ�
  pause
  exit /b 1
)
echo ������ɣ�
echo ����ɾ������...
del /s /q ".\guirequired"
cd /d %updatepath%
cd ..
cd ..
start delcache.bat
echo ��ɣ�
echo ������������Ϸ�Բ鿴����
pause
