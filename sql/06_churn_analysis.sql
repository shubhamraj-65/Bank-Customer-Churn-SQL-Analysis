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


-- 6. Calculate the churn rate by gender.
SELECT
    Gender,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY Gender;


-- 7. Compare the churn rate of active vs inactive members.
SELECT
    IsActiveMember,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY IsActiveMember;


-- 8. Compare the churn rate of credit-card holders vs non-holders.
SELECT
    HasCrCard,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY HasCrCard;


-- 9. Calculate the churn rate by number of products.
SELECT
    NumOfProducts,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY NumOfProducts;


-- 10. Calculate the churn rate by tenure.
SELECT
    Tenure,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY Tenure;


-- 11. Calculate the churn rate by age.
SELECT
    Age,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY Age;


-- 12. Calculate the churn rate by credit score.
SELECT
    CreditScore,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY CreditScore;


-- 13. Calculate the churn rate by balance segment.
SELECT
    CASE
        WHEN Balance = 0 THEN 'Zero Balance'
        WHEN Balance < 20000 THEN 'Low Balance'
        WHEN Balance <= 80000 THEN 'Medium Balance'
        ELSE 'High Balance'
    END AS balance_segment,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY balance_segment;


-- 14. Calculate the churn rate by salary segment.
SELECT
    CASE
        WHEN EstimatedSalary <= 30000 THEN 'Low Salary'
        WHEN EstimatedSalary <= 80000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS salary_segment,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY salary_segment;








