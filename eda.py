import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("data/processed/telco_customer_churn_clean.csv")

contract = df.groupby("Contract")["ChurnFlag"].mean()
contract.plot(kind="bar", title="Churn Rate by Contract")
plt.ylabel("Churn Rate")
plt.tight_layout()
plt.savefig("visualisations/churn_by_contract.png")
plt.close()
