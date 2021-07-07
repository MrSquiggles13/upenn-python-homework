# Financial Planner
<img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmarketbusinessnews.com%2Fwp-content%2Fuploads%2F2019%2F08%2FInvestment-Portfolio-image-494949494.jpg&f=1&nofb=1' width=650/>

## Personal Finance Planner

### Calculations
* Total assets for stocks and cryptocurrencies
* Total assets are multiplied with price data to get total value in USD
* Emergency fund threshhold is calculated and compared with total savings
  
<a name="price-data"></a> 
### Price Data
  * Alpaca is used to grab the stock price data
  *  New account is set up and API keys are generated [alpaca-trade-api documentation](https://github.com/alpacahq/alpaca-trade-api-python/)
  *  Alpaca keys are set in a seperate .env file
  *  Alternative is used for crypto price data

## Retirement Planning

### Walkthrough
|For 30, 10, and 5 years worth of data|
|----|
* Grab 5 years of stock data for AGG & SPY (refer to [Price Data](#price-data) section)
* Run 500 simulations for a x year projection
* Plot simulation returns over period and distribution of said returns
* Build cumulative return table and display upper and lower CI utilizing initial investment as baseline

### Observations
* Too much weight on either side seems to cause a lower ```ci_lower```
* Slightly more weight in AGG causes a larger range yet a higher ```ci_lower```
* Holding a few more assets to mitigate losses would be ideal
* Diversification in general would yield a better projected outcome 

|Resources|
|--|
|MCForecastTools ```/Python/MCForecastTools```|
|[Alpaca Trade API](https://alpaca.markets/docs/api-documentation/)|
|[Pandas](https://pandas.pydata.org/docs/)|
|[Python DotENV](https://pypi.org/project/python-dotenv/)|
