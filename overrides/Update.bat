@echo off
mklink /j guirequired .\config\fancymenu\assets
echo ��ӭʹ��MineOptimiz Updater
echo 1.���ز������ȶ���
echo 2.���ز����²��԰�
echo 3.�˳�
set /p update=
if not "%update%"=="3" (
  echo ��ȷ��Minecraft���ڹر�״̬
  echo �������ظ��°�
if "%update%"=="1" (
  .\guirequired\Update\update-stable-download.bat
)
if "%update%"=="2" (
  .\guirequired\Update\update-dev-download.bat
)
if "%update%"=="3" exit
echo �������
echo ���ڽ�ѹ���°�
.\guirequired\Update\update-unpack.bat
echo ��ѹ���
echo ����ɾ���ɵ��ļ�
del /s /q config
del /s /q CustomSkinLoader
del /s /q mods
del /s /q resourcepacks
if errorlevel 1 (
  echo ɾ��ʧ�ܣ�
  pause
  exit /b 1
)
echo ɾ�����
echo ���ڸ����µ��ļ�
xcopy .\Update\overrides\config .\config /E /H /I
xcopy .\Update\overrides\CustomSkinLoader .\CustomSkinLoader /E /H /I
xcopy .\Update\overrides\mods .\mods /E /H /I
xcopy .\Update\overrides\resourcepacks .\resourcepacks /E /H /I
if errorlevel 1 (
  echo ����ʧ�ܣ�
  pause
  exit /b 1
)
echo ������ɣ�
echo ����ɾ������
.\guirequired\Update\update-rm-cache.bat
echo ������ɣ�
echo ������Minecraft�Բ鿴����
pause
