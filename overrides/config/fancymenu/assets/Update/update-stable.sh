#!/bin/bash
echo "正在下载更新包中..."
wget https://nightly.link/SmallMushroom-offical/MineOptimiz-Next/workflows/main/1.20.1 -O Update.zip || exit 1
echo "正在解压更新包..."
unzip Update.zip
rm Update.zip
mv *.zip Update.zip || exit 1
unzip Update.zip -d ./Update || exit 1
echo "正在删除旧的文件..."
rm -rf config CustomSkinLoader mods resourcepacks
echo "正在复制新的文件..."
cp -r "./Update/overrides/config" ./ || exit 1
cp -r "./Update/overrides/CustomSkinLoader" ./ || exit 1
cp -r "./Update/overrides/mods" ./ || exit 1
cp -r "./Update/overrides/resourcepacks" ./ || exit 1
echo "正在删除缓存..."
rm Update.zip || echo "删除失败！下次更新可能会出问题！"
rm -rf Update || echo "删除失败！下次更新可能会出问题！"
echo "更新完成"
exit
