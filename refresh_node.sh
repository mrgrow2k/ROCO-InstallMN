#!/bin/bash
clear

roco-cli stop

sleep 10

rm -rf ~/.roco/blocks
rm -rf ~/.roco/database
rm -rf ~/.roco/chainstate
rm -rf ~/.roco/peers.dat

cp ~/.roco/roco.conf ~/.roco/roco.conf.backup
sed -i '/^addnode/d' ~/.roco/roco.conf
cat <<EOL >>  ~/.roco/roco.conf
EOL

rocod
