# %% Import dependencies
import subprocess
import json
import os
from dotenv import load_dotenv

# %% Load and set environment variables
load_dotenv()

mnemonic=os.getenv("mnemonic")

# %% Import constants.py and necessary functions from bit and web3
from web3 import Web3, Account
from bit import wif_to_key
from lit import Key
from constants import BTC, BTCTEST, ETH, LTC

w3 = Web3(Web3.HTTPProvider(os.getenv('ETH_NETWORK')))

coin_types = [BTC, BTCTEST, ETH, LTC]
 
# %% Create a function called `derive_wallets`
def derive_wallets(mnemonic, coin, numderive=10, format='json'):
    command = f"./derive -g --mnemonic {mnemonic} --coin {coin} --numderive {numderive} --format {format}"
    p = subprocess.Popen(command, stdout=subprocess.PIPE, shell=True)
    output, err = p.communicate()
    p_status = p.wait()
    return json.loads(output)

# %% Create a dictionary object called coins to store the output from `derive_wallets`.
COINS = {x: derive_wallets(mnemonic=mnemonic, coin=x) for x in coin_types}

# %% Create a function called `priv_key_to_account` that converts privkey strings to account objects.
def priv_key_to_account(coin, priv_key):
    if coin in [BTC, BTCTEST]:
        return wif_to_key(priv_key)
    if coin in [LTC]:
        return Key(priv_key)
    if coin in [ETH]:
        return Account.privateKeyToAccount(priv_key)
        
# %% Create a function called `create_tx` that creates an unsigned transaction appropriate metadata.
def create_tx(coin, account, to, amount):
    if coin in [BTC, BTCTEST]:
        return [(to.address, amount, BTC)]
    if coin in [LTC]:
        return [(to.address, amount, LTC)]
    if coin in [ETH]:
        gasEstimate = w3.eth.estimateGas(
            {'from': account.address, 'to': to.address, 'value': amount}
        )
        return {
            'from': account.address,
            'to': to.address,
            'value': amount,
            'gasPrice': w3.eth.gasPrice,
            'gas': gasEstimate,
            'nonce': w3.eth.getTransactionCount(account.address)
        }

# %% Create a function called `send_tx` that calls `create_tx`, signs and sends the transaction.
def send_tx(coin, account, to, amount):
    raw_tx = create_tx(coin, account, to, amount)
    if coin in [BTC, BTCTEST, LTC]:
        return account.send(raw_tx)
    if coin in [ETH]:
        signed_tx = account.sign_transaction(raw_tx)
        return w3.eth.sendRawTransaction(signed_tx.rawTransaction)

# %% Check status of transaction by transaction ID
from blockcypher import get_transaction_details

def check_txn_status(coin, txn_id):
    return get_transaction_details(txn_id, coin_symbol=coin)