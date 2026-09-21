-- 1. Total churned customers kitne hain?
select count(*) as churned_customer from churn_bank
where Exited=1;

-- 2. Total non-churned customers kitne hain?
select count(*) as non_churned from churn_bank
where Exited=0;
