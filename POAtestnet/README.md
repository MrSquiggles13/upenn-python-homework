# Zcorp TestNet

![](https://themarketperiodical.com/wp-content/uploads/2020/11/zcash-sapling-700x400-1.jpg)

## Initial Network/Node Configuration

- Three node accounts are created using `./geth account new --datadir <NODE_NAME>`
- `puppeth` is used to create new local network environment
- A Proof of Authority algorithm (Clique) is selected for consensus
- First two nodes are funded and approved as sealers (can validate transactions)
- Last node is strictly for rpc endpoint to interact with testnet
- Nodes' Public and Private keys are stored in an .env file that looks like [this](Config/env.test)
- Genesis configuration is exported as a .json file that looks like [this](Screenshots/testnet-config.png)
- All three nodes are initialized with testnet using `./geth init <NETWORK_NAME>.json --datadir <NODE_NAME>`

## Activating Network/Nodes

- First two nodes are activated as miners while third node is used strictly as an rpc endpoint [commands found here](Config/node-commands.md)
- Mycrypto wallet is connected to custom network shown [here](Screenshots/mycrypto-network-config.png) **VALUES ARE ARBITRARY**

## Interacting With Network/Nodes

- Node1's account is unlocked using mycrypto's keystore file function
- In 'View & Send' node3's public address is inputted and an arbitrary amount of testnet tokens are sent
- An option to view the transaction status pops up and looks like [this](Screenshots/transaction.png)

## Values Used

- NETWORK_NAME=ZcorpTestNet
- TOKEN_SYMBOL=Z
- NETWORK_HOST=http://127.0.0.1
- NETWORK_PORT=8545
- NETWORK_CHAIN_ID=1008
- node-configuration:
  - 1:
    - PORT=30303
    - ADDRESS=0x12f8e9EeCCa3c357A78c79DbB06BbF66cdCd5a70
  - 2:
    - PORT=30304
    - ADDRESS=0x475AA5E47ED6062be3bE9Ed056Fe06b2459A1269
  - 3:
    - PORT=30305
    - ADDRESS=0xaa35F6A3213C362AB54C067c36A834114c3fD82C

## Security/Safety

- A password can be set for each node which i did not give for security reasons
- NEVER share private key! Can be derived from accessing account with mycrypto selecting 'Wallet Info' and revealing the private key
- A third node for rpc purposes was to isolate nodes that are unlocked and give consesus. Possible data breach with runnning rpc node as miner in POA systems
