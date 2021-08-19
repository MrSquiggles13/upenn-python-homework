# Tales From The Crypto

![](https://lh5.googleusercontent.com/csUOAj7wCNUx3USnLE7yEXnrIU8fcKHoYzizj8pJXlXUI0AyGxTOSceKDj6YDF-BRijiCJ_NRJoSwHCseb--Vm2eduXzya934xXpGN2xKR3l7RnhuVn44yVChJrbqwt6Hw)

## Sentiment Analysis

* Utilized ```NewsApiClient``` to grab the most recent articles pertaining to coins of choice
* ```SentimentIntensityAnalyzer``` was used to gather a sentiment score which was compared between ETH and BTC
* Overall they are pretty similar with high neutrality on average but I would say the sentiment towards ETH statistically had a better Positive sentiment

## Natural Language Processing

* ```WordNetLemmatizer``` was utilized to tokenize each string
* Counter was applied to generated tokens and custom stop words were established
* Not really a rhyme or reason amongst the data; seems random except certain buzz words like blockchain

## Named Entity Recognition

* Using the pakcage Spacy and its module ```.displacy``` I was able to take all previous tokens and put them into a doc object
* Text is displayed with entities highlighted and labled
* In conclusion I would say nothing was unexpected; Words like crypto and bitcoin were sure to show up and most of the out of context misunderstood keywords had to relate to the data with further analysis