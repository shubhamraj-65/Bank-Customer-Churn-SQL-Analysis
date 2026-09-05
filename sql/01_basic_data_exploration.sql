-- =====================================================
-- BANK CUSTOMER CHURN ANALYSIS
-- Section 1: Basic Data Exploration
-- Database: MySQL
-- Table: churn_bank
-- =====================================================


-- Q1. How many total customers are present in the dataset?
SELECT COUNT(*) AS total_customers
FROM churn_bank;


-- Q2. How many unique customers are present based on CustomerId?
SELECT COUNT(DISTINCT CustomerId) AS total_unique_customers
FROM churn_bank;


-- Q3. Display all columns and their data types.
DESC churn_bank;


-- Q4. Display the first 10 records from the dataset.
SELECT *
FROM churn_bank
LIMIT 10;


-- Q5. How many different geographies are present in the dataset?
SELECT COUNT(DISTINCT Geography) AS total_geographies
FROM churn_bank;


-- Q6. What are the different geographies available in the dataset?
SELECT DISTINCT Geography AS different_geographies
FROM churn_bank;


-- Q7. How many customers are there in each geography?
SELECT 
    Geography,
    COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Geography;


-- Q8. How many male and female customers are there?
SELECT 
    Gender,
    COUNT(*) AS total_customers
FROM churn_bank
GROUP BY Gender;


-- Q9. What are the minimum and maximum ages of customers?
SELECT 
    MIN(Age) AS minimum_age,
    MAX(Age) AS maximum_age
FROM churn_bank;


-- Q10. What is the average age of customers?
SELECT 
    AVG(Age) AS average_customer_age
FROM churn_bank;


-- Q11. What are the minimum and maximum credit scores?
SELECT 
    MIN(CreditScore) AS minimum_credit_score,
    MAX(CreditScore) AS maximum_credit_score
FROM churn_bank;


-- Q12. What is the average credit score of customers?
SELECT 
    ROUND(AVG(CreditScore), 2) AS average_credit_score
FROM churn_bank;


-- Q13. What are the minimum and maximum customer balances?
SELECT 
    MIN(Balance) AS minimum_balance,
    MAX(Balance) AS maximum_balance
FROM churn_bank;


-- Q14. What is the average customer balance?
SELECT 
    ROUND(AVG(Balance), 2) AS average_balance
FROM churn_bank;


-- Q15. What are the minimum and maximum estimated salaries?
SELECT 
    MIN(EstimatedSalary) AS minimum_salary,
    MAX(EstimatedSalary) AS maximum_salary
FROM churn_bank;


-- Q16. What is the average estimated salary of customers?
SELECT 
    ROUND(AVG(EstimatedSalary), 2) AS average_salary
FROM churn_bank;


-- Q17. What different values are present in NumOfProducts?
SELECT DISTINCT NumOfProducts
FROM churn_bank;


-- Q18. How many customers have each number of products?
SELECT 
    NumOfProducts,
    COUNT(*) AS total_customers
FROM churn_bank
GROUP BY NumOfProducts;


-- Q19. How many customers have and do not have a credit card?
SELECT 
    HasCrCard,
    COUNT(*) AS total_customers
FROM churn_bank
GROUP BY HasCrCard;


-- Q20. How many customers are active and inactive members?
SELECT 
    IsActiveMember,
    COUNT(*) AS total_customers
FROM churn_bank
GROUP BY IsActiveMember;
