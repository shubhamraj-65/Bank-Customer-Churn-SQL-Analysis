-- ============================================================
-- Section 07 — Subqueries & CTEs
-- ============================================================

-- 1. Find customers whose balance is above the overall average balance. 
SELECT * FROM churn_bank WHERE Balance > ( SELECT AVG(Balance) FROM churn_bank );

-- 2. Find customers whose salary is above the overall average salary. 
SELECT * FROM churn_bank WHERE EstimatedSalary > ( SELECT AVG(EstimatedSalary) FROM churn_bank );

-- 3. Find customers whose credit score is below the overall average credit score.
SELECT * FROM churn_bank WHERE CreditScore < ( SELECT AVG(CreditScore) FROM churn_bank );

-- 4. Find customers whose balance is above the average balance of their Geography. 
SELECT * FROM churn_bank AS c WHERE Balance > ( SELECT AVG(Balance) FROM churn_bank AS cs
WHERE c.Geography = cs.Geography );

-- 5. Find customers whose salary is above the average salary of their Geography. 
SELECT * FROM churn_bank AS c WHERE EstimatedSalary > ( SELECT AVG(EstimatedSalary) FROM churn_bank AS cs 
WHERE c.Geography = cs.Geography );

-- 6. Find customers whose age is above the overall average age. 
SELECT * FROM churn_bank WHERE Age > ( SELECT AVG(Age) FROM churn_bank );

-- 7. Find customer(s) with the highest balance. 
SELECT * FROM churn_bank WHERE Balance = ( SELECT MAX(Balance) AS highest_balance FROM churn_bank );

-- 8. Find customer(s) with the second-highest distinct balance. 
SELECT * FROM churn_bank WHERE Balance = ( SELECT DISTINCT Balance FROM churn_bank 
ORDER BY Balance DESC LIMIT 1 OFFSET 1 );

-- 9. Find customer(s) with the highest credit score.
SELECT * FROM churn_bank WHERE CreditScore = ( SELECT MAX(CreditScore) FROM churn_bank );

-- 10. Find customer(s) with the highest balance in each Geography. 
SELECT * FROM churn_bank AS c WHERE Balance = ( SELECT MAX(Balance) FROM churn_bank AS cs
WHERE c.Geography = cs.Geography );


-- 11. Find customer(s) with the lowest balance in each Geography.
SELECT * FROM churn_bank AS c WHERE Balance = ( SELECT MIN(Balance) FROM churn_bank AS cs 
WHERE c.Geography = cs.Geography );
