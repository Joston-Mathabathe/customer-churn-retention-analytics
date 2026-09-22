-- Customer Churn & Retention Analytics
-- Source: public IBM Telco Customer Churn sample dataset
-- SQL syntax is written in a broadly portable style.

-- 1. Overall churn rate
SELECT
    COUNT(*) AS customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    1.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS churn_rate
FROM telco_customer_churn;

-- 2. Churn by contract
SELECT
    Contract,
    COUNT(*) AS customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    1.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS churn_rate
FROM telco_customer_churn
GROUP BY Contract
ORDER BY churn_rate DESC;

-- 3. Churn by internet service
SELECT
    InternetService,
    COUNT(*) AS customers,
    1.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS churn_rate
FROM telco_customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;

-- 4. Churn by tenure group
SELECT
    CASE
        WHEN tenure <= 6 THEN '0-6'
        WHEN tenure <= 12 THEN '7-12'
        WHEN tenure <= 24 THEN '13-24'
        WHEN tenure <= 48 THEN '25-48'
        ELSE '49-72'
    END AS tenure_group,
    COUNT(*) AS customers,
    1.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS churn_rate
FROM telco_customer_churn
GROUP BY
    CASE
        WHEN tenure <= 6 THEN '0-6'
        WHEN tenure <= 12 THEN '7-12'
        WHEN tenure <= 24 THEN '13-24'
        WHEN tenure <= 48 THEN '25-48'
        ELSE '49-72'
    END
ORDER BY tenure_group;
