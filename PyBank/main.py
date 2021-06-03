# %% Imports and Globals
import csv
from pathlib import Path

budget_data_path = Path('/home/commander/Programs/SchoolWork/upenn-python-homework/PyBank/budget-data.csv') # Set path to budget-data.csv
bd = budget_data = list(csv.reader(open(budget_data_path, 'r')))[1:] # open csv as file then use csv reader to make ogject to convert to list

# %% Initialize Variables
months = len(bd) - 1
net_total = 0
greatest_increase = ['none', 0]
greatest_decrease = ['none', 0]
old_pnl = 0
diffs = []

# %% Loop List
for log in bd:
    pnl = int(log[1])
    if old_pnl == 0:
        old_pnl = pnl
    net_total += pnl
    if int(greatest_increase[1]) < pnl:
        greatest_increase = log
    elif int(greatest_decrease[1]) > pnl:
        greatest_decrease = log
    diffs.append(pnl - old_pnl)
    old_pnl = pnl
    
average_change = sum(diffs) / months

# %% Create a string variable with proper calculated data
line = f"Financial Analysis\n---------------------------------------\nTotal Months: {months}\nTotal Revenue: ${net_total}\nAverage Change: ${round(average_change, 2)}\nGreatest Increase in Profits: {greatest_increase[0]} (${greatest_increase[1]})\nGreatest Decrease in Profits: {greatest_decrease[0]} (${greatest_decrease[1]})"

with open('financial-analysis.txt', 'w') as file: # create new TXT file and store string variable inside
    file.write(line)
    file.close()


# %%
#---------Same Results Using Pandas----------#

# import pandas as pd # package to handle data manipulation

# bd = budget_data = pd.read_csv("budget-data.csv") # retrieve CSV as DataFrame and put into variable


# months = len(bd) # grab length of DataFrame as amount of months

# net_total = bd['Profit/Losses'].sum() # sum of all P/L values

# average_change = bd['Profit/Losses'].diff().mean() # average of all P/L change values

# greatest_increase = bd[bd['Profit/Losses'] == bd['Profit/Losses'].max()].iloc[0] # creates and grabs row with greatest P/L increase

# greatest_decrease = bd[bd['Profit/Losses'] == bd['Profit/Losses'].min()].iloc[0] # creates and grabs row with greatest P/L decrease

# # create a string variable with proper calculated data
# line = f"Financial Analysis\n---------------------------------------\nTotal Months: {months}\nTotal Revenue: ${net_total}\nAverage Change: ${round(average_change, 2)}\nGreatest Increase in Profits: {greatest_increase.Date} (${greatest_increase['Profit/Losses']})\nGreatest Decrease in Profits: {greatest_decrease.Date} (${greatest_decrease['Profit/Losses']})"

# with open('financial-analysis.txt', 'w') as file: # create new CSV file and store string variable inside
#     file.write(line)
#     file.close()
# %%
