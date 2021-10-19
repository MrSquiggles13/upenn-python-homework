# Building and configuring network using puppeth and geth

## Node 1 Configuration

```./geth account import /path/to/private_key.txt --datadir TestingTxn/node1```

## Node 2 Configuration

```./geth account import /path/to/private_key.txt --datadir TestingTxn/node2```

## Puppeth Configuration

* Run ```./puppeth``` while in BlockchainTools folder
* Give the network a name
* Configure new genesis
* Create new genesis from scratch
* Select Clique proof-of-authority
* Select default block time
* Add wallet addresses associated with nodes to accounts that can seal and also to be pre-funded
* Do not pre-fund pre-compiled addresses
* Select memorable chain ID
* Manage existing genesis and export it into custom folder

## Node 1 Activation

```./geth init NETWORK_NAME.json --datadir TestingTxn/node1```

```./geth --datadir TestingTxn/node1 --mine --miner.threads 1 --unlock "PUBLIC_KEY"```

## Node 2 Activation

```./geth init NETWORK_NAME.json --datadir TestingTxn/node1```

```./geth --datadir TestingTxn/node2 --rpc --port 30304 --bootnodes "enode://ENODE_VALUE@HOST:PORT"```