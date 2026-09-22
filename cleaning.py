import pandas as pd

df = pd.read_csv("data/raw/WA_Fn-UseC_-Telco-Customer-Churn.csv")
df["TotalCharges"] = pd.to_numeric(df["TotalCharges"], errors="coerce")
df = df.dropna(subset=["TotalCharges"]).copy()
df["ChurnFlag"] = (df["Churn"] == "Yes").astype(int)
df.to_csv("data/processed/telco_customer_churn_clean.csv", index=False)
print(df.shape)
