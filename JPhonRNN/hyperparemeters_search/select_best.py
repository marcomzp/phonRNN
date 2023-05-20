import pandas as pd
df = pd.read_csv("summary.csv")

df = df[df["epoch"] == 25]
#print(df)
df = df[['nhid', 'val_loss']]
means = df.groupby(['nhid']).mean()
print(means)

