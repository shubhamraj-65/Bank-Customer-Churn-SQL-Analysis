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

-- 5. Geography-wise churn rate nikalo.
select geography,avg(exited) *100 as churn_rate from churn_bank
group by Geography;

-- 6. Gender-wise churn rate nikalo.
select gender,avg(exited) * 100 as churn_rate 
from churn_bank
group by Gender;

-- 7. Active vs inactive members ka churn rate compare karo.
select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =1;

select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =0;
