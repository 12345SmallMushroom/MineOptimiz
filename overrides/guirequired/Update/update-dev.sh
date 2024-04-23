#!/bin/bash
echo "MineOptimiz Updater有更新的版本"
echo "现在将会更新"
wget "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.sh" -O ./Update.sh || exit 1
wget "https://gh.ddlc.top/https://github.com/MineOptimiz-Team/MineOptimiz-Updater/releases/download/v1.1.2(Forge-1.20.1)/Update.ps1" -O ./config/fancymenu/assets/Update/Update.ps1 || exit 1
wget "https://cdn.modrinth.com/data/Wq5SjeWM/versions/jXQg9Trb/fancymenu_forge_3.1.5_MC_1.20.1.jar" -O ./mods/fancymenu_forge_3.1.5_MC_1.20.1.jar
wget "https://cdn.modrinth.com/data/rR4tY6Cw/versions/aJZp3Aoe/modpack-update-checker-1.20.1-forge-0.12.2.jar" -O ./mods/modpack-update-checker-1.20.1-forge-0.12.2.jar
wget "https://mirror.ghproxy.com/https://github.com/tr7zw/NotEnoughAnimations/releases/download/1.7.1/notenoughanimations-forge-1.7.1-mc1.20.1.jar" -O ./mods/notenoughanimations-forge-1.7.1-mc1.20.1.jar
wget "https://cdn.modrinth.com/data/zV5r3pPn/versions/z7pEP8p7/skinlayers3d-forge-1.6.2-mc1.20.1.jar" -O skinlayers3d-forge-1.6.2-mc1.20.1.jar
echo "更新完成"
echo "正在重新启动Updater..."
echo "请立即更新MineOptimiz"
bash ./Update.sh

