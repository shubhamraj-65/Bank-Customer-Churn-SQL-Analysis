-- 4. Geography-wise churned customers nikalo.
select geography,count(*) as geo_churned from churn_bank
where Exited=1
group by Geography;

-- 5. Geography-wise churn rate nikalo.
select geography,avg(exited) *100 as churn_rate from churn_bank
group by Geography;


-- 7. Active vs inactive members ka churn rate compare karo.
select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =1;

select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =0;

-- 8. Credit-card holders vs non-holders ka churn rate compare karo.
select avg(exited) * 100 as churn_rate from 
churn_bank
where HasCrCard=1;
select avg(exited) * 100 as churn_rate from 
churn_bank
where HasCrCard=0;

-- 9. Product-wise churn rate nikalo.
select numofproducts,avg(exited) * 100 as churn_rate 
from churn_bank
group by NumOfProducts;

-- 10. Tenure-wise churn rate nikalo.
select tenure,avg(exited) * 100 as churn_rate from churn_bank
group by Tenure;

-- 11. Age-wise churn rate nikalo.
select age,avg(exited) * 100 as churn_rate 
from churn_bank 
group by age;

-- 12. Credit-score-wise churn rate nikalo.
select CreditScore,avg(exited) * 100 as churn_rate 
from churn_bank
group by CreditScore;
