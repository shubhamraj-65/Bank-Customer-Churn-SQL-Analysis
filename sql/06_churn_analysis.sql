-- 5. Geography-wise churn rate nikalo.
select geography,avg(exited) *100 as churn_rate from churn_bank
group by Geography;


-- 7. Active vs inactive members ka churn rate compare karo.
select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =1;

select avg(exited) * 100 as churn_rate from churn_bank
where IsActiveMember =0;









