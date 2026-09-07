-- =====================================================
-- BANK CUSTOMER CHURN ANALYSIS
-- Section 03: Aggregation & GROUP BY
-- Database: MySQL
-- Table: churn_bank
-- =====================================================

-- Q1. How many customers are there in each geography?
SELECT Geography, COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography;

-- Q2. How many customers are there for each gender?
SELECT Gender, COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Gender;

-- Q3. What is the average age of customers in each geography?
SELECT Geography, AVG(Age) AS average_age
FROM churn_bank
GROUP BY Geography;

-- Q4. What is the average credit score for each geography?
SELECT Geography, AVG(CreditScore) AS average_credit_score
FROM churn_bank
GROUP BY Geography;

-- Q5. What is the average account balance for each geography?
SELECT Geography, ROUND(AVG(Balance), 3) AS average_account_balance
FROM churn_bank
GROUP BY Geography;

-- Q6. What is the average estimated salary for each geography?
SELECT Geography, ROUND(AVG(EstimatedSalary), 3) AS average_estimated_salary
FROM churn_bank
GROUP BY Geography;

-- Q7. What is the average age for each gender?
SELECT Gender, AVG(Age) AS average_age
FROM churn_bank
GROUP BY Gender;

-- Q8. What is the average credit score for each gender?
SELECT Gender, AVG(CreditScore) AS average_credit_score
FROM churn_bank
GROUP BY Gender;

-- Q9. What is the average account balance for each gender?
SELECT Gender, ROUND(AVG(Balance), 3) AS average_balance
FROM churn_bank
GROUP BY Gender;

-- Q10. How many customers are there for each Geography and Gender combination?
SELECT Geography, Gender, COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography, Gender
ORDER BY Geography;

-- Q11. How many active members are there in each geography?
SELECT Geography, COUNT(*) AS total_active_members
FROM churn_bank
WHERE IsActiveMember = 1
GROUP BY Geography;

-- Q12. How many inactive members are there in each geography?
SELECT Geography, COUNT(*) AS total_inactive_members
FROM churn_bank
WHERE IsActiveMember = 0
GROUP BY Geography;

-- Q13. How many credit card holders are there in each geography?
SELECT Geography, COUNT(*) AS total_credit_card_holders
FROM churn_bank
WHERE HasCrCard = 1
GROUP BY Geography;

-- Q14. What is the average number of products used by customers in each geography?
SELECT Geography, AVG(NumOfProducts) AS average_number_of_products
FROM churn_bank
GROUP BY Geography;

-- Q15. What is the maximum account balance in each geography?
SELECT Geography, MAX(Balance) AS maximum_balance
FROM churn_bank
GROUP BY Geography;

-- Q16. What is the minimum account balance in each geography?
SELECT Geography, MIN(Balance) AS minimum_balance
FROM churn_bank
GROUP BY Geography;

-- Q17. What is the maximum estimated salary for each gender?
SELECT Gender, MAX(EstimatedSalary) AS maximum_salary
FROM churn_bank
GROUP BY Gender;

-- Q18. What is the minimum estimated salary for each gender?
SELECT Gender, MIN(EstimatedSalary) AS minimum_salary
FROM churn_bank
GROUP BY Gender;

-- Q19. What is the average estimated salary for each gender?
SELECT Gender, AVG(EstimatedSalary) AS average_salary
FROM churn_bank
GROUP BY Gender;

-- Q20. How many customers are there for each tenure?
SELECT Tenure, COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Tenure
ORDER BY Tenure;

-- Q21. What is the average account balance for each number of products?
SELECT NumOfProducts, ROUND(AVG(Balance), 3) AS average_balance
FROM churn_bank
GROUP BY NumOfProducts;

-- Q22. What is the average estimated salary for each number of products?
SELECT NumOfProducts, ROUND(AVG(EstimatedSalary), 3) AS average_salary
FROM churn_bank
GROUP BY NumOfProducts;

-- Q23. What is the average age for each number of products?
SELECT NumOfProducts, AVG(Age) AS average_age
FROM churn_bank
GROUP BY NumOfProducts;

-- Q24. Which geography has the highest number of customers?
SELECT Geography, COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography
ORDER BY total_customers DESC
LIMIT 1;

-- Q25. Which geography has the highest average account balance?
SELECT Geography, AVG(Balance) AS average_balance
FROM churn_bank
GROUP BY Geography
ORDER BY average_balance DESC
LIMIT 1;

