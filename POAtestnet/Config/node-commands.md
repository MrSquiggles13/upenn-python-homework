### Node1

`./geth --datadir zcorp-node1 --mine --miner.threads 1 --unlock "12f8e9EeCCa3c357A78c79DbB06BbF66cdCd5a70"`

### Node2

`./geth --datadir zcorp-node2 --mine --miner.threads 1 --unlock "475AA5E47ED6062be3bE9Ed056Fe06b2459A1269" --port 30304`

### Node3

`./geth --datadir zorp-node3 --rpc --port 30305 --bootnodes "enode://0d8a021e7744292756f4602946a8d0612b51cf84d99ea06a99c9e5debe7342754cc5f703943c61113fecc6b209d32e787a9026093325e7dec3f0e57cc8231e6d@127.0.0.1:30303"`
