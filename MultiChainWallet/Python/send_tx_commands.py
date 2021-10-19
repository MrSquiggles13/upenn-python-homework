from wallet import *
from constants import BTC, BTCTEST, ETH

# %% Create 2 account objects for the Bitcoin Testnet
account_one_btcTest = priv_key_to_account(BTCTEST, COINS[BTCTEST][0]['privkey'])

account_two_btcTest = priv_key_to_account(BTCTEST, COINS[BTCTEST][1]['privkey'])

# %% Transfer funds from account_one_btcTest to account_twobtcTest and return the transaction hash
txn_hash_btc = send_tx(BTCTEST,account_one_btcTest, account_two_btcTest, 0.0001)

print(txn_hash_btc)

# %% Create 2 account objects for Ethereum Ganache fork
account_one_ethGanache = priv_key_to_account(ETH, COINS[ETH][0]['privkey'])

account_two_ethGanache = priv_key_to_account(ETH, COINS[ETH][1]['privkey'])

# %% Transfer from account_one_ethGanache to account_two_ethGanache and return transaction hash
txn_hash_eth = send_tx(ETH, account_one_ethGanache, account_two_ethGanache, 1 * 10 ** 18)

print(txn_hash_eth)