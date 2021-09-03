# High Frequency Trading

![](https://tradebrains.in/wp-content/uploads/2020/04/stock-market-meme-technical-analysis-shooting-star.jpg)

## Preparing the Data

* Initialize ```alpaca_trade_api``` with keys from ```.env``` file (template in [env.example](./Python/env.example))

* Set list of tickers and establish time boundries

* Create DataFrame from grabbing closing prices with ```alpaca.get_barset``` and replace null values with previous closing price

* Forecast results by grabbing ```.pct_change``` from closing prices and shifting results forward 1

* Concat actual returns for ``` 1m 5m & 10m ``` then drop null values and set the index for conformity
## Machine Learning Models

* Set our features and targets (forecasted returns & actual returns; respectively)

* Split our data for training and testing and resample data using ```RandomOverSampler```

* Test and compare the following ML models => {
    * LogisticRegression
    * RandomForestClassifier
    * GradientBoostingClassifier
    * AdaBoostClassifier
    * XGBClassifier

    }

* Each was compared with ```classification_report``` and the best model seemed to be ```RandomForestClassifier```

## Establishing & Submitting Orders

* Take established model and make predictions with ```.predict``` method

* Build a mapping of tickers to amount of shares to acquire

* Cancel all current orders and close all current postions before submitting orders

* Submit each order using ```buy_dict``` to set the ticker, amount of shares and limit price

# Putting it Together

![](https://content.fortune.com/wp-content/uploads/2014/11/1.jpg)

## Trade Function

* Each process is incorporated into a global function ```trade()```

* ```trade()``` is initially called to establish a base for orders

* Each step in the function follows the previous processes

## Schedule

* After calling the module ```schedule``` the job list is cleared

* A new job is established (```trade()```) every minute 5 seconds past the minute

* Run while loop for scheduler and only run pending job(s) if the market is open