# Customer Churn & Retention Analytics

## Project overview
This project analyses a **public IBM Telco Customer Churn sample dataset** to understand customer churn and demonstrate how analytics can support customer retention decisions.

Unlike the earlier portfolio version, this project uses the supplied public dataset rather than synthetic customer records.

## Dataset
- 7,043 customer records in the original public dataset.
- 21 original columns.
- Customer service, contract, tenure, billing and churn information.
- Source: IBM Telco Customer Churn sample dataset, commonly distributed through Kaggle.

The dataset represents a fictional telecom company and is a public sample dataset. It should not be described as confidential or proprietary customer data.

## Business problem
Customer churn can reduce recurring revenue and increase the cost of acquiring replacement customers. The analysis investigates which customer characteristics are associated with churn and demonstrates how predictive modelling could support retention teams.

## Business questions
- What proportion of customers churn?
- How does churn differ by contract type?
- How does churn differ by tenure?
- How does churn differ by internet service?
- Which customer characteristics are associated with churn?
- How can a churn model support retention prioritisation?

## Tools
Python, pandas, NumPy, Matplotlib, scikit-learn, Jupyter Notebook, SQL and Power BI.

## Models
- Logistic Regression
- Decision Tree
- Random Forest

Evaluation metrics:
- Accuracy
- Precision
- Recall
- F1-score
- ROC-AUC

## Important limitation
The dataset is a public sample representing a **fictional telecom company**. It is therefore not evidence about a real telecom provider's customers. Model outputs demonstrate analytical methods and should not be interpreted as actual operational churn probabilities for a real company.

## Responsible use
Churn predictions should support human review rather than automatically denying services or penalising customers. Real deployment would require validation, monitoring, privacy controls, fairness assessment and appropriate business rules.
