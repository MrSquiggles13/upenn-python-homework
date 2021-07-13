# Suspicious Transactions

![](https://s.clipartkey.com/mpngs/s/257-2579106_exchange-blockchain-mines-bitcoin-cryptocurrency-ethereum-shady-guy.png)

## Postgres

* Schema for tables using provided CSV's as framework

* Utilized given SQL seed files to generate master ```seed.sql``` file

* Have 2 seperate SQL files for queries in analysis:
    1. ```data_analysis.sql``` for part 1 of Data Analysis
    2. ```python_queries.sql``` for part 2 of Data Analysis

## Python

* Generated queries from SQL files

* After pulling SQL query into dataframe clean data for relevant plots

* Plot data and observe for anamolies

## Findings

### Data Analysis Part 1

* Credit card numbers [180098539019105, 344119623920892, 584226564303, 376027549341849] have the highest accumulated $2.00 and under transactions

* The overall flow of data is pretty consistent and uniform though I would watch the 4 previous mention card numbers closely

* Top 100 highest transactions showed inconsisten sums between each transactions average

* Though suggested there is no evidence that supports more fraudulant activity between the hours of 7am and 9am

* The amount of fraudulant transactions during those hours we porportionally lower than the rest of the fraudulant transactions

* Top 5 merchants most likely attacked with fraudulant micro-transactions are [Wood-Ramirez, Hood-Phillips, Baker Inc, Henderson and Sons, Atkinson Ltd]
### Data Analysis Part 2

* Cardholder 2 seems to have regular micro-transactions that aren't consistent with a regulatory fraudulant attack

* Cardholder 18 at first glance causes alarm. Deffinitely can be circumstantial i.e only used for big purchases just the other transaction history suggests that is not the case since smaller purchases are infrequent

* Cardholder 25 seems to have a fraudulant transaction once a month regularly for around $1000 USD with a total of 6 outliers

* The transactions seem sporadic and unpredictable with their day of purchase but the amount is inconsistent with the card's usual transactions

# Conclusion

* Would increase monitoring and security it seems there is a subtle attack on certain cards but more data is needed to be sure

* Measure frequency of these transactions and observe if there is a pattern in the day of purchases

|Resources|
|-|
|[Pandas](https://pandas.pydata.org/pandas-docs/stable/)
|[hvPlot](https://hvplot.holoviz.org/)
|[Plotly](https://plotly.com/python/)
|[Your suggested reference](https://www.wikihow.com/Calculate-Outliers)