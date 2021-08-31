# Clustering Crypto

![](https://ph-files.imgix.net/1059b243-5a3b-4a53-965e-dad7a62e0145.png?auto=format&auto=compress&codec=mozjpeg&cs=strip)

## Preprocessing Data

* Grabbed crypto data from ```https://min-api.cryptocompare.com/data/all/coinlist``` which returned a json response object that was transformed into a dataframe

* Stripped new dataframe of all null values and kept only tradable assets as well as cryptocurrencies that have actually minted tokens/coins

* Set ```stripped_crypto_df``` variables to be uniform with ```StandardScaler()```

* For the PCA model used ```pd.get_dummies()``` to get binary representation of values

* Used ```PCA()``` to create a new DataFrame from transformed values

## Clustering with K-Means

* Make a loop to append inertia values to a new array

* Create a pandas DataFrame out of resulting values and graph a line plot

* Visually inspect for 'elbow' transition that harshly resduces sloped gradient

* Build ```KMeans``` model with new cluster variable and fit with PCA DataFrame

* Add ```target``` and ```predictions``` columns to ```pcs_crypto_df``` and graph as a scatter plot

## Table of Tradable Cryptos

* Build DataFrame from ```scaled_crypto_df``` called ```table_crypto_df```

* Add ```CoinName``` column from ```coin_name_df``` and ```target``` column from ```pca_crypto_df```

* Build hvplot table with columns ```["CoinName", "Algorithm", "ProofType", "MaxSupply", "TotalCoinsMined", "target"]```

## Scatter Plot of Tradable Cryptos

* Initialize and fit ```MinMaxScaler()``` with just the 2 columns from ```table_crypto_df```: ```['TotalCoinsMined', 'MaxSupply']```

* Build DataFrame from results and graph as a scatter plot

# Conclusions

* Values seem to be missing from the request which obscures the Data

* From those that make sence it looks like the outlier targets happen to be the coins/tokens that have minted/mined most/all of their supply and have a high max supply

* Seems that the ```Algorithm``` and the ```ProofType``` do not contribute much to the decision of the target


# Challenge!

* Removed all reference to hvplot and plotly

* Imported altair and replaced old plots with new altair plots

* Deployed ```crypto_clustering_sm.ipynb``` to SageMaker


