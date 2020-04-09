#!/bin/bash
set -exm
/opt/bitcoin-0.19.1/bin/bitcoind -rpcport=18443 -regtest -txindex -server -rpcuser=test -rpcpassword=test -limitancestorsize=404 -limitdescendantcount=100 -limitancestorcount=100 -debug -printtoconsole
# sleep 5
# /opt/bitcoin-0.19.1/bin/bitcoin-cli -rpcport=18443 -rpcuser=test -rpcpassword=test getblockchaininfo
# fg