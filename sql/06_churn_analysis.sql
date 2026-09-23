-- ============================================================
-- Section 06 — Churn Analysis
-- ============================================================

-- 1. Find the total number of churned customers.
SELECT COUNT(*) AS churned_customers
FROM churn_bank
WHERE Exited = 1;


-- 2. Find the total number of non-churned customers.
SELECT COUNT(*) AS non_churned_customers
FROM churn_bank
WHERE Exited = 0;


-- 3. Calculate the overall churn rate.
SELECT
    COUNT(CASE WHEN Exited = 1 THEN 1 END) * 100.0 / COUNT(*) AS overall_churn_rate
FROM churn_bank;


-- 4. Find the number of churned customers by geography.
SELECT
    Geography,
    COUNT(*) AS churned_customers
FROM churn_bank
WHERE Exited = 1
GROUP BY Geography;


-- 5. Calculate the churn rate by geography.
SELECT
    Geography,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY Geography;










