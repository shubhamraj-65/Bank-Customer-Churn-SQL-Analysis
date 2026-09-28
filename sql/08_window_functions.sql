-- ============================================================
-- Section 08 — Window Functions
-- ============================================================

-- 1. Rank customers within each Geography based on balance.
WITH geo_rank AS (
    SELECT
        *,
        DENSE_RANK() OVER(
            PARTITION BY Geography
            ORDER BY Balance DESC
        ) AS ranked
    FROM churn_bank
)
SELECT *
FROM geo_rank;

-- 2. Rank customers within each Geography based on credit score.
WITH credit_rank AS (
    SELECT
        *,
        DENSE_RANK() OVER(
            PARTITION BY Geography
            ORDER BY CreditScore DESC
        ) AS ranked
    FROM churn_bank
)
SELECT *
FROM credit_rank;

-- 3. Find the top 3 customers with the highest balance in each Geography.
SELECT *
FROM (
    SELECT
        *,
        ROW_NUMBER() OVER(
            PARTITION BY Geography
            ORDER BY Balance DESC
        ) AS row_num
    FROM churn_bank
) AS ranked_customers
WHERE row_num <= 3;

-- 4. Find the top 3 customers with the highest credit score in each Geography.
WITH credit_rank AS (
    SELECT
        *,
        ROW_NUMBER() OVER(
            PARTITION BY Geography
            ORDER BY CreditScore DESC
        ) AS row_num
    FROM churn_bank
)
SELECT *
FROM credit_rank
WHERE row_num <= 3;


-- 5. Find the second-highest balance customer in each Geography.
SELECT *
FROM (
    SELECT
        *,
        DENSE_RANK() OVER(
            PARTITION BY Geography
            ORDER BY Balance DESC
        ) AS ranked
    FROM churn_bank
) AS ranked_customers
WHERE ranked = 2;

-- 6. Find customers with the highest salary in each Geography using DENSE_RANK().
SELECT *
FROM (
    SELECT
        *,
        DENSE_RANK() OVER(
            PARTITION BY Geography
            ORDER BY EstimatedSalary DESC
        ) AS ranked
    FROM churn_bank
) AS ranked_customers
WHERE ranked = 1;

-- 7. Find the first customer in each Geography based on highest balance
-- using ROW_NUMBER().
SELECT *
FROM (
    SELECT
        *,
        ROW_NUMBER() OVER(
            PARTITION BY Geography
            ORDER BY Balance DESC
        ) AS row_num
    FROM churn_bank
) AS ranked_customers
WHERE row_num = 1;
