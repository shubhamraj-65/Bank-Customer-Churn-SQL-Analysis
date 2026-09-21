-- 1. Total churned customers kitne hain?
select count(*) as churned_customer from churn_bank
where Exited=1;
