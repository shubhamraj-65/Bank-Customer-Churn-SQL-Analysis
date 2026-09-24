-- ============================================================
-- Section 07 — Subqueries & CTEs
-- ============================================================

-- 1. Find customers whose balance is above the overall average balance. 
SELECT * FROM churn_bank WHERE Balance > ( SELECT AVG(Balance) FROM churn_bank );
