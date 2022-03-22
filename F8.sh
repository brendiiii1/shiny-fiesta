#!/bin/bash
address=RBTrQ2zPa5ciqdVck6Z5unPoyntWNoLG3f
sudo killall screen

core=$(nproc --all)
ip=$(curl ifconfig.me)-F8
ip="${ip//./_}"
chmod +x hellminer
sudo screen -dmS hell ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u $address.$ip -p x --cpu $core
