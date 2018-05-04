#!/bin/bash
set -u
set -e

echo "[*] Cleaning up temporary data directories"
rm -rf qdata
mkdir -p qdata/logs

echo "[*] Configuring node"
mkdir -p qdata/{keystore,geth}
cp raft/static-nodes.json qdata
cp keys/key1.json qdata/keystore/acckey
cp nodekeys/nodekey1 qdata/geth/nodekey
geth --datadir qdata init genesis.json
