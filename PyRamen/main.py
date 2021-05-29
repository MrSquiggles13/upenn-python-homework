# %%
import pandas as pd

menu = pd.read_csv("menu_data.csv")
sales = pd.read_csv("sales_data.csv")
report = pd.DataFrame(columns=['00-item', '01-count', '02-revenue', '03-cogs', '04-profit'])
# %%

merged_df = pd.merge(sales, menu, how='outer', left_on='Menu_Item', right_on='item').drop(columns=['Line_Item_ID', 'Date', 'Credit_Card_Number', 'description'])

merged_df = merged_df.groupby(['item']).agg({'Quantity': 'sum', 'price': 'mean', 'cost': 'mean'})
merged_df.reset_index(inplace=True)
merged_df['profit'] = merged_df['price'] - merged_df['cost']

report['00-item'] = merged_df['item']
report['01-count'] = merged_df['Quantity']
report['02-revenue'] = merged_df['price'] * merged_df['Quantity']
report['03-cogs'] = merged_df['cost'] * merged_df['Quantity']
report['04-profit'] = merged_df['profit'] * merged_df['Quantity']

with open('report.txt', 'w') as file:
    for row in report.itertuples():
        if row[2] != 0:
            file.write(f"{row[1]} " + '{' + f"'01-count': {row[2]}, '02-revenue': {row[3]}, '03-cogs': {row[4]}, '04-profit': {row[5]}" + '}\n')
        else:
            print("{sales_item} does not equal {item}! NO MATCH!")
    file.close()

# %%
