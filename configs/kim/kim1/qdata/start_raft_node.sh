#!/bin/bash
set -u
set -e
sleep 5
#CORE_NODE_IP="$(dig +short $CORE_NODE_IP)"
#CORE_MASTERNODE_IP="$(dig +short $CORE_MASTERNODE_IP)"
CORE_NODE_IP="$(/sbin/ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}')"
CORE_MASTERNODE_IP="$(/sbin/ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}')"


GLOBAL_ARGS="--raft --nodiscover --networkid 10   --raftblocktime 2000 --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum,raft --emitcheckpoints"

cp qdata/kim1.conf .

PATTERN="s/CORE_NODE_IP/${CORE_NODE_IP}/g"
PATTERN2="s/CORE_MASTERNODE_IP/${CORE_MASTERNODE_IP}/g"

sed -i "$PATTERN" kim1.conf
sed -i "$PATTERN2" kim1.conf

echo "[*] Starting Constellation on kim1"
#constellation-node kim1.conf 2> qdata/logs/constellation_kim1.log &
constellation-node kim1.conf --password=const-passwords 2> qdata/logs/constellation_kim1.log &
sleep 40
echo "[*] Started Constellation on kim1"


if [ -f /qdata/geth/nodekey ]; then
echo "present"
cat /qdata/geth/nodekey
fi

echo "[*] Starting Quorum on kim1"
PRIVATE_CONFIG=kim1.conf geth --datadir qdata $GLOBAL_ARGS --verbosity 6 --raftport 50400 --rpcport 22000 --port 21000 --unlock 0 --password passwords 2>qdata/logs/kim1.log &

echo "[*] Started Quorum on kim1"

while true 
do 
 sleep 5
done

