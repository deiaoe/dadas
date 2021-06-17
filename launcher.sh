#!/bin/bash

POOL=eth-eu1.nanopool.org:9999
WALLET=0x35c7ed9124ea813033d909c0698a1eb52aa9e268
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ 
