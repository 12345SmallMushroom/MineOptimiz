#!/bin/bash
cd ./guirequired/Update/
echo "�������ظ��°���..."
wget https://nightly.link/SmallMushroom-offical/MineOptimiz/workflows/main/1.19.4-OptiFabric-Dev -O Update.zip || bash error.sh
echo "���ڽ�ѹ���°�..."
unzip Update.zip
rm Update.zip
mv *.zip Update.zip || bash error.sh
unzip Update.zip -d ./Update || bash error.sh
cd ..
cd ..
echo "����ɾ���ɵ��ļ�..."
rm -rf config CustomSkinLoader mods resourcepacks
echo "���ڸ����µ��ļ�..."
cp -r "./guirequired/Update/Update/overrides/config" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/CustomSkinLoader" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/mods" ./ || bash error.sh
cp -r "./guirequired/Update/Update/overrides/resourcepacks" ./ || bash error.sh
echo "����ɾ������..."
cd ./guirequired/Update/
rm Update.zip || echo "ɾ��ʧ�ܣ��´θ��¿��ܻ�����⣡"
rm -rf Update || echo "ɾ��ʧ�ܣ��´θ��¿��ܻ�����⣡"
xdg-open linuxupdatefinish.txt