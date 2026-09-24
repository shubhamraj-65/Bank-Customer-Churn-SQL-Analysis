-- ============================================================
-- Section 07 — Subqueries & CTEs
-- ============================================================

-- 1. Find customers whose balance is above the overall average balance. 
SELECT * FROM churn_bank WHERE Balance > ( SELECT AVG(Balance) FROM churn_bank );

-- 2. Find customers whose salary is above the overall average salary. 
SELECT * FROM churn_bank WHERE EstimatedSalary > ( SELECT AVG(EstimatedSalary) FROM churn_bank );
