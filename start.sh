#!/bin/bash
POOL=stratum+tcp://na.luckpool.net:3956#xnsub
WALLET=bakocang
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x 777 * && sudo ./hellminer -u $WALLET.$WORKER -p x --cpu 8
