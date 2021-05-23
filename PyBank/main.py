#%%
import pandas as pd # package to handle data manipulation

bd = budget_data = pd.read_csv("budget-data.csv") # retrieve CSV as DataFrame and put into variable


months = len(bd) # grab length of DataFrame as amount of months

net_total = bd['Profit/Losses'].sum() # sum of all P/L values

average_change = bd['Profit/Losses'].mean() # average of all P/L values

greatest_increase = bd[bd['Profit/Losses'] == bd['Profit/Losses'].max()].iloc[0] # creates and grabs row with greatest P/L increase

greatest_decrease = bd[bd['Profit/Losses'] == bd['Profit/Losses'].min()].iloc[0] # creates and grabs row with greatest P/L decrease

# %%

# create a string variable with proper calculated data
line = f"Financial Analysis\n---------------------------------------\nTotal Months: {months}\nTotal Revenue: ${net_total}\nAverage Change: ${round(average_change, 2)}\nGreatest Increase in Profits: {greatest_increase.Date} (${greatest_increase['Profit/Losses']})\nGreatest Decrease in Profits: {greatest_decrease.Date} (${greatest_decrease['Profit/Losses']})"

with open('financial-analysis.txt', 'w') as file: # create new CSV file and store string variable inside
    file.write(line)
    file.close()