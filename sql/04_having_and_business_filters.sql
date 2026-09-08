-- =====================================================
-- BANK CUSTOMER CHURN ANALYSIS
-- Section 04: HAVING + Business Filters
-- Database: MySQL
-- Table: churn_bank
-- =====================================================


-- Q1. Show only the geographies with more than 3,000 customers.
SELECT Geography,
       COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography
HAVING COUNT(*) > 3000;


-- Q2. Show the geographies where the average balance is greater than 100,000.
SELECT Geography,
       AVG(Balance) AS avg_balance
FROM churn_bank
GROUP BY Geography
HAVING AVG(Balance) > 100000;


-- Q3. Show the geographies where the average credit score is greater than 650.
SELECT Geography,
       AVG(CreditScore) AS avg_credit_score
FROM churn_bank
GROUP BY Geography
HAVING AVG(CreditScore) > 650;


-- Q4. Show the product categories with more than 500 customers.
SELECT NumOfProducts,
       COUNT(*) AS total_customers
FROM churn_bank
GROUP BY NumOfProducts
HAVING COUNT(*) > 500;


-- Q5. Show the tenure values with more than 1,000 customers.
SELECT Tenure,
       COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Tenure
HAVING COUNT(*) > 1000;


-- Q6. Show the geographies where the average salary is greater than 100,000.
SELECT Geography,
       AVG(EstimatedSalary) AS avg_salary
FROM churn_bank
GROUP BY Geography
HAVING AVG(EstimatedSalary) > 100000;


-- Q7. Show only the gender groups where the average age is greater than 39.
SELECT Gender,
       AVG(Age) AS avg_age
FROM churn_bank
GROUP BY Gender
HAVING AVG(Age) > 39;


-- Q8. Show Geography and Gender groups with more than 1,000 customers.
SELECT Geography,
       Gender,
       COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography, Gender
HAVING COUNT(*) > 1000;


-- Q9. Show the products whose average balance is greater than 80,000.
SELECT NumOfProducts,
       AVG(Balance) AS avg_balance
FROM churn_bank
GROUP BY NumOfProducts
HAVING AVG(Balance) > 80000;


-- Q10. Show the geographies where the maximum balance is greater than 235,000.
SELECT Geography,
       MAX(Balance) AS maximum_balance
FROM churn_bank
GROUP BY Geography
HAVING MAX(Balance) > 235000;


-- Q11. Show the geographies where the minimum balance is 0.
SELECT Geography,
       MIN(Balance) AS minimum_balance
FROM churn_bank
GROUP BY Geography
HAVING MIN(Balance) = 0;


-- Q12. Show the geographies with more than 1,300 active customers.
SELECT Geography,
       COUNT(*) AS total_active_customers
FROM churn_bank
WHERE IsActiveMember = 1
GROUP BY Geography
HAVING COUNT(*) > 1300;


-- Q13. Show the geographies with more than 1,200 inactive customers.
SELECT Geography,
       COUNT(*) AS total_inactive_customers
FROM churn_bank
WHERE IsActiveMember = 0
GROUP BY Geography
HAVING COUNT(*) > 1200;


-- Q14. Show the geographies with more than 700 credit-card holders.
SELECT Geography,
       COUNT(*) AS credit_card_holders
FROM churn_bank
WHERE HasCrCard = 1
GROUP BY Geography
HAVING COUNT(*) > 700;


-- Q15. Show the geographies where average age is greater than 38
-- and average balance is greater than 80,000.
SELECT Geography,
       AVG(Age) AS avg_age,
       AVG(Balance) AS avg_balance
FROM churn_bank
GROUP BY Geography
HAVING AVG(Age) > 38
   AND AVG(Balance) > 80000;


-- Q16. Calculate the average salary for each product count
-- and keep only products with an average salary of 100,000+.
SELECT NumOfProducts,
       COUNT(*) AS total_customers,
       AVG(EstimatedSalary) AS avg_salary
FROM churn_bank
GROUP BY NumOfProducts
HAVING AVG(EstimatedSalary) > 100000;


-- Q17. Calculate the average balance for each tenure
-- and keep only tenure groups with an average balance of 77,000+.
SELECT Tenure,
       AVG(Balance) AS avg_balance
FROM churn_bank
GROUP BY Tenure
HAVING AVG(Balance) > 77000
ORDER BY avg_balance DESC;


-- Q18. Calculate the average salary by gender
-- and identify the gender with the highest average salary.
SELECT Gender,
       AVG(EstimatedSalary) AS avg_salary
FROM churn_bank
GROUP BY Gender
ORDER BY avg_salary DESC
LIMIT 1;


-- Q19. Calculate customer count and average balance by geography
-- and identify the geography with the highest customer count.
SELECT Geography,
       COUNT(*) AS total_customers,
       AVG(Balance) AS avg_balance
FROM churn_bank
GROUP BY Geography
ORDER BY total_customers DESC
LIMIT 1;


-- Q20. Calculate customer count and average salary by geography
-- and keep only geographies with 2,500+ customers.
SELECT Geography,
       COUNT(*) AS total_customers,
       AVG(EstimatedSalary) AS avg_salary
FROM churn_bank
GROUP BY Geography
HAVING COUNT(*) > 2500;


