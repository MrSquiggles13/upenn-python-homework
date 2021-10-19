# Multi-Chain Wallet

![](https://previews.123rf.com/images/fdmsd8yea/fdmsd8yea1901/fdmsd8yea190100331/117444763-lots-of-chains.jpg)

## Initial Set-Up

* Dependencies and environment variables are imported
* Global variables are aet ie mnemonic, web3 object and supported coin types

## Deriving wallets

* Function is made that take a mnemonix, coin type, number of drives and format as parameters
* Creates a terminal command that uses the subprocess package to execute and return the output
* Output is stored in a static global variable ```COINS``` which holds each set of accounts and their details with their respected coin's chain

## Functions and uses

* ```priv_key_to_account``` function takes in coin type as a string and a private key also as a string which returns and account object
* ```send_tx``` function takes in a coin type as a string 2 account objects and an amount which will send the amount from the first account object to the second one and then returns a transaction hash
* ```check_txn_status``` function takes in a coin type as a string as well as a transaction hash as a string and returns the status of the transaction

## Interactive terminal

* To interact with the program start a new ipython temrinal by navigating to the the directory ```~/MultiChainWallet``` in a terminal and then typing ```python3``` or ```python``` depending on the system
* First and most important thing is to import wallet.py by ```from wallet import *```
* Create account objects (as many as desired) by using the ```priv_key_to_account``` function
* Then transactions can be made with the ```send_tx``` function using 2 accounts on the same chain/coin type
* Each transaction hash is stored temporarily in the ipython terminal output which can be used to check the status of the transactions made using the ```check_txn_status``` function
