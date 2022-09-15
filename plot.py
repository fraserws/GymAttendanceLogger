import pandas as pd
from matplotlib import pyplot as plt 
plt.rcParams["figure.figsize"] = [7.00, 3.50]
plt.rcParams["figure.autolayout"] = True
columns = ["Time", "People"]
df = pd.read_excel("input.xlsx", usecols=columns)
print("Contents in csv file:\n", df)
plt.plot(df.Time, df.People)
plt.show()
