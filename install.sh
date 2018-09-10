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
#※n packageでnode10.10がうまく行かない？ 2018/09/11最新安定の8.11.4でとりま対処、v10~がうまく導入できないっぽい
sudo n 8.11.4
sudo ln -sf /usr/local/bin/node /usr/bin/node

#現在のバージョン情報を吐き出す
node -v > node_version.txt

#Expressプロジェクト構築
#プロンプトをechoを使って表示
echo -n createProjectDIR: 
read dir 
mkdir $dir
cd $dir
#install Express-generator
sudo npm install express-generator -g
#プロジェクト名指定
echo -n createProjectName: 
read pjName 
express $pjName
cd $pjName && npm install


#備考
#別バージョンを管理したい場合は以下のように切り替えることが可能
#$ sudo n 4.2.3
#$ node -v
#v4.2.3
