# Portfolio Management and Analysis AKA "Whale Analysis"
![](https://images.unsplash.com/photo-1568430462989-44163eb1752f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80)
## Walkthrough
    * Data: Grab CSV files(portfolio data)clean data(dropp extrenuos values, rearrange columns)
    * Calculate & Plot: Daily Returns, Cumulative Returns, Standard Deviation(annual, 21 rolling window), Sharpe Ratios, Beta
    * Compare: Use select portfolios and compare calculations against eachother
    * New Portfolio: Create a portfolio with 3-5 stocks and do above steps
    * Assessment: Write an evaluation on the comparisons made and make conclusions on peroformance

## Requirements
### Installations
```bash
pip install gspread pandas numpy matplotlib
```
### Gspread Authentication
* [Full Guide Here](https://docs.gspread.org/en/latest/oauth2.html#enable-api-access-for-a-project)

* Put JSON authentication file in Credentials/ ;
* It should contain something like this:
```JSON
{
    "type": "service_account",
    "project_id": "api-project-XXX",
    "private_key_id": "2cd … ba4",
    "private_key": "-----BEGIN PRIVATE KEY-----\nNrDyLw … jINQh/9\n-----END PRIVATE KEY-----\n",
    "client_email": "473000000000-yoursisdifferent@developer.gserviceaccount.com",
    "client_id": "473 … hd.apps.googleusercontent.com",
    ...
}
```
## Use-Case
Can help determine what is the best portfolio for certain trading strategies.

i.e. Can readjust weights by determining the returns and balancing out the weights with less risky options with similar returns

|Resources|
------------
|[Pandas Documentation](https://pandas.pydata.org/docs/)|
|[MatPlotLib Documentation](https://matplotlib.org/stable/contents.html)|
|[Gspread Documentation](https://docs.gspread.org/en/latest/)|
|[How I Did This](https://www.pluralsight.com/guides/working-tables-github-markdown)|
|[Basically God](https://www.google.com)|

