-- 1. Total churned customers kitne hain?
select count(*) as churned_customer from churn_bank
where Exited=1;

-- 2. Total non-churned customers kitne hain?
select count(*) as non_churned from churn_bank
where Exited=0;

-- 3. Overall churn rate calculate karo.
SELECT
    COUNT(CASE WHEN Exited = 1 THEN 1 END) * 100.0 / COUNT(*) AS overall_churn_rate
FROM churn_bank;

-- 4. Geography-wise churned customers nikalo.
select geography,count(*) as geo_churned from churn_bank
where Exited=1
group by Geography;
