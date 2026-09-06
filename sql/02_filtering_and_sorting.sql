-- =====================================================
-- BANK CUSTOMER CHURN ANALYSIS
-- Section 02: Filtering & Sorting
-- Database: MySQL
-- Table: churn_bank
-- =====================================================

-- Q21. Retrieve customers whose age is greater than 40.
SELECT *
FROM churn_bank
WHERE Age > 40;

-- Q22. Retrieve customers whose credit score is greater than 700.
SELECT *
FROM churn_bank
WHERE CreditScore > 700;

-- Q23. Retrieve customers whose balance is greater than 100,000.
SELECT *
FROM churn_bank
WHERE Balance > 100000;

-- Q24. Retrieve customers whose estimated salary is greater than 100,000.
SELECT *
FROM churn_bank
WHERE EstimatedSalary > 100000;

-- Q25. Retrieve all customers who are from France.
SELECT *
FROM churn_bank
WHERE Geography = 'France';

-- Q26. Retrieve all customers who are from Germany.
SELECT *
FROM churn_bank
WHERE Geography = 'Germany';

-- Q27. Retrieve female customers who are from France.
SELECT *
FROM churn_bank
WHERE Geography = 'France'
AND Gender = 'Female';

-- Q28. Retrieve male customers who are from Germany.
SELECT *
FROM churn_bank
WHERE Geography = 'Germany'
AND Gender = 'Male';

-- Q29. Retrieve customers whose age is between 30 and 40.
SELECT *
FROM churn_bank
WHERE Age BETWEEN 30 AND 40;

-- Q30. Retrieve customers whose credit score is between 600 and 700.
SELECT *
FROM churn_bank
WHERE CreditScore BETWEEN 600 AND 700;

-- Q31. Retrieve customers whose balance is between 50,000 and 150,000.
SELECT *
FROM churn_bank
WHERE Balance BETWEEN 50000 AND 150000;

-- Q32. Retrieve customers whose balance is exactly 0.
SELECT *
FROM churn_bank
WHERE Balance = 0;

-- Q33. Retrieve customers who do not have a credit card.
SELECT *
FROM churn_bank
WHERE HasCrCard = 0;

-- Q34. Retrieve customers who are not active members.
SELECT *
FROM churn_bank
WHERE IsActiveMember = 0;

-- Q35. Retrieve customers who have exactly 2 products.
SELECT *
FROM churn_bank
WHERE NumOfProducts = 2;

-- Q36. Display all customers sorted by age in ascending order.
SELECT *
FROM churn_bank
ORDER BY Age ASC;

-- Q37. Display all customers sorted by credit score in descending order.
SELECT *
FROM churn_bank
ORDER BY CreditScore DESC;

-- Q38. Display the top 10 customers with the highest balance.
SELECT *
FROM churn_bank
ORDER BY Balance DESC
LIMIT 10;

-- Q39. Display the top 10 customers with the highest estimated salary.
SELECT *
FROM churn_bank
ORDER BY EstimatedSalary DESC
LIMIT 10;

-- Q40. Display the top 10 customers with the lowest credit score.
SELECT *
FROM churn_bank
ORDER BY CreditScore ASC
LIMIT 10;

