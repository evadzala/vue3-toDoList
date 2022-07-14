#!/usr/bin/env sh
# 發生錯誤時執行終止指令
set -e
# 打包編譯
yarn build
# 移動到打包資料夾下，若你有調整的話打包後的資料夾請務必調整
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/evadzala/vue3-toDoList.git main:gh-pages
cd -