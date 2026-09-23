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


-- 15. Find the geography with the highest churn rate.
SELECT
    Geography,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY Geography
ORDER BY churn_rate DESC
LIMIT 1;


-- 16. Find the product count with the highest churn rate.
SELECT
    NumOfProducts,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY NumOfProducts
ORDER BY churn_rate DESC
LIMIT 1;


-- 17. Check whether inactive members have a higher churn rate than active members.
SELECT
    CASE
        WHEN AVG(CASE WHEN IsActiveMember = 0 THEN Exited END)
           > AVG(CASE WHEN IsActiveMember = 1 THEN Exited END)
        THEN 'Yes'
        ELSE 'No'
    END AS inactive_churn_higher
FROM churn_bank;


-- 18. Compare the churn rate of customers with and without a credit card.
SELECT
    HasCrCard,
    AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY HasCrCard;


-- 19. Find the average balance of churned customers in Germany.
SELECT
    AVG(Balance) AS avg_balance
FROM churn_bank
WHERE Geography = 'Germany'
  AND Exited = 1;


-- 20. Compare the average credit score of churned vs non-churned customers.
SELECT
    Exited,
    AVG(CreditScore) AS avg_credit_score
FROM churn_bank
GROUP BY Exited;








