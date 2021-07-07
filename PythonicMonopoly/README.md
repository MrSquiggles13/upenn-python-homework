# Pythonice Monopoly
![](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fa.1stdibscdn.com%2FarchivesE%2Fupload%2Fa_3503%2F1479080067762%2FMimo_Money_Monopoly_2x2_l.JPG&f=1&nofb=1)

# Building Graphs in ```rental_analysis.ipynb```

## Breaking Data into Groups 

* Import CSVs from Data folder
* Clean data from csv and create new csv from cleaned data

## Plotting

* Use cleaned data to create sample plots
* Test each plot with visuals to observer dashboard preview

# Creating a Dashboard in ```dashboard.ipynb```

## Setting Functions

* Import CSVs made in ```rental_analysis.ipynb``` and store in variables
* Use same code from ```rental_analysis.ipynb``` to construct plots

## Constructing Dashboard

* Set columns and rows by calling functions that return plots as an object
* Divide tabs by relevance and conformity
* Explore the Dashboard!

|Resources|
|-|
|**[Pyviz Panel](https://panel.holoviz.org/index.html)**|
|**[Plotly Express](https://plotly.com/python/plotly-express/)**|

# >BUG ALERT<
**For [sunburst plot](https://plotly.com/python/sunburst-charts/) there was a bug on my machine that will not allow me to render the plot**

***I did [this fix](https://stackoverflow.com/questions/68148212/plotly-express-not-rendering-a-sunburst-chart) and had no results***

***[This fix](https://github.com/pandas-dev/pandas/issues/39520) as well yielded no results***