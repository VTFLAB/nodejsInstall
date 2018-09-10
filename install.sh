#!/bin/sh
# NodeJS & npm for n package

#いつもの
sudo apt update && sudo apt upgrade

#通常通りNodeJSとnpmのインストール
sudo apt install -y nodejs npm

#n package導入
sudo npm cache clean
sudo npm install n -g

#n packageを利用して最新のnodeをインストール
sudo n stable
sudo ln -sf /usr/local/bin/node /usr/bin/node

#初回に入れたnodejs,npm古いので混乱を避けるために削除 ※n packageでnode10.10がうまく行かない？
#sudo apt purge -y nodejs npm

#現在のバージョン情報を吐き出す
node -v > node_version.txt

#備考
#別バージョンを管理したい場合は以下のように切り替えることが可能
#$ sudo n 4.2.3
#$ node -v
#v4.2.3
