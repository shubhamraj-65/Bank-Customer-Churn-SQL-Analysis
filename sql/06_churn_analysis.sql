-- 5. Geography-wise churn rate nikalo.
select geography,avg(exited) *100 as churn_rate from churn_bank
group by Geography;












