# Requirements

## Python modules
All initial python packages are installed using pip

``` pip install web3```
* A package that lets us "talk" to the blockchain

```pip install bit```
* Used to make transactions on the bitcoin mainnet and testnet programmatically

```pip install git+https://github.com/blockterms/lit.git```
* A litecoin package used to make transacrioj (pip by itself didn't work had to grab from github)

```pip install python-dotenv```
* Package that can read .env files and load the variable into py files

```pip install blockcypher```
* Can grab detailed imformation about transactions using the transaction hash

## Blockchain Tools
Tooling that includes geth and puppeth

* Downloaded the latest version off of their [website](https://geth.ethereum.org/downloads/)
* Extract zip (if on Windows) or tar (if on mac/linux) and place in directory of choice. I put mine in a directory called Tools

## hd-wallet-derive
Wallet tool that allows access to multiple addresses in a single wallet

* PHP was installed (v7.4) and the environment path was set
*  The following commands were used to install hd-wallet-derive 
  
  ```  git clone https://github.com/dan-da/hd-wallet-derive```

  ```cd hd-wallet-derive```

  ```curl https://getcomposer.org/installer -o installer.php```

  ```php installer.php```

  ```php com poser.phar install```

* To use this tool navigate to the directory it was downloaded in and run the command ```./hd-wallet-derive.php``` the different paramaters can be found [here](https://github.com/dan-da/hd-wallet-derive)