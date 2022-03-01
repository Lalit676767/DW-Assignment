{{
    config(
        materialized='view'
    )
}}
SELECT 
sum(to_number(trim(f.sales,'$'),10,2)) total_sales
,month(o.shipdate) as months
,year(o.shipdate) as years
FROM  {{ref('ordersTbl')}} o
join
{{ref('fact1')}} f
on o.rowid_key=f.rowid
group by months,years
order by months,years
