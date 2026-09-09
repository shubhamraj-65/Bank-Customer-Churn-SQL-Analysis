-- ============================================================
-- Section 05 — CASE WHEN & Customer Segmentation
-- Dataset: Churn_Bank
-- Database: bank_analysis
-- ============================================================

-- ============================================================
-- 1. Divide customers into Young, Adult, and Senior categories
-- based on age.
-- ============================================================

SELECT *,
CASE
WHEN Age <= 25 THEN 'Young'
WHEN Age <= 50 THEN 'Adult'
ELSE 'Senior'
END AS age_category
FROM churn_bank;

-- ============================================================
-- 2. Divide customers into Poor, Average, Good, and Excellent
-- categories based on credit score.
-- ============================================================

SELECT *,
CASE
WHEN CreditScore <= 500 THEN 'Poor'
WHEN CreditScore <= 600 THEN 'Average'
WHEN CreditScore <= 750 THEN 'Good'
ELSE 'Excellent'
END AS credit_score_category
FROM churn_bank;

-- ============================================================
-- 3. Divide customers into Zero Balance, Low Balance,
-- Medium Balance, and High Balance categories.
-- ============================================================

SELECT *,
CASE
WHEN Balance = 0 THEN 'Zero Balance'
WHEN Balance < 20000 THEN 'Low Balance'
WHEN Balance <= 80000 THEN 'Medium Balance'
ELSE 'High Balance'
END AS balance_category
FROM churn_bank;

-- ============================================================
-- 4. Divide customers into Low Salary, Medium Salary,
-- and High Salary segments.
-- ============================================================

SELECT *,
CASE
WHEN EstimatedSalary <= 30000 THEN 'Low Salary'
WHEN EstimatedSalary <= 80000 THEN 'Medium Salary'
ELSE 'High Salary'
END AS salary_segment
FROM churn_bank;

-- ============================================================
-- 5. Classify customers into Low Risk and High Risk
-- based on churn status.
-- Exited = 1 means the customer has churned.
-- ============================================================

SELECT *,
CASE
WHEN Exited = 1 THEN 'High Risk'
ELSE 'Low Risk'
END AS risk_category
FROM churn_bank;

-- ============================================================
-- 6. Create Single Product and Multiple Products categories
-- based on number of products.
-- ============================================================

SELECT *,
CASE
WHEN NumOfProducts = 1 THEN 'Single Product'
ELSE 'Multiple Products'
END AS product_category
FROM churn_bank;

-- ============================================================
-- 7. Convert active/inactive status into readable text.
-- ============================================================

SELECT *,
CASE
WHEN IsActiveMember = 1 THEN 'Active'
ELSE 'Inactive'
END AS activity_status
FROM churn_bank;

-- ============================================================
-- 8. Convert credit-card ownership status into readable text.
-- ============================================================

SELECT *,
CASE
WHEN HasCrCard = 1 THEN 'Card Available'
ELSE 'No Card'
END AS card_status
FROM churn_bank;

-- ============================================================
-- 9. Calculate customer count for each age segment.
-- ============================================================

SELECT
CASE
WHEN Age <= 25 THEN 'Young'
WHEN Age <= 50 THEN 'Adult'
ELSE 'Senior'
END AS age_segment,
COUNT(*) AS total_customers
FROM churn_bank
GROUP BY age_segment;

-- ============================================================
-- 10. Calculate customer count for each credit-score segment.
-- ============================================================

SELECT
CASE
WHEN CreditScore <= 500 THEN 'Poor'
WHEN CreditScore <= 600 THEN 'Average'
WHEN CreditScore <= 750 THEN 'Good'
ELSE 'Excellent'
END AS credit_score_segment,
COUNT(*) AS total_customers
FROM churn_bank
GROUP BY credit_score_segment;

-- ============================================================
-- 11. Calculate customer count for each balance segment.
-- ============================================================

SELECT
CASE
WHEN Balance = 0 THEN 'Zero Balance'
WHEN Balance < 20000 THEN 'Low Balance'
WHEN Balance <= 80000 THEN 'Medium Balance'
ELSE 'High Balance'
END AS balance_segment,
COUNT(*) AS total_customers
FROM churn_bank
GROUP BY balance_segment;

-- ============================================================
-- 12. Calculate customer count for each salary segment.
-- ============================================================

SELECT
CASE
WHEN EstimatedSalary <= 30000 THEN 'Low Salary'
WHEN EstimatedSalary <= 80000 THEN 'Medium Salary'
ELSE 'High Salary'
END AS salary_segment,
COUNT(*) AS total_customers
FROM churn_bank
GROUP BY salary_segment;

-- ============================================================
-- 13. Calculate churn rate for each age segment.
-- ============================================================

SELECT
CASE
WHEN Age <= 25 THEN 'Young'
WHEN Age <= 50 THEN 'Adult'
ELSE 'Senior'
END AS age_segment,
AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY age_segment;

-- ============================================================
-- 14. Calculate churn rate for each credit-score segment.
-- ============================================================

SELECT
CASE
WHEN CreditScore <= 500 THEN 'Poor'
WHEN CreditScore <= 600 THEN 'Average'
WHEN CreditScore <= 750 THEN 'Good'
ELSE 'Excellent'
END AS credit_score_segment,
AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY credit_score_segment;

-- ============================================================
-- 15. Calculate churn rate for each balance segment.
-- ============================================================

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

-- ============================================================
-- 16. Calculate churn rate for each salary segment.
-- ============================================================

SELECT
CASE
WHEN EstimatedSalary <= 30000 THEN 'Low Salary'
WHEN EstimatedSalary <= 80000 THEN 'Medium Salary'
ELSE 'High Salary'
END AS salary_segment,
AVG(Exited) * 100 AS churn_rate
FROM churn_bank
GROUP BY salary_segment;

-- ============================================================
-- 17. Identify customers with both high balance and high salary.
-- ============================================================

SELECT *,
CASE
WHEN Balance > 100000
AND EstimatedSalary > 100000
THEN 'High Balance & High Salary'
ELSE 'Other'
END AS customer_segment
FROM churn_bank;

-- ============================================================
-- 18. Identify customers with low credit score and high balance.
-- ============================================================

SELECT *,
CASE
WHEN CreditScore < 600
AND Balance > 100000
THEN 'Low Credit Score & High Balance'
ELSE 'Other'
END AS customer_segment
FROM churn_bank;

-- ============================================================
-- 19. Identify senior and inactive customers.
-- ============================================================

SELECT *,
CASE
WHEN Age > 50
AND IsActiveMember = 0
THEN 'Senior & Inactive'
ELSE 'Other'
END AS customer_segment
FROM churn_bank;

-- ============================================================
-- 20. Create a high-risk customer segment using age,
-- activity status, and churn status.
-- ============================================================

SELECT *,
CASE
WHEN Age > 50
AND IsActiveMember = 0
AND Exited = 1
THEN 'High Risk'
ELSE 'Other'
END AS customer_segment
FROM churn_bank;

