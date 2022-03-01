{{
    config(
        materialized='view'
    )
}}
with cte as(
SELECT 
sum(to_number(trim(f.sales*f.quantity,'$'),10,2)) sum_sales
,year(o.SHIPDATE) yr
,r.region
FROM  {{ref('regionTbl')}} r
join
{{ref('fact1')}} f
on r.city=f.city
and r.state=f.state
join
{{ref('ordersTbl')}} o
on f.rowid=o.rowid
group by 
  r.region
  ,yr
order by sum_sales desc
 )
select top 5 SUM_SALES,REGION
from cte
where yr=(select max(yr)-1 from cte)