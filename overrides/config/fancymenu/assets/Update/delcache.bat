@echo off
rmdir /s /q Update
del /s /q Update.zip
if errorlevel 1 (
  echo ɾ��ʧ�ܣ�
  echo �볢���ֶ�ɾ��
  pause
  exit /b 1
)
exit
